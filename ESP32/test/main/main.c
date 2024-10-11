#include <stdio.h>
#include <sys/time.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "esp_log.h"
#include "sdkconfig.h"
#include "driver/i2s.h"
#include "esp_vfs_fat.h"
#include "sdmmc_cmd.h"
#include "driver/sdmmc_host.h"
#include "main.h"
#include "gatts_table_creat_demo.h"


void record_audio(void);

//*******************************************************************************
static void IRAM_ATTR gpio_isr_handler(void* arg)
{
    uint32_t gpio_num = (uint32_t) arg;
    xQueueSendFromISR(gpio_evt_queue, &gpio_num, NULL);
}

static void gpio_key(void* arg)
{
    uint32_t io_num;
    for(;;) {
        if(xQueueReceive(gpio_evt_queue, &io_num, portMAX_DELAY)) {
            vTaskDelay(20/portTICK_PERIOD_MS);
            if(gpio_get_level(io_num)==0){
                ESP_LOGI(TAG, "Button pressed");

                if (recording_state == STATE_IDLE) {
                    if(1/*判断位置符合,待实现*/){
                        ESP_LOGI(TAG, "Location right, starting recording");
                        recording_state = STATE_RECORDING;
                        record_audio();
                    }
                    else{
                        ESP_LOGI(TAG, "Location wrong, refuse recording request");
                    }
                }
                else {
                    ESP_LOGI(TAG, "Stopping recording");
                    recording_state = STATE_IDLE;
                }
            }
        }
    }
}

void gpio_init()
{
    gpio_config_t io_conf;
    io_conf.intr_type = GPIO_INTR_NEGEDGE; // 下降沿触发
    io_conf.pin_bit_mask = GPIO_KEY_PIN_SEL;
    io_conf.mode = GPIO_MODE_INPUT;
    io_conf.pull_up_en = 1;
    gpio_config(&io_conf);

    gpio_evt_queue = xQueueCreate(10, sizeof(uint32_t));
    gpio_install_isr_service(ESP_INTR_FLAG_DEFAULT);
    gpio_isr_handler_add(GPIO_KEY_PIN_SEL, gpio_isr_handler, (void*) GPIO_KEY_PIN_SEL);

    xTaskCreate(gpio_key, "gpio_task_example", 2048, NULL, 10, NULL);
}


//*******************************************************************************
//i2s,mic
void i2s_init()
{
    i2s_config_t i2s_config = {
        .mode = I2S_MODE_MASTER | I2S_MODE_RX,
        .sample_rate = SAMPLE_RATE,
        .bits_per_sample = BITS_PER_SAMPLE,
        .channel_format = I2S_CHANNEL_FMT_ONLY_RIGHT,
        .communication_format = I2S_COMM_FORMAT_I2S,
        .intr_alloc_flags = ESP_INTR_FLAG_LEVEL1,
        .dma_buf_count = 2,
        .dma_buf_len = 1024,
    };

    i2s_pin_config_t pin_config = {
        .bck_io_num = BCLK_GPIO,
        .ws_io_num = LRCK_GPIO,
        .data_out_num = I2S_PIN_NO_CHANGE,
        .data_in_num = DATA_IN_GPIO,
    };

    i2s_driver_install(I2S_NUM, &i2s_config, 0, NULL);
    i2s_set_pin(I2S_NUM, &pin_config);
}

void generate_file_name(char* file_name, size_t max_len)
{
    struct timeval tv;
    gettimeofday(&tv, NULL);
    snprintf(file_name, max_len, "/sdcard/record_%ld.wav", (long)tv.tv_sec);
}

void record_audio(void)
{
    char file_name[32];
    generate_file_name(file_name, sizeof(file_name));

    FILE* f = fopen(file_name, "wb");
    if (f == NULL) {
        ESP_LOGE(TAG, "Failed to open file for writing");
        return;
    }

    size_t bytes_read;
    char* i2s_read_buff = (char*) malloc(I2S_READ_LEN);

    TickType_t start_tick = xTaskGetTickCount();
    while (recording_state == STATE_RECORDING) {
        i2s_read(I2S_NUM, (void*) i2s_read_buff, I2S_READ_LEN, &bytes_read, portMAX_DELAY);
        fwrite(i2s_read_buff, 1, bytes_read, f);
    }

    fclose(f);
    free(i2s_read_buff);
    ESP_LOGI(TAG, "Recording finished");

    if ((xTaskGetTickCount() - start_tick) < (MIN_RECORD_TIME_SEC * 1000 / portTICK_PERIOD_MS)) {
        remove(file_name); // 删除录制的文件
        ESP_LOGW(TAG, "Recording duration is less than 5 minutes, discarded");
    }
}
//*******************************************************************************
void sd_init(void)
{
    // 初始化 SD 卡
    esp_vfs_fat_sdmmc_mount_config_t mount_config = {
        .format_if_mount_failed = false,
        .max_files = 5,
        .allocation_unit_size = 16 * 1024
    };

    sdmmc_card_t* card;
    const char mount_point[] = MOUNT_POINT;
    ESP_LOGI(TAG, "Mounting SD card");

    sdmmc_host_t host = SDMMC_HOST_DEFAULT();
    sdmmc_slot_config_t slot_config = SDMMC_SLOT_CONFIG_DEFAULT();

    esp_err_t ret = esp_vfs_fat_sdmmc_mount(mount_point, &host, &slot_config, &mount_config, &card);

    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to mount SD card (%s)", esp_err_to_name(ret));
        return;
    }

    ESP_LOGI(TAG, "SD card mounted");
}
//*******************************************************************************

void app_main(void)
{
    gpio_init();
    sd_init();
    i2s_init();
    ble_init();
    while (1) {

    }
}






