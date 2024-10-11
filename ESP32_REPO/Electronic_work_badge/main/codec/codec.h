/*
 * SPDX-FileCopyrightText: 2024 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Apache-2.0
 */
#pragma once

#include <stdint.h>
#include "esp_audio_types.h"
#include "esp_audio_simple_dec.h"


/**
 * @brief  Basic audio information
 */
typedef struct {
    uint8_t     channel;          /*!< Audio channel */
    uint8_t     bits_per_sample;  /*!< Audio bits per sample */
    int         sample_rate;      /*!< Sample rate */
    const void *spec_info;        /*!< Specified information for certain audio codec */
    int         spec_info_size;   /*!< Specified information length */
} audio_info_t;

void test(void* arg);
