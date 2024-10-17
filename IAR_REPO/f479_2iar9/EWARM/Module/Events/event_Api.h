//----------------------------------------------------------------------
//Copyright (C) 2003-2016 ��̨������˼�ٵ����ɷ����޹�˾�������з��� 
//������	���
//��������	2016.10.8
//����		�¼�ģ��Apiͷ�ļ�
//�޸ļ�¼	
//----------------------------------------------------------------------
#ifndef __EVENT_API
#define __EVENT_API

#include "event.h"
//-----------------------------------------------
//				�궨��
//-----------------------------------------------

#define MAX_EVENT_OAD_NUM			20// ���֧��n��OADs

#define OAD_HARMONIC_U_DISTORTION       0X3039	//��ѹг���ܻ����ʳ����¼�
#define OAD_HARMONIC_I_DISTORTION       0X303A	//����г���ܻ����ʳ����¼�
#define OAD_HARMONIC_U_OVERRUN          0X3041	//г����ѹ���������¼�
#define OAD_HARMONIC_I_OVERRUN          0X3042	//г���������������¼�
#define OAD_HARMONIC_P_OVERRUN          0X3043	//г�����ʳ����¼�
#define OAD_INTER_HARMONIC_U_OVERRUN    0X3044	//��г����ѹ���������¼�
#define OAD_INTER_HARMONIC_I_OVERRUN    0X3045	//��г���������������¼�
#define OAD_INTER_HARMONIC_P_OVERRUN    0X3046	//��г�����ʳ����¼�
#define OAD_SHORT_FLICKER_U_OVERRUN     0X3047	//��ѹ��ʱ���䳬���¼�
#define OAD_LONG_FLICKER_U_OVERRUN      0X3048	//��ѹ��ʱ���䳬���¼�
#define OAD_SAG_U                       0X3049	//��ѹ�ݽ��¼�
#define OAD_SWELL_U                     0X304A	//��ѹ�����¼�
#define OAD_INTERRUPTION_U              0X304B	//��ѹ�ж��¼�
#define OAD_METER_CLEAR		            0X3013	//���ܱ������¼�
#define OAD_JLCHIP_FAIL		            0X302F	//���ܱ����оƬ�����¼�
#define OAD_APP_UPDATE		            0X3036	//�����¼�
#define OAD_ADJUST_TIME					0X3016	//Уʱ�¼�

#define OAD_U_DEV			            0X304C	//��ѹƫ����¼�
#define OAD_F_DEV			            0X304F	//Ƶ�ʳ����¼�
#define OAD_U_UNBALANCE		            0X304D	//��ѹ��ƽ��ȳ����¼�
#define OAD_I_UNBALANCE		            0X304E	//������ƽ��ȳ���
#define OAD_U_CHANGE		            0X3050	//��ѹ��������
//-----------------------------------------------
//				�ṹ�壬�����壬ö��
//-----------------------------------------------
typedef struct TEventAttInfo_t
{
	DWORD	Oad[MAX_EVENT_OAD_NUM];			//OAD��Ŀ  4�ֽڶ���
	BYTE	NumofOad;						//OAD�ĸ���
	BOOL	bValidFlag;						//��Ч��ʶ class7(24) ����9(12)�������ã����жϣ�����̶����տ�������
	WORD	OadValidDataLen;				//��Ч��OAD�����ܳ���
	WORD	AllDataLen;						//sizeof(TEventOADCommonData)+OadValidDataLen+ExtDataLen
	WORD	OadLen[MAX_EVENT_OAD_NUM];		//OAD��Ŀ��Ӧ�����ݳ���	
	WORD	MaxRecordNo;					//һҳFLASH����¼��
}TEventAttInfo;


// �¼���������ֵ
typedef struct TEventPara_t
{
	WORD	SetTimeLimit;					// �㲥Уʱ��Χ

	short   sHrmUDistorThreshold;			//г���ܻ����ʳ�����ֵ  long����λ��%�����㣺-2����
	BYTE	HrmUDistorDelayTime;			//��ʱ�ж�ʱ�� 		 unsigned����λ��s�����㣺0��

	short   sHrmIDistorThreshold;			//г���ܻ����ʳ�����ֵ  long����λ��%�����㣺-2����
	BYTE	HrmIDistorDelayTime;			//��ʱ�ж�ʱ�� 		 unsigned����λ��s�����㣺0��

	WORD    wShortFlkThreshold;				//��ѹ��ʱ���䳬����ֵ  long-unsigned���޵�λ�����㣺-2����
	WORD	wShortFlkDelayTime;				//��ʱ�ж�ʱ�� 		 long-unsigned����λ��s�����㣺0��

	WORD    wLongFlkThreshold;				//��ѹ��ʱ���䳬����ֵ  long-unsigned���޵�λ�����㣺-2����
	WORD	wLongFlkDelayTime;				//��ʱ�ж�ʱ�� 		 long-unsigned����λ��s�����㣺0��

	WORD    wSagUThreshold;					//��ѹ�ݽ���ֵ          long-unsigned����λ��%�����㣺-2������
	WORD	wSagUDelayTime;					//��ʱ�ж�ʱ�� 		 long-unsigned����λ��s�����㣺0��	
	
	WORD    wSwellUThreshold;				//��ѹ������ֵ          long-unsigned����λ��%�����㣺-2����%�����㣺-2������
	WORD	wSwellUDelayTime;				//��ʱ�ж�ʱ�� 		 long-unsigned����λ��s�����㣺0��

	WORD    wInterruptUThreshold;			//��ѹ�ж���ֵ          long-unsigned����λ��%�����㣺-2����
	WORD	wInterruptUDelayTime;			//��ʱ�ж�ʱ�� 		 long-unsigned����λ��s�����㣺0��

//////////////////////
	short   sHrmUContentThreshold;			//г����ѹ����������ֵ  long����λ��%�����㣺-2����
	BYTE	HrmUContentDelayTime;			//��ʱ�ж�ʱ�� 		 unsigned����λ��s�����㣺0��

	short   sHrmIContentThreshold;			//г����������������ֵ  long����λ��%�����㣺-2����
	BYTE	HrmIContentDelayTime;			//��ʱ�ж�ʱ�� 		 unsigned����λ��s�����㣺0��

	short   sHrmPContentThreshold;			//г�����ʳ��޳�����ֵ  long����λ��%�����㣺-2����
	BYTE	HrmPContentDelayTime;			//��ʱ�ж�ʱ�� 		 unsigned����λ��s�����㣺0��

	short   sInterHrmUContentThreshold;		//��г����ѹ����������ֵ  long����λ��%�����㣺-2����
	BYTE	InterHrmUContentDelayTime;		//��ʱ�ж�ʱ�� 		 unsigned����λ��s�����㣺0��

	short   sInterHrmIContentThreshold;		//��г����������������ֵ  long����λ��%�����㣺-2����
	BYTE	InterHrmIContentDelayTime;		//��ʱ�ж�ʱ�� 		 unsigned����λ��s�����㣺0��

	short   sInterHrmPContentThreshold;		//��г�����ʳ�����ֵ  long����λ��%�����㣺-2����
	BYTE	InterHrmPContentDelayTime;		//��ʱ�ж�ʱ�� 		 unsigned����λ��s�����㣺0��
///////////////////////////////
//////////////////////////////////////
	short   sUDevThreshold;			//��ѹƫ����¼�  long����λ��%�����㣺-2����
	BYTE	UDevDelayTime;			//��ʱ�ж�ʱ�� 		 unsigned����λ��s�����㣺0��

	short   sFDevThreshold;			//Ƶ�ʳ����¼�  long����λ��%�����㣺-2����
	BYTE	FDevDelayTime;			//��ʱ�ж�ʱ�� 		 unsigned����λ��s�����㣺0��

	short   sUUnbalanceThreshold;	//��ѹ��ƽ��ȳ����¼�  long����λ��%�����㣺-2����
	BYTE	UUnbalanceDelayTime;	//��ʱ�ж�ʱ�� 		 unsigned����λ��s�����㣺0��

	short   sIUnbalanceThreshold;	//������ƽ��ȳ���  long����λ��%�����㣺-2����
	BYTE	IUnbalanceDelayTime;	//��ʱ�ж�ʱ�� 		 unsigned����λ��s�����㣺0��

	short   sUChangeThreshold;		//��ѹ��������  long����λ��%�����㣺-2����
	BYTE	UChangeDelayTime;		//��ʱ�ж�ʱ�� 		 unsigned����λ��s�����㣺0��

//////////////////////////////////////
	BYTE    SPIDelayTime;			//SPI ������ʱ
        
        int     nUartBps;
        
        WORD    wBodongThreshold;
        
	BYTE    byRec[8];

	DWORD   wCRC;

}TEventPara;


typedef struct TReportMode_t
{
	//4300	�����豸 ������7. ��������ϱ�
	BYTE g_EnableAutoReportFlag;		//�豸������ �����ϱ�������
	BYTE g_EnableFollowReportFlag;		//�豸������ �����ϱ�������

	BYTE 	byFollowReportMode[4];//20150400 ���ܱ�����ϱ�ģʽ��
	

	BYTE 	byReportMode[eNUM_OF_EVENT_PRG];// �¼�������--->�ϱ���ʽ��0 ������1���棩  ����11

	BYTE 	byReportFlag[eNUM_OF_EVENT_PRG];// �¼�������--->�����ϱ���ʶ  ���ϱ���0�����¼������ϱ���1�����¼��ָ��ϱ���2�����¼������ָ����ϱ���3�� ����8

	//4300	�����豸 ������10	�ϱ�ͨ��	array OAD
	DWORD 	ReportChannelOAD[MAX_COM_CHANNEL_NUM];

	BYTE 	byEventValid[eNUM_OF_EVENT_PRG];			// ��Ч��ʶ ����9

	DWORD	CRC32;
}TReportMode;

typedef struct TVHG_t
{
	BYTE	VHG[256];	// ��ѹ�ϸ���
}TVHG;


typedef struct TPowerDownFlag_t
{
	BYTE	ProgramPwrDwn;										// ��̼�¼�����־
	BYTE	InstantEventFlag[(SUB_EVENT_INDEX_MAX_NUM+7)/8];	// �������¼������־
}TPowerDownFlag;

typedef struct TEventSafeRom_t
{
	TEventDataInfo			EventDataInfo[SUB_EVENT_INDEX_MAX_NUM];	
	TLostPowerTime			LostPowerTime;
}TEventSafeRom;

typedef struct TEvent_t
{
	TEventPara				EventPara;							// �¼����޲���
	TEventAttInfo			EventAttInfo[eNUM_OF_EVENT_PRG];	// �����¼��������࣬����࣬�����ࣩ��OAD��Ϣ,����ͳһ
//	TProgramRecordRom		ProgramRecordRom;					// �������¼+��̼�¼
	TPowerDownFlag			PowerDownFlag;						// ���籣����¼��ı�־
	TReportMode				ReportMode;	// �����ϱ���ʶ
//	TLostAllVData			LostAllVData;						// �͹����¼�¼�ĵ�ѹ����

	TVHG					VHG;
        char                           szAssetsCode[36];
        
         BIG_ADJUST_PARA                big_adjust_para;
   
         
        DWORD                           CRC32;
}TEventConRom;

typedef struct TReportPara_t
{
	BYTE		Times;		//�ϱ�����
	BYTE		OAD_Num;	//�ϱ�OAD����
	DWORD		ReportOAD[SUB_EVENT_INDEX_MAX_NUM];
	DWORD		CRC32;
}TReportPara;

typedef struct TFollowPara_t
{
	DWORD		OldOad;	
	BYTE		OAD_Num;	//�ϱ�OAD����
	DWORD		ReportOAD;
	DWORD		CRC32;
}TFollowPara;

typedef struct TReportSafeRom_t
{
	TReportPara ReportPara;
}TReportSafeRom;


/////////////////////////////////////////////////////////////////////////////////////////
// 3320
////////////////////////////////////////////////////////////////////////////////////////

typedef struct TReportIndex_t
{
	BYTE	Index[SUB_EVENT_INDEX_MAX_NUM];
	BYTE	Pointer;	//����ʱ�ȼ���д
	DWORD	CRC32;
}TReportIndex;

typedef struct TReportSafeRom2_t
{
	//TReportInfo		ReportInfo;
	TReportMode		ReportMode;
}TReportSafeRom2;

typedef struct TReport_t
{
	TReportIndex	ReportIndex[MAX_COM_CHANNEL_NUM];//�Ƶ�RAM������ÿ���EEPROM������ TReportConRom �� 2017/11/16 wlk
	//BYTE byFollowReportStatus[MAX_COM_CHANNEL_NUM][4];//20150200 �����ϱ�״̬��
}TReportConRom;

typedef struct TFollowReportStatusRam_t
{
	BYTE Status[MAX_COM_CHANNEL_NUM][4];//20150200 �����ϱ�״̬��
	BYTE StatusBak[MAX_COM_CHANNEL_NUM][4];//20150200 �����ϱ�״̬��
	BYTE byEEErrStatus;//�洢������״̬
	DWORD CRC32;
}TFollowReportStatusRam;



//-----------------------------------------------
//				��������
//-----------------------------------------------

//-----------------------------------------------
// 				��������
//-----------------------------------------------
//-----------------------------------------------
//��������: �ж��¼�״̬
//
//����: ��
//                    
//����ֵ: ��
//			
//��ע: ��ѭ������
//-----------------------------------------------
void api_EventTask(void);

//-----------------------------------------------
//��������: ���¼�������������
//����: 
//		OI[in]:	�¼�OI                
//  	No[in]:	�ڼ���OAD��0����ȫ��OAD                
//  	Len[in]:��Լ�㴫�����ݳ��ȣ������˳��ȷ���FALSE	
//  	pBuf[out]:�������ݵ�ָ�� ���ն������ڣ�OAD���洢���˳�򷵻أ�ÿ��DWORD���ܹ�3*4�ֽ�
//
//����ֵ:	
//		ֵΪ0x8000 ��������ִ��� OI��֧�֣���ȡEpprom��������⣩
//		ֵΪ0x0000 ������buf���Ȳ���
//		����:		�������ݳ���( �ڸ���Ϊ0ʱ�����1�ֽڵ�0 ���س���Ϊ1)
//��ע: 
//-----------------------------------------------
WORD api_ReadEventAttribute( WORD OI, BYTE No, WORD Len, BYTE *pBuf );

//-----------------------------------------------
//��������: �����¼�������������
//
//����: 
//	OI[in]:	�¼�OI
//  
//  OadType[in]:
//			0 ~ �������е�OAD
//			N ~ �����б���ĵ�N��OAD  ���õ�N��OADʱ����Ϊ��N��OAD֮ǰ����ֵ��
//	
//  pOad[in]:  ָ��OAD Buffer��ָ��  2�ֽڶ�������+4�ֽ�OAD+2�ֽڴ洢���
//                
//  OadNum[in]:	OAD�ĸ���
//
//  ����ֵ:	TRUE   ��ȷ
//			FALSE  ����
//
//��ע:	���е����¼ƣ����·���EEP�ռ�
// 		
//-----------------------------------------------
BOOL api_WriteEventAttribute( WORD OI, BYTE OadType, BYTE *pOad, WORD OadNum );

//-----------------------------------------------
//��������: ��ȡ����ʱ��
//
//����: 
//	PowerDownTime[out]:	����ʱ�� 
//  
//����ֵ:				��  
//��ע:
//-----------------------------------------------
BOOL api_GetPowerDownTime( TRealTimer *pPowerDownTime );

//-----------------------------------------------
//��������: ����������¼���¼������ܣ�ʱ��ʱ�α��̵ȣ�
//
//����: 
//	OI[in]:	OI
//  
//  ����ֵ:	TRUE   ��ȷ
//			FALSE  ����
//
//��ע:
//-----------------------------------------------
BOOL api_SavePrgOperationRecord( WORD OI );

//-----------------------------------------------
//��������: ���¼���¼
//
//����: 
//	Tag[in]:	0 ����Tag 
//				1 ��Tag
//                
//	pDLT698RecordPara[in]: ��ȡ����Ĳ����ṹ��
//                
//  Len[in]�������buf���� �����ж�buf�����Ƿ���
//                
//  pBuf[out]: �������ݵ�ָ�룬�еĴ����ݣ�û�еĲ�0
//				
//	
//  ����ֵ:	bit15λ��1 �������޴����� ��0������������ȷ���أ� 
//			bit0~bit14 �����صĶ������ݳ���
//
//��ע: ֻ֧����Last����¼
//-----------------------------------------------
WORD api_ReadEventRecord( BYTE Tag, TDLT698RecordPara *pDLT698RecordPara, WORD Len, BYTE *pBuf );

//-----------------------------------------------
//��������: ��ʼ���¼�����ֵ,�����������Ա�
//
//����: ��
//                    
//����ֵ:  	��
//
//��ע:
//-----------------------------------------------
void api_FactoryInitEvent( void );

//-----------------------------------------------
//��������: ���¼���¼����
//
//����: 
//  Type[in]:	eEVENT_CLEAR_TYPE
//	
//����ֵ:	��
//  
// ��ע:
//-----------------------------------------------
BOOL api_ClrAllEvent( BYTE Type );

//-----------------------------------------------
//��������: ������¼���¼����
//
//����: 
//  OI[in]:	OI
//	
//����ֵ:  	TRUE   ��ȷ
//			FALSE  ����
//  
// ��ע:
//-----------------------------------------------
BOOL api_ClrSepEvent( WORD OI );

//-----------------------------------------------
//��������: ���¼�����
//
//����: 
//			OI[in]:					OI
//			No[in]:					0: ȫ������
//									N: ��N������
//			pLen[out]:				�������ݵĳ���
//			pBuf[out]:				�����ݵĻ���
//                    
//����ֵ:  	TRUE   ��ȷ
//			FALSE  ����
//
//��ע:  	��ȡram  698��Լ����
//-----------------------------------------------
BOOL api_ReadEventPara( WORD OI, BYTE No, BYTE *pLen, BYTE *pBuf );

//-----------------------------------------------
//��������: �����¼�����
//
//����:  ��
//                    
//����ֵ: ��
//
//��ע: 
//-----------------------------------------------
void api_PowerDownEvent(void);

//-----------------------------------------------
//��������: �ݴ��̼�¼֮ǰ�������OAD������
//
//����:  	Type[in]: 0--OAD	1--OMD
//			dwData[in]: Ҫ���õĲ���OAD ���ֽ���ǰ�����ֽ��ں�
//                  
//����ֵ: TRUE/FALSE
//
//��ע:��Լ���ñ�̼�¼ʱ�������ò���֮ǰҪ�ȵ��ô˺����� 
//-----------------------------------------------
BOOL api_WritePreProgramData( BYTE Type,DWORD dwData );


//-----------------------------------------------
//��������: ��ȡ��ǰ��¼��������¼��
//
//����:  
//  OI[in]: OI
//   
//  Phase[in]: ��λ0��,1A,2B,3C
//             
//  Type[in]: �ο�eEVENT_RECORD_NO_TYPE
//                
//  pBuf[out]���������ݵĻ���
//                    
//����ֵ:	TRUE   ��ȷ
//			FALSE  ����
//
//��ע: 
//-----------------------------------------------
BOOL api_ReadEventRecordNo( WORD OI, BYTE Phase, BYTE Type, BYTE *pBuf );


//-----------------------------------------------
//��������: ��ȡ��ǰֵ��¼��
//
//����:  
//  OI[in]: 	OI      
//  Phase[in]: 	��λ0��,1A,2B,3C 
//	Type[in]:	0--�����1�η���ʱ�䡢����ʱ��(Class 7�з���Դ)  ����--����������+�ۼ�ʱ��(Class 7�з���Դ)
//  pBuf[out]��	�������ݵĻ���
//                    
//����ֵ:	0--��ȡʧ�ܣ�����--���ض�ȡ����
//
//��ע: ���¼�������1�η���ʱ�䡢����ʱ��(Class 7�з���Դ)�������������+�ۼ�ʱ��(Class 7�з���Դ)
//-----------------------------------------------
WORD api_ReadCurrentRecordTable( WORD OI, BYTE Phase, BYTE Type, BYTE *pBuf );

//-----------------------------------------------
//��������: �����¼���ʱ���״̬
//
//����: 
//			Type[in]��			eDEAL_EVENT_DELAYED_STATUS
//                    
//			inSubEventIndex[in]	eSUB_EVENT_INDEX
//                    
//����ֵ: TypeΪeGET_EVENT_STATUSʱ��1Ϊ�¼�������δ������0Ϊ�¼�δ���� 	
//
//��ע:   
//-----------------------------------------------
BYTE api_DealEventDelayedStatus(eDEAL_EVENT_DELAYED_STATUS Type, BYTE inSubEventIndex );

//-----------------------------------------------
//��������: �����¼���ǰ״̬
//
//����: 
//			Type[in]��			eGET_EVENT_CURRENT_STATUS							
//								eSET_EVENT_CURRENT_STATUS
//								eCLEAR_EVENT_CURRENT_STATUS
//			inSubEventIndex[in]	eSUB_EVENT_INDEX
//                    
//����ֵ: TypeΪeGET_EVENT_STATUSʱ��1Ϊ�¼�������δ������0Ϊ�¼�δ���� 	
//				����ʱ  �̶�����0
//��ע:   
//-----------------------------------------------
BYTE api_DealEventCurrentStatus(eDEAL_EVENT_CURRENT_STATUS Type, BYTE inSubEventIndex );


//-----------------------------------------------
//��������: �ϵ��¼�����
//
//����: ��
//                    
//����ֵ: ��
//			
//��ע: 
//-----------------------------------------------
void api_PowerUpEvent(void);

//-----------------------------------------------
//��������: ��������������¼���¼
//
//����: 
//	pBuf[in]:
//  
//  ����ֵ:	TRUE   ��ȷ
//			FALSE  ����
//
//��ע:
//-----------------------------------------------
BOOL api_SaveManageUpDateRecord( BYTE *pBuf );

//-----------------------------------------------
//��������: ��ȡͣ���ڼ�����
//
//����: Type[in]: 	0:ȫ����ȡ
//					1:ͣ���ڼ��ѹ
//					2:ͣ���ڼ����
//
//����ֵ:  	���ݳ���
//
//��ע:ͣ���ڼ��������ڼ���о����͹���10��ʱ����������ݣ�������о�ϵ�ʱ��ȡ���ж�ȫʧѹ���¼���
//-----------------------------------------------
WORD api_GetLostPowerDate( BYTE Type, BYTE *InBuf );


//-----------------------------------------------
//��������: ����˫о�¼��ϱ��б�
//
//����:
//		inSubEventIndex[in]:	�¼�������
//
//����ֵ:	��
//			
//-----------------------------------------------
void SetDoubleChipReportIndex( BYTE inSubEventIndex );

//-----------------------------------------------
//��������  �����簴����⹦������
//
//����:  
//
//����ֵ: 
//
//��ע����  :   
//-----------------------------------------------
void api_PowerDownSetCoverReg( void );

//-----------------------------------------------
//��������: ��ȡ�¼������ϱ�APDU
//
//����: 
//  
//����ֵ:				TRUE/FALSE  
//��ע:  
//-----------------------------------------------
WORD api_GetReportEventAPDU( BYTE* Buf );


#endif//��Ӧ�ļ���ǰ���#define __EVENT_API
