#include <stdio.h>

#define DEVICE_ID_NVS "device_id"
#define EMPLOYEE_ID_NVS "employee_id"

void init_nvs();
void save_data_to_nvs(const char *key, const char *data);
void read_data_from_nvs(const char *key, char *data, size_t max_len) ;