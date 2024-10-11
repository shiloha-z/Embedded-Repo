/*
 * SPDX-FileCopyrightText: 2021 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Unlicense OR CC0-1.0
 */


#include <stdio.h>
#include <stdlib.h>
#include <string.h>


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

void ble_init(void);

