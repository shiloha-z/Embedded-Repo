#ifndef __GPIO_BUTTON_H__
#define __GPIO_BUTTON_H__

#include <stdbool.h>
#include "esp_err.h"

#define GPIO_BUTTON1 GPIO_NUM_0
#define GPIO_BUTTON2 GPIO_NUM_39//GPIO_NUM_39

esp_err_t button_init();

#endif //__GPIO_BUTTON_H__