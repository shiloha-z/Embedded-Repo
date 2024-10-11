//----------------------------------------------------------------------
//Copyright (C) 2016-2026 ��̨������˼�ٵ����ɷ����޹�˾�������з��� 
//������	wangjunsheng
//��������	2020.10.28
//����		�������ù���
//�޸ļ�¼	
//----------------------------------------------------------------------
#ifndef __SYS_H
#define __SYS_H

#define     MAX_PHASE                1      // �����Ϊ1�������Ϊ3

#define    USER_TEST_MODE        1  //�����ǵ��Ժ�Ͳ⣬�����ֳ��û��� 0--�ֳ��û�֧�����ĳ�����1--���ģ������




#define     USE_DEBUG		0

#define     USE_SAFETY_MODE		1

#define     USE_CODE_SAFEMODE	1

#define     USE_PARA_CTRL		1

// �汾��

#define     MODULE_VERSION      (0xa026+(MAX_PHASE<<8)+(USER_TEST_MODE<<4))

#define     HARD_VERSION        (0xB002+(MAX_PHASE<<8))

#define     MODULE_VERSION_T      "V2.0"

#define     HARD_VERSION_T        "V2.0"



#define     HARD_TIME	        "220730"

#define     UART_DEFAULT_BAUD        9600U	//�����ã�ʵ��Ӧ����115200��ǧ������������96��1152����Ӧ
#define     UART_DEFAULT_BAUD_SUB    115200U


#define     ANALOG_SOURCE       NO      // Դ���ͣ��Ƿ�ѡ������Դ
#define     SAMPLE_NUM          128     // ���ܲ���������
#define     MMXU_LOW_SMP        1       // ˲ʱ�����㽵��������
#define     HAMONIC_LOW_SMP     1       // г�����㽵��������
#define     SEL_REPORT_FUNC     NO      // ѡ���Ƿ��������ϱ�

#if(MAX_PHASE == 1)
#define     MODULE_CPU_FREQ     CPU_FREQ_240M
#elif(MAX_PHASE == 3)
#define     MODULE_CPU_FREQ     CPU_FREQ_240M
#else
���궨�����ò���
#endif

// �Ƿ�ѡ���¹�Լ DL/T645-2007
#define SEL_DLT645_2007         YES


#define TimeMode    0 //1 // ��������ģʽ, 0:��ʱ����������,���ж�ʵ�ֶ�ʱ. 1:��ʱ�����������ĺ���,���ж�����������������,���ж�ʵ�ֶ�ʱ

#define BOARD_TYPE BOARD_ST_PQM

#endif//��Ӧ�ļ���ǰ���#ifndef __SYS_H



