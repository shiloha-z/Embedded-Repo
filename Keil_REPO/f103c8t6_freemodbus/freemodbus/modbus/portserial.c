/*
 * FreeModbus Libary: BARE Port
 * Copyright (C) 2006 Christian Walter <wolti@sil.at>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 *
 * File: $Id$
 */
#include "port.h"
#include "usart.h"
 
/* ----------------------- Modbus includes ----------------------------------*/
#include "mb.h"
#include "mbport.h"
 
/* ----------------------- static functions ---------------------------------*/
static void prvvUARTTxReadyISR( void );
static void prvvUARTRxISR( void );
 
/* ----------------------- Start implementation -----------------------------*/
void vMBPortSerialEnable( BOOL xRxEnable, BOOL xTxEnable )
{
    if(xRxEnable)
    {
		//
		// ?????485????,??????485???????
		//
		
		// MAX485_SetMode(MODE_RECV);
		
        __HAL_UART_ENABLE_IT(&huart1, UART_IT_RXNE);		// ????????
    }
    else
    {
        __HAL_UART_DISABLE_IT(&huart1, UART_IT_RXNE);		// ????????
    }
 
    if(xTxEnable)
    {
		//
		// ?????485????,??????485???????
		//
		
		// MAX485_SetMode(MODE_SENT);
		
        __HAL_UART_ENABLE_IT(&huart1, UART_IT_TXE);			// ????????
    }
    else
    {
        __HAL_UART_DISABLE_IT(&huart1, UART_IT_TXE);		// ????????
    }
}
 
BOOL xMBPortSerialInit( UCHAR ucPORT, ULONG ulBaudRate, UCHAR ucDataBits, eMBParity eParity )
{
    huart1.Instance = USART1;
    huart1.Init.BaudRate = ulBaudRate;
    huart1.Init.StopBits = UART_STOPBITS_1;
    huart1.Init.Mode = UART_MODE_TX_RX;
    huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
    huart1.Init.OverSampling = UART_OVERSAMPLING_16;
 
    switch(eParity)
    {
    // 奇校验
    case MB_PAR_ODD:
        huart1.Init.Parity = UART_PARITY_ODD;
        huart1.Init.WordLength = UART_WORDLENGTH_9B;			// 带奇偶校验数据位为9bits
        break;
 
    // 偶校验
    case MB_PAR_EVEN:
        huart1.Init.Parity = UART_PARITY_EVEN;
        huart1.Init.WordLength = UART_WORDLENGTH_9B;			// 带奇偶校验数据位为9bits
        break;
 
    // 无校验
    default:
        huart1.Init.Parity = UART_PARITY_NONE;
        huart1.Init.WordLength = UART_WORDLENGTH_8B;			// 无奇偶校验数据位为8bits
        break;
    }
		
    return HAL_UART_Init(&huart1) == HAL_OK ? TRUE : FALSE;
}
 

void vMBPortClose( void )
{
 __HAL_UART_DISABLE_IT(&huart1, UART_IT_TC|UART_IT_RXNE);
 __HAL_UART_DISABLE(&huart1);
}

BOOL xMBPortSerialPutByte( CHAR ucByte )
{
    USART1->DR = ucByte;
    return TRUE;
}
 
BOOL xMBPortSerialGetByte( CHAR * pucByte )
{
    *pucByte = (USART1->DR & (uint16_t)0x00FF);
    return TRUE;
}
 
/* Create an interrupt handler for the transmit buffer empty interrupt
 * (or an equivalent) for your target processor. This function should then
 * call pxMBFrameCBTransmitterEmpty( ) which tells the protocol stack that
 * a new character can be sent. The protocol stack will then call
 * xMBPortSerialPutByte( ) to send the character.
 */
void prvvUARTTxReadyISR( void )
{
    pxMBFrameCBTransmitterEmpty(  );
}
 
/* Create an interrupt handler for the receive interrupt for your target
 * processor. This function should then call pxMBFrameCBByteReceived( ). The
 * protocol stack will then call xMBPortSerialGetByte( ) to retrieve the
 * character.
 */
void prvvUARTRxISR( void )
{

    pxMBFrameCBByteReceived(  );
}
 


void USART1_IRQHandler(void)
{
    // 处理接收中断
    if(__HAL_UART_GET_IT_SOURCE(&huart1, UART_IT_RXNE))
    {
        // 调用Modbus接收中断服务程序
        prvvUARTRxISR();  

        // 清除RXNE标志
        __HAL_UART_CLEAR_FLAG(&huart1, UART_FLAG_RXNE);
    }

    // 处理发送中断
    if(__HAL_UART_GET_IT_SOURCE(&huart1, UART_IT_TXE))
    {
        // 调用Modbus发送准备好中断服务程序
        prvvUARTTxReadyISR();

        // 清除TXE标志
        __HAL_UART_CLEAR_FLAG(&huart1, UART_FLAG_TXE);
    }
}


