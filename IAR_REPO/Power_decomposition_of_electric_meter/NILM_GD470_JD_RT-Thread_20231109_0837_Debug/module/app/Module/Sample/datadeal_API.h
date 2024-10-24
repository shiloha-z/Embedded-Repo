//----------------------------------------------------------------------
//Copyright (C) 2003-20XX 烟台东方威思顿电气有限公司电表软件研发部 
//创建人	低压台区软件-zhaohang
//创建日期	2023.02.07
//描述		头文件
//修改记录	
//----------------------------------------------------------------------
#ifndef _DATADEAL_API_H
#define _DATADEAL_API_H

//-----------------------------------------------
//				宏定义
//-----------------------------------------------

//-----------------------------------------------
//				结构体，共用体，枚举
//-----------------------------------------------
#pragma pack(1)
typedef struct
{
	unsigned short	ApplClassID;	//设备类号
	unsigned char 	ApplStatus;		//设备状态
	unsigned long 	ApplP;			//设备有功功率
}T_ApplCurData;

typedef struct
{
	unsigned short	ApplClassID;	//设备类号
	unsigned long 	ApplFrzCylP;	//冻结周期内有功用电量
	unsigned long 	ApplFrzCylAvgP;	//冻结周期内设备运行平均功率
	unsigned char	StartTime;		//启动时间
	unsigned char	EndTime;		//停止时间
	unsigned char	SECount;		//合并启停数
}T_ApplFrzData;
#pragma pack()
//-----------------------------------------------
//				变量声明
//-----------------------------------------------
extern T_ApplCurData tApplCurData[];
extern T_ApplFrzData tApplFrzData[];
//-----------------------------------------------
// 				函数声明
//-----------------------------------------------
//--------------------------------------------------
//功能描述:  存储冻结
//         
//参数:      
//         
//返回值:    
//         
//备注:  
//--------------------------------------------------
void api_SaveFreezeData( void );
//--------------------------------------------------
//功能描述:  /*应用程序主任务*/
//         
//参数:      
//         
//返回值:    
//         
//备注:  
//--------------------------------------------------
void api_NILM_Task(void);

//--------------------------------------------------
//功能描述:  测试用，填充数据
//         
//参数:      
//         
//返回值:    
//         
//备注:  
//--------------------------------------------------
void  api_TestComplementData( void );
#endif //#ifndef _DATADEAL_API_H