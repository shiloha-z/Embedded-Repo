#ifndef LED_H
#define LED_H

void blink_led(unsigned char s_led_state);
void configure_led(void);
void set_led_rgb(unsigned char r,unsigned char g,unsigned char b);
void turn_off_led(void);

#endif // LED_H