#include "sdmmc_cmd.h"
#include "driver/sdmmc_host.h"

#define SD_MOUNT_POINT      "/sdcard"

sdmmc_card_t * mount_sdcard(void);
void formatt_SDcard(void);
void print_SDcard(void);
void Spi_bus_free(void);
void sdcard_unmount(sdmmc_card_t *card);
off_t get_file_size(const char *filepath);