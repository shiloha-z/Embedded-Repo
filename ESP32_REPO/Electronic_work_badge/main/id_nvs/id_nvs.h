#ifndef ID_NVS_H_
#define ID_NVS_H_

#include <stdio.h>

#define DEVICE_ID_NVS "device_id"
#define EMPLOYEE_ID_NVS "employee_id"
#define KEY_NVS "key"

esp_err_t init_nvs();
esp_err_t save_data_to_nvs(const char *key, uint64_t data) ;
esp_err_t read_data_from_nvs(const char *key, uint64_t *data) ;
esp_err_t store_data_to_nvs(const char *key, const uint8_t *data, size_t length) ;
esp_err_t retrieve_data_from_nvs(const char *key, uint8_t *data, size_t length) ;

#endif /* ID_NVS_H_ */