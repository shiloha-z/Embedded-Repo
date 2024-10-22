//----------------------------------------------------------------------
//Copyright (C) 2003-2016 ��̨������˼�ٵ����ɷ����޹�˾�������з��� 
//������	���
//��������	2016.10.8
//����		�¼�ģ���ڲ�ͷ�ļ�
//�޸ļ�¼	
//----------------------------------------------------------------------
#ifndef __EVENT_H
#define __EVENT_H

//--------------------------------------

//-----------------------------------------------
//				�궨��
//-----------------------------------------------
#define EVENT_UNIT_LEN				(SECTOR_SIZE/10)	//һ���¼���󳤶�
#define EVENT_PHASE_FOUR			4		// ���������޹���������Ϊ4��
#define MAX_EVENTRECORD_NUMBER		10		// �¼���¼����̼�¼���֧��10�μ�¼
#define MAX_PROGRAM_OAD_NUMBER		10		// һ�α�̼�¼���֧��10��OAD
#define EVENT_MAX_PARA_NUM			4		// һ���¼����4������
#define EVENT_SECTOR_NUM			(2)		// ÿһ���¼������������

#define LOST_POWER_FLAG				0xAA	//�����־
#define NO_LOST_FLAG				0		//��ȫʧѹ���޵���

#define	EVENT_START					BIT0//�¼�����
#define	EVENT_END					BIT1//�¼�����

// ����OAD��Ӧ�������ܳ��ȵ����ֵ@@
#define EVENT_VALID_OADLEN			2048				
//-----------------------------------------------
//				�ṹ�壬�����壬ö��
//-----------------------------------------------
// �¼���������
typedef enum
{
	eFACTORY_INIT = 0,					// �������¼���������������¼���¼������¼
	eEXCEPT_CLEAR_METER,				// �������¼�����������������¼
	eEXCEPT_CLEAR_METER_CLEAR_EVENT		// �������¼�����������������¼���¼������¼
}eEVENT_CLEAR_TYPE;

// �¼���¼������
typedef enum
{
	eEVENT_CURRENT_RECORD_NO = 0,	// ��ǰ��¼��
	eEVENT_MAX_RECORD_NO			// ����¼��
}eEVENT_RECORD_NO_TYPE;

// ��ã����ã������¼�״̬ö������
typedef enum
{
  eCLEAR_EVENT_DELAYED_STATUS = 0,		 //����¼���ʱ״̬
  eSET_EVENT_DELAYED_STATUS,			 //�����¼���ʱ״̬
  eGET_EVENT_DELAYED_STATUS,			 //��ȡ�¼���ʱ״̬
}eDEAL_EVENT_DELAYED_STATUS;

typedef enum
{
  eCLEAR_EVENT_CURRENT_STATUS = 3,	 	//����¼���ǰ״̬
  eSET_EVENT_CURRENT_STATUS,	 		//�����¼���ǰ״̬
  eGET_EVENT_CURRENT_STATUS,	 		//��ȡ�¼���ǰ״̬
}eDEAL_EVENT_CURRENT_STATUS;
 

typedef enum
{
	eEVENT_ENDTIME_CURRENT = 0, // ��ǰʱ��
	eEVENT_ENDTIME_PWRDOWN		// ����ʱ��
}eEVENT_ENDTIME_TYPE;

// ��̼�¼״̬
typedef enum
{
	ePROGRAM_NOT_YET_START = 0,	// ��̻�δ��ʼ
	ePROGRAM_STARTED			// ����Ѿ���ʼ
}ePROGRAM_STATUS;

// �¼����޲�������
typedef enum
{
	eTYPE_BYTE = 0,	// BYTE���Ͳ�������ʱ
	eTYPE_WORD,		// WORD���Ͳ���
	eTYPE_DWORD,	// DWORD���Ͳ���
	eTYPE_SPEC1,	// �������Ͳ���1
	eTYPE_SPEC2,	// �������Ͳ���2
	eTYPE_SPEC3,	// �������Ͳ���3
	eTYPE_NULL,		// ������Ч
}eEVENT_PARA_TYPE;

//�˶���Ӧ��SubEventInfoTab����˳��һ�£���eEVENT_INDEX˳��һ��
typedef enum
{	
	//��ѹг���ܻ����ʳ����¼�
	eSUB_EVENT_HARMONIC_U_DISTORTION_A = 0,
	#if(MAX_PHASE == 3)
	eSUB_EVENT_HARMONIC_U_DISTORTION_B,
	eSUB_EVENT_HARMONIC_U_DISTORTION_C,	
	#endif
	
	//����г���ܻ����ʳ����¼�
	eSUB_EVENT_HARMONIC_I_DISTORTION_A,
	#if(MAX_PHASE == 3)
	eSUB_EVENT_HARMONIC_I_DISTORTION_B,
	eSUB_EVENT_HARMONIC_I_DISTORTION_C,
	#endif

	//г����ѹ���������¼�
	eSUB_EVENT_HARMONIC_U_OVERRUN_A,
	#if(MAX_PHASE == 3)
	eSUB_EVENT_HARMONIC_U_OVERRUN_B,
	eSUB_EVENT_HARMONIC_U_OVERRUN_C,
	#endif

	//г���������������¼�
	eSUB_EVENT_HARMONIC_I_OVERRUN_A,
	#if(MAX_PHASE == 3)
	eSUB_EVENT_HARMONIC_I_OVERRUN_B,
	eSUB_EVENT_HARMONIC_I_OVERRUN_C,
	#endif

	//г�����ʺ��������¼�
	eSUB_EVENT_HARMONIC_P_OVERRUN_A,
	#if(MAX_PHASE == 3)
	eSUB_EVENT_HARMONIC_P_OVERRUN_B,
	eSUB_EVENT_HARMONIC_P_OVERRUN_C,
	#endif

	//��г����ѹ���������¼�
	eSUB_EVENT_INTER_HARMONIC_U_OVERRUN_A,
	#if(MAX_PHASE == 3)
	eSUB_EVENT_INTER_HARMONIC_U_OVERRUN_B,
	eSUB_EVENT_INTER_HARMONIC_U_OVERRUN_C,
	#endif

	//��г���������������¼�
	eSUB_EVENT_INTER_HARMONIC_I_OVERRUN_A,
	#if(MAX_PHASE == 3)
	eSUB_EVENT_INTER_HARMONIC_I_OVERRUN_B,
	eSUB_EVENT_INTER_HARMONIC_I_OVERRUN_C,
	#endif

	//��г�����ʺ��������¼�
	eSUB_EVENT_INTER_HARMONIC_P_OVERRUN_A,
	#if(MAX_PHASE == 3)
	eSUB_EVENT_INTER_HARMONIC_P_OVERRUN_B,
	eSUB_EVENT_INTER_HARMONIC_P_OVERRUN_C,
	#endif

	//��ѹ��ʱ���䳬���¼�
	eSUB_EVENT_SHORT_FLICKER_U_OVERRUN_A,
	#if(MAX_PHASE == 3)
	eSUB_EVENT_SHORT_FLICKER_U_OVERRUN_B,
	eSUB_EVENT_SHORT_FLICKER_U_OVERRUN_C,
	#endif

	//��ѹ��ʱ���䳬���¼�
	eSUB_EVENT_LONG_FLICKER_U_OVERRUN_A,
	#if(MAX_PHASE == 3)
	eSUB_EVENT_LONG_FLICKER_U_OVERRUN_B,
	eSUB_EVENT_LONG_FLICKER_U_OVERRUN_C,
	#endif

	//��ѹ�ݽ��¼�
	eSUB_EVENT_SAG_U_A,
	#if(MAX_PHASE == 3)
	eSUB_EVENT_SAG_U_B,
	eSUB_EVENT_SAG_U_C,
	#endif

	//��ѹ�����¼�
	eSUB_EVENT_SWELL_U_A,
	#if(MAX_PHASE == 3)
	eSUB_EVENT_SWELL_U_B,
	eSUB_EVENT_SWELL_U_C,
	#endif

	//��ѹ�ж��¼�
	eSUB_EVENT_INTERRUPTION_U_A,
	#if(MAX_PHASE == 3)
	eSUB_EVENT_INTERRUPTION_U_B,
	eSUB_EVENT_INTERRUPTION_U_C,
	#endif

	
	/////////////////////////////////////////////////////////////
	//��ѹƫ����¼�
	eSUB_EVENT_U_DEV_A,
	#if(MAX_PHASE == 3)
	eSUB_EVENT_U_DEV_B,
	eSUB_EVENT_U_DEV_C,
	#endif
	
	//Ƶ��ƫ����¼�
	eSUB_EVENT_F_DEV_A,
	#if(MAX_PHASE == 3)
	eSUB_EVENT_F_DEV_B,
	eSUB_EVENT_F_DEV_C,
	#endif

	//��ѹ��ƽ�ⳬ���¼�
	#if(MAX_PHASE == 3)
	eSUB_EVENT_U_UNBALANCE,
	#endif
	//������ƽ�ⳬ���¼�
	#if(MAX_PHASE == 3)
	eSUB_EVENT_I_UNBALANCE,
	#endif
	//��ѹ���������¼�
	eSUB_EVENT_U_CHANGE_A,
	#if(MAX_PHASE == 3)
	eSUB_EVENT_U_CHANGE_B,
	eSUB_EVENT_U_CHANGE_C,
	#endif
	/////////////////////////////////////////////////////////////


	//�����¼�
	eSUB_EVENT_UPDATE,

	//���ܱ������¼�
	eSUB_EVENT_METER_CLEAR,

	//���ܱ����оƬ�����¼�
	eSUB_EVENT_JLCHIP_FAIL,
	
	//Уʱ�¼�
	eSUB_EVENT_ADJUST_TIME,

	eSUB_EVENT_STATUS_TOTAL,

}eSUB_EVENT_INDEX;

//�˶���Ӧ��EventInfoTab����˳��һ�£���eSUB_EVENT_INDEX˳��һ��
typedef enum
{
	// vvvvvvvvvvv�������¼vvvvvvvvvvvvvv
	eEVENT_HARMONIC_U_DISTORTION_NO,		//��ѹг���ܻ����ʳ���

	eEVENT_HARMONIC_I_DISTORTION_NO,		//����г���ܻ����ʳ���

	eEVENT_HARMONIC_U_OVERRUN_NO,			//г����ѹ���������¼�

	eEVENT_HARMONIC_I_OVERRUN_NO,			//г���������������¼�

	eEVENT_HARMONIC_P_OVERRUN_NO,			//г�����ʺ��������¼�

	eEVENT_INTER_HARMONIC_U_OVERRUN_NO,		//��г����ѹ���������¼�

	eEVENT_INTER_HARMONIC_I_OVERRUN_NO,		//��г���������������¼�

	eEVENT_INTER_HARMONIC_P_OVERRUN_NO,		//��г�����ʺ��������¼�	
	
	eEVENT_SHORT_FLICKER_U_OVERRUN_NO,		//��ѹ��ʱ���䳬���¼�
	
	eEVENT_LONG_FLICKER_U_OVERRUN_NO,		//��ѹ��ʱ���䳬���¼�

	eEVENT_SAG_U_NO,						//��ѹ�ݽ��¼�

	eEVENT_SWELL_U_NO,						//��ѹ�����¼�

	eEVENT_INTERRUPTION_U_NO,				//��ѹ�ж��¼�
	
	//////////////////////////////////////////////////////
	eEVENT_U_DEV_NO,
	eEVENT_F_DEV_NO,
	eEVENT_U_UNBALANCE_NO,
	eEVENT_I_UNBALANCE_NO,
	eEVENT_U_CHANGE_NO,

	////////////////////////////////////////////////////////
	eSUB_EVENT_UPDATE_NO,					//�����¼�

	eSUB_EVENT_METER_CLEAR_NO,				//���ܱ������¼�

	eSUB_EVENT_JLCHIP_FAIL_NO,				//���ܱ����оƬ�����¼�

	eSUB_EVENT_ADJUST_TIME_NO,				//Уʱ�¼�

	eSUB_EVENT_3320,						//�����¼��ϱ��б�
	
	eNUM_OF_EVENT,							// ��������¼�����13
	
	ePRG_RECORD_NO = eNUM_OF_EVENT,			//����о��֧�ֱ�̼�¼

	eNUM_OF_EVENT_PRG,						// �¼��ͱ��������

	// vvvvvvvvvvv֮����¼����洢��¼vvvvvvvvvvvvvv

	eNUM_OF_EVENT_ALL,						// ���е��¼��������������洢��¼��
	
}eEVENT_INDEX;

#define SUB_EVENT_INDEX_MAX_NUM	eSUB_EVENT_STATUS_TOTAL		// �¼�״̬λ����
typedef struct TEventStatus_t
{
	BYTE CurrentStatus[(SUB_EVENT_INDEX_MAX_NUM+7)/8];	// �¼�ʵʱ״̬
	BYTE DelayedStatus[(SUB_EVENT_INDEX_MAX_NUM+7)/8]; // ������ʱ���״̬
}TEventStatus;

#pragma pack(1)
// ʱ������
typedef struct TEventTime_t
{
	// ����ʱ��
	TRealTimer BeginTime;
	// ����ʱ��
	TRealTimer EndTime;

}TEventTime;

typedef struct TLostPowerTime_t
{
	TRealTimer	Time;		// ����ʱ��
	DWORD		CRC32;
}TLostPowerTime;
#pragma pack()

typedef struct TEventOADCommonData_t
{
	DWORD			EventNo;					//�¼���¼���@@
	TEventTime		EventTime;					//�¼������ͽ���ʱ��
}TEventOADCommonData;

typedef struct TEventDataInfo_t
{
	DWORD	RecordNo;						//�¼���¼���(��������)
	DWORD	AccTime;						//�¼��ۼ�ʱ��(ֻ�й������¼���Ч)
	DWORD	CRC32;
}TEventDataInfo;

typedef struct TEventAddrLen_t
{
	DWORD	dwAttInfoEeAddr;
	DWORD	dwDataInfoEeAddr;
	DWORD	dwRecordAddr;					//���ݴ洢��ַ�������洢�ռ�
	WORD	wDataLen;						//10����¼�ռ��С
	BYTE	EventIndex;
	BYTE	Phase;
	BYTE	SubEventIndex;
}TEventAddrLen;

typedef struct TSubEventInfoTab_t
{
	eSUB_EVENT_INDEX	SubEventIndex;
	eEVENT_INDEX		EventIndex;	
	ePHASE_TYPE			Phase;
	BYTE 	(*pGetEventStatus)( BYTE Phase );	// ��ȡ�¼�״̬
}TSubEventInfoTab;

typedef struct TEventInfoTab_t
{
	WORD	OI;
	BYTE 	EventIndex;							//Event����
	BYTE 	NumofPhase;							//��λ��  ���������޹���������Ϊ4��
	BYTE	SpecialProc;						//�������⴦��
	BYTE	ExtDataLen;							//��չ���ݳ��� ���¼������¼��OMD
	BYTE 	ParaNum;							//�����ĸ���
	BYTE 	ParaType[EVENT_MAX_PARA_NUM];		//����������
}TEventInfoTab;






//-----------------------------------------------
//				��������
//-----------------------------------------------
extern TEventStatus EventStatus;
extern const TSubEventInfoTab	SubEventInfoTab[];

//-----------------------------------------------
// 				��������
//-----------------------------------------------

//-----------------------------------------------
//��������: ���湤�����¼���¼��ʧѹʧ���ȣ�
//
//����: 
//	inEventIndex[in]:	eEVENT_INDEX 
//	Phase[in]:			ePHASE_TYPE  
//	BeforeAfter[in]:	�¼�����ǰ/������ eEVENT_TIME_TYPE
//  					����ʱ,����+1,ƫ��++,����ʱָ��--  
//	EndTimeType[in]:	eEVENT_ENDTIME_CURRENT  ��ǰʱ��
// 						eEVENT_ENDTIME_PWRDOWN  ����ʱ��
//  
//����ֵ:				TRUE/FALSE  
//��ע:
//-----------------------------------------------
BOOL SaveInstantEventRecord( BYTE inEventIndex, BYTE Phase, BYTE BeforeAfter, BYTE EndTimeType );

//-----------------------------------------------
//��������: ��ȡType��Ӧ�����Ե�ַ��������Ϣ��ַ�����ݵ�ַ���������ݵ�ַ��������ݳ���
//
//����: 
//	pTEventAddrLen:	TEventAddrLen���͵�ָ��                    
// 		dwAttInfoEeAddr[out]:		OAD��Ϣ��ַ
// 		dwDataInfoEeAddr[out]:		������Ϣ��ַ
// 		dwRecordAddr[out]:			�������ݵ�ַ
// 		wDataLen[out]:				������ݳ���
// 		EventIndex[in]:				eEVENT_INDEX
// 		Phase[in]:					��λ0��,1A,2B,3C
//                    
//����ֵ:	TRUE   ��ȷ
//			FALSE  ����
//			
//��ע:
//-----------------------------------------------
BOOL GetEventInfo( TEventAddrLen *pEventAddrLen );

//-----------------------------------------------
//��������: ��ȡOI��Ӧ��EventIndex
//
//����: 
//	OI[in]:	�¼�OI
//                    
//	pEventOrder[out]:	ָ��EventOrder��ָ��
//                    
//����ֵ:	TRUE   ��ȷ
//			FALSE  ����
//			
//��ע:
//-----------------------------------------------
BOOL GetEventIndex( WORD OI, BYTE *pEventIndex );

//-----------------------------------------------
//��������: �����¼����ͼ���λȷ�������¼�ö�ٺ�
//
//����: 
//			EventIndex[in]:	�¼�ö�ٺ�                    
//			Phase[in]:		��λ                    
//����ֵ:	�����¼�ö�ٺ�	
//��ע:
//-----------------------------------------------
BYTE GetSubEventIndex(TEventAddrLen *pEventAddrLen);


BYTE GetUHarDistorStatus(BYTE Phase);
BYTE GetIHarDistorStatus(BYTE Phase);
BYTE GetUHarOverRunStatus(BYTE Phase);
BYTE GetIHarOverRunStatus(BYTE Phase);
BYTE GetPHarOverRunStatus(BYTE Phase);
BYTE GetUInterHarOverRunStatus(BYTE Phase);
BYTE GetIInterHarOverRunStatus(BYTE Phase);
BYTE GetPInterHarOverRunStatus(BYTE Phase);
BYTE GetUShortFlickerStatus(BYTE Phase);
BYTE GetULongFlickerStatus(BYTE Phase);
BYTE GetUSagStatus(BYTE Phase);
BYTE GetUSwellStatus(BYTE Phase);
BYTE GetUInterruptionStatus(BYTE Phase);
//BYTE GetUpdateAppStatus(BYTE Phase);
BYTE GetJLChipFailStatus(BYTE Phase);

BYTE GetUDevStatus(BYTE Phase);
BYTE GetFDevStatus(BYTE Phase);
BYTE GetUUnbalanceStatus(BYTE Phase);
BYTE GetIUnbalanceStatus(BYTE Phase);
BYTE GetUChangeStatus(BYTE Phase);

void FactoryInitUDevPara(void);
void FactoryInitFDevPara(void);
void FactoryInitUUnbalancePara(void);
void FactoryInitIUnbalancePara(void);
void FactoryInitUChangePara(void);




void FactoryInitUHarDistorPara(void);
void FactoryInitIHarDistorPara(void);
void FactoryInitUHarOverRunPara(void);
void FactoryInitIHarOverRunPara(void);
void FactoryInitPHarOverRunPara(void);
void FactoryInitUInterHarOverRunPara(void);
void FactoryInitIInterHarOverRunPara(void);
void FactoryInitPInterHarOverRunPara(void);
void FactoryInitUShortFlickerPara(void);
void FactoryInitULongFlickerPara(void);
void FactoryInitUSagPara(void);
void FactoryInitUSwellPara(void);
void FactoryInitUInterruptionPara(void);
void FactoryInitUpdateAppPara( void );
void FactoryInitJLChipFailPara( void );
void FactoryInitMeterClearPara( void );
void FactoryInitAdjustTimePara(void);
void api_UpdateAppEventStart(void);
void api_UpdateAppEventEnd(void);
void api_MeterClearEventStart(void);
void api_MeterClearEventEnd(void);
void api_AdjustTimeStart(void);
void api_AdjustTimeEnd(void);
#endif//��Ӧ�ļ���ǰ���#define __EVENT_H
