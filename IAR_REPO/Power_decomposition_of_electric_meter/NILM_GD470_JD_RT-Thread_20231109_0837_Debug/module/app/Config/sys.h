//----------------------------------------------------------------------
//Copyright (C) 2016-2026 烟台东方威思顿电气股份有限公司电表软件研发部 
//创建人	wangjunsheng
//创建日期	2020.10.28
//描述		用于配置功能
//修改记录	
//----------------------------------------------------------------------
#ifndef __SYS_H
#define __SYS_H

#define     MAX_PHASE                1      // 单相表为1，三相表为3

#define    USER_TEST_MODE        1  //定义是电科院送测，还是现场用户， 0--现场用户支持明文抄读，1--密文，随机数




#define     USE_DEBUG		0

#define     USE_SAFETY_MODE		1

#define     USE_CODE_SAFEMODE	1

#define     USE_PARA_CTRL		1

// 版本号

#define     MODULE_VERSION      (0xa026+(MAX_PHASE<<8)+(USER_TEST_MODE<<4))

#define     HARD_VERSION        (0xB002+(MAX_PHASE<<8))

#define     MODULE_VERSION_T      "V2.0"

#define     HARD_VERSION_T        "V2.0"



#define     HARD_TIME	        "220730"

#define     UART_DEFAULT_BAUD        9600U	//测试用：实际应该是115200，千居智这版程序用96和1152自适应
#define     UART_DEFAULT_BAUD_SUB    115200U


#define     ANALOG_SOURCE       NO      // 源类型，是否选择数字源
#define     SAMPLE_NUM          128     // 单周波采样点数
#define     MMXU_LOW_SMP        1       // 瞬时量计算降采样倍数
#define     HAMONIC_LOW_SMP     1       // 谐波计算降采样倍数
#define     SEL_REPORT_FUNC     NO      // 选择是否开启主动上报

#if(MAX_PHASE == 1)
#define     MODULE_CPU_FREQ     CPU_FREQ_240M
#elif(MAX_PHASE == 3)
#define     MODULE_CPU_FREQ     CPU_FREQ_240M
#else
相别宏定义配置不对
#endif

// 是否选择新规约 DL/T645-2007
#define SEL_DLT645_2007         YES


#define TimeMode    0 //1 // 日历驱动模式, 0:定时器驱动日历,秒中断实现对时. 1:定时器驱动日历的毫秒,秒中断驱动日历的秒以上,秒中断实现对时

#define BOARD_TYPE BOARD_ST_PQM

#endif//对应文件最前面的#ifndef __SYS_H



