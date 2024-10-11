#include <stdio.h>
#include "nvs_flash.h"
#include "nvs.h"
#include "esp_log.h"
#include "id_nvs.h"

static const char *TAG = "NVS";

#define NVS_NAMESPACE "storage"

void init_nvs() {
    esp_err_t ret = nvs_flash_init();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        ESP_ERROR_CHECK(nvs_flash_erase());
        ret = nvs_flash_init();
    }
    ESP_ERROR_CHECK(ret);
}

void save_data_to_nvs(const char *key, const char *data) {
    nvs_handle_t my_handle;
    esp_err_t err;

    // 打开 NVS 命名空间
    err = nvs_open(NVS_NAMESPACE, NVS_READWRITE, &my_handle);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Error opening NVS handle: %s", esp_err_to_name(err));
        return;
    }

    // 写入数据
    err = nvs_set_str(my_handle, key, data);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Error writing to NVS: %s", esp_err_to_name(err));
    }

    // 提交写入操作
    err = nvs_commit(my_handle);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Error committing NVS changes: %s", esp_err_to_name(err));
    }

    // 关闭 NVS handle
    nvs_close(my_handle);
}

void read_data_from_nvs(const char *key, char *data, size_t max_len) {
    nvs_handle_t my_handle;
    esp_err_t err;

    // 打开 NVS 命名空间
    err = nvs_open(NVS_NAMESPACE, NVS_READONLY, &my_handle);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Error opening NVS handle: %s", esp_err_to_name(err));
        return;
    }

    // 获取数据所需的大小
    size_t required_size = 0;
    err = nvs_get_str(my_handle, key, NULL, &required_size);
    if (err != ESP_OK && err != ESP_ERR_NVS_NOT_FOUND) {
        ESP_LOGE(TAG, "Error determining size for NVS key '%s': %s", key, esp_err_to_name(err));
        nvs_close(my_handle);
        return;
    }

    if (required_size == 0 || required_size > max_len) {
        ESP_LOGE(TAG, "NVS key '%s' data size is invalid or exceeds max length", key);
        nvs_close(my_handle);
        return;
    }

    // 读取数据
    err = nvs_get_str(my_handle, key, data, &required_size);
    if (err == ESP_OK) {
        ESP_LOGI(TAG, "Read data from NVS with key '%s': %s", key, data);
    } else if (err == ESP_ERR_NVS_NOT_FOUND) {
        ESP_LOGI(TAG, "NVS key '%s' not found", key);
    } else {
        ESP_LOGE(TAG, "Error reading from NVS: %s", esp_err_to_name(err));
    }

    // 关闭 NVS handle
    nvs_close(my_handle);
}