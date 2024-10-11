#include "strip.h"
#include "led_strip.h"
#include "esp_log.h"

static const char *TAGS = "strip";

static led_strip_handle_t led_strip;

#define BLINK_GPIO 38

void configure_led(void)
{
    ESP_LOGI(TAGS, "Example configured to blink addressable LED!");
    /* LED strip initialization with the GPIO and pixels number*/
    led_strip_config_t strip_config = {
        .strip_gpio_num = BLINK_GPIO,
        .max_leds = 1, // at least one LED on board
    };

    led_strip_rmt_config_t rmt_config = {
        .resolution_hz = 10 * 1000 * 1000, // 10MHz
        .flags.with_dma = false,
    };
    ESP_ERROR_CHECK(led_strip_new_rmt_device(&strip_config, &rmt_config, &led_strip));
    led_strip_set_pixel(led_strip, 0, 0,0,0);
    /* Refresh the strip to send data */
    led_strip_refresh(led_strip);

}

void blink_led(unsigned char s_led_state)
{
    /* If the addressable LED is enabled */
    if (s_led_state) {
        /* Set the LED pixel using RGB from 0 (0%) to 255 (100%) for each color */
        led_strip_set_pixel(led_strip, 0, 101,101,50);
        /* Refresh the strip to send data */
        led_strip_refresh(led_strip);
    } else {
        /* Set all LED off to clear all pixels */
        led_strip_clear(led_strip);
    }
}

void set_led_rgb(unsigned char r,unsigned char g,unsigned char b)
{
    /* If the addressable LED is enabled */
        /* Set the LED pixel using RGB from 0 (0%) to 255 (100%) for each color */
        led_strip_set_pixel(led_strip, 0, r,g,b);
        /* Refresh the strip to send data */
        led_strip_refresh(led_strip);
}

void turn_off_led(void)
{
    led_strip_clear(led_strip);
}