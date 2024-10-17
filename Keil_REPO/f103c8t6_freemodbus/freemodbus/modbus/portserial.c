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
    // huart1.Instance = USART1;
    // huart1.Init.BaudRate = ulBaudRate;
    // huart1.Init.StopBits = UART_STOPBITS_1;
    // huart1.Init.Mode = UART_MODE_TX_RX;
    // huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
    // huart1.Init.OverSampling = UART_OVERSAMPLING_16;
 
    // switch(eParity)
    // {
    // // ???
    // case MB_PAR_ODD:
    //     huart1.Init.Parity = UART_PARITY_ODD;
    //     huart1.Init.WordLength = UART_WORDLENGTH_9B;			// ?????????9bits
    //     break;
 
    // // ???
    // case MB_PAR_EVEN:
    //     huart1.Init.Parity = UART_PARITY_EVEN;
    //     huart1.Init.WordLength = UART_WORDLENGTH_9B;			// ?????????9bits
    //     break;
 
    // // ???
    // default:
    //     huart1.Init.Parity = UART_PARITY_NONE;
    //     huart1.Init.WordLength = UART_WORDLENGTH_8B;			// ?????????8bits
    //     break;
    // }
    // return HAL_UART_Init(&huart1) == HAL_OK ? TRUE : FALSE;


    __HAL_UART_ENABLE_IT(&huart1,UART_IT_RXNE);
    __HAL_UART_ENABLE(&huart1);

    return TRUE;
}
 

void vMBPortClose( void )
{
 __HAL_UART_DISABLE_IT(&huart1, UART_IT_TC|UART_IT_RXNE);
 __HAL_UART_DISABLE(&huart1);
}

BOOL xMBPortSerialPutByte( CHAR ucByte )
{
    /* Put a byte in the UARTs transmit buffer. This function is called
     * by the protocol stack if pxMBFrameCBTransmitterEmpty( ) has been
     * called. */
	if(HAL_UART_Transmit(&huart1,(uint8_t *)&ucByte,1,0x01) != HAL_OK){
			return FALSE;
	}
	else {
		return TRUE;
	}
}

BOOL xMBPortSerialGetByte( CHAR * pucByte )
{
    /* Return the byte in the UARTs receive buffer. This function is called
     * by the protocol stack after pxMBFrameCBByteReceived( ) has been called.
     */
	if(HAL_UART_Receive (&huart1 ,(uint8_t *)pucByte,1,0x01) != HAL_OK )//添加接收一位代码
		return FALSE ;
	else {
		return TRUE;
	}
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
 
/**
* @brief This function handles USART1 global interrupt.
*/
void USART1_IRQHandler(void)
{
  /* USER CODE BEGIN USART1_IRQn 0 */
#if UARTISR_EN == 1
 if (__HAL_UART_GET_IT_SOURCE(&huart1, UART_IT_RXNE) != RESET)
 {
  prvvUARTRxISR();    
 }
 if(__HAL_UART_GET_IT_SOURCE(&huart1, UART_IT_TC) != RESET)
 {
  prvvUARTTxReadyISR();  
 }
#else 
  /* USER CODE END USART1_IRQn 0 */
  HAL_UART_IRQHandler(&huart1);
  /* USER CODE BEGIN USART1_IRQn 1 */
#endif
  /* USER CODE END USART1_IRQn 1 */
}

