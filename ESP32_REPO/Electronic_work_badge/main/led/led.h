#pragma once
#include "esp_err.h"

#define GPIO_ACTIVE_LEVEL  1
#define LED_RED GPIO_NUM_8//GPIO_NUM_8
#define LED_GREEN GPIO_NUM_9//GPIO_NUM_19
#define LED_YELLOW GPIO_NUM_10//GPIO_NUM_20

enum {
    CONSTANT_OFF = 0,
    CONSTANT_ON,
    BLINK_FAST,
    BLINK_SLOW,
    BLINK_MAX,
};

esp_err_t led_init();
esp_err_t led_set_mode1(int mod1);
esp_err_t led_set_mode2(int mod2);
esp_err_t led_set_mode3(int mod3);
esp_err_t led_reset_mode1(int mod1);
esp_err_t led_reset_mode2(int mod2);
esp_err_t led_reset_mode3(int mod3);
void led_warning(void);
void led_fatal_warning(void);
static void led_warning_task(void* arg);