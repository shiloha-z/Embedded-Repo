/*
 * SPDX-FileCopyrightText: 2021 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Unlicense OR CC0-1.0
 */

#ifndef _GATTS_TABLE_CREAT_DEMO_H_
#define _GATTS_TABLE_CREAT_DEMO_H_

/* Attributes State Machine */
enum
{
    IDX_SVC,

    IDX_CHAR_TPMS_IN,
    IDX_CHAR_VAL_TPMS_IN,
    IDX_CHAR_CFG_TPMS_IN,

    IDX_CHAR_TPMS_OUT,
    IDX_CHAR_VAL_TPMS_OUT,
    IDX_CHAR_CFG_TPMS_OUT,

    HRS_IDX_NB,
};

/**
 * @brief BLE初始化
 * 
 * @return esp_err_t 
 */
esp_err_t ble_init(void);

/**
 * @brief 发送带有错误信息的报文
 * 
 * @param error_string 要发送的错误信息
 * @param error_code 要发送的命令字
 */
void error_string_send(char* error_string,uint16_t error_code);

/**
 * @brief 发送不带有变长部分的报文
 * 
 * @param command_id 报文命令字
 * @return esp_err_t 
 */
esp_err_t command_send(uint16_t command_id);

/**
 * @brief 文件传输状态的初始化
 * 
 * @return esp_err_t 
 */
esp_err_t file_send_init(void);

/**
 * @brief 文件传输状态的结束,进行资源释放
 * 
 * @return esp_err_t 
 */
esp_err_t file_send_end(void);

/**
 * @brief Send file to through BLE
 * 
 * @param file_name 文件名
 * @param address 文件开始传输的位置，为0表示从头开始传输
 * @return esp_err_t 
 */
esp_err_t file_send(char * file_name,uint64_t address);

#endif /* _GATTS_TABLE_CREAT_DEMO_H_ */