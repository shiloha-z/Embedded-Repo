
/**
  ******************************************************************************
  * @file    app_x-cube-ai.c
  * @author  X-CUBE-AI C code generator
  * @brief   AI program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */

 /*
  * Description
  *   v1.0 - Minimum template to show how to use the Embedded Client API
  *          model. Only one input and one output is supported. All
  *          memory resources are allocated statically (AI_NETWORK_XX, defines
  *          are used).
  *          Re-target of the printf function is out-of-scope.
  *   v2.0 - add multiple IO and/or multiple heap support
  *
  *   For more information, see the embeded documentation:
  *
  *       [1] %X_CUBE_AI_DIR%/Documentation/index.html
  *
  *   X_CUBE_AI_DIR indicates the location where the X-CUBE-AI pack is installed
  *   typical : C:\Users\<user_name>\STM32Cube\Repository\STMicroelectronics\X-CUBE-AI\7.1.0
  */

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/

#if defined ( __ICCARM__ )
#elif defined ( __CC_ARM ) || ( __GNUC__ )
#endif

/* System headers */
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <inttypes.h>
#include <string.h>

#include "app_x-cube-ai.h"
#include "main.h"
#include "ai_datatypes_defines.h"
#include "network.h"
#include "network_data.h"

/* USER CODE BEGIN includes */
/* USER CODE END includes */

/* IO buffers ----------------------------------------------------------------*/

#if !defined(AI_NETWORK_INPUTS_IN_ACTIVATIONS)
AI_ALIGNED(4) ai_i8 data_in_1[AI_NETWORK_IN_1_SIZE_BYTES];
ai_i8* data_ins[AI_NETWORK_IN_NUM] = {
data_in_1
};
#else
ai_i8* data_ins[AI_NETWORK_IN_NUM] = {
NULL
};
#endif

#if !defined(AI_NETWORK_OUTPUTS_IN_ACTIVATIONS)
AI_ALIGNED(4) ai_i8 data_out_1[AI_NETWORK_OUT_1_SIZE_BYTES];
ai_i8* data_outs[AI_NETWORK_OUT_NUM] = {
data_out_1
};
#else
ai_i8* data_outs[AI_NETWORK_OUT_NUM] = {
NULL
};
#endif

/* Activations buffers -------------------------------------------------------*/

AI_ALIGNED(32)
static uint8_t pool0[AI_NETWORK_DATA_ACTIVATION_1_SIZE];

ai_handle data_activations0[] = {pool0};

/* AI objects ----------------------------------------------------------------*/

static ai_handle network = AI_HANDLE_NULL;

static ai_buffer* ai_input;
static ai_buffer* ai_output;

static void ai_log_err(const ai_error err, const char *fct)
{
  /* USER CODE BEGIN log */
  if (fct)
    printf("TEMPLATE - Error (%s) - type=0x%02x code=0x%02x\r\n", fct,
        err.type, err.code);
  else
    printf("TEMPLATE - Error - type=0x%02x code=0x%02x\r\n", err.type, err.code);

  do {} while (1);
  /* USER CODE END log */
}

static int ai_boostrap(ai_handle *act_addr)
{
  ai_error err;

  /* Create and initialize an instance of the model */
  err = ai_network_create_and_init(&network, act_addr, NULL);
  if (err.type != AI_ERROR_NONE) {
    ai_log_err(err, "ai_network_create_and_init");
    return -1;
  }

  ai_input = ai_network_inputs_get(network, NULL);
  ai_output = ai_network_outputs_get(network, NULL);

#if defined(AI_NETWORK_INPUTS_IN_ACTIVATIONS)
  /*  In the case where "--allocate-inputs" option is used, memory buffer can be
   *  used from the activations buffer. This is not mandatory.
   */
  for (int idx=0; idx < AI_NETWORK_IN_NUM; idx++) {
	data_ins[idx] = ai_input[idx].data;
  }
#else
  for (int idx=0; idx < AI_NETWORK_IN_NUM; idx++) {
	  ai_input[idx].data = data_ins[idx];
  }
#endif

#if defined(AI_NETWORK_OUTPUTS_IN_ACTIVATIONS)
  /*  In the case where "--allocate-outputs" option is used, memory buffer can be
   *  used from the activations buffer. This is no mandatory.
   */
  for (int idx=0; idx < AI_NETWORK_OUT_NUM; idx++) {
	data_outs[idx] = ai_output[idx].data;
  }
#else
  for (int idx=0; idx < AI_NETWORK_OUT_NUM; idx++) {
	ai_output[idx].data = data_outs[idx];
  }
#endif

  return 0;
}

static int ai_run(void)
{
  ai_i32 batch;

  batch = ai_network_run(network, ai_input, ai_output);
  if (batch != 1) {
    ai_log_err(ai_network_get_error(network),
        "ai_network_run");
    return -1;
  }

  return 0;
}

/* USER CODE BEGIN 2 */
#include "usart.h"

#define INPUT_SIZE  1  // 输入数据的大小，单个浮点数
#define OUTPUT_SIZE 1  // 输出数据的大小，单个浮点数

ai_float input_data[INPUT_SIZE];  // 模型输入
ai_float output_data[OUTPUT_SIZE];  // 模型输出

// 获取串口输入并填充到模型输入缓冲区
int acquire_and_process_data(ai_float* data)
{
    char uart_buffer[20];  // 缓冲区用于接收 ASCII 字符串
    float input_value;
    uint8_t received_char;
    uint8_t index = 0;

    // 从串口逐字符接收，直到收到换行符 '\n'
    while (1)
    {
        HAL_UART_Receive(&huart1, &received_char, 1, HAL_MAX_DELAY);  // 接收一个字符

        // 将接收到的字符保存到缓冲区
        if (received_char == '\n' || index >= sizeof(uart_buffer) - 1) {
            uart_buffer[index] = '\0';  // 添加字符串终止符
            break;
        } else {
            uart_buffer[index++] = received_char;
        }
    }

    // 将接收到的 ASCII 字符串转换为浮点数
    sscanf(uart_buffer, "%f", &input_value);
    *data = input_value;

    // 打印转换后的浮点数
    printf("Received ASCII: %s\n", uart_buffer);
    printf("Converted to float: %.4f\n", *data);

    return 0;
}

// 处理模型输出并通过串口发送
int post_process(ai_float* data)
{
    // 获取模型输出并发送到串口
    char buffer[50];
    snprintf(buffer, sizeof(buffer), "Output: %.4f\n", *data);
    HAL_UART_Transmit(&huart1, (uint8_t*)buffer, strlen(buffer), HAL_MAX_DELAY);

    return 0;
}
/* USER CODE END 2 */

/* Entry points --------------------------------------------------------------*/

void MX_X_CUBE_AI_Init(void)
{
  printf("X-CUBE-AI initialized successfully!\n");
  ai_boostrap(data_activations0);
}

void MX_X_CUBE_AI_Process(void)
{
    // 获取串口输入数据并填充到模型输入缓冲区
    acquire_and_process_data(input_data);

    // // 初始化输入输出缓冲区
    // ai_input[AI_NETWORK_IN_NUM] = {
    //     AI_BUFFER_OBJ_INIT(AI_BUFFER_FORMAT_FLOAT, 1, 1, INPUT_SIZE, 1, &input_data)
    // };
    
    // ai_output[AI_NETWORK_OUT_NUM] = {
    //     AI_BUFFER_OBJ_INIT(AI_BUFFER_FORMAT_FLOAT, 1, 1, OUTPUT_SIZE, 1, &output_data)
    // };

    // 为 ai_input 和 ai_output 分配内存
    ai_input = (ai_buffer*)malloc(sizeof(ai_buffer) * AI_NETWORK_IN_NUM);
    ai_output = (ai_buffer*)malloc(sizeof(ai_buffer) * AI_NETWORK_OUT_NUM);
    if (!ai_input || !ai_output) {
        printf("Memory allocation failed!\n");
        return;
    }

    // 使用临时变量进行初始化
    ai_buffer temp_input = AI_BUFFER_OBJ_INIT(AI_BUFFER_FORMAT_FLOAT, 1, 1, INPUT_SIZE, 1, input_data);
    ai_buffer temp_output = AI_BUFFER_OBJ_INIT(AI_BUFFER_FORMAT_FLOAT, 1, 1, OUTPUT_SIZE, 1, output_data);

    // 将临时变量的值赋给指针
    *ai_input = temp_input;
    *ai_output = temp_output;

    ai_run();
    // 处理模型的输出并通过串口发送
    post_process(output_data);
    /* USER CODE END 6 */
}
#ifdef __cplusplus
}
#endif
