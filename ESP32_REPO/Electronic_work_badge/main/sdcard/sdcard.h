#ifndef _SDCARD_H_
#define _SDCARD_H_

#include "sdmmc_cmd.h"

#define SD_MOUNT_POINT      "/sdcard"
#define SD_CLK GPIO_NUM_12 //GPIO_NUM_39//GPIO_NUM_12
#define SD_CMD GPIO_NUM_13 //GPIO_NUM_38//GPIO_NUM_13
#define SD_D0 GPIO_NUM_11 //GPIO_NUM_40//GPIO_NUM_11

sdmmc_card_t * mount_sdcard(void);
esp_err_t formatt_SDcard(void);
void print_SDcard(void);
void Spi_bus_free(void);
void sdcard_unmount(sdmmc_card_t *card);
off_t get_file_size(const char *filepath);

#endif /* _SDCARD_H_ */