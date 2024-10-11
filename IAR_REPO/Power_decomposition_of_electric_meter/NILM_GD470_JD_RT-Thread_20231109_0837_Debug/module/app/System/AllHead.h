//----------------------------------------------------------------------
//Copyright (C) 2016-2026 ��̨������˼�ٵ����ɷ����޹�˾�������з��� 
//������	������
//��������	2016.8.10
//����		����ͷ�ļ�ͳһ������ͷ�ļ�
//�޸ļ�¼	
//----------------------------------------------------------------------
#ifndef __ALLHEAD_H
#define __ALLHEAD_H

#include "sys.h"
#include "__def.h"
#include "root.h"
#include "math.h"
#include "stdio.h"
#include "string.h"
#include "stdlib.h"
#include "ctype.h"

#include "dbase.h"

#include "CommFunc_API.h"
#include "flag_API.h"
#include "dsp_time.h"
#if(!WIN32)
#include "board_gd32f450.h"
#include "cpustm32f4xx.h"
#else
#include "board_vs.h"
//#include "cpustm32h7.h"
#endif

#include "Protocol.h"
#include "Dlt698_45_API.h"
#include "dlt645_2007_API.h"
#include "event_Api.h"
#include "Freeze_API.h"
#include "datadeal_API.h"
#include "savemem_API.h"
#include "Algorithm_API.h"


//-----------------------------------------------
//				�궨��
//-----------------------------------------------
#define powerdatanum 65						//�����������г���
#define covolution_kernel_len 4				//����˳���
#define covolution_kernel_num 8				//�����ͨ����

#define GRUinnode covolution_kernel_num     //GRU����ͨ����
#define GRUhidenode 8                     	//GRU���ز���
#define GRUcell  		powerdatanum        //GRUϸ����

#define in_kennel_1  GRUcell * GRUhidenode  //ȫ����1����ͨ����
#define out_kennel_1  16   					//ȫ����1���ͨ����
#define in_kennel_2  16      				//ȫ����2����ͨ����
#define out_kennel_2  1   					//ȫ����2���ͨ����

#define parmnum 18     						//ÿ�ֵ�����������
#define appnum 2							//������
//-----------------------------------------------
//				�ṹ�壬�����壬ö��
//-----------------------------------------------
typedef struct {
    float convolution_kernel[covolution_kernel_len * covolution_kernel_num]; // �����Ȩ��
    float convolution_B[covolution_kernel_num];      // �����ƫ��
	int input_len;//�������еĳ���
    int kernel_size;//����˵ĳ���
	int kernel_num;//���ͨ����������˵�������
	int ConvType;//������ͣ�1:full, 2:valid, 3:same��
} CONVOLUTION_LAYER;

typedef struct {
	float W_fc_1[in_kennel_1 * out_kennel_1]; // ȫ���Ӳ�Ȩ��
	float B_fc_1[out_kennel_1]; //ȫ���Ӳ�ƫ��
} FULL_CONNECT_LAYER1;

typedef struct {
	float W_fc_2[in_kennel_2]; // ȫ���Ӳ�Ȩ��
	float B_fc_2[out_kennel_2]; //ȫ���Ӳ�ƫ��
} FULL_CONNECT_LAYER2;

typedef struct {
	float Wr_x_GRU[GRUhidenode*GRUinnode];   //������Ȩ��
	float Wz_x_GRU[GRUhidenode*GRUinnode];   //������Ȩ��
	float Wh_x_GRU[GRUhidenode*GRUinnode];   //�����Ȩ��
	float Wr_h_GRU[GRUhidenode*GRUhidenode]; //������Ȩ��
	float Wz_h_GRU[GRUhidenode*GRUhidenode]; //������Ȩ��
	float Wh_h_GRU[GRUhidenode*GRUhidenode]; //�����Ȩ��
	float Br_x_GRU[GRUhidenode];             //������ƫ��
	float Bz_x_GRU[GRUhidenode];             //������ƫ��
	float Bh_x_GRU[GRUhidenode];             //�����ƫ��
	float Br_h_GRU[GRUhidenode];             //������ƫ��
	float Bz_h_GRU[GRUhidenode];             //������ƫ��
	float Bh_h_GRU[GRUhidenode];             //�����ƫ��
}GRU_LAYER;

typedef struct
{
	CONVOLUTION_LAYER conv_layer;            //��������
	FULL_CONNECT_LAYER1 fc_layer1;           //ȫ���Ӳ�1����
	FULL_CONNECT_LAYER2 fc_layer2;           //ȫ���Ӳ�2����
	GRU_LAYER gru_layer;                     //GRU�����
}MODEL_PARAM;//ģ�Ͳ����ṹ

//************************************************************************************************** */
typedef struct{
	float output_data[powerdatanum * covolution_kernel_num];				//�������
}CONVOLUTION_PARAM;//convolution layer;

typedef struct{
	float GRU_Input_DATA[GRUinnode][GRUcell];		//��������ת��Ϊ��ά����
 	float GRU_h[GRUhidenode * (GRUcell + 1)];		//���h״̬
}GRU_PARAM;//GRU layer

typedef struct{
	float fc_outputdata_1[out_kennel_1];			//ȫ���Ӳ�1�������
	float fc_inputdata_2[in_kennel_2];				//ȫ���Ӳ�2��������
	float fc_outputdata_2[out_kennel_2];			//ȫ���Ӳ�2�������
}FOOLCONNECTED_PARAM;//fc layer


typedef struct {
	MODEL_PARAM MODE_Init;
	
	CONVOLUTION_PARAM CONV_Init;
	FOOLCONNECTED_PARAM FC_Init;
	GRU_PARAM GRU_Init;

}APP_STRUCT;//ģ�ͽṹ

//************************************************************************************************** */
typedef struct {
	unsigned short int CycleNumber;					//���㹦�����ڣ��ܲ�����
	unsigned short int cycle_cnt;					//ԭʼ���ݴ���ѭ��������
	unsigned short int power_cycle_cnt;				//��������ѭ��������
	unsigned short int power_data_flag;				//ǰ65�������ݴ����־λ
	float finalresult_of_code[appnum];				//������ģ��������
	float finalresult_after_scaling[appnum];		//�����������ģ��������
	float meanpower_old; 							//��һʱ��ƽ������
	float meanpower_new; 							//��һʱ��ƽ������
}LOADDETEC_PARAM;

//-----------------------------------------------
//				��������
//-----------------------------------------------
//-----------------------------------------------
// 				��������
//-----------------------------------------------
#endif//#ifndef __ALLHEAD_H