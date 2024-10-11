/*
 * SPDX-FileCopyrightText: 2021-2023 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Unlicense OR CC0-1.0
 */

#include <inttypes.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/event_groups.h"
#include "esp_system.h"
#include "esp_log.h"
#include "esp_bt.h"
#include "esp_gap_ble_api.h"
#include "esp_gatts_api.h"
#include "esp_bt_defs.h"
#include "esp_bt_main.h"
#include "gatts_table_creat_demo.h"
#include "i2s_recorder.h"
#include <dirent.h> 
#include "esp_vfs_fat.h"
#include "esp_gatt_common_api.h"
#include "sdcard.h"
#include "id_nvs.h"
#include "message.h"
#include "main.h"


#define GATTS_TABLE_TAG "GATTS_TABLE_DEMO"

#define PROFILE_NUM                 1
#define PROFILE_APP_IDX             0
#define ESP_APP_ID                  0x55
#define SAMPLE_DEVICE_NAME          "ESP_GATTS_DEMO"
#define SVC_INST_ID                 0

/* The max length of characteristic value. When the GATT client performs a write or prepare write operation,
*  the data length must be less than GATTS_DEMO_CHAR_VAL_LEN_MAX.
*/
#define GATTS_DEMO_CHAR_VAL_LEN_MAX 500
#define PREPARE_BUF_MAX_SIZE        1024
#define CHAR_DECLARATION_SIZE       (sizeof(uint8_t))

#define ADV_CONFIG_FLAG             (1 << 0)
#define SCAN_RSP_CONFIG_FLAG        (1 << 1)


extern STATUS status_flag;
extern ERROR error_flag;
bool notify_enable = false;
bool key_set = false;
bool Work_order_number_set = false;
bool receive_success = false;
static uint64_t Badge_ID = 0;
static uint64_t Employee_ID = 0;
// uint8_t key[32] = {//生成报文时用,非内部固定key
//         0x60, 0x3d, 0xeb, 0x10, 0x15, 0xca, 0x71, 0xbe, 
//         0x2b, 0x73, 0xae, 0xf0, 0x85, 0x7d, 0x77, 0x81, 
//         0x1f, 0x35, 0x2c, 0x07, 0x3b, 0x61, 0x08, 0xd7, 
//         0x2d, 0x98, 0x10, 0xa3, 0x09, 0x14, 0xdf, 0xf4
//     };
uint8_t key[32] = {0};
uint8_t Work_order_number[9] = {0};
unsigned char iv[16];

static const char *TAG = "BLE";

#define MAX_DATA_LENGTH 500
#define DATA_QUEUE_LENGTH 10
#define FILE_TRAN_SIZE 480

typedef struct {
    uint8_t data[MAX_DATA_LENGTH];
    size_t length;
} DataMessage;
// 定义消息队列句柄
QueueHandle_t data_queue;
QueueHandle_t data_queue2;

static uint8_t adv_config_done       = 0;

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

static void gatts_profile_event_handler(esp_gatts_cb_event_t event,
					esp_gatt_if_t gatts_if, esp_ble_gatts_cb_param_t *param);

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
//static const uint8_t char_prop_read_write_notify   = ESP_GATT_CHAR_PROP_BIT_WRITE | ESP_GATT_CHAR_PROP_BIT_READ | ESP_GATT_CHAR_PROP_BIT_NOTIFY;
//static const uint8_t char_prop_read_notify         = ESP_GATT_CHAR_PROP_BIT_READ | ESP_GATT_CHAR_PROP_BIT_NOTIFY;
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


static void get_TPMS_IN(void *arg)//音频文件发送
{
        ESP_LOGE("BLE", "TEST");
    uint8_t *buffer3 = NULL;
    uint8_t *TLV_buffer = NULL;
    sdmmc_card_t *card = mount_sdcard();
    DIR *dir = opendir(SD_MOUNT_POINT);
    if (dir == NULL) {
        ESP_LOGE("BLE", "Failed to open directory");
        esp_vfs_fat_sdcard_unmount(SD_MOUNT_POINT, card);
        return;
    }
    // Read directory entries and send files
    struct dirent *entry;
    while ((entry = readdir(dir)) != NULL && notify_enable) {
        if (entry->d_type == DT_REG) { // Regular file
            char file_path[FILENAME_MAX_LENGTH + sizeof(SD_MOUNT_POINT)];
            snprintf(file_path, sizeof(file_path), "%s/%s", SD_MOUNT_POINT, entry->d_name);
            FILE *file = fopen(file_path, "r");
            if (file == NULL) {
                ESP_LOGE("BLE", "Failed to open file: %s", file_path);
                continue;
            }
            ESP_LOGI("BLE", "Sending file: %s", file_path);
            
            ESP_LOGI("BLE", "entry->d_name: %s", entry->d_name);
            TLV_message_creat(&TLV_buffer,1,strlen(entry->d_name),(uint8_t *)entry->d_name);
            message_creat(&buffer3,22+strlen(entry->d_name)+4,0x1007,Badge_ID,Employee_ID,TLV_buffer);
            while(!receive_success&&notify_enable)
            {
                    esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],22+strlen(entry->d_name)+4, buffer3, false);
                    vTaskDelay(200 / portTICK_PERIOD_MS);
            }
            receive_success = false;
            off_t file_size = get_file_size(file_path);
            char size_str[20]; // Adjust size according to your needs
            snprintf(size_str, sizeof(size_str), "%ld", (long)file_size);
            ESP_LOGI("BLE", "size_str: %s", size_str);
            TLV_message_creat(&TLV_buffer,2,strlen(size_str),(uint8_t *)size_str);
            message_creat(&buffer3,22+strlen(size_str)+4,0x1007,Badge_ID,Employee_ID,TLV_buffer);
            while(!receive_success&&notify_enable)
            {
                    esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],22+strlen(size_str)+4, buffer3, false);
                    vTaskDelay(200 / portTICK_PERIOD_MS);
            }
            receive_success = false;
            uint8_t buffer[FILE_TRAN_SIZE];
            size_t bytes_read;
            unsigned char encrypt_text[FILE_TRAN_SIZE];
            
            while ((bytes_read = fread(buffer, 1, sizeof(buffer), file)) > 0 && notify_enable) {
                aes_encrypt_decrypt(key,buffer,bytes_read,1,encrypt_text,iv);
                TLV_message_creat(&TLV_buffer,0x0004,sizeof(encrypt_text),encrypt_text);
                message_creat(&buffer3,22+sizeof(encrypt_text)+4,0x1007,Badge_ID,Employee_ID,TLV_buffer);
                ESP_LOGI("BLE", "sizeof(encrypt_text): %d", sizeof(encrypt_text));
                while(!receive_success&&notify_enable)
                {
                    esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],
                                            22+sizeof(encrypt_text)+4, buffer3, false);
                    if(receive_success)
                        break;
                    else
                        vTaskDelay(100 / portTICK_PERIOD_MS);
                }
                receive_success = false;
            }
            fclose(file);
            // if(!notify_enable)//将发送完成的文件删除
            // {
            //     // 删除文件
            //     if (remove(file_path) != 0) {
            //         ESP_LOGE("BLE", "Failed to delete file: %s", file_path);
            //     } else {
            //         ESP_LOGI("BLE", "Deleted file: %s", file_path);
            //     }
            // }

            receive_success = false;
            message_creat(&buffer3,22,0x5007,Badge_ID,Employee_ID,NULL);
            while(!receive_success&&notify_enable)
            {
                esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],
                                                    22, buffer3, false);//发送单个文件传输结束标志
                if(receive_success)
                    break;
                else
                    vTaskDelay(100 / portTICK_PERIOD_MS);
            }
            if(notify_enable){
                ESP_LOGI("BLE", "Sending %s complete",file_path);
            }
        }
    }
    if(notify_enable)
    {
        while(!receive_success&&notify_enable)
        {
            message_creat(&buffer3,22,0x6007,Badge_ID,Employee_ID,NULL);
            esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],
                                                22, buffer3, false);//发送结束标志
            ESP_LOGI("BLE", "Sending all files complete");
            vTaskDelay(200 / portTICK_PERIOD_MS);
        }
    }
    else{
        ESP_LOGI("BLE", "Notify pause");
    }
        if(buffer3!=NULL){
        free(buffer3);
    }
        if(TLV_buffer!=NULL){
        free(TLV_buffer);
    }
    receive_success = false;
    closedir(dir);
    esp_vfs_fat_sdcard_unmount(SD_MOUNT_POINT, card);
    vTaskDelete(NULL);
}

static void audio_send_success(void *arg)//音频文件续传
{
    uint8_t *buffer3 = NULL;
    uint8_t *TLV_buffer = NULL;
    DataMessage msg;
    long address;
    char filename[100] = {0};

    sdmmc_card_t *card = mount_sdcard();
    DIR *dir = opendir(SD_MOUNT_POINT);
    if (dir == NULL) {
        ESP_LOGE("BLE", "Failed to open directory");
        esp_vfs_fat_sdcard_unmount(SD_MOUNT_POINT, card);
        return;
    }

    struct dirent *entry;
    while ((entry = readdir(dir)) != NULL && notify_enable) 
    {
        if (xQueueReceive(data_queue2, &msg, portMAX_DELAY) == pdPASS) {
            ESP_LOG_BUFFER_HEX(TAG, msg.data, msg.length);
            memcpy(&address, msg.data, sizeof(address));
            size_t filename_length = msg.length - sizeof(address);
            if (filename_length > sizeof(filename) - 1) {
                filename_length = sizeof(filename) - 1; // Prevent buffer overflow
            }
            memcpy(filename, msg.data + sizeof(address), filename_length);
            // Now, address contains the address and filename contains the filename
            ESP_LOGI(GATTS_TABLE_TAG,"Address: %ld\n", address);
            ESP_LOGI(GATTS_TABLE_TAG,"Filename: %s\n", filename);

            // 打开文件并从指定位置开始读取
            char file_path[FILENAME_MAX_LENGTH + sizeof(SD_MOUNT_POINT)];
            snprintf(file_path, sizeof(file_path), "%s/%s", SD_MOUNT_POINT, filename);
            FILE *file = fopen(file_path, "r");
            if (file == NULL) {
                ESP_LOGE("BLE", "Failed to open file: %s", file_path);
                continue;
            }

            // 移动到指定的偏移位置
            if (fseek(file, address * FILE_TRAN_SIZE, SEEK_SET) != 0) {
                ESP_LOGE("BLE", "Failed to seek to position: %ld", address * FILE_TRAN_SIZE);
                fclose(file);
                continue;
            }

            // 读取并发送数据块
            receive_success = false;
            uint8_t buffer[FILE_TRAN_SIZE];
            size_t bytes_read;
            unsigned char encrypt_text[FILE_TRAN_SIZE];
            
            while ((bytes_read = fread(buffer, 1, sizeof(buffer), file)) > 0 && notify_enable) {
                aes_encrypt_decrypt(key,buffer,bytes_read,1,encrypt_text,iv);
                TLV_message_creat(&TLV_buffer,0x0004,sizeof(encrypt_text),encrypt_text);
                message_creat(&buffer3,22+sizeof(encrypt_text)+4,0x1007,Badge_ID,Employee_ID,TLV_buffer);
                ESP_LOGI("BLE", "sizeof(encrypt_text): %d", sizeof(encrypt_text));
                while(!receive_success&&notify_enable)
                {
                    esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],
                                            22+sizeof(encrypt_text)+4, buffer3, false);
                    if(receive_success)
                        break;
                    else
                        vTaskDelay(100 / portTICK_PERIOD_MS);
                }
                receive_success = false;
            }
            fclose(file);
            // if(!notify_enable)//将发送完成的文件删除
            // {
            //     // 删除文件
            //     if (remove(file_path) != 0) {
            //         ESP_LOGE("BLE", "Failed to delete file: %s", file_path);
            //     } else {
            //         ESP_LOGI("BLE", "Deleted file: %s", file_path);
            //     }
            // }
            break;
        }
    }
    if(buffer3!=NULL){
        free(buffer3);
    }
    if(TLV_buffer!=NULL){
        free(TLV_buffer);
    }
    vTaskDelete(NULL);
}

void data_processing_task(void *arg) {
    DataMessage msg;
    ESP_LOGI(TAG, "data_processing_task begin");
    char Badge_ID_Array[9] = {0};
    char Employee_ID_Array[9] = {0};
    uint8_t *buffer = NULL;
    while(notify_enable)
    {
        if (xQueueReceive(data_queue, &msg, portMAX_DELAY) == pdPASS) {
            ESP_LOG_BUFFER_HEX(TAG, msg.data, msg.length);
            
            uint16_t MsgLen = msg.data[0] << 8 | msg.data[1];
            uint16_t MsgType = msg.data[2]<<8 | msg.data[3];
    //******************************************************************** */
                    // unsigned char encrypt_text[16]={0};
                    // uint8_t input_text[16] = "14332233";
                    // unsigned char iv[16];
                    // aes_encrypt_decrypt(key,input_text,8,1,encrypt_text,iv);
                    //uint8_t tmp[16] = {0xDA, 0x1E, 0x5A, 0x8E, 0xCF, 0xBD, 0x46, 0x84, 0x0C, 0x5E, 0x1C, 0x13, 0x8C, 0x4F, 0xB6, 0xDB};
                    // uint8_t tmp[16] = {};
                    // uint8_t *TLV_buffer = NULL;
                    // TLV_message_creat(&TLV_buffer,1,16,tmp);
                    // message_creat(&buffer,22+16+4,0x0010,Badge_ID,Employee_ID,TLV_buffer);
                    // ESP_LOG_BUFFER_HEX("message_creat:", buffer, 22+16+4);
    // //*********************************************************************** */
            // 计算不定长度的数据部分长度
            uint16_t variable_data_len = MsgLen - 22;

            if(message_processing(msg.data,msg.length,variable_data_len)){//工牌接收信息CRC校验成功,继续执行之后的步骤
                ESP_LOGI(GATTS_TABLE_TAG, "CRC16 right");
                if(MsgType == 0x0002)//读取工牌id与员工工号
                {
                    message_creat(&buffer,22,0x1002,Badge_ID,Employee_ID,NULL);
                    esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],22, buffer, false);
                }
                else if(MsgType == 0x0001)//修改工牌id与员工工号
                {
                    memcpy(Badge_ID_Array, &msg.data[4], 8);
                    memcpy(Employee_ID_Array, &msg.data[12], 8);
                    save_data_to_nvs(DEVICE_ID_NVS,Badge_ID_Array);
                    save_data_to_nvs(EMPLOYEE_ID_NVS,Employee_ID_Array);
                    char id_value1[20];
                    char id_value2[20];
                    read_data_from_nvs(DEVICE_ID_NVS, id_value1, sizeof(id_value1));
                    read_data_from_nvs(EMPLOYEE_ID_NVS, id_value2, sizeof(id_value2));
                    memcpy(&Badge_ID, id_value1, 8);
                    memcpy(&Employee_ID, id_value2, 8);
                    if(strncmp(id_value1,Badge_ID_Array,8)==0&&strncmp(id_value2,Employee_ID_Array,8)==0){//修改成功
                        message_creat(&buffer,22,0x1001,Badge_ID,Employee_ID,NULL);
                        esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],22, buffer, false);
                    }
                    else{//修改失败
                        message_creat(&buffer,22,0x2001,Badge_ID,Employee_ID,NULL);
                        esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],22, buffer, false);
                    }
                }
                else if(MsgType == 0x0003)//录音开启请求
                {
                    if(Work_order_number_set)//工单号已设置,以员工工号加工单号进行音频文件的命名
                    {
                        // if(status_flag == IDLE)
                        {
                        status_flag = RECORDING;
                        message_creat(&buffer,22,0x1003,Badge_ID,Employee_ID,NULL);
                        esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],22, buffer, false);
                        }
                        // else
                        // {
                        //     ESP_LOGI(GATTS_TABLE_TAG, "文件传输时不允许录音");
                        // }
                    }
                    else{//工单号未设置,发送错误响应(电子工牌录音开启失败响应(由于工单号未设置))
                        message_creat(&buffer,22,0x2010,Badge_ID,Employee_ID,NULL);
                        esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],22, buffer, false);
                    }
                }
                else if(MsgType == 0x0004)//录音关闭请求
                {
                    status_flag = IDLE;
                    message_creat(&buffer,22,0x1004,Badge_ID,Employee_ID,NULL);
                    esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],22, buffer, false);
                }
                else if(MsgType == 0x1005)//平台接收低电量消息成功应答
                {
                    error_flag = RECEIVE;
                }
                else if(MsgType == 0x1006)//平台接收设备故障消息成功应答
                {
                    error_flag = RECEIVE;
                }
                else if(MsgType == 0x0007)//电子工牌上传音频数据
                {
                    if(key_set == false)//工牌AES密钥未设置
                    {
                        message_creat(&buffer,22,0x3008,Badge_ID,Employee_ID,NULL);
                        esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],22, buffer, false);
                    }
                    else
                    {
                        xTaskCreate(get_TPMS_IN, "get_TPMS_IN", 1024 * 8, NULL, 10, NULL);
                    }
                }
                else if(MsgType == 0x3007)//平台接收音频数据成功响应
                {
                    receive_success = true;
                }
                else if(MsgType == 0x4007)//电子工牌上传音频数据(续传)
                {
                    uint8_t variable_data[variable_data_len];
                    memcpy(variable_data, &msg.data[20], variable_data_len);
                    uint16_t TAG = variable_data[0] << 8 | variable_data[1];
                    uint16_t Length = variable_data[2] << 8 | variable_data[3];
                    uint8_t variable_value[variable_data_len-4];
                    memcpy(variable_value, &variable_data[4], variable_data_len-4);//variable_value为平台上次收到的文件的包数量与文件名
                    xTaskCreate(audio_send_success, "audio_send_success", 1024 * 8, NULL, 10, NULL);
                    
                    DataMessage msg2;
                    memcpy(msg2.data, variable_value,variable_data_len-4);
                    msg2.length = variable_data_len-4;
                    if (xQueueSend(data_queue2, &msg2, portMAX_DELAY) != pdPASS) {
                        ESP_LOGE("TAG", "Failed to send data message to queue");   
                    }
                }
                else if(MsgType == 0x0008)//平台发送会话密钥到工牌
                {
                    uint8_t variable_data[variable_data_len];
                    memcpy(variable_data, &msg.data[20], variable_data_len);
                    uint16_t TAG = variable_data[0] << 8 | variable_data[1];
                    uint16_t Length = variable_data[2] << 8 | variable_data[3];
                    if(variable_data_len!=0 && Length == variable_data_len-4 && Length == 32)//工牌成功接收会话密钥 AES-256的key长度是 32 字节
                    {
                        uint8_t variable_value[variable_data_len-4];
                        memcpy(variable_value, &variable_data[4], variable_data_len-4);
                        memcpy(key, &variable_value, 32);
                        key_set = true;
                        message_creat(&buffer,22,0x1008,Badge_ID,Employee_ID,NULL);
                        esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],22, buffer, false);
                        //***************************************************************** */
                    // unsigned char encrypt_text[16]={0};
                    // uint8_t input_text[16] = "14332233";
                    // unsigned char iv[16];
                    // aes_encrypt_decrypt(key,input_text,8,1,encrypt_text,iv);
                    // uint8_t *TLV_buffer8 = NULL;
                    // TLV_message_creat(&TLV_buffer8,1,16,encrypt_text);
                    // message_creat(&buffer,22+16+4,0x0010,Badge_ID,Employee_ID,TLV_buffer8);
                    // ESP_LOG_BUFFER_HEX("message_creat:", buffer, 22+16+4);
                                            // unsigned char encrypt_text[16]={0};
                                            // uint8_t input_text[16] = "33017818";
                                            // unsigned char iv[16];
                                            // aes_encrypt_decrypt(key,input_text,8,1,encrypt_text,iv);
                                            // ESP_LOG_BUFFER_HEX("orignal_text:", input_text, 16);

                                            // uint8_t *bufferr = NULL;
                                            // uint8_t *TLV_buffer = NULL;
                                            // TLV_message_creat(&TLV_buffer,3,16,encrypt_text);
                                            // message_creat(&bufferr,22+16+4,0x0010,Badge_ID,Employee_ID,TLV_buffer);
                                            // uint16_t Len = bufferr[0] << 8 | bufferr[1];
                                            // uint16_t data_len = Len - 22;
                                            // //uint8_t value[data_len-4];
                                            // ESP_LOG_BUFFER_HEX("encrypt_text:", encrypt_text, 16);
                                            // ESP_LOG_BUFFER_HEX("bufferr:", bufferr, 22+16+4);
                                            // uint8_t *variable_data = &bufferr[20];
                                            // uint8_t *value = &variable_data[4];
                                            // ESP_LOG_BUFFER_HEX("value:", value, 16);
                                            // unsigned char decrypt_text[16]={0}; 
                                            // aes_encrypt_decrypt(key,value,16,0,decrypt_text,iv);
                                            // ESP_LOG_BUFFER_HEX("decrypt_text:", decrypt_text, 8);
                        //***************************************************************** */
                    }
                    else//工牌失败接收会话密钥
                    {
                        message_creat(&buffer,22,0x2008,Badge_ID,Employee_ID,NULL);
                        esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],22, buffer, false);
                    }
                }
                else if(MsgType == 0x0009)//电子工牌注册请求**********************************************************************************************************
                {
                    memcpy(Badge_ID_Array, &msg.data[4], 8);
                    memcpy(Employee_ID_Array, &msg.data[12], 8);
                    save_data_to_nvs(DEVICE_ID_NVS,Badge_ID_Array);
                    save_data_to_nvs(EMPLOYEE_ID_NVS,Employee_ID_Array);
                    char id_value1[20];
                    char id_value2[20];
                    read_data_from_nvs(DEVICE_ID_NVS, id_value1, sizeof(id_value1));
                    read_data_from_nvs(EMPLOYEE_ID_NVS, id_value2, sizeof(id_value2));
                    memcpy(&Badge_ID, id_value1, 8);
                    memcpy(&Employee_ID, id_value2, 8);
                    if(strncmp(id_value1,Badge_ID_Array,8)==0&&strncmp(id_value2,Employee_ID_Array,8)==0){//修改成功
                        message_creat(&buffer,22,0x1009,Badge_ID,Employee_ID,NULL);
                        esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],22, buffer, false);
                    }
                    else{//修改失败
                        message_creat(&buffer,22,0x2009,Badge_ID,Employee_ID,NULL);
                        esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],22, buffer, false);
                    }

                    uint8_t variable_data[variable_data_len];
                    memcpy(variable_data, &msg.data[20], variable_data_len);
                    uint16_t TAG = variable_data[0] << 8 | variable_data[1];
                    uint16_t Length = variable_data[2] << 8 | variable_data[3];
                    if(variable_data_len!=0 && Length == variable_data_len-4 && Length == 32)
                    {
                        uint8_t variable_value[variable_data_len-4];
                        memcpy(variable_value, &variable_data[4], variable_data_len-4);
                        memcpy(key, &variable_value, 32);
                        key_set = true;
                    }
                }
                else if(MsgType == 0x0010)//平台发送工单号到工牌
                {
                    if(key_set){//AES密钥已设置,接收加密的工单号,进行解密并进行存储
                        uint8_t *variable_data = &msg.data[20];
                        uint8_t *value = &variable_data[4];
                        Work_order_number_set = true;
                        unsigned char decrypted_text[16]={0};
                        ESP_LOG_BUFFER_HEX("value:", value, 16);
                        unsigned char iv[16];
                        aes_encrypt_decrypt(key,value,16,0,decrypted_text,iv);
                        memcpy(Work_order_number, decrypted_text, 8);
                        ESP_LOG_BUFFER_HEX("Work_order_number:", Work_order_number, 8);
                        message_creat(&buffer,22,0x1010,Badge_ID,Employee_ID,NULL);
                        esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],22, buffer, false);
                        //**************************************测试用 */
                    uint8_t *TLV_buffer = NULL;
                    TLV_message_creat(&TLV_buffer,1,8,Work_order_number);
                    message_creat(&buffer,22+8+4,0x00ff,Badge_ID,Employee_ID,TLV_buffer);
                    esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],22+8+4, buffer, false);
                        //******************************************* */
                    }
                    else{//AES密钥未设置,无法解密
                        message_creat(&buffer,22,0x3008,Badge_ID,Employee_ID,NULL);
                        esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],22, buffer, false);
                    }
                }
                else{
                ESP_LOGI(GATTS_TABLE_TAG, "not vaild command");
                message_creat(&buffer,22,0xeeee,Badge_ID,Employee_ID,NULL);//非有效命令
                esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],
                                                22, buffer, false);
                }
            }
            else{//CRC16校验失败
                ESP_LOGI(GATTS_TABLE_TAG, "CRC16 wrong");
                message_creat(&buffer,22,0xffff,Badge_ID,Employee_ID,NULL);//工牌接收信息CRC校验失败
                esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],
                                                22, buffer, false);
            }
        }
        vTaskDelay(20 / portTICK_PERIOD_MS);
    }
    if(buffer!=NULL){
        free(buffer);
    }
    vTaskDelete(NULL); // 任务执行完成后删除自己
}

void error_upload_task(void *arg) {
    while(notify_enable){
        uint8_t *buffer = NULL;
        if(error_flag == DEFAULT_ERROR)
        {
            message_creat(&buffer,22,0x0006,Badge_ID,Employee_ID,NULL);
            esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],
                                                22, buffer, false);
        }
        else if(error_flag == LOW_BATTERY)
        {
            message_creat(&buffer,22,0x0005,Badge_ID,Employee_ID,NULL);
            esp_ble_gatts_send_indicate(heart_rate_profile_tab[0].gatts_if, heart_rate_profile_tab[0].conn_id, profile_handle_table[IDX_CHAR_VAL_TPMS_OUT],
                                                22, buffer, false);
        }
        if(buffer!=NULL)
            free(buffer);
        vTaskDelay(20 / portTICK_PERIOD_MS);
    }
    vTaskDelete(NULL); // 任务执行完成后删除自己
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
                    // if (descr_value == 0x0001){
                    //     ESP_LOGI(GATTS_TABLE_TAG, "notify enable");
                    //     // notify_enable = true;
                    //     // xTaskCreate(data_processing_task, "data_processing_task", 1024 * 8, NULL, 10, NULL);
                    //     // xTaskCreate(error_upload_task, "error_upload_task", 1024 * 3, NULL, 10, NULL);

                    // }else if (descr_value == 0x0000){
                    //     ESP_LOGI(GATTS_TABLE_TAG, "indicate disable");
                    //     // notify_enable = false;
                    // }
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

            notify_enable = true;
            xTaskCreate(data_processing_task, "data_processing_task", 1024 * 8, NULL, 10, NULL);
            xTaskCreate(error_upload_task, "error_upload_task", 1024 * 3, NULL, 10, NULL);
            break;
        case ESP_GATTS_DISCONNECT_EVT:
            ESP_LOGI(GATTS_TABLE_TAG, "ESP_GATTS_DISCONNECT_EVT, reason = 0x%x", param->disconnect.reason);
            esp_ble_gap_start_advertising(&adv_params);

            notify_enable = false;
            key_set = false;
            Work_order_number_set = false;
            receive_success = false;

            break;
        case ESP_GATTS_CREAT_ATTR_TAB_EVT:{
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
        }
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

void ble_init(void)
{
    esp_err_t ret;

    init_nvs();

    char id_value1[20];
    char id_value2[20];
    // save_data_to_nvs(DEVICE_ID_NVS,"11111111");
    // save_data_to_nvs(EMPLOYEE_ID_NVS,"98765432");
    read_data_from_nvs(DEVICE_ID_NVS, id_value1, sizeof(id_value1));
    read_data_from_nvs(EMPLOYEE_ID_NVS, id_value2, sizeof(id_value2));
    memcpy(&Badge_ID, id_value1, 8);
    memcpy(&Employee_ID, id_value2, 8);

    data_queue = xQueueCreate(DATA_QUEUE_LENGTH, sizeof(DataMessage));
    if (data_queue == NULL) {
        ESP_LOGE(TAG, "Failed to create data queue");
        // 错误处理
    }

    ESP_ERROR_CHECK(esp_bt_controller_mem_release(ESP_BT_MODE_CLASSIC_BT));

    esp_bt_controller_config_t bt_cfg = BT_CONTROLLER_INIT_CONFIG_DEFAULT();
    ret = esp_bt_controller_init(&bt_cfg);
    if (ret) {
        ESP_LOGE(GATTS_TABLE_TAG, "%s enable controller failed: %s", __func__, esp_err_to_name(ret));
        return;
    }

    ret = esp_bt_controller_enable(ESP_BT_MODE_BLE);
    if (ret) {
        ESP_LOGE(GATTS_TABLE_TAG, "%s enable controller failed: %s", __func__, esp_err_to_name(ret));
        return;
    }

    esp_bluedroid_config_t bluedroid_cfg = BT_BLUEDROID_INIT_CONFIG_DEFAULT();
    ret = esp_bluedroid_init_with_cfg(&bluedroid_cfg);
    if (ret) {
        ESP_LOGE(GATTS_TABLE_TAG, "%s init bluetooth failed: %s", __func__, esp_err_to_name(ret));
        return;
    }

    ret = esp_bluedroid_enable();
    if (ret) {
        ESP_LOGE(GATTS_TABLE_TAG, "%s enable bluetooth failed: %s", __func__, esp_err_to_name(ret));
        return;
    }

    ret = esp_ble_gatts_register_callback(gatts_event_handler);
    if (ret){
        ESP_LOGE(GATTS_TABLE_TAG, "gatts register error, error code = %x", ret);
        return;
    }

    ret = esp_ble_gap_register_callback(gap_event_handler);
    if (ret){
        ESP_LOGE(GATTS_TABLE_TAG, "gap register error, error code = %x", ret);
        return;
    }

    ret = esp_ble_gatts_app_register(ESP_APP_ID);
    if (ret){
        ESP_LOGE(GATTS_TABLE_TAG, "gatts app register error, error code = %x", ret);
        return;
    }

    esp_err_t local_mtu_ret = esp_ble_gatt_set_local_mtu(517);
    if (local_mtu_ret){
        ESP_LOGE(GATTS_TABLE_TAG, "set local  MTU failed, error code = %x", local_mtu_ret);
    }
}
