#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "sdkconfig.h"
#include "strip.h"
#include "main.h"
#include "button.h"
#include "gatts_table_creat_demo.h"
#include "i2s_recorder.h"
#include "sdcard.h"
//#include "mp3_main.h"

static const char *TAG = "Main";

STATUS status_flag = IDLE;//工作状态标志位
ERROR error_flag = NONE;
bool notify_begin_flag = false;//通知开启标志位

void button_check_task(void *arg)
{
	while (1)
	{
        if(Button_Value != BT_NONE)
		{
            switch (Button_Value)
            {
            case BT1_DOWN:
                formatt_SDcard();
                break;
            case BT2_DOWN:
                // bluetooth_enabled = !bluetooth_enabled;
                // if (bluetooth_enabled) {
                //     set_led_rgb(0,0,50);
                //     ESP_LOGI(TAG, "Enabling Bluetooth...");
                //     // esp_bt_controller_config_t bt_cfg = BT_CONTROLLER_INIT_CONFIG_DEFAULT();
                //     // esp_bt_controller_init(&bt_cfg);
                //     // esp_bt_controller_enable(ESP_BT_MODE_BLE);
                //     ble_nvs_init();
                //     ble_init();
                // } else {
                //     esp_bt_controller_disable();
                //     esp_bt_controller_deinit();
                //     set_led_rgb(0,0,0);
                //     ESP_LOGI(TAG, "Disabling Bluetooth...");
                //     esp_bluedroid_disable();
                //     esp_bluedroid_deinit();
                //     esp_bt_mem_release(ESP_BT_MODE_BLE);
                // }
                break;
            case BT3_DOWN:
                break;
            case BT4_DOWN:
                //recorder_begin_flag = !recorder_begin_flag;
                break;
            case BT5_DOWN:
                print_SDcard();
                break;
            default:
                break; 
            }
			Button_Value = BT_NONE;
		}
        vTaskDelay(20 / portTICK_PERIOD_MS);
	}
}

void record_check_task(void *arg)
{
    sdmmc_card_t *card;
    STATUS status_flag_pre = IDLE;
    while(1)
    {
        if(status_flag_pre!=status_flag)
        {
            if(status_flag_pre == IDLE && status_flag == RECORDING)
            {
                card = mount_sdcard();
                recorder_init();
            }
            else if(status_flag_pre == RECORDING && status_flag == IDLE)
            {
                vTaskDelay(200 / portTICK_PERIOD_MS);
                sdcard_unmount(card);
                Spi_bus_free();
                i2s_uninstall();
            }
            status_flag_pre=status_flag;
        }
        vTaskDelay(100 / portTICK_PERIOD_MS);
    }
}

void app_main(void)
    {
    ble_init();
    //configure_led();
    xTaskCreate(&button_task, "button_task", 1024 * 3, NULL, 7, NULL);
    xTaskCreate(&button_check_task, "button_check_task", 1024 * 8, NULL, 7, NULL);
    xTaskCreate(&record_check_task, "record_check_task", 1024 * 3, NULL, 7, NULL);
    while (1) {vTaskDelay(200 / portTICK_PERIOD_MS);}
}
