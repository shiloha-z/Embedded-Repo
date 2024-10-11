#include "esp_log.h"
#include "esp_vfs_fat.h"
#include "sdcard.h"
#include <dirent.h> 
#include <sys/stat.h>
#include "driver/sdmmc_host.h"

#define CONFIG_EXAMPLE_FORMAT_IF_MOUNT_FAILED 1

static const char *TAG = "SDcard";

extern sdmmc_card_t *card;
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
	host.max_freq_khz =  40000;
    // This initializes the slot without card detect (CD) and write protect (WP) signals.
    // Modify slot_config.gpio_cd and slot_config.gpio_wp if your board has these signals.
    sdmmc_slot_config_t slot_config = SDMMC_SLOT_CONFIG_DEFAULT();

    // Set bus width to use:

    slot_config.width = 1;

    // On chips where the GPIOs used for SD card can be configured, set them in
    // the slot_config structure:

    slot_config.clk = SD_CLK;
    slot_config.cmd = SD_CMD;
    slot_config.d0 = SD_D0;

    // Enable internal pullups on enabled pins. The internal pullups
    // are insufficient however, please make sure 10k external pullups are
    // connected on the bus. This is for debug / example purpose only.
    slot_config.flags |= SDMMC_SLOT_FLAG_INTERNAL_PULLUP;

    ESP_LOGI(TAG, "Mounting filesystem");
    sdmmc_card_t *card = NULL;
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

esp_err_t formatt_SDcard(void)
{
    esp_err_t ret;
    // Format SD card
    ESP_LOGI(TAG, "Formatting SD card");

    ret = esp_vfs_fat_sdcard_format(SD_MOUNT_POINT,card);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to format SD card. Error: %d", ret);
        return ret;
    } else {
        ESP_LOGI(TAG, "SD card formatted successfully");
        return ESP_OK;
    }
}

void list_files_in_directory(const char *base_path, int depth) {
    DIR *dir;
    struct dirent *entry;
    char path[512];

    if ((dir = opendir(base_path)) != NULL) {
        while ((entry = readdir(dir)) != NULL) {
            if (entry->d_name[0] == '.') {
                // 忽略 "." 和 ".."
                continue;
            }

            snprintf(path, sizeof(path), "%s/%s", base_path, entry->d_name);
            struct stat st;
            if (stat(path, &st) == 0) {
                for (int i = 0; i < depth; i++) {
                    printf("  ");
                }
                if (S_ISDIR(st.st_mode)) {
                    ESP_LOGI(TAG, "DIR : %s", path);
                    // 递归列出子目录中的文件
                    list_files_in_directory(path, depth + 1);
                } else {
                    ESP_LOGI(TAG, "FILE: %s (Size: %ld bytes)", path, st.st_size);
                }
            } else {
                ESP_LOGE(TAG, "Failed to get file status: %s", path);
            }
        }
        closedir(dir);
    } else {
        ESP_LOGE(TAG, "Failed to open directory: %s", base_path);
    }
}

void print_SDcard(void)
{
    ESP_LOGI(TAG, "Listing files in SD card:");
    list_files_in_directory(SD_MOUNT_POINT, 0);
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