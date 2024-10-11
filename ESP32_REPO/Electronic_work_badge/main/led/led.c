#include "led.h"
#include "esp_log.h"
#include "led_indicator.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/timers.h"

static const char *TAG = "led_gpio";
static led_indicator_handle_t led_handle_red = NULL;
static led_indicator_handle_t led_handle_green = NULL;
static led_indicator_handle_t led_handle_yellow = NULL;
TaskHandle_t xled_warningTaskHandle = NULL;

static const blink_step_t slow_blink[] = {
    {LED_BLINK_HOLD, LED_STATE_ON, 1000},
    {LED_BLINK_HOLD, LED_STATE_OFF, 1000},
    {LED_BLINK_LOOP, 0, 0},
};

static const blink_step_t fast_blink[] = {
    {LED_BLINK_HOLD, LED_STATE_ON, 100},
    {LED_BLINK_HOLD, LED_STATE_OFF, 100},
    {LED_BLINK_LOOP, 0, 0},
};

static const blink_step_t constant_on[] = {
    {LED_BLINK_HOLD, LED_STATE_ON, 100},
    {LED_BLINK_LOOP, 0, 0},
};

static const blink_step_t constant_off[] = {
    {LED_BLINK_HOLD, LED_STATE_OFF, 100},
    {LED_BLINK_LOOP, 0, 0},
};

blink_step_t const *led_mode[] = {
    [CONSTANT_OFF] = constant_off,
    [CONSTANT_ON] = constant_on,
    [BLINK_FAST] = fast_blink,
    [BLINK_SLOW] = slow_blink,
    [BLINK_MAX] = NULL,
};

esp_err_t led_init(void)
{
    // initialize LEDs
    led_indicator_gpio_config_t gpio_config = {
        .gpio_num = LED_GREEN,
        .is_active_level_high = GPIO_ACTIVE_LEVEL,
    };

    const led_indicator_config_t config = {
        .mode = LED_GPIO_MODE,
        .led_indicator_gpio_config = &gpio_config,
        .blink_lists = led_mode,
        .blink_list_num = BLINK_MAX,
    };

    led_handle_red = led_indicator_create(&config);
    if(led_handle_red == NULL) {
        ESP_LOGE(TAG, "led_indicator_create failed");
        return ESP_FAIL;
    }
    
    gpio_config.gpio_num = LED_YELLOW;
    led_handle_green = led_indicator_create(&config);
    if(led_handle_green == NULL) {
        ESP_LOGE(TAG, "led_indicator_create failed");
        return ESP_FAIL;
    }
    
    gpio_config.gpio_num = LED_RED;
    led_handle_yellow = led_indicator_create(&config);
    if(led_handle_yellow == NULL) {
        ESP_LOGE(TAG, "led_indicator_create failed");
        return ESP_FAIL;
    }

    led_set_mode1(CONSTANT_OFF);
    led_set_mode2(CONSTANT_OFF);
    led_set_mode3(CONSTANT_OFF);

    if(xTaskCreate(led_warning_task, "led_warning_task", 2048, NULL, 5, &xled_warningTaskHandle) != pdPASS) {
        ESP_LOGE(TAG, "xTaskCreate failed");
        return ESP_FAIL;
    }

    return ESP_OK;
}

esp_err_t led_set_mode1(int mod1)
{
    if(mod1 >= BLINK_MAX) {ESP_LOGW(TAG, "Invalid mode %d", mod1);}
    else{
        if(led_indicator_start(led_handle_red, mod1)!= ESP_OK) {
        ESP_LOGE(TAG, "led_indicator_start failed");
        return ESP_FAIL;
        }
    }
    return ESP_OK;
}

esp_err_t led_set_mode2(int mod2)
{
    if(mod2 >= BLINK_MAX) {ESP_LOGW(TAG, "Invalid mode %d", mod2);}
    else{
        if(led_indicator_start(led_handle_green, mod2)!= ESP_OK) {
        ESP_LOGE(TAG, "led_indicator_start failed");
        return ESP_FAIL;
        }
    }
    return ESP_OK;
}

esp_err_t led_set_mode3(int mod3)
{
    if(mod3 >= BLINK_MAX) {ESP_LOGW(TAG, "Invalid mode %d", mod3);}
    else{
        if(led_indicator_start(led_handle_yellow, mod3)!= ESP_OK) {
        ESP_LOGE(TAG, "led_indicator_start failed");
        return ESP_FAIL;
        }
    }
    return ESP_OK;
}

esp_err_t led_reset_mode1(int mod1)
{
    if(led_indicator_stop(led_handle_red,mod1) != ESP_OK) {
        ESP_LOGE(TAG, "led_indicator_stop failed");
        return ESP_FAIL;
    }
    return ESP_OK;
}

esp_err_t led_reset_mode2(int mod2)
{
    if(led_indicator_stop(led_handle_green,mod2) != ESP_OK) {
        ESP_LOGE(TAG, "led_indicator_stop failed");
        return ESP_FAIL;
    }
    return ESP_OK;
}

esp_err_t led_reset_mode3(int mod3)
{
    if(led_indicator_stop(led_handle_yellow,mod3) != ESP_OK) {
        ESP_LOGE(TAG, "led_indicator_stop failed");
        return ESP_FAIL;
    }
    return ESP_OK;
}

void led_fatal_warning(void)
{
    led_set_mode1(CONSTANT_OFF);
    led_set_mode2(CONSTANT_OFF);

    ESP_LOGI(TAG, "LED fatal warning");
    led_reset_mode3(CONSTANT_OFF);
    led_set_mode3(BLINK_FAST);
    vTaskDelay(1000 / portTICK_PERIOD_MS);
    led_reset_mode3(BLINK_FAST);
    led_set_mode3(CONSTANT_OFF);
    esp_restart();
}

static void led_warning_task(void* arg)
{
    while(1){
        ulTaskNotifyTake(pdTRUE,portMAX_DELAY);
        ESP_LOGI(TAG, "LED warning");
        
        led_set_mode1(CONSTANT_OFF);
        led_set_mode2(CONSTANT_OFF);

        led_reset_mode3(CONSTANT_OFF);
        led_set_mode3(CONSTANT_ON);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
        led_reset_mode3(CONSTANT_ON);
        led_set_mode3(CONSTANT_OFF);

        led_reset_mode1(CONSTANT_OFF);
        led_reset_mode2(CONSTANT_OFF);
    }
}

void led_warning(void){
    xTaskNotifyGive(xled_warningTaskHandle);
}
