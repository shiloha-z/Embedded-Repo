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
//#include "mp3_main.h"
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

static const char *TAG = "rec";

FILE * file_save = NULL;
ringbuf_handle_t rb_debug = NULL;
static esp_afe_sr_iface_t *afe_handle = NULL;
static esp_afe_sr_data_t *afe_data = NULL;

size_t bytes_read;
char file_name[60]; // Adjust size as needed
extern STATUS status_flag;
extern uint8_t Work_order_number[9];
uint32_t max_flash_rec_time = BYTE_RATE * 60*60*24;

void update_wav_header(const char *file_path, const wav_header_t *new_header) {
    // 打开录音文件以读写模式打开
    FILE *f = fopen(file_path, "r+");
    if (f == NULL) {
        ESP_LOGE(TAG, "Failed to open file for writing");
        return;
    }
    // 将文件指针移动到 WAV 文件头的位置
    fseek(f, 0, SEEK_SET);
    // 将新的 WAV 文件头写入到文件中
    fwrite(new_header, sizeof(wav_header_t), 1, f);
    // 关闭文件
    fclose(f);
}

/*//无降噪录音
void record_wav(uint32_t max_rec_time)
{
    // Use POSIX and C standard library functions to work with files.
    ESP_LOGI(TAG, "Opening file");
    uint32_t flash_wr_size = 0;
    uint32_t max_flash_rec_time = BYTE_RATE * max_rec_time;
    wav_header_t wav_header =
        WAV_HEADER_PCM_DEFAULT(max_flash_rec_time, CONFIG_EXAMPLE_BIT_SAMPLE, CONFIG_EXAMPLE_SAMPLE_RATE, 1);

 // 获取当前时间
    time_t rawtime;
    struct tm *timeinfo;
    char filename[FILENAME_MAX_LENGTH];
    time(&rawtime);
    timeinfo = localtime(&rawtime);
    // 格式化当前时间作为文件名
    strftime(filename, FILENAME_MAX_LENGTH, "%Y%m%d_%H%M%S_record.wav", timeinfo);
    // 拼接完整的文件路径
    char filepath[FILENAME_MAX_LENGTH + sizeof(SD_MOUNT_POINT)];
    snprintf(filepath, sizeof(filepath), "%s/%s", SD_MOUNT_POINT, filename);
    ESP_LOGI(TAG, "filepath:%s",filepath);
    struct stat st;
    if (stat(filepath, &st) == 0) {
        // Delete it if it exists
        unlink(filepath);
    }
    // Create new WAV file
    FILE *f = fopen(filepath, "a");
    if (f == NULL) {
        ESP_LOGE(TAG, "Failed to open file for writing");
        return;
    }


    // Write the header to the WAV file
    fwrite(&wav_header, sizeof(wav_header), 1, f);

    uint8_t *i2s_readraw_buff = (uint8_t *)malloc(SAMPLE_SIZE);
    if (!i2s_readraw_buff) {
        ESP_LOGE(TAG, "Failed to allocate memory for I2S read buffer");
        fclose(f);
        return;
    }

        // Start recording
    while (flash_wr_size < max_flash_rec_time && state_flag == RECORDING) {
        if (i2s_read(I2S_NUM, (void *)i2s_readraw_buff, SAMPLE_SIZE, &bytes_read, portMAX_DELAY) == ESP_OK) {
            printf("[0] %d [1] %d [2] %d [3]%d ...\n", i2s_readraw_buff[0], i2s_readraw_buff[1], i2s_readraw_buff[2], i2s_readraw_buff[3]);
            // Write the samples to the WAV file
            fwrite(i2s_readraw_buff, bytes_read, 1, f);
            flash_wr_size += bytes_read;
        } else {
            printf("Read Failed!\n");
        }
    }
    ESP_LOGI(TAG, "Recording done!");
    free(i2s_readraw_buff);
    fclose(f);
    const wav_header_t wav_header_up = WAV_HEADER_PCM_DEFAULT(flash_wr_size, CONFIG_EXAMPLE_BIT_SAMPLE, CONFIG_EXAMPLE_SAMPLE_RATE, 1);
    update_wav_header(filepath,&wav_header_up);



    // strftime(filename, FILENAME_MAX_LENGTH, "%Y%m%d_%H%M%S_record.mp3", timeinfo);
    // //拼接完整的文件路径
    // char filepath2[FILENAME_MAX_LENGTH + sizeof(SD_MOUNT_POINT)];
    // snprintf(filepath2, sizeof(filepath2), "%s/%s", SD_MOUNT_POINT, filename);
    // ESP_LOGI(TAG, "filepath2:%s",filepath2);

    // ESP_LOGI(TAG, "wav to mp3 convert start");
    // wav_tran_mp3(filepath,filepath2);
    // ESP_LOGI(TAG, "wav to mp3 convert over");


    ESP_LOGI(TAG, "File written on SDCard");

    // All done, unmount partition and disable SPI peripheral
    esp_vfs_fat_sdcard_unmount(SD_MOUNT_POINT, card);
    // Deinitialize the bus after all devices are removed
    spi_bus_free(host.slot);
    ESP_LOGI(TAG, "Card unmounted");
    i2s_driver_uninstall(I2S_NUM); // 卸载I2S驱动
    ESP_LOGI(TAG, "I2S driver uninstalled");
}
*/

void init_microphone(void)//旧api
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
    i2s_driver_install(I2S_NUM, &i2s_config, 0, NULL);
    i2s_set_pin(I2S_NUM, &pin_config);
    i2s_zero_dma_buffer(I2S_NUM);
    printf("record_i2s_init init success...\r\n");
}

void feed_Task(void *arg)
{
    esp_afe_sr_data_t *afe_data = arg;
    int audio_chunksize = afe_handle->get_feed_chunksize(afe_data);
    int16_t *i2s_buff = malloc(audio_chunksize * sizeof(int16_t));
    assert(i2s_buff);
    
    // uint32_t flash_wr_size = 0;
    // FILE *f = fopen("/sdcard/feed.wav", "wb");
    // const wav_header_t wav_header =WAV_HEADER_PCM_DEFAULT(max_flash_rec_time, CONFIG_EXAMPLE_BIT_SAMPLE, CONFIG_EXAMPLE_SAMPLE_RATE, 1);
    // fwrite(&wav_header, sizeof(wav_header), 1, f);
    
    while (status_flag == RECORDING) {
        i2s_read(I2S_NUM, i2s_buff, audio_chunksize*sizeof(int16_t), &bytes_read, portMAX_DELAY);
        ESP_LOGI("TAG", "%d\t%d\t%d\t",i2s_buff[0],i2s_buff[1],i2s_buff[2]);
        // fwrite((int16_t*)i2s_buff,audio_chunksize,sizeof(int16_t),f);
        // flash_wr_size += audio_chunksize*sizeof(int16_t);
        afe_handle->feed(afe_data,(int16_t*)i2s_buff);
    }
    // fclose(f);

    // const wav_header_t wav_header_up = WAV_HEADER_PCM_DEFAULT(flash_wr_size, CONFIG_EXAMPLE_BIT_SAMPLE, CONFIG_EXAMPLE_SAMPLE_RATE, 1);
    // update_wav_header("/sdcard/feed.wav",&wav_header_up);

    // ESP_LOGI(TAG, "Feed Recording done!");
    free(i2s_buff);
    vTaskDelete(NULL);
}

void detect_Task(void *arg)
{
    esp_afe_sr_data_t *afe_data = arg;
    int afe_chunksize = afe_handle->get_fetch_chunksize(afe_data);
    int16_t *buff = malloc(afe_chunksize * sizeof(int16_t));
    assert(buff);

    uint32_t flash_wr_size = 0;

    while (flash_wr_size < max_flash_rec_time && status_flag == RECORDING) {
        afe_fetch_result_t* res = afe_handle->fetch(afe_data); 
        if (res && res->ret_value != ESP_FAIL) {
            memcpy(buff, res->data, afe_chunksize * sizeof(int16_t));
            flash_wr_size += afe_chunksize * sizeof(int16_t);
            if (rb_bytes_available(rb_debug) < afe_chunksize * 1 * sizeof(int16_t)) {
                ESP_LOGE("ERROR!"," rb_debug slow!!!\n");
            }
            rb_write(rb_debug, buff, afe_chunksize * 1 * sizeof(int16_t), 0);
        }
    }
    if (buff) {
        free(buff);
        buff = NULL;
    }
    vTaskDelete(NULL);
}

void debug_pcm_save_Task(void *arg)
{
    int size = 4 * 2 * 32 * 16;   // It's 32ms for 4 channels, 4k bytes
    int16_t *buf_temp = heap_caps_calloc(1, size, MALLOC_CAP_SPIRAM | MALLOC_CAP_8BIT);

    wav_header_t wav_header =WAV_HEADER_PCM_DEFAULT(max_flash_rec_time, CONFIG_EXAMPLE_BIT_SAMPLE, CONFIG_EXAMPLE_SAMPLE_RATE, 1);
    fwrite(&wav_header, sizeof(wav_header), 1, file_save);
    uint32_t flash_wr_size = 0;

    while (status_flag == RECORDING) {
            if (file_save != NULL) {
                //ESP_LOGI(TAG, "rb_bytes_filled(rb_debug) : %d, size: %d", rb_bytes_filled(rb_debug) , size);
                if (rb_bytes_filled(rb_debug) > size) {
                    rb_read(rb_debug, buf_temp, size, 3000 / portTICK_PERIOD_MS);
                    fwrite(buf_temp, 1, size, file_save);
                    flash_wr_size += size;
            }
        }
        vTaskDelay(1 / portTICK_PERIOD_MS);
    }
    // Read remaining data from the ring buffer
    int remaining_bytes = rb_bytes_filled(rb_debug);
    if (remaining_bytes > 0) {
        int bytes_read = rb_read(rb_debug, buf_temp, remaining_bytes, 100 / portTICK_PERIOD_MS);
        if (bytes_read > 0) {
            size_t written = fwrite(buf_temp, 1, bytes_read, file_save);
            if (written != bytes_read) {
                ESP_LOGE(TAG, "File write error for remaining data, expected: %d, written: %d", bytes_read, written);
            }
            flash_wr_size += written;
        } else {
            ESP_LOGE(TAG, "rb_read error for remaining data, bytes_read: %d", bytes_read);
        }
    }
    fclose(file_save);
    free(buf_temp);

    wav_header_t wav_header2 =WAV_HEADER_PCM_DEFAULT(flash_wr_size, CONFIG_EXAMPLE_BIT_SAMPLE, CONFIG_EXAMPLE_SAMPLE_RATE, 1);
    update_wav_header(file_name, &wav_header2);
    ESP_LOGI(TAG, "Recording done!");

    vTaskDelete(NULL);
}

void recorder_init(void)
{
    init_microphone();
    ESP_LOGI(TAG, "Start recording!");

    // srmodel_list_t *models = esp_srmodel_init("model");
    // if (models!=NULL) {
    //     for (int i=0; i<models->num; i++) {
    //         printf("Load: %s\n", models->model_name[i]);
    //     }
    // }

    afe_handle = (esp_afe_sr_iface_t *)&ESP_AFE_VC_HANDLE;
    afe_config_t afe_config = AFE_CONFIG_DEFAULT();
    afe_config.vad_init = false;
    afe_config.wakenet_init = false;
    afe_config.voice_communication_init = true;

    afe_config.aec_init = false;
    afe_config.pcm_config.total_ch_num = 1;
    afe_config.pcm_config.mic_num = 1;
    afe_config.pcm_config.ref_num = 0;

    //config for nsnet
    afe_config.aec_init = false;
    afe_config.afe_ns_mode = NS_MODE_SSP ;
    // char *nsnet_name = esp_srmodel_filter(models, ESP_NSNET_PREFIX, NULL);
    // afe_config.afe_ns_model_name = nsnet_name;
    //afe_config.afe_ns_model_name = "nsnet1";

    afe_data = afe_handle->create_from_config(&afe_config);
    if (afe_data == NULL) {
        printf("create_from_config fail!\n");
        return;
    }

    rb_debug = rb_create(1 * 4 * CONFIG_EXAMPLE_SAMPLE_RATE * 2, 1);   // 4s ringbuf

    //init_nvs();//ble中init
    char id_value[20];
    read_data_from_nvs(EMPLOYEE_ID_NVS, id_value, sizeof(id_value));
    // Concatenate the two IDs with an underscore

    snprintf(file_name, sizeof(file_name), "/sdcard/%s_%s.wav", id_value,(char*)Work_order_number);//工号和工单号组合作为文件名
    file_save = fopen(file_name, "wb");
    if (file_save == NULL) printf("can not open file\n");

    xTaskCreatePinnedToCore(&debug_pcm_save_Task, "debug_pcm_save", 8 * 1024, NULL, 5, NULL, 1);
    xTaskCreatePinnedToCore(&feed_Task, "feed", 8 * 1024, (void*)afe_data, 5, NULL,0);
    xTaskCreatePinnedToCore(&detect_Task, "detect", 8 * 1024, (void*)afe_data, 5, NULL,1);
    //esp_srmodel_deinit(models);
}

void i2s_uninstall(void)
{
    i2s_driver_uninstall(I2S_NUM);
}