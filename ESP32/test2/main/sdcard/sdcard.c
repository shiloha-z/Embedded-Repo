#include "esp_log.h"

#include "esp_vfs_fat.h"
#include "sdcard.h"
#include <dirent.h> 
#include <sys/stat.h>

#define CONFIG_EXAMPLE_FORMAT_IF_MOUNT_FAILED 1

static const char *TAG = "SDcard";

sdmmc_host_t host = SDMMC_HOST_DEFAULT();


sdmmc_card_t * mount_sdcard(void)
{
    esp_err_t ret;
    // Options for mounting the filesystem.
    // If format_if_mount_failed is set to true, SD card will be partitioned and
    // formatted in case when mounting fails.
    esp_vfs_fat_sdmmc_mount_config_t mount_config = {
#ifdef CONFIG_EXAMPLE_FORMAT_IF_MOUNT_FAILED
        .format_if_mount_failed = true,
#else
        .format_if_mount_failed = false,
#endif // EXAMPLE_FORMAT_IF_MOUNT_FAILED
        .max_files = 5,
        .allocation_unit_size = 16 * 1024
    };
    const char mount_point[] = SD_MOUNT_POINT;
    ESP_LOGI(TAG, "Initializing SD card");

    // Use settings defined above to initialize SD card and mount FAT filesystem.
    // Note: esp_vfs_fat_sdmmc/sdspi_mount is all-in-one convenience functions.
    // Please check its source code and implement error recovery when developing
    // production applications.

    ESP_LOGI(TAG, "Using SDMMC peripheral");
	host.max_freq_khz =  80000000;
    // This initializes the slot without card detect (CD) and write protect (WP) signals.
    // Modify slot_config.gpio_cd and slot_config.gpio_wp if your board has these signals.
    sdmmc_slot_config_t slot_config = SDMMC_SLOT_CONFIG_DEFAULT();

    // Set bus width to use:

    slot_config.width = 1;

    // On chips where the GPIOs used for SD card can be configured, set them in
    // the slot_config structure:

    slot_config.clk = GPIO_NUM_39;
    slot_config.cmd = GPIO_NUM_38;
    slot_config.d0 = GPIO_NUM_40;

    // Enable internal pullups on enabled pins. The internal pullups
    // are insufficient however, please make sure 10k external pullups are
    // connected on the bus. This is for debug / example purpose only.
    slot_config.flags |= SDMMC_SLOT_FLAG_INTERNAL_PULLUP;

    ESP_LOGI(TAG, "Mounting filesystem");
    sdmmc_card_t *card;
    ret = esp_vfs_fat_sdmmc_mount(mount_point, &host, &slot_config, &mount_config, &card);

    if (ret != ESP_OK) {
        if (ret == ESP_FAIL) {
            ESP_LOGE(TAG, "Failed to mount filesystem. "
                    "If you want the card to be formatted, set the EXAMPLE_FORMAT_IF_MOUNT_FAILED menuconfig option.");
        } else {
            ESP_LOGE(TAG, "Failed to initialize the card (%s). "
                    "Make sure SD card lines have pull-up resistors in place.", esp_err_to_name(ret));
        }
        return NULL;
    }
    ESP_LOGI(TAG, "Filesystem mounted");

    // Card has been initialized, print its properties
    sdmmc_card_print_info(stdout, card);
    return card;
}

void formatt_SDcard(void)
{
    esp_err_t ret;
    sdmmc_card_t *card = mount_sdcard();
    // Format SD card
    ESP_LOGI(TAG, "Formatting SD card");

    ret = esp_vfs_fat_sdcard_format(SD_MOUNT_POINT,card);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to format SD card. Error: %d", ret);
    } else {
        ESP_LOGI(TAG, "SD card formatted successfully");
    }
    esp_vfs_fat_sdcard_unmount(SD_MOUNT_POINT, card);
}

void print_SDcard(void)
{
    // Open and print files in SD card
    sdmmc_card_t *card = mount_sdcard();
    DIR *dir;
    struct dirent *ent;
    if ((dir = opendir(SD_MOUNT_POINT)) != NULL) {
        while ((ent = readdir(dir)) != NULL) {
            ESP_LOGI(TAG, "File: %s", ent->d_name);
            // Get the file path
            char filepath[256];
            snprintf(filepath, sizeof(filepath), "/sdcard/%s", ent->d_name);
            
            // Get file size
            struct stat st;
            if (stat(filepath, &st) == 0) {
                ESP_LOGI(TAG, "Size: %ld bytes", st.st_size);
            } else {
                ESP_LOGE(TAG, "Failed to get file size: %s", ent->d_name);
                continue;
            }
        }
        closedir(dir);
    } else {
        ESP_LOGE(TAG, "Failed to open directory /sdcard");
    }
    esp_vfs_fat_sdcard_unmount(SD_MOUNT_POINT, card);
}


void Spi_bus_free(void)
{
    spi_bus_free(host.slot);
}

void sdcard_unmount(sdmmc_card_t *card)
{
    esp_vfs_fat_sdcard_unmount(SD_MOUNT_POINT, card);
}

off_t get_file_size(const char *filepath) {
    struct stat st;
    if (stat(filepath, &st) == 0) {
        return st.st_size;
    } else {
        return -1; // Return -1 if failed to get file size
    }
}