//----------------------------------------------------------------------
//Copyright (C) 2003-2016 ��̨������˼�ٵ����ɷ����޹�˾�������з��� 
//������	���ĺ� κ����
//��������	2016.8.4
//����		DL/T 698.45�������Э��apiͷ�ļ�
//�޸ļ�¼	
//----------------------------------------------------------------------
#ifndef __Dlt698_45_API_H
#define __Dlt698_45_API_H
//-----------------------------------------------
//				�궨��
//-----------------------------------------------
#define MAX_RN_SIZE				    (24+1) //�������󳤶�       3*8+1=25
//-----------------------------------------------
//				�ṹ�壬�����壬ö��
//-----------------------------------------------
typedef enum
{
   	eData = 0,         	//ֻ��ȡ����
   	eTagData,    		//����+TAG
   	eAddTag,        	//ֻ��TAG
   	eProtocolData,      //Э������ 
   	eMaxData = 0X55    //���Դ���ݳ���
}eDataTagChoice;//���ݼ�TAG��־

typedef enum
{
    eNULL_TIME_FLAG = 0x00,
   	eFREEZE_TIME_FLAG = 0x01, 		//ʱ���־
   	eRECORD_TIME_INTERVAL_FLAG = 0x02, //ʱ�������־
   	eNUM_FLAG = 0x04,    				//������־
   	eEVENT_START_TIME_FLAG = 0x08,		//�¼���ʼʱ��
   	eEVENT_END_TIME_FLAG = 0x10		//�¼�����ʱ��
}eRecoredFlagChoice;

typedef struct TTimeIntervalPara_t	//��ȡ��¼�����ṹ��
{
    DWORD StartTime;				//��ʼʱ��
    DWORD EndTime;					//����ʱ��
    WORD  TI;						//ʱ����
    WORD  ReturnFreezeNum;			//������������������ֵ��
    BYTE  AllCycle;                 //ȫ���ڱ�־ 0X55����ȫ���� 0x00 ��ȫ����
}TTimeIntervalPara;

typedef struct TDLT698RecordPara_t			//��ȡ��¼�����ṹ��
{
	WORD OI;								//���ͱ�ʶOI
	BYTE Ch;                                //��ȡͨ��
	ePHASE_TYPE Phase;						//ָ������ 0 ������ 1 ����A��  2 ����B��  3 ���� C��
	eRecoredFlagChoice eTimeOrLastFlag; 	//ʱ�������ı�־  0x00 ʱ��  0x01 ����	
	DWORD TimeOrLast;						//��ȡ�¼����¼��ʱ��
	TTimeIntervalPara TimeIntervalPara;     //ʱ��β���
	BYTE OADNum;							//Ҫ��ȡ���������OAD�ĸ��� OAD����Ϊ�� �򷵻�ȫ��
	BYTE *pOAD;								//Ҫ��ȡ���������OADָ��
}TDLT698RecordPara;

typedef struct TDLT698APPConnect_t   	//��·����Ӧ�ṹ��
{
	BYTE Mode;						    //����Ӧ������ģʽ 0X00:һ������Ӧ������               0x55���Գ�����Ӧ������
	DWORD ConnectValidTime;				//698����Ӧ������ʱ��(ʵʱ)
	DWORD ConstConnectValidTime;	 	//698����Ӧ�ù̶�����ʱ��
	BYTE  ConnectChannel;				//698����Ӧ�õ�ͨ��
	DWORD IRAuthTime;			        //������֤ʱ��(ʵʱ)
}TDLT698APPConnect;

typedef struct TCoefficient_t
{
	DWORD UK;
	DWORD IK;
	DWORD Phase;
}TCoefficient;//�ܲ�ϵ��

typedef enum
{	
	eGET_ALL  = 0,
	eGET_ADDR,// = 0,
	eGET_SAMPLENUM,
	eGET_SAMPLEINFO,
	eGET_V,
	eGET_I,
	eGET_RTC,
	eMAXCOMNO
}eCOMStatus;//����һһ��Ӧ����������

typedef struct TManageComInfo_t   	//��TAGʱBufʹ�õĲ���
{
	eCOMStatus Status;
	BYTE AddressType;
	BYTE SampleNO;//1�� �����   	2��������		3:������
	WORD DelayTime;
	BYTE Address[6];
	TCoefficient Coefficient;
	WORD EventReportOverTime;

	BYTE byRecOkFlag;

	DWORD dwEVol;
	DWORD dwECur;

        BYTE  byRetryCount;
        
}TManageComInfo;


typedef enum
{
	eFileRate = 99,		//	�ļ�������� 0��99%				��0��99����
	eFileOk,			//	�����ִ�в����ɹ�				��100����
	eFileLinking,		//	��չ�������ڽ�������			 ��101����
	eFileRemote,		//	��չ��������Զ�̵�¼			 ��102����
	eFileExe,			//	����ִ���ļ�					 ��103����
	eFileNotExist,		//	�ļ���Ŀ¼������				 ��104����
	eFileNotUse,		//	��������������/ɾ��/��д/ִ�У���105����
	eFileInterupt,		//	�ļ������ж�					 ��106����
	eFileCrcError,		//	�ļ�У��ʧ��					 ��107����
	eFileTransFail,		//	�ļ�ת��ʧ��					 ��108����
	eFileDeliveryFail,	//	�ļ�����ʧ��					 ��109����
	eFileLinkFail,		//	��չ���佨������ʧ��			 ��110����
	eFileLogonFail,		//	��չ����Զ�̵�¼ʧ��			 ��111����
	eFileNoRoom,		//	�洢�ռ䲻��					 ��112����
	eFileReset,			//	��λ��Ĭ��ֵ					 ��255��
}eFileStatus;

typedef enum		//����2�����������ֻ������=enum 4027
{
	eFileUpdateInit		= 0,			//��ʼ״̬(����Ĭ��)     	��0����
	eFileUpdateStartOk	= 1,			//��������ɹ���������   	��1����
	eFileUpdateDowning	= 2,			//	������                 	��2����
	eFileUpdateDownOk	= 3,			//	���سɹ�               	��3����
	eFileUpdateCheckOK	= 4,			//	��ʵ�ԡ�������У��ɹ� 	��4����
	eFileUpdateTimeWait	= 5,			//	��ʱ�����ȴ���??     	��5����
	eFileUpdateSuccess	= 6,			//	�����ɹ� ?????    		��6����

	eFileUpdateHardErr	= 20,			//	Ӳ���汾��ƥ�� ??    	��20����
	eFileUpdateSoftErr	= 21,			//	����汾��ƥ��         	��21����

	eFileUpdateWFlashErr	= 22,		//	д�ⲿFlash��         	��22����
	eFileUpdateRFlashErr	= 23,		//	��ȡ�ⲿFlash��       	��23����
	eFileUpdateWProgramErr	= 24,		//	д����Flash��        	��24����
	eFileUpdateCheckErr		= 25,		//	������У���          	��25����
	eFileUpdateCheckTrueErr	= 26,		//	��ʵ��У���          	��26����
	eFileUpdateTimerErr		= 27,		//	��ʱ����ʱ���쳣      	��27����
	eFileUpdateOtherErr		= 255,		//	����ʧ������ԭ�� ?		��255��

}eFileUpdateResult;


///////////////////////////////////////////////////////////////
//	�ṹ���� : TTFileInfo
//	��    �� : 
//	��    �� : 
//	��ʷ��¼ : 
//	ʹ��˵�� : 
//	��    �� : ���ܵ����
//	ʱ    �� : 2021��6��24��
//	��    ע : 
///////////////////////////////////////////////////////////////
#pragma pack(push)
#pragma pack(1)
typedef struct TTFileInfo
{
	DWORD   dwMagic;

	char	sourseFile[30];		//	Դ�ļ�    visible-string��Visible_string_698
	char	destFile[30];		//	Ŀ���ļ�  visible-string��
	DWORD	lFileSize;			//	�ļ���С  double-long-unsigned��
	BYTE	FileAttr;			//	�ļ�����  bit-string(SIZE(3))���ļ����ԣ�bit0������1���ɶ���0�����ɶ�����	bit1��д��1����д��0������д����bit2��ִ�У�1����ִ�У�0������ִ�У���
	char	FileVersion[20];		//	�ļ��汾  visible-string��
	BYTE	byFileType;			//	�ļ����  enum	//{	//	��ǰ�豸�ļ�  ��0����	//		�����豸�ļ�  ��1��	//}

	DWORD   dwTxBlockLen;		//������Сdouble-long-unsigned
	BYTE    byCheckType;
	DWORD	dwCrcCheck;			//У��structure

	char    szSoftVersion[33];		//��������汾�� array visible-string(SIZE(0��16))��
	char    szHardwareVersion[33];  //����Ӳ���汾�� array visible-string(SIZE(0��16))
	char    szDownFlag[33];
	
	WORD    BlockStatusNum;
	BYTE    BlockStatus[256];
	TRealTimer FileUpdateTime;

	BYTE	FileStatus;
	
		
	BYTE	FileTransferStatus;

	TRealTimer ResetTime;
	BYTE	dwUpFlag;

	WORD    wCrc;

}TFileInfo;
#pragma pack(pop)


typedef struct TTFileText
{
	DWORD	lFileIndex;			//	�ļ���С  double-long-unsigned��
	BYTE	File[4*1024];			//	�ļ�����  bit-string(SIZE(3))���ļ����ԣ�bit0������1���ɶ���0�����ɶ�����	bit1��д��1����д��0������д����bit2��ִ�У�1����ִ�У�0������ִ�У���

}TFileText;




//-----------------------------------------------
//				��������
//-----------------------------------------------
extern TDLT698APPConnect APPConnect;
extern BYTE g_EnableAutoReportFlag;//ֻΪӦ�����Ų����������
extern BYTE g_byClrTimer_500ms;
extern TManageComInfo ManageComInfo;
//-----------------------------------------------
// 				��������
//-----------------------------------------------


//--------------------------------------------------
//��������:  698��ȡ����OAD���ݵĶ���ӿں���
//         
//����:	
//		DataType[in]:	eData/eTagData/eAddTag
//		Dot[in]:  		��ȡ���ݵ�С����λ����oxff--��ʾ��ԼĬ�ϵ�С��λ������Լ���ã�
//		pOAD[in]��		��ȡ���ݵ�OAD
//		InBuf[in]��		����Ҫ��Tag������(ע:������¼����е� �¼��ϱ�״̬(0x3300)����̶����б�(0x3302)���¼������б�(0x330c)ʱ����һ���ֽ�InBuf[0]��Ҫ���Array�ĸ���Number)
//		OutBufLen[in]��	����OutBufLen�ĳ���
//		OutBuf[out]:  	��ȡ���ݴ��OutBuf��
//
//����ֵ: �������ݳ���	0x0000:���ݳ��Ȳ���  0x8000: ���ִ���
//         
//��ע����:  ��
//--------------------------------------------------
extern WORD api_GetProOadData( BYTE DataType,BYTE Dot,BYTE *pOAD, BYTE *InBuf, WORD OutBufLen, BYTE *OutBuf );

//--------------------------------------------------
//��������: ��ȡ����OAD��Ӧ���ݵĳ���
//         
//����:    	DataType[in]: 	eData/eTagData
//         	pOAD[in]����ȡ���ݳ��ȵ�OAD
//			Number[in]��Array�ĸ���  
//
//����ֵ:   ���ݳ���  0x0000:���ݳ��Ȳ���  0x8000: ���ִ���
//         
//��ע����: Number:ֻ�л�ȡ�¼��೤��ʱ��Ҫ���ô˲�������ȡ�����೤��ʱ���˲���ֱ����д0
//--------------------------------------------------
extern WORD api_GetProOADLen(BYTE DataType, BYTE *pOAD, BYTE Number);

//--------------------------------------------------
//��������:  ��Լ��ȡ��¼����
//         
//����:      BYTE Tag[in] 						//�Ƿ��TAG��־;	0x01������Ҫ��TAG�� 	   	  0x00 ������TAG�� 
//							       
//           TDLT698RecordPara *DLT698RecordPara[in] 	//��ȡ��¼���¼��Ĳ����ṹ��
//         
//           WORD InBufLen[in]						//�����buf���� �����ж�buf�����Ƿ���
//         
//           BYTE *InBuf[in]						//����bufָ��
//         
//����ֵ:    WORD								// bit15λ��1 �����¼�򶳽��޴����� ��0������������ȷ���أ� 
//											bit0~bit14 �����صĶ�����¼����ֽ���
//         
//��ע����:  ��
//--------------------------------------------------
extern WORD api_ReadProRecordData( BYTE Tag, TDLT698RecordPara *pDLT698RecordPara, WORD BufLen,BYTE *pBuf );

extern void api_ClrProSafeModePara(BYTE byType);//������ʽ��ȫģʽ����


//--------------------------------------------------
//��������: ��ʱ�β��������ʱ����ʱ�������һ����Ч�Ĳ���
//         
//����:    BYTE byLen[in]            �������ݳ���
//         
//         BYTE byMaxLen[in]         ������ݳ���
//
//         BYTE *pData[in]           ����ָ��
//         
//����ֵ:     BYTE DAR��� 
//         
//��ע����:    ������ȫ�ֱ��� ProtocolBuf ��
//--------------------------------------------------
extern void api_AddTimeSegParaExtDataWithLastValid(BYTE byLen, BYTE byMaxLen, BYTE *pBuf );

///////////////////////////////////////////////////////////////
//	�� �� �� : api_GetFileExeTime
//	�������� : 
//	������� : 
//	��    ע : 
//	��    �� : ���ܵ����
//	ʱ    �� : 2021��6��30��
//	�� �� ֵ : int
//	����˵�� : BYTE *Buffer
///////////////////////////////////////////////////////////////
int api_GetFileExeTime(BYTE *Buffer);

///////////////////////////////////////////////////////////////
//	�� �� �� : api_GetFileBlockSize
//	�������� : 
//	������� : 
//	��    ע : 
//	��    �� : ���ܵ����
//	ʱ    �� : 2021��6��30��
//	�� �� ֵ : int
//	����˵�� : BYTE *Buffer
///////////////////////////////////////////////////////////////
int api_GetFileBlockSize(BYTE *Buffer);

///////////////////////////////////////////////////////////////
//	�� �� �� : api_GetFileLoadFlag
//	�������� : 
//	������� : 
//	��    ע : 
//	��    �� : ���ܵ����
//	ʱ    �� : 2021��6��30��
//	�� �� ֵ : int
//	����˵�� : BYTE *Buffer
///////////////////////////////////////////////////////////////
int api_GetFileLoadFlag(BYTE *Buffer);

///////////////////////////////////////////////////////////////
//	�� �� �� : api_GetFileStatus
//	�������� : 
//	������� : 
//	��    ע : 
//	��    �� : ���ܵ����
//	ʱ    �� : 2021��6��24��
//	�� �� ֵ : int
//	����˵�� : BYTE *Buffer
///////////////////////////////////////////////////////////////
int api_GetFileStatus(BYTE *Buffer);

///////////////////////////////////////////////////////////////
//	�� �� �� : api_GetFileTransmitStatus
//	�������� : 
//	������� : 
//	��    ע : 
//	��    �� : ���ܵ����
//	ʱ    �� : 2021��6��30��
//	�� �� ֵ : int
//	����˵�� : BYTE *Buffer
///////////////////////////////////////////////////////////////
int api_GetFileTransmitStatus(BYTE *Buffer);
int api_GetFileTransmitMakeType(BYTE *Buffer);

int api_GetFileVersion(BYTE *Buffer,BYTE classType);

//--------------------------------------------------
// ��������:  �����Ӷ�������ʱ�����ڴ����������ȷ������Ҫ��ȡʱ���м���
//
// ����:      [in]��Num
//
// ����ֵ:    ��
//
// ��ע����:  ��
//--------------------------------------------------
void api_SetTagArrayNum(BYTE Num);
#endif//(SEL_DLT698_2016_FUNC == YES )
