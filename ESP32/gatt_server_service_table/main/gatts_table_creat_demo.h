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
    IDX_CHAR_A,
    IDX_CHAR_VAL_A,
    IDX_CHAR_CFG_A,
    // 自定义属性1
    IDX_CHAR_TPMS_OUT,
    IDX_CHAR_VAL_TPMS_OUT, 
    // 自定义属性2
    IDX_CHAR_TPMS_IN,
    IDX_CHAR_VAL_TPMS_IN,
    IDX_CHAR_CFG_TPMS_IN,


    IDX_CHAR_B,
    IDX_CHAR_VAL_B,

    IDX_CHAR_C,
    IDX_CHAR_VAL_C,

    HRS_IDX_NB,
};

