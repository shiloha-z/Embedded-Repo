//----------------------------------------------------------------------
//Copyright (C) 2016-2026 烟台东方威思顿电气股份有限公司电表软件研发部 
//创建人	胡春华
//创建日期	2016.8.10
//描述		所有头文件统一包含的头文件
//修改记录	
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
//				宏定义
//-----------------------------------------------
#define powerdatanum 65						//输入数据序列长度
#define covolution_kernel_len 4				//卷积核长度
#define covolution_kernel_num 8				//卷积核通道数

#define GRUinnode covolution_kernel_num     //GRU输入通道数
#define GRUhidenode 8                     	//GRU隐藏层数
#define GRUcell  		powerdatanum        //GRU细胞数

#define in_kennel_1  GRUcell * GRUhidenode  //全连接1输入通道数
#define out_kennel_1  16   					//全连接1输出通道数
#define in_kennel_2  16      				//全连接2输入通道数
#define out_kennel_2  1   					//全连接2输出通道数

#define parmnum 18     						//每种电器参数个数
#define appnum 2							//电器数
//-----------------------------------------------
//				结构体，共用体，枚举
//-----------------------------------------------
typedef struct {
    float convolution_kernel[covolution_kernel_len * covolution_kernel_num]; // 卷积核权重
    float convolution_B[covolution_kernel_num];      // 卷积核偏置
	int input_len;//输入序列的长度
    int kernel_size;//卷积核的长度
	int kernel_num;//输出通道数（卷积核的数量）
	int ConvType;//卷积类型（1:full, 2:valid, 3:same）
} CONVOLUTION_LAYER;

typedef struct {
	float W_fc_1[in_kennel_1 * out_kennel_1]; // 全连接层权重
	float B_fc_1[out_kennel_1]; //全连接层偏置
} FULL_CONNECT_LAYER1;

typedef struct {
	float W_fc_2[in_kennel_2]; // 全连接层权重
	float B_fc_2[out_kennel_2]; //全连接层偏置
} FULL_CONNECT_LAYER2;

typedef struct {
	float Wr_x_GRU[GRUhidenode*GRUinnode];   //重置门权重
	float Wz_x_GRU[GRUhidenode*GRUinnode];   //更新门权重
	float Wh_x_GRU[GRUhidenode*GRUinnode];   //输出门权重
	float Wr_h_GRU[GRUhidenode*GRUhidenode]; //重置门权重
	float Wz_h_GRU[GRUhidenode*GRUhidenode]; //更新门权重
	float Wh_h_GRU[GRUhidenode*GRUhidenode]; //输出门权重
	float Br_x_GRU[GRUhidenode];             //重置门偏置
	float Bz_x_GRU[GRUhidenode];             //更新门偏置
	float Bh_x_GRU[GRUhidenode];             //输出门偏置
	float Br_h_GRU[GRUhidenode];             //重置门偏置
	float Bz_h_GRU[GRUhidenode];             //更新门偏置
	float Bh_h_GRU[GRUhidenode];             //输出门偏置
}GRU_LAYER;

typedef struct
{
	CONVOLUTION_LAYER conv_layer;            //卷积层参数
	FULL_CONNECT_LAYER1 fc_layer1;           //全连接层1参数
	FULL_CONNECT_LAYER2 fc_layer2;           //全连接层2参数
	GRU_LAYER gru_layer;                     //GRU层参数
}MODEL_PARAM;//模型参数结构

//************************************************************************************************** */
typedef struct{
	float output_data[powerdatanum * covolution_kernel_num];				//输出数据
}CONVOLUTION_PARAM;//convolution layer;

typedef struct{
	float GRU_Input_DATA[GRUinnode][GRUcell];		//输入序列转换为二维数组
 	float GRU_h[GRUhidenode * (GRUcell + 1)];		//输出h状态
}GRU_PARAM;//GRU layer

typedef struct{
	float fc_outputdata_1[out_kennel_1];			//全连接层1输出数据
	float fc_inputdata_2[in_kennel_2];				//全连接层2输入数据
	float fc_outputdata_2[out_kennel_2];			//全连接层2输出数据
}FOOLCONNECTED_PARAM;//fc layer


typedef struct {
	MODEL_PARAM MODE_Init;
	
	CONVOLUTION_PARAM CONV_Init;
	FOOLCONNECTED_PARAM FC_Init;
	GRU_PARAM GRU_Init;

}APP_STRUCT;//模型结构

//************************************************************************************************** */
typedef struct {
	unsigned short int CycleNumber;					//计算功率周期（周波数）
	unsigned short int cycle_cnt;					//原始数据处理循环计数器
	unsigned short int power_cycle_cnt;				//功率序列循环计数器
	unsigned short int power_data_flag;				//前65序列数据处理标志位
	float finalresult_of_code[appnum];				//各电器模型输出结果
	float finalresult_after_scaling[appnum];		//放缩后各电器模型输出结果
	float meanpower_old; 							//上一时刻平均功率
	float meanpower_new; 							//这一时刻平均功率
}LOADDETEC_PARAM;

//-----------------------------------------------
//				变量声明
//-----------------------------------------------
//-----------------------------------------------
// 				函数声明
//-----------------------------------------------
#endif//#ifndef __ALLHEAD_H