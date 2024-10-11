//----------------------------------------------------------------------
//Copyright (C) 2016-2026 ��̨������˼�ٵ����ɷ����޹�˾�������з��� 
//������	������
//��������	2016.8.15
//����		����ϵͳ��־��Ӳ����־�������־
//�޸ļ�¼	
//----------------------------------------------------------------------
#ifndef __FLAG_API_H
#define __FLAG_API_H

//-----------------------------------------------
//				�궨��
//-----------------------------------------------

typedef enum
{//							���	����䷶Χ
 	eTASK_SAMPLE_ID = 0,	//0		(3~5)s
	eTASK_LCD_ID,			//1		(6~8)s
	eTASK_PROTOCOL_ID,		//2		(9~11)s
	eTASK_LOADPROFILE_ID,	//3		(12~14)s
	eTASK_DEMAND_ID,		//4		(15~17)s
	eTASK_EVENTS_ID,		//5		(18~20)s
	eTASK_PREPAY_ID,		//6		(21~23)s
	eTASK_FREEZE_ID,		//7		(24~26)s
	eTASK_ENERGY_ID,		//8		(27~29)s
	eTASK_PARA_ID,			//9		(30~32)s
	eTASK_RTC_ID,			//10	(33~35)s
	eTASK_LOWPOWER_ID,		//11	(36~38)s
	eTASK_SYSWATCH_ID,		//12	(39~41)s
	eTASK_RELAY_ID,			//13	(42~44)s

    eTASK_FREQ_ID,          //14
    eTASK_STATS_ID,         //15
    eTASK_FLICK_ID,         //16
	
	eTASK_VFRATE_ID,					//17
	
	////!!!!!!����������󣬲�ҪŲ��,��������Ϊ32��Ŀǰֻ������һ��DWORD������Ҫ�ٳ�������!!!!!!
	eTASK_ID_NUM_T
	
}TTaskIDNum;

//ÿ�������־����
typedef enum
{
	//���ڸ��ٱ�־
	eFLAG_10_MS = 0,
	//500ms��־
	eFLAG_500_MS,
	eFLAG_SECOND,
    eFLAG_10_S,
	eFLAG_MINUTE,
    eFLAG_5_MIN,
    eFLAG_10_MIN,
	eFLAG_15_MIN,
	eFLAG_HOUR,
    eFLAG_2_H,
    eFLAG_24_H,
	eFLAG_TIME_CHANGE,			//ʱ��ı��־
	eFLAG_SWITCH_JUDGE,			//�����л�ʱ���־
	
	eFLAG_TIMER_T////!!!!!!����������󣬲�ҪŲ��!!!!!!

}eTaskTimeFlag;

typedef enum
{
	// ����ģʽ��,��ִ������ڲ�����,��1Ϊ���ڿɲ�����,��0Ϊ�������ɲ�����
	eSYS_STATUS_INSIDE_FACTORY,
    // �����������־
    eSYS_STATUS_CALC_SEQ,
    
    // ͳ�Ƽ����־��˳������ı䣬���� STATS_TYPE ����һ��
    eSYS_STATUS_CALC_STATS_HARMVOL,
    eSYS_STATUS_CALC_STATS_HARMCUR,
    eSYS_STATUS_CALC_STATS_IHARMVOL,
    eSYS_STATUS_CALC_STATS_IHARMCUR,
    eSYS_STATUS_CALC_STATS_PST,
    eSYS_STATUS_CALC_STATS_PLT,
    eSYS_STATUS_CALC_STATS_VOLDEV,
    eSYS_STATUS_CALC_STATS_HZDEV,
    eSYS_STATUS_CALC_STATS_VOLUNBALANCE,
    eSYS_STATUS_CALC_STATS_CURUNBALANCE,
    eSYS_STATUS_CALC_STATS_VOLFLUC,
    eSYS_STATUS_CALC_STATS_VOLFLUCF,

    // ��ѹг���ܻ����ʳ���
    eSYS_STATUS_U_THD_OVER,
    // ����г���ܻ����ʳ���
    eSYS_STATUS_I_THD_OVER,
    // ����оƬ����
    eSYS_STATUS_METERING_FAULT,
    // ��ѹ��ʱ���䳬��
    eSYS_STATUS_PST_OVER,
    // ��ѹ��ʱ���䳬��
    eSYS_STATUS_PLT_OVER,
    // ��ѹ�ݽ�
    eSYS_STATUS_U_DIP,
    // ��ѹ����
    eSYS_STATUS_U_SWL,
    // ��ѹ�ж�
    eSYS_STATUS_U_INT,

	// ��ѹƫ����¼�
    eSYS_STATUS_U_DEV,
	// Ƶ�ʳ����¼�
    eSYS_STATUS_F_DEV,
	// ��ѹ��ƽ��ȳ����¼�
    eSYS_STATUS_U_BAL,
	// ������ƽ��ȳ���
    eSYS_STATUS_I_BAL,
	// ��ѹ��������
    eSYS_STATUS_U_CHG,

    eSYS_STATUS_METERING_FAULT2,
	//!!!!!!����������󣬲�ҪŲ��!!!!!!
	eSYS_STATUS_NUM_T,
	
}eSysStatusFlag;

#define		MAX_SYS_STATUS_NUM		64		//����Ϊ8�ı���

typedef struct TFlagBytes_t
{
	//�����־���ݶ����32�����񣬼�ÿ��ʱ���־ռ4���ֽ�
	DWORD TaskTimeFlag[eFLAG_TIMER_T];
    // ϵͳ״̬
	BYTE SysStatus[MAX_SYS_STATUS_NUM / 8];
	
}TFlagBytes;


//-----------------------------------------------
//				��������
//-----------------------------------------------

//-----------------------------------------------
// 				��������
//-----------------------------------------------
void api_SetAllTaskFlag( BYTE FlagID );

//-----------------------------------------------
//��������: �������־
//
//����: 
//			TaskID[in]		�����
//			FlagID[in]		��־��
//                    
//����ֵ:  	��
//
//��ע:   
//-----------------------------------------------
void api_SetTaskFlag( BYTE TaskID, BYTE FlagID );

//-----------------------------------------------
//��������: ��ȡ�����־
//
//����: 
//			TaskID[in]		�����
//			FlagID[in]		��־��
//                    
//����ֵ:  	TRUE:��Ӧ��־��λ��  FALSE:��Ӧ��־δ��λ
//
//��ע:   
//-----------------------------------------------
BOOL api_GetTaskFlag( BYTE TaskID, BYTE FlagID );

//-----------------------------------------------
//��������: ��������־
//
//����: 
//			TaskID[in]		�����
//			FlagID[in]		��־��
//                    
//����ֵ:  	��
//
//��ע:   
//-----------------------------------------------
void api_ClrTaskFlag( BYTE TaskID, BYTE FlagID );

//-----------------------------------------------
//��������: ����ϵͳ״̬
//
//����: 
//			StatusNo[in]		ϵͳ״̬��
//                    
//����ֵ:  	��
//
//��ע:   
//-----------------------------------------------
void api_SetSysStatus(BYTE StatusNo);

//-----------------------------------------------
//��������: ���ϵͳ״̬
//
//����: 
//			StatusNo[in]		ϵͳ״̬��
//                    
//����ֵ:  	��
//
//��ע:   
//-----------------------------------------------
void api_ClrSysStatus(BYTE StatusNo);

//-----------------------------------------------
//��������: ��ȡϵͳ״̬
//
//����: 
//			StatusNo[in]		ϵͳ״̬��
//                    
//����ֵ:  	TRUE:ϵͳ״̬��λ�� FALSE:ϵͳ״̬δ��λ
//
//��ע:   
//-----------------------------------------------
BOOL api_GetSysStatus(BYTE StatusNo);

#endif//#ifndef __FLAG_API_H
