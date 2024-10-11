/*
 * SPDX-FileCopyrightText: 2021-2022 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Unlicense OR CC0-1.0
 */
/* I2S Digital Microphone Recording Example */
#include <stdio.h>
#include <string.h>
#include "sdkconfig.h"
#include "esp_log.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_nsn_models.h"
#include "model_path.h"
#include "esp_afe_sr_models.h"
#include "esp_mn_iface.h"
#include "esp_mn_models.h"
#include "esp_wn_iface.h"
#include "esp_wn_models.h"
#include "dl_lib_coefgetter_if.h"
#include "ringbuf.h"
#include "driver/i2s.h"
#include "format_wav.h"
#include "i2s_recorder.h"
#include "id_nvs.h"
#include "main.h"
#include "sdcard.h"
#include "gatts_table_creat_demo.h"
#include <sys/stat.h>
#include <errno.h>
#include "codec.h"

//#define SAVE_ORIGINAL_AUDIO 1

#define RECORDING_FILE_FOLDER_NAME "/sdcard/recording_wav_files"//录音存放位置
#define MAX_FLASH_REC_TIME BYTE_RATE * 60*60*1//最大录音时长

#ifdef SAVE_ORIGINAL_AUDIO
    #define ORIGINAL_RECORDING_FILE_FOLDER_NAME "/sdcard/original_wav_files"
#endif

static const char *TAG = "rec";

//FILE * file_save = NULL;
FILE *file_save_original = NULL;
ringbuf_handle_t rb_debug = NULL;
static esp_afe_sr_iface_t *afe_handle = NULL;
static esp_afe_sr_data_t *afe_data = NULL;


char file_name[100]; // Adjust size as needed
char file_path[150]; // Adjust size as needed
#ifdef SAVE_ORIGINAL_AUDIO
    char file_path2[150];
#endif

extern STATUS status_flag;
extern QueueHandle_t status_queue;
extern uint8_t Work_order_number[9];
extern SemaphoreHandle_t pause_semaphore;
extern SemaphoreHandle_t pause_semaphore2;
extern SemaphoreHandle_t pause_semaphore3;

TaskHandle_t feed_task_handle = NULL;
TaskHandle_t detect_task_handle = NULL;
//TaskHandle_t debug_pcm_save_task_handle = NULL;

int16_t *i2s_buff = NULL;
int16_t *buff = NULL;
int16_t *buf_temp = NULL;

//uint32_t flash_wr_size = 0;
#ifdef SAVE_ORIGINAL_AUDIO
    uint32_t flash_wr_size2 = 0;
#endif

esp_err_t update_wav_header(FILE *f, const wav_header_t *new_header) {

    esp_err_t err = ESP_OK;

    if(f == NULL || new_header == NULL) {
        ESP_LOGI(TAG, "Invalid argument");
        return ESP_ERR_INVALID_ARG;
    }
    // 将文件指针移动到 WAV 文件头的位置
    fseek(f, 0, SEEK_SET);
    // 将新的 WAV 文件头写入到文件中
    fwrite(new_header, sizeof(wav_header_t), 1, f);
    // 关闭文件
    if(fclose(f)!= 0) {err = ESP_FAIL;}

    return err;
}

esp_err_t init_microphone(void)//旧api
{
    i2s_config_t i2s_config = {
        .mode = (i2s_mode_t)(I2S_MODE_MASTER | I2S_MODE_RX), // the mode must be set according to DSP configuration
        .sample_rate = CONFIG_EXAMPLE_SAMPLE_RATE,                                // must be the same as DSP configuration
        .bits_per_sample = (i2s_bits_per_sample_t)CONFIG_EXAMPLE_BIT_SAMPLE_RECORD,        // must be the same as DSP configuration
        .channel_format = I2S_CHANNEL_FMT_ONLY_LEFT,         // must be the same as DSP configuration
        .communication_format = I2S_COMM_FORMAT_STAND_I2S,
        .intr_alloc_flags = ESP_INTR_FLAG_LEVEL2,
        .dma_buf_count = 3,
        .dma_buf_len = 300,
    };
    i2s_pin_config_t pin_config = {
        .mck_io_num = -1,
        .bck_io_num = IIS_SCLK,   // IIS_SCLK
        .ws_io_num = IIS_LCLK,    // IIS_LCLK
        .data_out_num = IIS_DSIN, // IIS_DSIN
        .data_in_num = IIS_DOUT   // IIS_DOUT
    };
    
    if(i2s_driver_install(I2S_NUM, &i2s_config, 0, NULL) != ESP_OK){
        ESP_LOGE(TAG, "i2s driver install error");
        return ESP_FAIL;
    }
    if(i2s_set_pin(I2S_NUM, &pin_config) != ESP_OK){    
        ESP_LOGE(TAG, "i2s set pin error");
        return ESP_FAIL;
    }
    if(i2s_zero_dma_buffer(I2S_NUM) != ESP_OK){
        ESP_LOGE(TAG, "i2s zero dma buffer error");
        return ESP_FAIL;
    }
    ESP_LOGI(TAG, "i2s init success...");
    return ESP_OK;
}

void feed_Task(void *arg)
{
    size_t bytes_read;
    esp_afe_sr_data_t *afe_data = arg;
    int audio_chunksize = afe_handle->get_feed_chunksize(afe_data);
    i2s_buff = malloc(audio_chunksize * sizeof(int16_t));
    assert(i2s_buff);
    
#ifdef SAVE_ORIGINAL_AUDIO
    snprintf(file_path2, sizeof(file_path2), "%s%s", ORIGINAL_RECORDING_FILE_FOLDER_NAME, file_name);
    ESP_LOGI(TAG, "file_path2: %s", file_path2);
    file_save_original = fopen(file_path2, "wb");
    setvbuf(file_save_original, NULL, _IOFBF, 4096);
    const wav_header_t wav_header = WAV_HEADER_PCM_DEFAULT(MAX_FLASH_REC_TIME, CONFIG_EXAMPLE_BIT_SAMPLE, CONFIG_EXAMPLE_SAMPLE_RATE, 1);
    fwrite(&wav_header, sizeof(wav_header), 1, file_save_original);
#endif
    while (1) {
        // 等待信号量，暂停时阻塞在这里
        xSemaphoreTake(pause_semaphore, portMAX_DELAY);
        i2s_read(I2S_NUM, i2s_buff, audio_chunksize*sizeof(int16_t), &bytes_read, portMAX_DELAY);
        if(bytes_read == 0) {
            ESP_LOGE(TAG, "NO DATA READ FROM MICROPHONE");
            break;
        }
        ESP_LOGI("RECORDING:", "%d",i2s_buff[0]);//打印日志时任务被删除会导致程序卡死
#ifdef SAVE_ORIGINAL_AUDIO
        fwrite((int16_t*)i2s_buff, audio_chunksize, sizeof(int16_t), file_save_original);
        flash_wr_size2 += audio_chunksize * sizeof(int16_t);
#endif
        afe_handle->feed(afe_data, (int16_t*)i2s_buff);
        // 释放信号量，允许任务继续运行
        xSemaphoreGive(pause_semaphore);
    }
}

void detect_Task(void *arg)
{
    esp_afe_sr_data_t *afe_data = arg;
    int afe_chunksize = afe_handle->get_fetch_chunksize(afe_data);
    buff = malloc(afe_chunksize * sizeof(int16_t));
    assert(buff);

    uint32_t flash_wr_size = 0;

    while (flash_wr_size < MAX_FLASH_REC_TIME) {

        xSemaphoreTake(pause_semaphore3, portMAX_DELAY);

        afe_fetch_result_t* res = afe_handle->fetch(afe_data); 
        if (res && res->ret_value != ESP_FAIL) {
            memcpy(buff, res->data, afe_chunksize * sizeof(int16_t));
            flash_wr_size += afe_chunksize * sizeof(int16_t);
            if (rb_bytes_available(rb_debug) < afe_chunksize * 1 * sizeof(int16_t)) {
                ESP_LOGE("ERROR!"," rb_debug slow!!!\n");
            }
            rb_write(rb_debug, buff, afe_chunksize * 1 * sizeof(int16_t), 0);
        }
        else {
            ESP_LOGI(TAG, "afe fetch failed or pause");
        }

        xSemaphoreGive(pause_semaphore3);
    }

    if(flash_wr_size >= MAX_FLASH_REC_TIME){
        ESP_LOGI(TAG, "Recording over MAX_FLASH_REC_TIME! pause recording");
        error_string_send("Recording over MAX_FLASH_REC_TIME! pause recording",0x2003);
        STATUS status = IDLE;
        if (xQueueSend(status_queue, &status, portMAX_DELAY) != pdPASS) 
            ESP_LOGE(TAG, "Failed to send data message to queue");
        vTaskDelay(portMAX_DELAY);
    }
}

/*//录制后压缩
void debug_pcm_save_Task(void *arg)
{
    int size = 4 * 2 * 32 * 16; 
    int size2 = 0;
    buf_temp = heap_caps_calloc(1, size, MALLOC_CAP_SPIRAM | MALLOC_CAP_8BIT);
    assert(buf_temp);

    wav_header_t wav_header = WAV_HEADER_PCM_DEFAULT(MAX_FLASH_REC_TIME, CONFIG_EXAMPLE_BIT_SAMPLE, CONFIG_EXAMPLE_SAMPLE_RATE, 1);
    fwrite(&wav_header, sizeof(wav_header), 1, file_save);

    float gain = 1; // 增益因子，可以根据需要调整

    while (1) {
        size2 = rb_read(rb_debug, buf_temp, size, portMAX_DELAY);
        //ESP_LOGI(TAG, "size2: %d", size2);
        // Apply gain to PCM data
        if(size2 == 0) break;
        for (int i = 0; i < size2 / sizeof(int16_t); i++) {
            buf_temp[i] = buf_temp[i] * gain;
            // Clip the value to prevent overflow
            if (buf_temp[i] > INT16_MAX) {buf_temp[i] = INT16_MAX;} 
            else if (buf_temp[i] < INT16_MIN) {buf_temp[i] = INT16_MIN;}
        }
        fwrite(buf_temp, 1, size2, file_save);
        flash_wr_size += size2;
    }
    vTaskDelete(NULL);
    ESP_LOGI(TAG, "debug_pcm_save_Task exit");
}
*/

esp_err_t recorder_init(void)
{
    esp_err_t ret = ESP_OK;

    ESP_LOGI(TAG, "Start recording!");

    ret = init_microphone();
    if (ret != ESP_OK) {ESP_LOGE(TAG, "init microphone error");return ret;}

    // srmodel_list_t *models = esp_srmodel_init("model");
    // if (models!=NULL) {
    //     for (int i=0; i<models->num; i++) {
    //         ESP_LOGI(TAG,"Load: %s\n", models->model_name[i]);
    //     }
    // }

    afe_handle = (esp_afe_sr_iface_t *)&ESP_AFE_VC_HANDLE;
    afe_config_t afe_config = AFE_CONFIG_DEFAULT();
    {//afe_config修改
        afe_config.vad_init = false;
        afe_config.wakenet_init = false;
        afe_config.voice_communication_init = true;
        afe_config.aec_init = false;
        afe_config.pcm_config.total_ch_num = 1;
        afe_config.pcm_config.mic_num = 1;
        afe_config.pcm_config.ref_num = 0;
        //config for nsnet
        afe_config.afe_ns_mode = NS_MODE_SSP;
        // 配置是否使能 BSS/NS
        afe_config.se_init = true;
        //配置是否使能语音通话中 AGC
        afe_config.voice_communication_agc_init = true;
        // 配置 AGC 的增益值（单位为 dB）
        afe_config.voice_communication_agc_gain = 15;

        // char *nsnet_name = esp_srmodel_filter(models, ESP_NSNET_PREFIX, NULL);
        // afe_config.afe_ns_model_name = nsnet_name;
    }

    afe_data = afe_handle->create_from_config(&afe_config);
    if (afe_data == NULL) {
        ESP_LOGE(TAG, "afe create from config error");
        return ESP_FAIL;
    }

    rb_debug = rb_create(1 * 4 * CONFIG_EXAMPLE_SAMPLE_RATE * 2, 1);
    if (rb_debug == NULL) {
        ESP_LOGE(TAG, "rb_debug create error");
        return ESP_FAIL;
    }

    uint64_t id_value;
    char id_str[21];
    read_data_from_nvs(EMPLOYEE_ID_NVS, &id_value);
    // 将 uint64_t 转换为字符串
    snprintf(id_str, sizeof(id_str), "%llu", (unsigned long long)id_value);
    // 组合 员工ID 和工单号作为文件名
    snprintf(file_name, sizeof(file_name), "/%s%s.wav", id_str, (char*)Work_order_number);
    snprintf(file_path, sizeof(file_path), "%s%s", RECORDING_FILE_FOLDER_NAME, file_name);

    ESP_LOGI(TAG, "file_path: %s", file_path);
    
    // 检查并创建文件夹
    struct stat st = {0};
    if (stat(RECORDING_FILE_FOLDER_NAME, &st) == -1) {
        ESP_LOGW(TAG, "Failed to access target directory,try to create it");
        if (mkdir(RECORDING_FILE_FOLDER_NAME, 0777) != 0) {
            ESP_LOGE(TAG, "Failed to create directory: %s", strerror(errno));
            i2s_uninstall();
            return ESP_FAIL;
        }
    }

#ifdef SAVE_ORIGINAL_AUDIO
    if (stat(ORIGINAL_RECORDING_FILE_FOLDER_NAME, &st) == -1) {
        ESP_LOGW(TAG, "Failed to access target directory,try to create it");
        if (mkdir(ORIGINAL_RECORDING_FILE_FOLDER_NAME, 0777) != 0) {
            ESP_LOGE(TAG, "Failed to create directory: %s", strerror(errno));
            return ESP_FAIL;
        }
    }
#endif

    pause_semaphore = xSemaphoreCreateBinary();
    xSemaphoreGive(pause_semaphore); // 初始状态为不暂停
    pause_semaphore2 = xSemaphoreCreateBinary();
    xSemaphoreGive(pause_semaphore2); // 初始状态为不暂停
    pause_semaphore3 = xSemaphoreCreateBinary();
    xSemaphoreGive(pause_semaphore3); // 初始状态为不暂停

    xTaskCreatePinnedToCore(&feed_Task, "feed", 8 * 1024, (void*)afe_data, 5, &feed_task_handle,0);
    xTaskCreatePinnedToCore(&detect_Task, "detect", 8 * 1024, (void*)afe_data, 5, &detect_task_handle,1);
    //xTaskCreatePinnedToCore(&debug_pcm_save_Task, "debug_pcm_save", 8 * 1024, NULL, 5, &debug_pcm_save_task_handle, 1);
    xTaskCreate(&test,"codec_test",8*1024,NULL,5,NULL);

    //esp_srmodel_deinit(models);

    return ESP_OK;
}

esp_err_t i2s_uninstall(void)
{
    if(i2s_driver_uninstall(I2S_NUM) != ESP_OK){
        ESP_LOGE(TAG, "i2s driver uninstall error");
        return ESP_FAIL;
    }
    return ESP_OK;
}

esp_err_t recording_end(void)
{
    esp_err_t ret = ESP_OK;
ESP_LOGI(TAG, "recording_end");
    if(feed_task_handle!= NULL)vTaskDelete(feed_task_handle);
ESP_LOGI(TAG, "recording_end1");
    if(detect_task_handle!= NULL)vTaskDelete(detect_task_handle);

    //wav_header_t wav_header2 = WAV_HEADER_PCM_DEFAULT(flash_wr_size, CONFIG_EXAMPLE_BIT_SAMPLE, CONFIG_EXAMPLE_SAMPLE_RATE, 1);
    //update_wav_header(file_save, &wav_header2);
#ifdef SAVE_ORIGINAL_AUDIO
    const wav_header_t wav_header_up2 = WAV_HEADER_PCM_DEFAULT(flash_wr_size2, CONFIG_EXAMPLE_BIT_SAMPLE, CONFIG_EXAMPLE_SAMPLE_RATE, 1);
    update_wav_header(file_save_original,&wav_header_up2);
#endif
    if(i2s_buff!= NULL){free(i2s_buff); i2s_buff = NULL;}
    if(buff != NULL){free(buff); buff = NULL;}
    if(buf_temp!= NULL){free(buf_temp);buf_temp = NULL;}
    i2s_uninstall();
    //if(afe_data != NULL){afe_handle->destroy(afe_data); afe_data = NULL;}
    return ret;
}

void pause_feed_Task()
{
    xSemaphoreTake(pause_semaphore2, portMAX_DELAY);
    vTaskDelay(pdMS_TO_TICKS(10 / portTICK_PERIOD_MS));
    xSemaphoreTake(pause_semaphore, portMAX_DELAY); // 获取信号量，阻塞任务
    xSemaphoreTake(pause_semaphore3, portMAX_DELAY); // 再次获取信号量，阻塞任务
}

void resume_feed_Task()
{
    xSemaphoreGive(pause_semaphore); // 释放信号量，继续任务
    xSemaphoreGive(pause_semaphore3); // 再次释放信号量，继续任务
    xSemaphoreGive(pause_semaphore2);
}
