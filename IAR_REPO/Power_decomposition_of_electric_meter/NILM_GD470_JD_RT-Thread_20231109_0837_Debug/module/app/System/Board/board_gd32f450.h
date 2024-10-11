//----------------------------------------------------------------------
//Copyright (C) 2016-2026 ��̨������˼�ٵ����ɷ����޹�˾�������з��� 
//������	wangjunsheng
//��������	2020.10.28
//����		֧��STоƬ�ĵ�������ģ��ӡ�ư������ļ�
//�޸ļ�¼	
//----------------------------------------------------------------------
#ifndef __BOARD_STH7_PQM_H
#define __BOARD_STH7_PQM_H

#if( BOARD_TYPE == BOARD_ST_PQM )

// ����CPU����
#define CPU_TYPE                CPU_STH7

// �ⲿflash����
#define THIRD_MEM_CHIP          CHIP_GD25Q64C

//���EEPROM�ͺ�
#define MASTER_MEMORY_CHIP		CHIP_M24512_RMN6TP
//�ڶ�Ƭ�洢оƬ
#define SLAVE_MEM_CHIP				CHIP_NO
// ��������
#define MAX_COM_CHANNEL_NUM     1


////////////////////////////////////////////////////////////////
//                         LED�ܽŶ���
////////////////////////////////////////////////////////////////
#define LED_GPIO            GPIOB
#define LED_RED1_PIN        GPIO_PIN_15
#define LED_GREEN1_PIN      GPIO_PIN_14
#define LED_RED2_PIN        GPIO_PIN_13
#define LED_GREEN2_PIN      GPIO_PIN_12

#define LED_RED             LED_GREEN1_PIN// 2022.02.12 ��ԭ���ĺ�ɫ�Ƹ�Ϊ��ɫ LED_RED1_PIN
#define LED_GREEN           LED_GREEN2_PIN
#define LED_RED_OPEN        gpio_bit_reset(LED_GPIO, LED_RED);//HAL_GPIO_WritePin(LED_GPIO, LED_RED, GPIO_PIN_RESET);
#define LED_RED_CLOSE       gpio_bit_set(LED_GPIO, LED_RED);//HAL_GPIO_WritePin(LED_GPIO, LED_RED, GPIO_PIN_SET);
#define LED_RED_STATUS()    gpio_output_bit_get(LED_GPIO, LED_RED)//HAL_GPIO_ReadPin(LED_GPIO, LED_RED)
#define LED_GREEN_OPEN      gpio_bit_reset(LED_GPIO, LED_GREEN);//HAL_GPIO_WritePin(LED_GPIO, LED_GREEN, GPIO_PIN_RESET);
#define LED_GREEN_CLOSE     gpio_bit_set(LED_GPIO, LED_GREEN);//HAL_GPIO_WritePin(LED_GPIO, LED_GREEN, GPIO_PIN_SET);
#define LED_GREEN_STATUS()  gpio_output_bit_get(LED_GPIO, LED_GREEN)//HAL_GPIO_ReadPin(LED_GPIO, LED_GREEN)


#define LED_TX		//HAL_GPIO_WritePin(LED_GPIO, LED_RED2_PIN, GPIO_PIN_RESET);
#define LED_RX		//HAL_GPIO_WritePin(LED_GPIO, LED_GREEN2_PIN, GPIO_PIN_RESET);
////////////////////////////////////////////////////////////////
#define IICPort        			 GPIOB
#define IIC_SCL_Pin    			 GPIO_PIN_8
#define IIC_SDA_Pin    			 GPIO_PIN_9
#define IIC_SCL_H      			 gpio_bit_set(IICPort,IIC_SCL_Pin);//HAL_GPIO_WritePin(IICPort,IIC_SCL_Pin,GPIO_PIN_SET)
#define IIC_SCL_L      			 gpio_bit_reset(IICPort,IIC_SCL_Pin);//HAL_GPIO_WritePin(IICPort,IIC_SCL_Pin,GPIO_PIN_RESET)
#define IIC_SDA_H      			 gpio_bit_set(IICPort,IIC_SDA_Pin);//HAL_GPIO_WritePin(IICPort,IIC_SDA_Pin,GPIO_PIN_SET)
#define IIC_SDA_L      			 gpio_bit_reset(IICPort,IIC_SDA_Pin);//HAL_GPIO_WritePin(IICPort,IIC_SDA_Pin,GPIO_PIN_RESET)
#define IIC_ACK() 			 gpio_input_bit_get(IICPort, IIC_SDA_Pin)//HAL_GPIO_ReadPin(IICPort, IIC_SDA_Pin)
//SDA����Ϊ���뷽ʽ
#define SDA_READ_Direction       gpio_mode_set(IICPort, GPIO_MODE_INPUT, GPIO_PUPD_NONE, IIC_SDA_Pin);//IICPort->MODER &= ~(3 << (2 * 9)); \
								 IICPort->MODER |= (0 << (2 * 9));  \
								 IICPort->PUPDR &= ~(3 << (2 * 9));\
								 IICPort->PUPDR |= (0 << (2 * 9))
//SDA����Ϊ�����ʽ
#define SDA_WRITE_Direction     gpio_mode_set(IICPort, GPIO_MODE_OUTPUT, GPIO_PUPD_PULLUP, IIC_SDA_Pin);// IICPort->MODER &= ~(3 << (2 * 9)); \
								 IICPort->MODER |= (1 << (2 * 9));  \
								 IICPort->PUPDR &= ~(3 << (2 * 9)); \
								 IICPort->PUPDR |= (1 << (2 * 9))



// ���������ṹ����
typedef struct
{
	BYTE SerialType;//�������� 0: 485_I 1:IR 2:CR 3:485_II
	BYTE SCI_Ph_Num;								// �����ں�
	BYTE (*SCIInit)( BYTE SCI_Ph_Num );				// ��ʼ������
	BYTE (*SCIEnableRcv)( BYTE SCI_Ph_Num );		// �������  
	BYTE (*SCIDisableRcv)( BYTE SCI_Ph_Num );		// ��ֹ���ս���
	BYTE (*SCIEnableSend)( BYTE SCI_Ph_Num );		// ������
	BYTE (*SCIBeginSend)( BYTE SCI_Ph_Num );		// ��ʼ����
}TypeDef_Pulic_SCI;

typedef struct
{
    DWORD RxCount;
    DWORD TxBegCount;
    DWORD TxCptCount;
    DWORD TxDMAErrorCount;
    DWORD ErrorCallbackCount;
} USARTCOUNT;

#define FLASH_CS_ENABLE     gpio_bit_reset(GPIOB,GPIO_PIN_6);//HAL_GPIO_WritePin(GPIOB, GPIO_PIN_6, GPIO_PIN_RESET);
#define FLASH_CS_DISABLE    gpio_bit_set(GPIOB,GPIO_PIN_6);//HAL_GPIO_WritePin(GPIOB, GPIO_PIN_6, GPIO_PIN_SET);


extern const TypeDef_Pulic_SCI SerialMap[MAX_COM_CHANNEL_NUM];
extern volatile USARTCOUNT USART_Count;

void InitBoard(void);
void DoSPICS(WORD No, WORD Do);

extern void InitLED(void);
extern void api_DeInitTIM2(void);

#endif//#if( (BOARD_TYPE == BOARD_HT_THREE_0134566) )

#endif//#ifndef __BOARD_HT_698_THREE_H


