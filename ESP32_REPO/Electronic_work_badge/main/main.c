/**
 * @file main.c
 * @author zelo_liu (3301781816@qq.com)
 * @brief 
 * @version 0.11
 * @date 2024-09-05
 * 
 * @copyright Copyright (c) 2024
 * 
 */
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "main.h"
#include "gatts_table_creat_demo.h"
#include "i2s_recorder.h"
#include "sdcard.h"
#include "gpio_button.h"
#include "esp_log.h"
#include "led.h"
#include "esp_sleep.h"
#include "codec.h"

static const char *TAG = "Main";

STATUS status_flag = IDLE;//工作状态标志位
TaskHandle_t status_check_task_handle = NULL;
QueueHandle_t status_queue = NULL;//ststus_check_task
sdmmc_card_t *card = NULL;
extern bool recording_pause_flag;

SemaphoreHandle_t pause_semaphore;
SemaphoreHandle_t pause_semaphore2;
SemaphoreHandle_t pause_semaphore3;

void status_check_task(void *arg)
{
    STATUS STATUS_VAR = IDLE;
    while(1)
    { 
        if (xQueueReceive(status_queue, &STATUS_VAR,  portMAX_DELAY) == pdPASS) {
            if (status_flag!= STATUS_VAR) {
                ESP_LOGI(TAG, "status_flag try to change from %d to %d", status_flag, STATUS_VAR);
                switch (STATUS_VAR) {
                    case IDLE:
                        if (status_flag == RECORDING) {
                            if(recording_pause_flag != false){
                                ESP_LOGI(TAG, "recorder is pause now,please resume it first");
                                error_string_send("recorder is pause now,please resume it first", 0x2003);
                                continue;
                            }
                            recording_end();
                            command_send(0x1003);
                            ESP_LOGI(TAG, "RECORDING pause success");
                            led_reset_mode1(BLINK_SLOW);
                            led_set_mode1(CONSTANT_OFF);
                        }else if(status_flag == FILE_SENDING){
                            file_send_end();
                            command_send(0x1007);
                            ESP_LOGI(TAG, "FILE_SENDING pause success");
                            led_reset_mode2(CONSTANT_ON);
                            led_set_mode2(CONSTANT_OFF);
                        }
                        status_flag = IDLE;
                        break;

                    case RECORDING:
                        if (status_flag == IDLE) {
                            if(recorder_init() != ESP_OK){
                                ESP_LOGE(TAG, "recorder_init failed");
                                error_string_send("recorder_init failed,RECORDING begin failed,", 0x2003);
                                continue;
                            }
                            led_reset_mode1(CONSTANT_OFF);
                            led_set_mode1(BLINK_SLOW);
                            command_send(0x1003);
                            ESP_LOGI(TAG, "RECORDING begin success,");
                        }else{
                            ESP_LOGE(TAG, "status is not IDLE");
                            error_string_send("status is not IDLE,", 0x2003);
                            continue;
                        }
                        status_flag = RECORDING;
                        break;

                    case FILE_SENDING:
                        if (status_flag == IDLE) {
                            if(file_send_init() != ESP_OK){
                                ESP_LOGE(TAG, "file_send_init failed");
                                error_string_send("file_send_init failed,FILE_SENDING begin failed,", 0x2007);
                                file_send_end();
                                continue;
                            }
                            led_reset_mode2(CONSTANT_OFF);
                            led_set_mode2(CONSTANT_ON);
                            command_send(0x1007);
                            ESP_LOGI(TAG, "FILE_SENDING begin success");
                        }else{
                            ESP_LOGE(TAG, "status is not IDLE");
                            error_string_send("status is not IDLE,", 0x2007);
                            continue;
                        }
                        status_flag = FILE_SENDING;
                        break;
                        
                    default:
                        ESP_LOGW(TAG, "Unknown status received: %d", STATUS_VAR);
                        break;
                }
                ESP_LOGI(TAG, "status_flag change to %d", STATUS_VAR);
            }else {
                ESP_LOGI(TAG, "status_flag is already %d,don't need to change", STATUS_VAR);
            }
        }
    }
}

void log_to_sd_card(const char *message) {
    // 打开或创建 SD 卡中的日志文件
    FILE *f = fopen("/sdcard/log.txt", "a");
    if (f == NULL) {
        printf("Failed to open log file for writing\n");
        return;
    }

    // 写入日志内容
    fprintf(f, "%s\n", message);

    // 关闭文件
    fclose(f);
}

#include "esp_log.h"
#include <stdarg.h>
#include <stdio.h>

// 自定义的日志输出函数
int custom_log_vprintf(const char *fmt, va_list args) {
    char buffer[256];
    vsnprintf(buffer, sizeof(buffer), fmt, args);

    // 打印到串口（可选）
    vprintf(fmt, args);

    // 将日志写入 SD 卡
    log_to_sd_card(buffer);

    return vprintf(fmt, args);
}

void init_logging(void) {
    // 设置自定义的日志输出函数
    esp_log_set_vprintf(custom_log_vprintf);
}



void app_main(void)
{
    esp_err_t ret = ESP_OK;

    ret = led_init();
    if (ret != ESP_OK) {ESP_LOGE(TAG, "led_init failed");}

    // Mount the SD card
    card = mount_sdcard();
    if (card == NULL) {ESP_LOGE(TAG, "mount sdcard failed");led_fatal_warning();}

    // Initialize BLE
    ret = ble_init();
    if (ret != ESP_OK) {ESP_LOGE(TAG, "ble_init failed");led_fatal_warning();}

    // // Initialize button
    // // ret = button_init();
    // // if (ret != ESP_OK) {ESP_LOGE(TAG, "button_init failed");}

    // Create the status queue
    status_queue = xQueueCreate(5, sizeof(STATUS));//创建向status_check_task发送状态更改请求的队列
    if (status_queue == NULL) {ESP_LOGE(TAG, "Failed to create status_queue");led_fatal_warning();}

    // Create the status check task
    if (xTaskCreate(&status_check_task, "status_check_task", 1024 * 8, NULL, 7, &status_check_task_handle) != pdPASS) {
        ESP_LOGE(TAG, "Failed to create status_check_task");led_fatal_warning();}

    print_SDcard();
    init_logging();

        STATUS status = RECORDING;
        if (xQueueSend(status_queue, &status, portMAX_DELAY) != pdPASS) 
            ESP_LOGE(TAG, "Failed to send data message to queue");
        vTaskDelay(10000 / portTICK_PERIOD_MS);

        status = IDLE;
        if (xQueueSend(status_queue, &status, portMAX_DELAY) != pdPASS) 
            ESP_LOGE(TAG, "Failed to send data message to queue");
}

