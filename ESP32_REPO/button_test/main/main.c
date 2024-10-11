#include <stdio.h>
#include <button_adc.h>
#include <esp_log.h>
#include <iot_button.h>
#include <led_indicator.h>

#define BUTTON_NUM 5

static const char *TAG = "Main";

#define WS2812_GPIO_NUM       38
#define WS2812_STRIPS_NUM     1
#define LED_STRIP_RMT_RES_HZ  (10 * 1000 * 1000)
static led_indicator_handle_t led_handle = NULL;

enum {
    BLINK_DOUBLE_RED = 0,
    BLINK_TRIPLE_GREEN,
    BLINK_WHITE_BREATHE_SLOW,
    BLINK_WHITE_BREATHE_FAST,
    BLINK_MAX,
};
static const blink_step_t double_red_blink[] = {
    /*!< Set color to red by R:255 G:0 B:0 */
    {LED_BLINK_RGB, SET_RGB(255, 0, 0), 0},
    {LED_BLINK_HOLD, LED_STATE_ON, 500},
    {LED_BLINK_HOLD, LED_STATE_OFF, 500},
    {LED_BLINK_HOLD, LED_STATE_ON, 500},
    {LED_BLINK_HOLD, LED_STATE_OFF, 500},
    {LED_BLINK_STOP, 0, 0},
};
static const blink_step_t triple_green_blink[] = {
    /*!< Set color to green by R:0 G:255 B:0 */
    {LED_BLINK_RGB, SET_RGB(0, 255, 0), 0},
    {LED_BLINK_HOLD, LED_STATE_ON, 500},
    {LED_BLINK_HOLD, LED_STATE_OFF, 500},
    {LED_BLINK_HOLD, LED_STATE_ON, 500},
    {LED_BLINK_HOLD, LED_STATE_OFF, 500},
    {LED_BLINK_HOLD, LED_STATE_ON, 500},
    {LED_BLINK_HOLD, LED_STATE_OFF, 500},
    {LED_BLINK_STOP, 0, 0},
};
static const blink_step_t breath_white_slow_blink[] = {
    /*!< Set Color to white and brightness to zero by H:0 S:0 V:0 */
    {LED_BLINK_HSV, SET_HSV(0, 0, 0), 0},
    {LED_BLINK_BREATHE, LED_STATE_ON, 1000},
    {LED_BLINK_BREATHE, LED_STATE_OFF, 1000},
    {LED_BLINK_LOOP, 0, 0},
};
static const blink_step_t breath_white_fast_blink[] = {
    /*!< Set Color to white and brightness to zero by H:0 S:0 V:0 */
    {LED_BLINK_HSV, SET_HSV(0, 0, 0), 0},
    {LED_BLINK_BREATHE, LED_STATE_ON, 500},
    {LED_BLINK_BREATHE, LED_STATE_OFF, 500},
    {LED_BLINK_LOOP, 0, 0},
};

blink_step_t const *led_mode[] = {
    [BLINK_DOUBLE_RED] = double_red_blink,
    [BLINK_TRIPLE_GREEN] = triple_green_blink,
    [BLINK_WHITE_BREATHE_SLOW] = breath_white_slow_blink,
    [BLINK_WHITE_BREATHE_FAST] = breath_white_fast_blink,
    [BLINK_MAX] = NULL,
};

uint16_t touch_chart[][3] = {
    {0, 2500, 2800}, // 下键
    {1, 1050, 1250}, // 左键
    {2, 1800, 2300}, // 中键
    {3, 500, 750},   // 上键
    {4, 1450, 1650}, // 右键
};

static void button_long_press_1_cb(void *arg, void *usr_data) {
    int button_index = (int)usr_data;
    ESP_LOGI(TAG, "BUTTON_LONG_PRESS_1: button %d", button_index);
    // 处理长按 1 事件
}

static void button_single_click_cb(void *arg, void *usr_data) {
    int button_index = (int)usr_data;
    ESP_LOGI(TAG, "BUTTON_SINGLE_CLICK: button %d", button_index);

    // 根据不同按键执行不同操作
    switch (button_index) {
        case 0:
            led_indicator_start(led_handle, 0);
            // 处理中键单击事件
            break;
        case 1:
            led_indicator_start(led_handle, 1);
            // 处理右键单击事件
            break;
        case 2:
            led_indicator_start(led_handle, 2);
            // 处理左键单击事件
            break;
        case 3:
            led_indicator_start(led_handle, 3);
            // 处理下键单击事件
            break;
        case 4:
            // 处理上键单击事件
            break;
        default:
            ESP_LOGE(TAG, "Unknown button index: %d", button_index);
            break;
    }
}

void button_init()
{
    // 创建和注册5个ADC按键
    for (int i = 0; i < BUTTON_NUM; i++) {
        button_config_t adc_btn_cfg = {
            .type = BUTTON_TYPE_ADC,
            .long_press_time = CONFIG_BUTTON_LONG_PRESS_TIME_MS,
            .short_press_time = CONFIG_BUTTON_SHORT_PRESS_TIME_MS,
            .adc_button_config = {
                .adc_channel = 0,
                .button_index = touch_chart[i][0],
                .min = touch_chart[i][1],
                .max = touch_chart[i][2],
            },
        };

        button_handle_t adc_btn = iot_button_create(&adc_btn_cfg);
        if (NULL == adc_btn) {
            ESP_LOGE(TAG, "Button %d create failed", i);
        } else {
            iot_button_register_cb(adc_btn, BUTTON_SINGLE_CLICK, button_single_click_cb, (void *)i);

            button_event_config_t cfg = {
                .event = BUTTON_LONG_PRESS_START,
                .event_data.long_press.press_time = 2000,
            };
            iot_button_register_event_cb(adc_btn, cfg, button_long_press_1_cb, (void *)i);
        }
    }
}

void strips_init()
{
    led_strip_config_t strip_config = {
        .strip_gpio_num = WS2812_GPIO_NUM,              // The GPIO that connected to the LED strip's data line
        .max_leds = WS2812_STRIPS_NUM,                  // The number of LEDs in the strip,
        .led_pixel_format = LED_PIXEL_FORMAT_GRB,       // Pixel format of your LED strip
        .led_model = LED_MODEL_WS2812,                  // LED strip model
        .flags.invert_out = false,                      // whether to invert the output signal
    };

    // LED strip backend configuration: RMT
    led_strip_rmt_config_t rmt_config = {
        .clk_src = RMT_CLK_SRC_DEFAULT,        // different clock source can lead to different power consumption
        .resolution_hz = LED_STRIP_RMT_RES_HZ, // RMT counter clock frequency
        .flags.with_dma = false,               // DMA feature is available on ESP target like ESP32-S3
    };

    led_indicator_strips_config_t strips_config = {
        .led_strip_cfg = strip_config,
        .led_strip_driver = LED_STRIP_RMT,
        .led_strip_rmt_cfg = rmt_config,
    };

    const led_indicator_config_t config = {
        .mode = LED_STRIPS_MODE,
        .led_indicator_strips_config = &strips_config,
        .blink_lists = led_mode,
        .blink_list_num = BLINK_MAX,
    };

    led_handle = led_indicator_create(&config);
    assert(led_handle != NULL);
}

void app_main(void) {
    button_init();
    strips_init();
    while (1) {vTaskDelay(1000 / portTICK_PERIOD_MS);}
}