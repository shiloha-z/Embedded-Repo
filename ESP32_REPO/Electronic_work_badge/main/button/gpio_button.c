#include "gpio_button.h"
#include "esp_log.h"
#include <iot_button.h>
#include "esp_sleep.h"
#include "main.h"
#include "sdcard.h"
#include "driver/rtc_io.h"

static const char *TAG = "Gpio_Button";
extern QueueHandle_t status_queue;//ststus_check_task
extern STATUS status_flag;//工作状态标志位
extern sdmmc_card_t *card;

// 按键1单击事件回调函数
void button1_single_click_cb(void *arg)
{
    ESP_LOGI(TAG, "GPIO Button 1 single click");
}
// 按键2单击事件回调函数
void button2_single_click_cb(void *arg)
{
    ESP_LOGI(TAG, "GPIO Button 2 single click");
    if(status_flag == IDLE){
        STATUS status = RECORDING;
        if (xQueueSend(status_queue, &status, portMAX_DELAY) != pdPASS) 
            ESP_LOGE(TAG, "Failed to send data message to queue");
    }else if(status_flag == RECORDING){
        STATUS status = IDLE;
        if (xQueueSend(status_queue, &status, portMAX_DELAY) != pdPASS) 
            ESP_LOGE(TAG, "Failed to send data message to queue");
    }
}

void button2_double_click_cb(void *arg)
{
    ESP_LOGI(TAG, "GPIO Button 2 double click");
    print_SDcard();
}

void button2_long_press_start_cb(void *arg)
{
    ESP_LOGI(TAG, "GPIO Button 2 long press start");
    formatt_SDcard();
}

#define BUTTON_ACTIVE_LEVEL     0

esp_err_t button_init(void)
{    
    esp_err_t ret;

    button_config_t  button1_config = {
        .type = BUTTON_TYPE_GPIO,
        .gpio_button_config = {
            .gpio_num = GPIO_BUTTON1,
            .active_level = BUTTON_ACTIVE_LEVEL,
#if CONFIG_GPIO_BUTTON_SUPPORT_POWER_SAVE
            .enable_power_save = true,
#endif
        }
    };
    
    button_handle_t gpio_btn1 = iot_button_create(&button1_config);
    
    if (NULL == gpio_btn1) {
        ESP_LOGE(TAG, "GPIO Button 1 create failed");
        return ESP_FAIL;
    } else {
        ret = iot_button_register_cb(gpio_btn1, BUTTON_SINGLE_CLICK, button1_single_click_cb, NULL);
        if(ret!= ESP_OK){
            ESP_LOGE(TAG, "GPIO Button 1 register single click callback failed");
            return ESP_FAIL;
        }
    }

    button_config_t  button2_config = {
        .type = BUTTON_TYPE_GPIO,
        .gpio_button_config = {
            .gpio_num = GPIO_BUTTON2,
            .active_level = BUTTON_ACTIVE_LEVEL,
#if CONFIG_GPIO_BUTTON_SUPPORT_POWER_SAVE
            .enable_power_save = true,
#endif
        }
    };

    button_handle_t gpio_btn2 = iot_button_create(&button2_config);
    if (NULL == gpio_btn2) {
        ESP_LOGE(TAG, "GPIO Button 2 create failed");
        return ESP_FAIL;
    } else {
        ret = iot_button_register_cb(gpio_btn2, BUTTON_SINGLE_CLICK, button2_single_click_cb, NULL);
        if(ret!= ESP_OK){
            ESP_LOGE(TAG, "GPIO Button 2 register single click callback failed");
            return ret;
        }
        ret = iot_button_register_cb(gpio_btn2, BUTTON_DOUBLE_CLICK, button2_double_click_cb, NULL);
        if(ret!= ESP_OK){
            ESP_LOGE(TAG, "GPIO Button 2 register double click callback failed");
            return ret;
        }
        ret = iot_button_register_cb(gpio_btn2, BUTTON_LONG_PRESS_START, button2_long_press_start_cb, NULL);
        if(ret!= ESP_OK){
            ESP_LOGE(TAG, "GPIO Button 2 register long press start callback failed");
            return ret;
        }
    }
    return ESP_OK;
}
