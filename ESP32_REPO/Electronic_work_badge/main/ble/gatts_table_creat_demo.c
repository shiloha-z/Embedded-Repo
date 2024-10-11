#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include <dirent.h> 
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_log.h"
#include "esp_bt.h"
#include "esp_gap_ble_api.h"
#include "esp_gatts_api.h"
#include "esp_bt_main.h"
#include "gatts_table_creat_demo.h"
#include "i2s_recorder.h"
#include "esp_vfs_fat.h"
#include "esp_gatt_common_api.h"
#include "sdcard.h"
#include "id_nvs.h"
#include "message.h"
#include "main.h"
#include "led.h"

#define DELAY_TIME 10
#define GATTS_TABLE_TAG "GATTS_TABLE_DEMO"
#define RECORDING_FILE_PATH "/sdcard/recording_wav_files"

#define PROFILE_NUM                 1
#define PROFILE_APP_IDX             0
#define ESP_APP_ID                  0x55
#define SAMPLE_DEVICE_NAME          "ESP_WORK_CARD"
#define SVC_INST_ID                 0

/* The max length of characteristic value. When the GATT client performs a write or prepare write operation,
*  the data length must be less than GATTS_DEMO_CHAR_VAL_LEN_MAX.
*/
#define GATTS_DEMO_CHAR_VAL_LEN_MAX 500
#define PREPARE_BUF_MAX_SIZE        1024
#define CHAR_DECLARATION_SIZE       (sizeof(uint8_t))

#define ADV_CONFIG_FLAG             (1 << 0)
#define SCAN_RSP_CONFIG_FLAG        (1 << 1)

//******************************************************************** */自己写的部分
#define DEFAULT_DEVICE_ID 11111111
#define DEFAULT_EMPLOYEE_ID 99999999

const uint8_t default_key[32] = {//生成报文时用,非内部固定key
    0x60, 0x3d, 0xeb, 0x10, 0x15, 0xca, 0x71, 0xbe, 
    0x2b, 0x73, 0xae, 0xf0, 0x85, 0x7d, 0x77, 0x81, 
    0x1f, 0x35, 0x2c, 0x07, 0x3b, 0x61, 0x08, 0xd7, 
    0x2d, 0x98, 0x10, 0xa3, 0x09, 0x14, 0xdf, 0xf4
    };

extern STATUS status_flag;
bool Work_order_number_set = false;
bool is_connect = false;

uint64_t Badge_ID = 0;
uint64_t Employee_ID = 0;
uint8_t key[32] = {0};

uint8_t Work_order_number[9] = {0};
unsigned char iv[16] = {0};

TaskHandle_t xReceiverTaskHandle = NULL;//audio_send
TaskHandle_t xReceiverTaskHandle3 = NULL;//error_upload_task
TaskHandle_t xReceiverTaskHandle4 = NULL;//data_processing_task

static const char *TAG = "BLE";

#define MAX_DATA_LENGTH 464
#define DATA_QUEUE_LENGTH 10
#define FILE_TRAN_SIZE 496//16的倍数,不超过480,根据最大MTU决定,FILE_TRAN_SIZE+22+4要小于MTU

typedef struct {
    uint8_t data[MAX_DATA_LENGTH];
    size_t length;
} DataMessage;

typedef struct {
    uint8_t data[MAX_DATA_LENGTH];
    size_t length;
    uint16_t error_code;
} ErrorMessage;
// 定义消息队列句柄
QueueHandle_t data_queue = NULL;//data_processing_task
QueueHandle_t data_queue2 = NULL;//audio_send
QueueHandle_t data_queue3 = NULL;//error_upload_task
extern QueueHandle_t status_queue;//ststus_check_task

#define WAIT_TIME 60000 //10s
static DataMessage audio_send_msg;
static uint8_t *buffer3 = NULL;
static uint8_t *TLV_buffer3 = NULL;
static DIR *dir = NULL;
static FILE *file = NULL;

static bool timeout_flag = false;
bool recording_pause_flag = false;
//****************************************************************** */

static uint8_t adv_config_done = 0;
uint16_t profile_handle_table[HRS_IDX_NB];
typedef struct {
    uint8_t                 *prepare_buf;
    int                     prepare_len;
} prepare_type_env_t;
static prepare_type_env_t prepare_write_env;
#define CONFIG_SET_RAW_ADV_DATA
#ifdef CONFIG_SET_RAW_ADV_DATA
static uint8_t raw_adv_data[] = {
        /* flags */
        0x02, 0x01, 0x06,
        /* tx power*/
        0x02, 0x0a, 0xeb,
        /* service uuid */
        0x03, 0x03, 0xFF, 0x00,
        /* device name */
        0x0f, 0X09, 'E', 'S', 'P', '_', 'W', 'O', 'R', 'K', '_', 'C', 'A', 'R', 'D', '2',
};
static uint8_t raw_scan_rsp_data[] = {
        /* flags */
        0x02, 0x01, 0x06,
        /* tx power */
        0x02, 0x0a, 0xeb,
        /* service uuid */
        0x03, 0x03, 0xFF,0x00
};
#else
static uint8_t service_uuid[16] = {
    /* LSB <--------------------------------------------------------------------------------> MSB */
    //first uuid, 16bit, [12],[13] is the value
    0xfb, 0x34, 0x9b, 0x5f, 0x80, 0x00, 0x00, 0x80, 0x00, 0x10, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,
};

/* The length of adv data must be less than 31 bytes */
static esp_ble_adv_data_t adv_data = {
    .set_scan_rsp        = false,
    .include_name        = true,
    .include_txpower     = true,
    .min_interval        = 0x0006, //slave connection min interval, Time = min_interval * 1.25 msec
    .max_interval        = 0x0010, //slave connection max interval, Time = max_interval * 1.25 msec
    .appearance          = 0x00,
    .manufacturer_len    = 0,    //TEST_MANUFACTURER_DATA_LEN,
    .p_manufacturer_data = NULL, //test_manufacturer,
    .service_data_len    = 0,
    .p_service_data      = NULL,
    .service_uuid_len    = sizeof(service_uuid),
    .p_service_uuid      = service_uuid,
    .flag = (ESP_BLE_ADV_FLAG_GEN_DISC | ESP_BLE_ADV_FLAG_BREDR_NOT_SPT),
};

// scan response data
static esp_ble_adv_data_t scan_rsp_data = {
    .set_scan_rsp        = true,
    .include_name        = true,
    .include_txpower     = true,
    .min_interval        = 0x0006,
    .max_interval        = 0x0010,
    .appearance          = 0x00,
    .manufacturer_len    = 0, //TEST_MANUFACTURER_DATA_LEN,
    .p_manufacturer_data = NULL, //&test_manufacturer[0],
    .service_data_len    = 0,
    .p_service_data      = NULL,
    .service_uuid_len    = sizeof(service_uuid),
    .p_service_uuid      = service_uuid,
    .flag = (ESP_BLE_ADV_FLAG_GEN_DISC | ESP_BLE_ADV_FLAG_BREDR_NOT_SPT),
};
#endif /* CONFIG_SET_RAW_ADV_DATA */

static esp_ble_adv_params_t adv_params = {
    .adv_int_min         = 0x20,
    .adv_int_max         = 0x40,
    .adv_type            = ADV_TYPE_IND,
    .own_addr_type       = BLE_ADDR_TYPE_PUBLIC,
    .channel_map         = ADV_CHNL_ALL,
    .adv_filter_policy   = ADV_FILTER_ALLOW_SCAN_ANY_CON_ANY,
};

struct gatts_profile_inst {
    esp_gatts_cb_t gatts_cb;
    uint16_t gatts_if;
    uint16_t app_id;
    uint16_t conn_id;
    uint16_t service_handle;
    esp_gatt_srvc_id_t service_id;
    uint16_t char_handle;
    esp_bt_uuid_t char_uuid;
    esp_gatt_perm_t perm;
    esp_gatt_char_prop_t property;
    uint16_t descr_handle;
    esp_bt_uuid_t descr_uuid;
};

static void gatts_profile_event_handler(esp_gatts_cb_event_t event,esp_gatt_if_t gatts_if, esp_ble_gatts_cb_param_t *param);

/* One gatt-based profile one app_id and one gatts_if, this array will store the gatts_if returned by ESP_GATTS_REG_EVT */
static struct gatts_profile_inst heart_rate_profile_tab[PROFILE_NUM] = {
    [PROFILE_APP_IDX] = {
        .gatts_cb = gatts_profile_event_handler,
        .gatts_if = ESP_GATT_IF_NONE,       /* Not get the gatt_if, so initial is ESP_GATT_IF_NONE */
    },
};

/* Service */
static const uint16_t GATTS_SERVICE_UUID_TEST      = 0x00FF;
static const uint16_t GATTS_CHAR_UUID_TEST_TPMS_IN = 0xFF01;   
static const uint16_t GATTS_CHAR_UUID_TEST_TPMS_OUT= 0xFF02;     

static const uint16_t primary_service_uuid         = ESP_GATT_UUID_PRI_SERVICE;
static const uint16_t character_declaration_uuid   = ESP_GATT_UUID_CHAR_DECLARE;
static const uint16_t character_client_config_uuid = ESP_GATT_UUID_CHAR_CLIENT_CONFIG;
static const uint8_t char_prop_notify              = ESP_GATT_CHAR_PROP_BIT_NOTIFY;
static const uint8_t char_prop_write               = ESP_GATT_CHAR_PROP_BIT_WRITE;

static const uint8_t heart_measurement_ccc2[2]     = {0x00, 0x00};
static const uint8_t tpms_IN_value[20]                 = {0};
static const uint8_t tpms_OUT_value[20]                = {0};

/* Full Database Description - Used to add attributes into the database */
static const esp_gatts_attr_db_t gatt_db[HRS_IDX_NB] =
{
    // Service Declaration
    [IDX_SVC]        =
    {{ESP_GATT_AUTO_RSP}, {ESP_UUID_LEN_16, (uint8_t *)&primary_service_uuid, ESP_GATT_PERM_READ,
      sizeof(uint16_t), sizeof(GATTS_SERVICE_UUID_TEST), (uint8_t *)&GATTS_SERVICE_UUID_TEST}},
//-------------------------- 自定义  -----------------------------------------------------------------------------------
    /* Characteristic Declaration */
    [IDX_CHAR_TPMS_IN]     =
    {{ESP_GATT_AUTO_RSP}, {ESP_UUID_LEN_16, (uint8_t *)&character_declaration_uuid, ESP_GATT_PERM_READ,
      CHAR_DECLARATION_SIZE, CHAR_DECLARATION_SIZE, (uint8_t *)&char_prop_write}},

    /* Characteristic Value */
    [IDX_CHAR_VAL_TPMS_IN] =
    {{ESP_GATT_AUTO_RSP}, {ESP_UUID_LEN_16, (uint8_t *)&GATTS_CHAR_UUID_TEST_TPMS_IN, ESP_GATT_PERM_WRITE,
      GATTS_DEMO_CHAR_VAL_LEN_MAX, sizeof(tpms_IN_value), (uint8_t *)tpms_IN_value}},

    /* Characteristic Declaration */
    [IDX_CHAR_TPMS_OUT]     =
    {{ESP_GATT_AUTO_RSP}, {ESP_UUID_LEN_16, (uint8_t *)&character_declaration_uuid, ESP_GATT_PERM_READ,
      CHAR_DECLARATION_SIZE, CHAR_DECLARATION_SIZE, (uint8_t *)&char_prop_notify}},

    /* Characteristic Value */
    [IDX_CHAR_VAL_TPMS_OUT] =
    {{ESP_GATT_AUTO_RSP}, {ESP_UUID_LEN_16, (uint8_t *)&GATTS_CHAR_UUID_TEST_TPMS_OUT, ESP_GATT_PERM_READ,
      GATTS_DEMO_CHAR_VAL_LEN_MAX, sizeof(tpms_OUT_value), (uint8_t *)tpms_OUT_value}},

    /* Client Characteristic Configuration Descriptor */
    [IDX_CHAR_CFG_TPMS_OUT]  =
    {{ESP_GATT_AUTO_RSP}, {ESP_UUID_LEN_16, (uint8_t *)&character_client_config_uuid, ESP_GATT_PERM_READ | ESP_GATT_PERM_WRITE,
      sizeof(uint16_t), sizeof(heart_measurement_ccc2), (uint8_t *)heart_measurement_ccc2}},
};

static void gap_event_handler(esp_gap_ble_cb_event_t event, esp_ble_gap_cb_param_t *param)
{
    switch (event) {
    #ifdef CONFIG_SET_RAW_ADV_DATA
        case ESP_GAP_BLE_ADV_DATA_RAW_SET_COMPLETE_EVT:
            adv_config_done &= (~ADV_CONFIG_FLAG);
            if (adv_config_done == 0){
                esp_ble_gap_start_advertising(&adv_params);
            }
            break;
        case ESP_GAP_BLE_SCAN_RSP_DATA_RAW_SET_COMPLETE_EVT:
            adv_config_done &= (~SCAN_RSP_CONFIG_FLAG);
            if (adv_config_done == 0){
                esp_ble_gap_start_advertising(&adv_params);
            }
            break;
    #else
        case ESP_GAP_BLE_ADV_DATA_SET_COMPLETE_EVT:
            adv_config_done &= (~ADV_CONFIG_FLAG);
            if (adv_config_done == 0){
                esp_ble_gap_start_advertising(&adv_params);
            }
            break;
        case ESP_GAP_BLE_SCAN_RSP_DATA_SET_COMPLETE_EVT:
            adv_config_done &= (~SCAN_RSP_CONFIG_FLAG);
            if (adv_config_done == 0){
                esp_ble_gap_start_advertising(&adv_params);
            }
            break;
    #endif
        case ESP_GAP_BLE_ADV_START_COMPLETE_EVT:
            /* advertising start complete event to indicate advertising start successfully or failed */
            if (param->adv_start_cmpl.status != ESP_BT_STATUS_SUCCESS) {
                ESP_LOGE(GATTS_TABLE_TAG, "advertising start failed");
            }else{
                ESP_LOGI(GATTS_TABLE_TAG, "advertising start successfully");
            }
            break;
        case ESP_GAP_BLE_ADV_STOP_COMPLETE_EVT:
            if (param->adv_stop_cmpl.status != ESP_BT_STATUS_SUCCESS) {
                ESP_LOGE(GATTS_TABLE_TAG, "Advertising stop failed");
            }
            else {
                ESP_LOGI(GATTS_TABLE_TAG, "Stop adv successfully");
            }
            break;
        case ESP_GAP_BLE_UPDATE_CONN_PARAMS_EVT:
            ESP_LOGI(GATTS_TABLE_TAG, "update connection params status = %d, min_int = %d, max_int = %d,conn_int = %d,latency = %d, timeout = %d",
                  param->update_conn_params.status,
                  param->update_conn_params.min_int,
                  param->update_conn_params.max_int,
                  param->update_conn_params.conn_int,
                  param->update_conn_params.latency,
                  param->update_conn_params.timeout);
            break;
        default:
            break;
    }
}

void example_prepare_write_event_env(esp_gatt_if_t gatts_if, prepare_type_env_t *prepare_write_env, esp_ble_gatts_cb_param_t *param)
{
    ESP_LOGI(GATTS_TABLE_TAG, "prepare write, handle = %d, value len = %d", param->write.handle, param->write.len);
    esp_gatt_status_t status = ESP_GATT_OK;
    if (param->write.offset > PREPARE_BUF_MAX_SIZE) {
        status = ESP_GATT_INVALID_OFFSET;
    } else if ((param->write.offset + param->write.len) > PREPARE_BUF_MAX_SIZE) {
        status = ESP_GATT_INVALID_ATTR_LEN;
    }
    if (status == ESP_GATT_OK && prepare_write_env->prepare_buf == NULL) {
        prepare_write_env->prepare_buf = (uint8_t *)malloc(PREPARE_BUF_MAX_SIZE * sizeof(uint8_t));
        prepare_write_env->prepare_len = 0;
        if (prepare_write_env->prepare_buf == NULL) {
            ESP_LOGE(GATTS_TABLE_TAG, "%s, Gatt_server prep no mem", __func__);
            status = ESP_GATT_NO_RESOURCES;
        }
    }

    /*send response when param->write.need_rsp is true */
    if (param->write.need_rsp){
        esp_gatt_rsp_t *gatt_rsp = (esp_gatt_rsp_t *)malloc(sizeof(esp_gatt_rsp_t));
        if (gatt_rsp != NULL){
            gatt_rsp->attr_value.len = param->write.len;
            gatt_rsp->attr_value.handle = param->write.handle;
            gatt_rsp->attr_value.offset = param->write.offset;
            gatt_rsp->attr_value.auth_req = ESP_GATT_AUTH_REQ_NONE;
            memcpy(gatt_rsp->attr_value.value, param->write.value, param->write.len);
            esp_err_t response_err = esp_ble_gatts_send_response(gatts_if, param->write.conn_id, param->write.trans_id, status, gatt_rsp);
            if (response_err != ESP_OK) {
               ESP_LOGE(GATTS_TABLE_TAG, "Send response error");
            }
            free(gatt_rsp);
        }else{
            ESP_LOGE(GATTS_TABLE_TAG, "%s, malloc failed", __func__);
            status = ESP_GATT_NO_RESOURCES;
        }
    }
    if (status != ESP_GATT_OK){
        return;
    }
    memcpy(prepare_write_env->prepare_buf + param->write.offset,
           param->write.value,
           param->write.len);
    prepare_write_env->prepare_len += param->write.len;

}

void example_exec_write_event_env(prepare_type_env_t *prepare_write_env, esp_ble_gatts_cb_param_t *param){
    if (param->exec_write.exec_write_flag == ESP_GATT_PREP_WRITE_EXEC && prepare_write_env->prepare_buf){
        esp_log_buffer_hex(GATTS_TABLE_TAG, prepare_write_env->prepare_buf, prepare_write_env->prepare_len);
    }else{
        ESP_LOGI(GATTS_TABLE_TAG,"ESP_GATT_PREP_WRITE_CANCEL");
    }
    if (prepare_write_env->prepare_buf) {
        free(prepare_write_env->prepare_buf);
        prepare_write_env->prepare_buf = NULL;
    }
    prepare_write_env->prepare_len = 0;
}

static void audio_send(void *arg)//音频文件传送
{
    uint32_t ulNotificationValue = 1;
    struct dirent *entry;
    DataMessage msg;
    esp_err_t ret;

    while (1) {
        if (xQueueReceive(data_queue2, &msg, portMAX_DELAY) == pdPASS) {
            if(msg.length != 0){//续传模式
                uint64_t address;
                char filename[100] = {0};
                memcpy(&address, msg.data, sizeof(address));
                size_t filename_length = msg.length - sizeof(address);
                if (filename_length > sizeof(filename) - 1) {
                    ESP_LOGE(GATTS_TABLE_TAG, "Filename too long");
                    break;
                }
                memcpy(filename, msg.data + sizeof(address), filename_length);
                filename[filename_length] = '\0'; // Ensure null termination

                ESP_LOGI(GATTS_TABLE_TAG,"Address: %llu\n", address);
                ESP_LOGI(GATTS_TABLE_TAG,"Filename: %s\n", filename);

                if(file_send(filename,address) != ESP_OK){
                    break;
                }
            }
            else{//非续传模式
                while ((entry = readdir(dir)) != NULL) {
                    if (entry->d_type == DT_REG) { // Regular file
                        const char *ext = strrchr(entry->d_name, '.'); // Get the file extension
                        if (ext != NULL && strcmp(ext, ".aac") == 0) { // Check if the extension is ".wav"
                            ret = file_send(entry->d_name,0);
                            if (ret != ESP_OK) {
                                if(ret == ESP_ERR_NOT_FOUND){continue;}
                                else{break;}
                            }
                        }else{
                            continue;
                        }
                    }
                }
            }
        }
        break;
    }

    //ulNotificationValue = ulTaskNotifyTake(pdTRUE, pdMS_TO_TICKS(WAIT_TIME));
    if (ulNotificationValue > 0 && timeout_flag == false) {
            command_send(0x6007);//发送全部文件传输完成标志
            ESP_LOGI("BLE", "Sending all files complete");
    } else if(timeout_flag == true){

        ESP_LOGI("BLE", "timeout,sending over");
        error_string_send("timeout,sending over",0x2007);
    }

    STATUS status = IDLE;
    if (xQueueSend(status_queue, &status, portMAX_DELAY) != pdPASS) 
        ESP_LOGE(GATTS_TABLE_TAG, "Failed to send data message to queue");

    vTaskDelay(portMAX_DELAY);
}

void data_processing_task(void *arg) {
    DataMessage msg;
    uint8_t *buffer = NULL;
    uint64_t Badge_ID_Array = 0;//接收到的Badge_ID
    uint64_t Employee_ID_Array = 0;//接收到的Employee_ID
    uint16_t MsgLen;//接收到的消息长度
    uint16_t MsgType;//接收到的消息类型(命令字)
    uint16_t variable_data_len;//接收到的不定长数据部分长度
    ESP_LOGI(TAG, "ble connect success,data_processing_task begin");

    while(1)
    {
        if (xQueueReceive(data_queue, &msg,  portMAX_DELAY) == pdPASS) {
            MsgLen = msg.data[0] << 8 | msg.data[1];
            MsgType = msg.data[2]<<8 | msg.data[3];
            memcpy(&Badge_ID_Array, &msg.data[4], 8);
            memcpy(&Employee_ID_Array, &msg.data[12], 8);
            variable_data_len = MsgLen - 22;// 计算不定长度的数据部分长度
                    /*//测试报文生成
                    unsigned char encrypt_text[100]={0};
                    char input_text[32] = {0x3f, 0xd8, 0xcb, 0x45, 0xd9, 0x0f, 0xd6, 0x03,
        0x91, 0xcc, 0xf2, 0x4e, 0x0a, 0x3e, 0xee, 0x06,
        0x84, 0x09, 0x21, 0x41, 0xeb, 0x4c, 0x1c, 0x12,
        0xd0, 0xb4, 0x83, 0xd9, 0xb7, 0x74, 0xb1, 0xb7};
                    ESP_LOGI(TAG, "length:%u",strlen(input_text));
                    aes_encrypt_decrypt(key,(uint8_t *)input_text,strlen(input_text),0,encrypt_text,iv);
                    ESP_LOG_BUFFER_HEX("encrypt_text:", encrypt_text, 100);
                    uint8_t *TLV_buffer = NULL;
                    TLV_message_creat(&TLV_buffer,8,32,encrypt_text);
                    message_creat(&buffer,22+16+4,0x0010,Badge_ID,Employee_ID,TLV_buffer);
                    ESP_LOG_BUFFER_HEX("message_creat:", buffer, 100);
                    message_creat(&buffer,22,0x0001,12345678,87654321,NULL);
                    message_creat(&buffer,22+32+4,0x0008,Badge_ID,Employee_ID,TLV_buffer);
                    message_creat(&buffer,22,0x0003,Badge_ID,Employee_ID,NULL);
                    ESP_LOG_BUFFER_HEX("message_creat:", buffer, 22);
                    message_creat(&buffer,22,0x0004,Badge_ID,Employee_ID,NULL);
                    ESP_LOG_BUFFER_HEX("message_creat:", buffer, 22);
                    message_creat(&buffer,22,0x3007,Badge_ID,Employee_ID,NULL);
                    ESP_LOG_BUFFER_HEX("message_creat:", buffer, 22);
                    message_creat(&buffer,22,0x0007,Badge_ID,Employee_ID,NULL);
                    ESP_LOG_BUFFER_HEX("message_creat:", buffer, 22);
                    */
                    /*//续传测试报文生成
                    uint64_t address = 1;
                    char filename[] = "99999999_14332233.wav";
                    uint8_t *value = (uint8_t *)malloc(50);
                    if (*value == NULL) {
                        ESP_LOGE(TAG, "malloc failed");
                    }
                    memcpy(value, &address, sizeof(address));
                    memcpy(value + 8, filename, strlen(filename));
                    TLV_message_creat(&TLV_buffer,6,sizeof(address)+strlen(filename),value);
                    message_creat(&buffer,22+4+sizeof(address)+strlen(filename),0x4007,Badge_ID,Employee_ID,TLV_buffer);
                    ESP_LOG_BUFFER_HEX("message_creat:", buffer, 22+4+sizeof(address)+strlen(filename));
                    */
            if(message_processing(msg.data,msg.length,variable_data_len)){//工牌接收信息CRC校验成功,继续执行之后的步骤
                ESP_LOGI(GATTS_TABLE_TAG, "CRC16 right");
                if(MsgType == 0x0002 || MsgType == 0x0001 ||MsgType == 0x1006 || (Badge_ID_Array == Badge_ID && Employee_ID_Array == Employee_ID))
                {
                    if(MsgType == 0x0001)//修改工牌id与员工工号
                    {
                        if(Badge_ID_Array <=99999999 && Employee_ID_Array <=99999999){
                            save_data_to_nvs(DEVICE_ID_NVS,Badge_ID_Array);
                            save_data_to_nvs(EMPLOYEE_ID_NVS,Employee_ID_Array);
                            read_data_from_nvs(DEVICE_ID_NVS, &Badge_ID);
                            read_data_from_nvs(EMPLOYEE_ID_NVS, &Employee_ID);
                            if(Badge_ID == Badge_ID_Array && Employee_ID == Employee_ID_Array){//修改成功
                                command_send(0x1001);
                            }else{//修改失败
                                error_string_send("failed to save device id and employee id in nvs",0x2001);
                            }
                        }else{
                            error_string_send("device id or employee id out of range",0x2001);
                        }
                    }
                    else if(MsgType == 0x0002){//读取工牌id与员工工号
                        command_send(0x1002);
                    }
                    else if(MsgType == 0x0003)//录音启停请求
                    {
                        if(status_flag == IDLE){
                            STATUS status = RECORDING;
                            if (xQueueSend(status_queue, &status, portMAX_DELAY) != pdPASS) 
                                ESP_LOGE(TAG, "Failed to send data message to queue");
                        }else if(status_flag == RECORDING){
                            STATUS status = IDLE;
                            if (xQueueSend(status_queue, &status, portMAX_DELAY) != pdPASS) 
                                ESP_LOGE(TAG, "Failed to send data message to queue");
                        }else{
                            ESP_LOGE(TAG, "status_flag is not IDLE or RECORDING");
                            error_string_send("status_flag is not IDLE or RECORDING",0x2003);
                        }
                    }
                    else if(MsgType == 0x1006)//平台接收设备故障消息成功应答//已取消
                    {
                        if(xReceiverTaskHandle3!=NULL){xTaskNotifyGive(xReceiverTaskHandle3);}
                        else{ESP_LOGI(GATTS_TABLE_TAG, "xReceiverTaskHandle3 is NULL");}
                    }
                    else if(MsgType == 0x0007)//电子工牌上传音频数据
                    {
                        audio_send_msg.length = 0;

                        STATUS status = FILE_SENDING;
                        if (xQueueSend(status_queue, &status, portMAX_DELAY) != pdPASS) 
                            ESP_LOGE(TAG, "Failed to send data message to queue");
                    }
                    else if(MsgType == 0x3007)//平台接收音频数据成功响应
                    {
                        if(status_flag == FILE_SENDING){
                            xTaskNotifyGive(xReceiverTaskHandle);
                        }else{
                            ESP_LOGE(TAG, "status_flag is not FILE_SENDING");
                            error_string_send("status_flag is not FILE_SENDING",0x2007);
                        }
                    }
                    else if(MsgType == 0x4007)//电子工牌上传音频数据(续传)//已取消，暂设置为内存卡格式化作调试用
                    {
                        // uint8_t variable_data[variable_data_len];
                        // memcpy(variable_data, &msg.data[20], variable_data_len);
                        // uint16_t TAG = variable_data[0] << 8 | variable_data[1];
                        // uint16_t Length = variable_data[2] << 8 | variable_data[3];
                        // uint8_t variable_value[variable_data_len-4];
                        // memcpy(variable_value, &variable_data[4], variable_data_len-4);//variable_value为平台之前收到的文件的包数量与文件名

                        // // unsigned char decrypted_text[variable_data_len-4];
                        // // memset(decrypted_text, 0, sizeof(decrypted_text));
                        // // aes_encrypt_decrypt(key,variable_value,variable_data_len-4,0,decrypted_text,iv);
                        // // ESP_LOG_BUFFER_HEX("decrypted_text:", decrypted_text, variable_data_len-4);
                        // // ESP_LOGI(GATTS_TABLE_TAG, "decrypted_text_string:%s", decrypted_text);
                        // //memcpy(audio_send_msg.data, decrypted_text,variable_data_len-4-decrypted_text[variable_data_len-4-1]);
                        // //audio_send_msg.length = variable_data_len-4-decrypted_text[variable_data_len-4-1];
                        
                        // memcpy(audio_send_msg.data, variable_value,variable_data_len-4);
                        // audio_send_msg.length = variable_data_len-4;

                        // STATUS status = FILE_SENDING;
                        // if (xQueueSend(status_queue, &status, portMAX_DELAY) != pdPASS) 
                        //     ESP_LOGE(GATTS_TABLE_TAG, "Failed to send data message to queue");
                        formatt_SDcard();
                    }
                    else if(MsgType == 0x0008)//平台发送会话密钥到工牌//已取消
                    {
                        uint8_t variable_data[variable_data_len];
                        memcpy(variable_data, &msg.data[20], variable_data_len);
                        uint16_t TAG = variable_data[0] << 8 | variable_data[1];
                        uint16_t Length = variable_data[2] << 8 | variable_data[3];
                        if(variable_data_len!=0 && Length == variable_data_len-4 && Length == 32){//工牌成功接收会话密钥 AES-256的key长度是 32 字节
                            uint8_t variable_value[variable_data_len-4];
                            memcpy(variable_value, &variable_data[4], variable_data_len-4);

                            store_data_to_nvs(KEY_NVS, variable_value, 32);
                            retrieve_data_from_nvs(KEY_NVS, key, 32);
                            if(memcmp(variable_value,key,32) == 0){
                                command_send(0x1008);
                            }else{
                                error_string_send("failed to save key in nvs",0x2008);
                            }
                            /*//生成加密工单号(测试用)
                                unsigned char encrypt_text[16]={0};
                                uint8_t input_text_array[8] = "14332233";
                                aes_encrypt_decrypt(key,input_text_array,8,1,encrypt_text,iv);
                                uint8_t *TLV_buffer8 = NULL;
                                TLV_message_creat(&TLV_buffer8,1,16,encrypt_text);
                                message_creat(&buffer,22+16+4,0x0010,Badge_ID,Employee_ID,TLV_buffer8);
                                ESP_LOG_BUFFER_HEX("message_creat:", buffer, 22+16+4);
                            */
                        }else{//工牌失败接收会话密钥
                            ESP_LOGE("TAG", "failed to receive key due to format error");
                        }
                    }
                    else if(MsgType == 0x0010)//平台发送工单号到工牌//已取消
                    {
                        uint8_t *variable_data = &msg.data[20];
                        uint8_t *value = &variable_data[4];
                        Work_order_number_set = true;
                        unsigned char decrypted_text[16]={0};
                        ESP_LOG_BUFFER_HEX("value:", value, 16);
                        aes_encrypt_decrypt(key,value,16,0,decrypted_text,iv);
                        memcpy(Work_order_number, decrypted_text, 8);
                        ESP_LOG_BUFFER_HEX("Work_order_number(HEX):", Work_order_number, 8);
                        command_send(0x1010);
                        //**************************************测试用,将解密后的工单号发送给平台********** */
                        // uint8_t *TLV_buffer = NULL;
                        // TLV_message_creat(&TLV_buffer,1,8,Work_order_number);
                        // message_creat(&buffer,22+8+4,0x00ff,Badge_ID,Employee_ID,TLV_buffer);
                        // esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],22+8+4, buffer, false);
                        //******************************************* */
                    }
                    else if(MsgType == 0x7007)//停止文件传输
                    {
                        if(status_flag == FILE_SENDING){
                            STATUS status = IDLE;
                            if (xQueueSend(status_queue, &status, portMAX_DELAY) != pdPASS) 
                                ESP_LOGE(GATTS_TABLE_TAG, "Failed to send data message to queue");
                        }else{
                            error_string_send("status is not file sending",0x2007);
                        }
                    }
                    else if(MsgType == 0x0011)//暂停录音
                    {
                        if(status_flag == RECORDING){
                            if(recording_pause_flag == false){
                                pause_feed_Task();
                                recording_pause_flag = true;
                                led_reset_mode1(BLINK_SLOW);
                                led_set_mode1(CONSTANT_ON);
                                command_send(0x1011);
                                ESP_LOGI(TAG, "recording is paused");
                            }else{
                                resume_feed_Task();
                                recording_pause_flag = false;
                                led_reset_mode1(CONSTANT_ON);
                                led_set_mode1(BLINK_SLOW);
                                command_send(0x1011);
                                ESP_LOGI(TAG, "recording is resumed");
                            }
                        }else{
                            error_string_send("status is not recording",0x2011);
                        }
                    }
                }
                else{//App与工牌的工牌id和员工id不匹配
                    ESP_LOGI(GATTS_TABLE_TAG, "Badge_ID or Employee_ID mismatch");
                    error_string_send("Badge_ID or Employee_ID mismatch",0xff00);
                }
            }
            else{//CRC16校验失败
                ESP_LOGI(GATTS_TABLE_TAG, "CRC16 wrong");
                error_string_send("CRC16 wrong",0xffff);
                continue;
            }
        }
    }
    if(buffer!=NULL){free(buffer);buffer = NULL;}
    vTaskDelete(NULL); // 任务执行完成后删除自己
}

uint8_t* error_buffer = NULL;
uint8_t *error_TLV_buffer = NULL;

void error_upload_task(void *arg) {
    ErrorMessage msg = {0};
    const TickType_t xMaxBlockTime = pdMS_TO_TICKS(1000); // 5000ms (5 seconds)
    uint32_t ulNotificationValue = 1;

    while(1) {
        // Wait for a notification, with a timeout of 5 seconds
        //ulNotificationValue = ulTaskNotifyTake(pdTRUE, xMaxBlockTime);
        if (ulNotificationValue > 0) {
            ESP_LOGI(GATTS_TABLE_TAG, "Received notification");
            UBaseType_t messages_waiting = uxQueueMessagesWaiting(data_queue3);
            ESP_LOGI(TAG, "Error queue has %d messages waiting", messages_waiting);
            // If a notification was received, process the received message
            if (xQueueReceive(data_queue3, &msg, portMAX_DELAY) == pdPASS) {
                TLV_message_creat(&error_TLV_buffer, 0x0005, msg.length, msg.data);
                message_creat(&error_buffer, 22 + msg.length + 4, msg.error_code, Badge_ID, Employee_ID, error_TLV_buffer);
                esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],
                                            22 + msg.length + 4, error_buffer, false);
                vTaskDelay(pdMS_TO_TICKS(DELAY_TIME));
            }
        } else {
            ESP_LOGI(GATTS_TABLE_TAG, "Resend notification");
            // If no notification was received within the timeout period, execute resend logic
            // Assume that `msg` contains the last message to be resent. This may need to be adjusted.
            TLV_message_creat(&error_TLV_buffer, 0x0005, msg.length, msg.data);
            message_creat(&error_buffer, 22 + msg.length + 4, msg.error_code, Badge_ID, Employee_ID, error_TLV_buffer);
            esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],
                                        22 + msg.length + 4, error_buffer, false);
        }
    }
}

static void gatts_profile_event_handler(esp_gatts_cb_event_t event, esp_gatt_if_t gatts_if, esp_ble_gatts_cb_param_t *param)
{
    switch (event) {
        case ESP_GATTS_REG_EVT:{
            esp_err_t set_dev_name_ret = esp_ble_gap_set_device_name(SAMPLE_DEVICE_NAME);
            if (set_dev_name_ret){
                ESP_LOGE(GATTS_TABLE_TAG, "set device name failed, error code = %x", set_dev_name_ret);
            }
    #ifdef CONFIG_SET_RAW_ADV_DATA
            esp_err_t raw_adv_ret = esp_ble_gap_config_adv_data_raw(raw_adv_data, sizeof(raw_adv_data));
            if (raw_adv_ret){
                ESP_LOGE(GATTS_TABLE_TAG, "config raw adv data failed, error code = %x ", raw_adv_ret);
            }
            adv_config_done |= ADV_CONFIG_FLAG;
            esp_err_t raw_scan_ret = esp_ble_gap_config_scan_rsp_data_raw(raw_scan_rsp_data, sizeof(raw_scan_rsp_data));
            if (raw_scan_ret){
                ESP_LOGE(GATTS_TABLE_TAG, "config raw scan rsp data failed, error code = %x", raw_scan_ret);
            }
            adv_config_done |= SCAN_RSP_CONFIG_FLAG;
    #else
            //config adv data
            esp_err_t ret = esp_ble_gap_config_adv_data(&adv_data);
            if (ret){
                ESP_LOGE(GATTS_TABLE_TAG, "config adv data failed, error code = %x", ret);
            }
            adv_config_done |= ADV_CONFIG_FLAG;
            //config scan response data
            ret = esp_ble_gap_config_adv_data(&scan_rsp_data);
            if (ret){
                ESP_LOGE(GATTS_TABLE_TAG, "config scan response data failed, error code = %x", ret);
            }
            adv_config_done |= SCAN_RSP_CONFIG_FLAG;
    #endif
            esp_err_t create_attr_ret = esp_ble_gatts_create_attr_tab(gatt_db, gatts_if, HRS_IDX_NB, SVC_INST_ID);
            if (create_attr_ret){
                ESP_LOGE(GATTS_TABLE_TAG, "create attr table failed, error code = %x", create_attr_ret);
            }
        }
       	    break;
        case ESP_GATTS_READ_EVT:
            ESP_LOGI(GATTS_TABLE_TAG, "ESP_GATTS_READ_EVT");
       	    break;
        case ESP_GATTS_WRITE_EVT:
            if (!param->write.is_prep){
                // the data length of gattc write  must be less than GATTS_DEMO_CHAR_VAL_LEN_MAX.
                ESP_LOGI(GATTS_TABLE_TAG, "GATT_WRITE_EVT, handle = %d, value len = %d, value :%s", param->write.handle, param->write.len, param->write.value);
                ESP_LOG_BUFFER_HEX(TAG, param->write.value , param->write.len);
                if(profile_handle_table[IDX_CHAR_CFG_TPMS_IN] == param->write.handle&& param->write.len == 2){
                    uint16_t descr_value = param->write.value[1]<<8 | param->write.value[0];
                    ESP_LOGI(GATTS_TABLE_TAG, "descr_value = %x",descr_value);
                }
                else if(profile_handle_table[IDX_CHAR_VAL_TPMS_IN] == param->write.handle){
                    DataMessage msg;
                    memcpy(msg.data, param->write.value, param->write.len);
                    msg.length = param->write.len;
                    // 发送消息到队列
                    if (xQueueSend(data_queue, &msg, portMAX_DELAY) != pdPASS) {
                        ESP_LOGE(TAG, "Failed to send data message to queue");
                    }
                }
                /* send response when param->write.need_rsp is true*/
                if (param->write.need_rsp){
                    esp_ble_gatts_send_response(gatts_if, param->write.conn_id, param->write.trans_id, ESP_GATT_OK, NULL);
                }
            }else{
            }
            break;
        case ESP_GATTS_EXEC_WRITE_EVT:
            // the length of gattc prepare write data must be less than GATTS_DEMO_CHAR_VAL_LEN_MAX.
            ESP_LOGI(GATTS_TABLE_TAG, "ESP_GATTS_EXEC_WRITE_EVT");
            example_exec_write_event_env(&prepare_write_env, param);
            break;
        case ESP_GATTS_MTU_EVT:
            ESP_LOGI(GATTS_TABLE_TAG, "ESP_GATTS_MTU_EVT, MTU %d", param->mtu.mtu);
            break;
        case ESP_GATTS_CONF_EVT:
            //ESP_LOGI(GATTS_TABLE_TAG, "ESP_GATTS_CONF_EVT, status = %d, attr_handle %d", param->conf.status, param->conf.handle);
            break;
        case ESP_GATTS_START_EVT:
            ESP_LOGI(GATTS_TABLE_TAG, "SERVICE_START_EVT, status %d, service_handle %d", param->start.status, param->start.service_handle);
            break;
        case ESP_GATTS_CONNECT_EVT:
            ESP_LOGI(GATTS_TABLE_TAG, "ESP_GATTS_CONNECT_EVT, conn_id = %d", param->connect.conn_id);
            esp_log_buffer_hex(GATTS_TABLE_TAG, param->connect.remote_bda, 6);
            esp_ble_conn_update_params_t conn_params = {0};
            memcpy(conn_params.bda, param->connect.remote_bda, sizeof(esp_bd_addr_t));
            /* For the iOS system, please refer to Apple official documents about the BLE connection parameters restrictions. */
            conn_params.latency = 0;
            conn_params.max_int = 0x20;    // max_int = 0x20*1.25ms = 40ms
            conn_params.min_int = 0x10;    // min_int = 0x10*1.25ms = 20ms
            conn_params.timeout = 400;    // timeout = 400*10ms = 4000ms
            //start sent the update connection parameters to the peer device.
            esp_ble_gap_update_conn_params(&conn_params);

//########################################################################################## */自己添加的部分
            data_queue = xQueueCreate(DATA_QUEUE_LENGTH, sizeof(DataMessage)); // 创建向data_processing_task传递数据的队列
            if (data_queue == NULL) {
                ESP_LOGE(TAG, "Failed to create data_processing_task data queue");
            } 
            data_queue3 = xQueueCreate(DATA_QUEUE_LENGTH, sizeof(ErrorMessage)); // 创建向error_upload_task传递数据的队列
            if (data_queue3 == NULL) {
                ESP_LOGE(TAG, "Failed to create error_upload_task data queue3");
            }
            if (xTaskCreate(data_processing_task, "data_processing_task", 1024 * 8, NULL, 10, &xReceiverTaskHandle4) != pdPASS) {
                ESP_LOGE(TAG, "Failed to create data_processing_task");
            }
            if (xTaskCreate(error_upload_task, "error_upload_task", 1024 * 3, NULL, 10, &xReceiverTaskHandle3) != pdPASS) {
                ESP_LOGE(TAG, "Failed to create error_upload_task");
            }
            if(xReceiverTaskHandle3!=NULL){xTaskNotifyGive(xReceiverTaskHandle3);}
                        else{ESP_LOGI(GATTS_TABLE_TAG, "xReceiverTaskHandle3 is NULL");}
            is_connect = true;
///########################################################################################## */
            break;
        case ESP_GATTS_DISCONNECT_EVT:
            ESP_LOGI(GATTS_TABLE_TAG, "ESP_GATTS_DISCONNECT_EVT, reason = 0x%x", param->disconnect.reason);
            esp_ble_gap_start_advertising(&adv_params);
//*************************************************************** */自己添加的部分
            is_connect = false;
            if(status_flag == FILE_SENDING){//蓝牙关闭时,如果文件正在传输,则停止传输
                STATUS status = IDLE;
                if (xQueueSend(status_queue, &status, portMAX_DELAY) != pdPASS) 
                    ESP_LOGE(GATTS_TABLE_TAG, "Failed to send data message to queue");
            }
            if(xReceiverTaskHandle4!= NULL) {vTaskDelete(xReceiverTaskHandle4);xReceiverTaskHandle4 = NULL;}
            if(xReceiverTaskHandle3!= NULL) {vTaskDelete(xReceiverTaskHandle3);xReceiverTaskHandle3 = NULL;}
            if(data_queue != NULL) {vQueueDelete(data_queue);data_queue = NULL;}
            if(data_queue3 != NULL) {vQueueDelete(data_queue3);data_queue3 = NULL;}
            if(error_buffer!=NULL){free(error_buffer);error_buffer = NULL;}
            if(error_TLV_buffer!=NULL){free(error_TLV_buffer);error_TLV_buffer = NULL;}
//*************************************************************** */
            break;
        case ESP_GATTS_CREAT_ATTR_TAB_EVT:
            if (param->add_attr_tab.status != ESP_GATT_OK){
                ESP_LOGE(GATTS_TABLE_TAG, "create attribute table failed, error code=0x%x", param->add_attr_tab.status);
            }
            else if (param->add_attr_tab.num_handle != HRS_IDX_NB){
                ESP_LOGE(GATTS_TABLE_TAG, "create attribute table abnormally, num_handle (%d) \
                        doesn't equal to HRS_IDX_NB(%d)", param->add_attr_tab.num_handle, HRS_IDX_NB);
            }
            else {
                ESP_LOGI(GATTS_TABLE_TAG, "create attribute table successfully, the number handle = %d",param->add_attr_tab.num_handle);
                memcpy(profile_handle_table, param->add_attr_tab.handles, sizeof(profile_handle_table));
                esp_ble_gatts_start_service(profile_handle_table[IDX_SVC]);
            }
            break;
        case ESP_GATTS_STOP_EVT:
        case ESP_GATTS_OPEN_EVT:
        case ESP_GATTS_CANCEL_OPEN_EVT:
        case ESP_GATTS_CLOSE_EVT:
        case ESP_GATTS_LISTEN_EVT:
        case ESP_GATTS_CONGEST_EVT:
        case ESP_GATTS_UNREG_EVT:
        case ESP_GATTS_DELETE_EVT:
        default:
            break;
    }
}

static void gatts_event_handler(esp_gatts_cb_event_t event, esp_gatt_if_t gatts_if, esp_ble_gatts_cb_param_t *param)
{

    /* If event is register event, store the gatts_if for each profile */
    if (event == ESP_GATTS_REG_EVT) {
        if (param->reg.status == ESP_GATT_OK) {
            heart_rate_profile_tab[PROFILE_APP_IDX].gatts_if = gatts_if;
        } else {
            ESP_LOGE(GATTS_TABLE_TAG, "reg app failed, app_id %04x, status %d",
                    param->reg.app_id,
                    param->reg.status);
            return;
        }
    }
    do {
        int idx;
        for (idx = 0; idx < PROFILE_NUM; idx++) {
            /* ESP_GATT_IF_NONE, not specify a certain gatt_if, need to call every profile cb function */
            if (gatts_if == ESP_GATT_IF_NONE || gatts_if == heart_rate_profile_tab[idx].gatts_if) {
                if (heart_rate_profile_tab[idx].gatts_cb) {
                    heart_rate_profile_tab[idx].gatts_cb(event, gatts_if, param);
                }
            }
        }
    } while (0);
}

esp_err_t ble_init(void) {

    esp_err_t ret = ESP_OK;

    ret = init_nvs();
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to initialize NVS: %s", esp_err_to_name(ret));
        return ret;
    }

    ret = read_data_from_nvs(DEVICE_ID_NVS, &Badge_ID); // 从NVS中读取工牌ID到Badge_ID
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to read device ID from NVS: %s", esp_err_to_name(ret));
        ESP_LOGE(TAG, "Set default value 11111111");
        ret = save_data_to_nvs(DEVICE_ID_NVS, DEFAULT_DEVICE_ID); // 设置默认值11111111到NVS
        if (ret != ESP_OK) {
            ESP_LOGE(TAG, "Failed to save default device ID to NVS: %s", esp_err_to_name(ret));
            return ret;
        }
        ret = read_data_from_nvs(DEVICE_ID_NVS, &Badge_ID); // 再次尝试读取工牌ID
        if (ret != ESP_OK) {
            ESP_LOGE(TAG, "Failed to read default device ID from NVS: %s", esp_err_to_name(ret));
            return ret;
        }
    }

    ret = read_data_from_nvs(EMPLOYEE_ID_NVS, &Employee_ID);//将员工ID从NVS读取到Employee_ID
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to read employee ID from NVS: %s", esp_err_to_name(ret));
        ESP_LOGE(TAG, "Set default value 99999999");
        ret = save_data_to_nvs(EMPLOYEE_ID_NVS, DEFAULT_EMPLOYEE_ID); // 设置默认值99999999到NVS
        if (ret != ESP_OK) {
            ESP_LOGE(TAG, "Failed to save default employee ID to NVS: %s", esp_err_to_name(ret));
            return ret;
        }
        ret = read_data_from_nvs(EMPLOYEE_ID_NVS, &Employee_ID); // 再次尝试读取员工ID
        if (ret != ESP_OK) {
            ESP_LOGE(TAG, "Failed to read default employee ID from NVS: %s", esp_err_to_name(ret));
            return ret;
        }
    }

    ret = retrieve_data_from_nvs(KEY_NVS, key, 32);//将密钥从NVS读取到key
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to retrieve key from NVS: %s", esp_err_to_name(ret));
        ESP_LOGE(TAG, "Set default key value");
        ret = store_data_to_nvs(KEY_NVS , default_key, 32); // 设置默认密钥到NVS
        if (ret != ESP_OK) {
            ESP_LOGE(TAG, "Failed to store default key to NVS: %s", esp_err_to_name(ret));
            return ret;
        }
        ret = retrieve_data_from_nvs(KEY_NVS, key, 32);
        if (ret != ESP_OK) {
            ESP_LOGE(TAG, "Failed to retrieve default key from NVS: %s", esp_err_to_name(ret));
            return ret;
        }
    }

    ret = esp_bt_controller_mem_release(ESP_BT_MODE_CLASSIC_BT);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to release BT memory: %s", esp_err_to_name(ret));
        return ret;
    }

    esp_bt_controller_config_t bt_cfg = BT_CONTROLLER_INIT_CONFIG_DEFAULT();
    ret = esp_bt_controller_init(&bt_cfg);
    if (ret != ESP_OK) {
        ESP_LOGE(GATTS_TABLE_TAG, "%s enable controller failed: %s", __func__, esp_err_to_name(ret));
        return ret;
    }

    ret = esp_bt_controller_enable(ESP_BT_MODE_BLE);
    if (ret != ESP_OK) {
        ESP_LOGE(GATTS_TABLE_TAG, "%s enable controller failed: %s", __func__, esp_err_to_name(ret));
        return ret;
    }

    esp_bluedroid_config_t bluedroid_cfg = BT_BLUEDROID_INIT_CONFIG_DEFAULT();
    ret = esp_bluedroid_init_with_cfg(&bluedroid_cfg);
    if (ret != ESP_OK) {
        ESP_LOGE(GATTS_TABLE_TAG, "%s init bluetooth failed: %s", __func__, esp_err_to_name(ret));
        return ret;
    }

    ret = esp_bluedroid_enable();
    if (ret != ESP_OK) {
        ESP_LOGE(GATTS_TABLE_TAG, "%s enable bluetooth failed: %s", __func__, esp_err_to_name(ret));
        return ret;
    }

    ret = esp_ble_gatts_register_callback(gatts_event_handler);
    if (ret != ESP_OK) {
        ESP_LOGE(GATTS_TABLE_TAG, "gatts register error, error code = %x", ret);
        return ret;
    }

    ret = esp_ble_gap_register_callback(gap_event_handler);
    if (ret != ESP_OK) {
        ESP_LOGE(GATTS_TABLE_TAG, "gap register error, error code = %x", ret);
        return ret;
    }

    ret = esp_ble_gatts_app_register(ESP_APP_ID);
    if (ret != ESP_OK) {
        ESP_LOGE(GATTS_TABLE_TAG, "gatts app register error, error code = %x", ret);
        return ret;
    }

    ret = esp_ble_gatt_set_local_mtu(517);
    if (ret != ESP_OK) {
        ESP_LOGE(GATTS_TABLE_TAG, "set local MTU failed, error code = %x", ret);
        return ret;
    }

    return ret;
}

void error_string_send(char* error_string,uint16_t error_code)  
{
    ErrorMessage msg = {0};
    size_t error_string_len = strlen(error_string);
    if (error_string_len >= MAX_DATA_LENGTH) {
        // 如果字符串长度超过 msg.data 的大小，进行截断
        error_string_len = MAX_DATA_LENGTH - 1;
    }
    memcpy(msg.data, error_string, error_string_len);
    msg.length = error_string_len;

    if (error_string_len < MAX_DATA_LENGTH) {
        msg.data[error_string_len] = '\0';
    }

    msg.error_code = error_code;

    led_warning();
    
    if(data_queue3 == NULL){
        ESP_LOGE(TAG, "queue3 is NULL");
        return;
    }
    if (xQueueSend(data_queue3, &msg, portMAX_DELAY) != pdPASS) {
        ESP_LOGE(TAG, "Failed to send data message to queue3");
    }
}

esp_err_t command_send(uint16_t command_id)
{
    uint8_t *buffer = NULL;
    message_creat(&buffer,22,command_id,Badge_ID,Employee_ID,NULL);

    // 检查蓝牙连接状态
    if (is_connect == false) {
        ESP_LOGW(GATTS_TABLE_TAG, "BLE is not connected, cannot send command");
        if (buffer != NULL) { free(buffer); }
        return ESP_FAIL;
    }

    esp_err_t ret = esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, 
        profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],22, buffer, false);
    if (ret != ESP_OK){
        ESP_LOGE(GATTS_TABLE_TAG, "send indicate failed, error code = %x", ret);
        if (buffer != NULL) { free(buffer); }
        return ret;
    }
    if(buffer!= NULL){free(buffer);}

    return ret;
}

esp_err_t file_send_init(void)
{
    dir = opendir(RECORDING_FILE_PATH);
    if (dir == NULL) {
        ESP_LOGE(TAG, "Failed to open directory");
        error_string_send("Failed to open directory",0x2007);
        return ESP_FAIL;
    }

    data_queue2 = xQueueCreate(DATA_QUEUE_LENGTH, sizeof(DataMessage));//创建向audio_send函数传递数据的队列
    if (data_queue2 == NULL) {
        ESP_LOGE(TAG, "Failed to create data queue2");
        return ESP_FAIL;
    }

    xTaskCreate(audio_send, "audio_send", 1024 * 8, NULL, 10, &xReceiverTaskHandle);
    if (xReceiverTaskHandle == NULL) {
        ESP_LOGE(TAG, "Failed to create audio_send task");
        return ESP_FAIL;
    }

    if (xQueueSend(data_queue2, &audio_send_msg, portMAX_DELAY) != pdPASS) {
        ESP_LOGE(TAG, "Failed to send data message to queue2");   
        return ESP_FAIL;
    }

    return ESP_OK;
}

esp_err_t file_send_end(void)//资源释放
{
    if(xReceiverTaskHandle != NULL){vTaskDelete(xReceiverTaskHandle);xReceiverTaskHandle = NULL;}
    if(data_queue2!= NULL){vQueueDelete(data_queue2);data_queue2 = NULL;}
    if(buffer3!=NULL){free(buffer3);buffer3 = NULL;}
    if(TLV_buffer3!=NULL){free(TLV_buffer3);TLV_buffer3 = NULL;}
    if(file!=NULL){fclose(file);file = NULL;}
    if(dir!=NULL){closedir(dir);dir = NULL;};
    
    return ESP_OK;
}

esp_err_t file_send(char * file_name,uint64_t address)
{
    uint32_t ulNotificationValue = 1;
    timeout_flag = false;

    // 打开文件
    char file_path[FILENAME_MAX_LENGTH + sizeof(RECORDING_FILE_PATH)];
    snprintf(file_path, sizeof(file_path), "%s/%s", RECORDING_FILE_PATH, file_name);
    file = fopen(file_path, "r");
    if (file == NULL) {
        ESP_LOGE("BLE", "Failed to open file: %s,try to open next file", file_path);
        char formatted_message[256]; // 假设最大消息长度为256
        snprintf(formatted_message, sizeof(formatted_message), "Failed to open file, maybe file %s not exist, try to open next file", file_path);
        error_string_send(formatted_message, 0x2007);
        return ESP_ERR_NOT_FOUND;
    }

    // 移动到指定的偏移位置
    if (fseek(file, address * (FILE_TRAN_SIZE-16), SEEK_SET) != 0) {
        ESP_LOGE("BLE", "Failed to seek to position: %llu", address * (FILE_TRAN_SIZE-16));
        error_string_send("Failed to seek to position:",0x2007);
        if(file!=NULL){fclose(file);file = NULL;}
        return ESP_FAIL;
    }

    //发送文件名
    ESP_LOGI("BLE", "Sending file: %s", file_path);
    TLV_message_creat(&TLV_buffer3,0x0001,strlen(file_name),(uint8_t *)file_name);
    message_creat(&buffer3,22+strlen(file_name)+4,0x1007,Badge_ID,Employee_ID,TLV_buffer3);
    //ulNotificationValue = ulTaskNotifyTake(pdTRUE, pdMS_TO_TICKS(WAIT_TIME));
    if (ulNotificationValue > 0) {
        esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],22+strlen(file_name)+4, buffer3, false);
        vTaskDelay(pdMS_TO_TICKS(DELAY_TIME));
    }else {
        timeout_flag = true;
        return ESP_FAIL;
    }

    // 发送文件大小
    off_t file_size = get_file_size(file_path);
//************************************* */待修改,将file_size直接发送,不用转换为char
//TLV_message_creat(&TLV_buffer3,2,strlen(size_str),(uint8_t *)file_size);
    char size_str[20];
    snprintf(size_str, sizeof(size_str), "%ld", (long)file_size);
    ESP_LOGI("BLE", "size_str: %s", size_str);
//************************************ */
    TLV_message_creat(&TLV_buffer3,2,strlen(size_str),(uint8_t *)size_str);
    message_creat(&buffer3,22+strlen(size_str)+4,0x1007,Badge_ID,Employee_ID,TLV_buffer3);
    //ulNotificationValue = ulTaskNotifyTake(pdTRUE, pdMS_TO_TICKS(WAIT_TIME));
    if (ulNotificationValue > 0) {
        esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],22+strlen(size_str)+4, buffer3, false);
        vTaskDelay(pdMS_TO_TICKS(DELAY_TIME));
    } else {
        timeout_flag = true;
        return ESP_FAIL;
    }

    // 发送文件内容
    uint8_t buffer[FILE_TRAN_SIZE - 16];
    size_t bytes_read;
    //unsigned char encrypt_text[FILE_TRAN_SIZE];
    while ((bytes_read = fread(buffer, 1, sizeof(buffer), file)) > 0) {
            //ESP_LOG_BUFFER_HEX("original",buffer,bytes_read);
            //aes_encrypt_decrypt(key,buffer,bytes_read,1,encrypt_text,iv);
            //TLV_message_creat(&TLV_buffer3,0x0004,sizeof(encrypt_text),encrypt_text);
            TLV_message_creat(&TLV_buffer3,0x0004,bytes_read,buffer);
            message_creat(&buffer3,22+bytes_read+4,0x1007,Badge_ID,Employee_ID,TLV_buffer3);
            //ESP_LOGI("BLE", "sizeof(encrypt_text): %d", sizeof(encrypt_text));
            //ulNotificationValue = ulTaskNotifyTake(pdTRUE, pdMS_TO_TICKS(WAIT_TIME));
            if (ulNotificationValue > 0) {
                esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],
                                        22+bytes_read+4, buffer3, false);
                vTaskDelay(pdMS_TO_TICKS(DELAY_TIME));
            } else {
                timeout_flag = true;
                return ESP_FAIL;
            }
    }

    if(file!=NULL){fclose(file);file = NULL;}

    //ulNotificationValue = ulTaskNotifyTake(pdTRUE, pdMS_TO_TICKS(WAIT_TIME));
    if (ulNotificationValue > 0) {
        command_send(0x5007);//发送单个文件传输完成标志
        vTaskDelay(pdMS_TO_TICKS(DELAY_TIME));
        /*//删除文件
        //     if (remove(file_path) != 0) {
        //         ESP_LOGE("BLE", "Failed to delete file: %s", file_path);
        //         error_string_send("Failed to delete file:",0x2007);
        //     } else {
        //         ESP_LOGI("BLE", "Deleted file: %s", file_path);
        //     }
        */
    } else {
        ESP_LOGI("BLE", "timeout,but sending over");
        timeout_flag = true;
        return ESP_FAIL;
    }
    ESP_LOGI("BLE", "Sending %s complete",file_path);

    return ESP_OK;
}