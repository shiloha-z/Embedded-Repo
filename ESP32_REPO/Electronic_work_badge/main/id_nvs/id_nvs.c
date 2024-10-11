#include <stdio.h>
#include "nvs_flash.h"
#include "nvs.h"
#include "esp_log.h"
#include "id_nvs.h"

static const char *TAG = "NVS";

#define NVS_NAMESPACE "storage"

esp_err_t init_nvs() {
    esp_err_t ret = nvs_flash_init();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        ESP_ERROR_CHECK(nvs_flash_erase());
        ret = nvs_flash_init();
    }
    return ret;
}


esp_err_t save_data_to_nvs(const char *key, uint64_t data) {
    nvs_handle_t my_handle;
    esp_err_t err;

    // 打开 NVS 命名空间
    err = nvs_open(NVS_NAMESPACE, NVS_READWRITE, &my_handle);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Error opening NVS handle: %s", esp_err_to_name(err));
        return err;
    }

    // 写入 uint64 数据
    err = nvs_set_u64(my_handle, key, data);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Error writing to NVS: %s", esp_err_to_name(err));
    } else {
        // 提交写入操作
        err = nvs_commit(my_handle);
        if (err != ESP_OK) {
            ESP_LOGE(TAG, "Error committing NVS changes: %s", esp_err_to_name(err));
        }
    }
    // 关闭 NVS handle
    nvs_close(my_handle);
    return err;
}

esp_err_t read_data_from_nvs(const char *key, uint64_t *data) {
    nvs_handle_t my_handle;
    esp_err_t err;

    // 打开 NVS 命名空间
    err = nvs_open(NVS_NAMESPACE, NVS_READONLY, &my_handle);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Error opening NVS handle: %s", esp_err_to_name(err));
        return err;
    }

    // 读取 uint64 数据
    err = nvs_get_u64(my_handle, key, data);
    if (err == ESP_OK) {
        ESP_LOGI(TAG, "Read uint64 data from NVS with key '%s': %llu", key, (unsigned long long)*data);
    } else if (err == ESP_ERR_NVS_NOT_FOUND) {
        ESP_LOGI(TAG, "NVS key '%s' not found", key);
    } else {
        ESP_LOGE(TAG, "Error reading from NVS: %s", esp_err_to_name(err));
    }

    // 关闭 NVS handle
    nvs_close(my_handle);
    return err;
}

esp_err_t retrieve_data_from_nvs(const char *key, uint8_t *data, size_t length) {
    nvs_handle_t my_handle;
    esp_err_t err;
    size_t required_size = length; // 预期读取的大小

    // 打开 NVS 命名空间
    err = nvs_open(NVS_NAMESPACE, NVS_READONLY, &my_handle);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Error opening NVS handle: %s", esp_err_to_name(err));
        return err;
    }

    // 读取数据
    err = nvs_get_blob(my_handle, key, data, &required_size);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Error reading from NVS: %s", esp_err_to_name(err));
    }

    ESP_LOG_BUFFER_HEX(TAG, data,length);
    // 关闭 NVS handle
    nvs_close(my_handle);
    return err;
}

esp_err_t store_data_to_nvs(const char *key, const uint8_t *data, size_t length) {
    nvs_handle_t my_handle;
    esp_err_t err;

    // 打开 NVS 命名空间
    err = nvs_open(NVS_NAMESPACE, NVS_READWRITE, &my_handle);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Error opening NVS handle: %s", esp_err_to_name(err));
        return err;
    }

    // 写入数据
    err = nvs_set_blob(my_handle, key, data, length);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Error writing to NVS: %s", esp_err_to_name(err));
    } else {
        // 提交写入操作
        err = nvs_commit(my_handle);
        if (err != ESP_OK) {
            ESP_LOGE(TAG, "Error committing NVS changes: %s", esp_err_to_name(err));
        }
    }

    // 关闭 NVS handle
    nvs_close(my_handle);
    return err;
}