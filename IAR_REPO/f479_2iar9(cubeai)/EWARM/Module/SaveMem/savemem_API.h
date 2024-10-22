//----------------------------------------------------------------------
//Copyright (C) 2016-2026 ��̨������˼�ٵ����ɷ����޹�˾�������з��� 
//������	������
//��������	2016.8.11
//����		�洢����С���塢��ȫ�ռ�������ռ����
//�޸ļ�¼	
//----------------------------------------------------------------------
#ifndef __SAVEMEM_API_H
#define __SAVEMEM_API_H

//-----------------------------------------------
//				�궨��
//-----------------------------------------------
#define SECTOR_SIZE  (4096UL)
#define THIRD_MEM_SPACE                             (8192UL*1024UL)  //8MB,2048������
#define RMN_MEN_SPACE                               (512UL*1024UL)   //512K,  500ҳ
#define HALFRMN_MEM_SPACE                           (RMN_MEN_SPACE/2)  

/***************************************************************************************************
 * ���򻺳���
 */
#define UPDATEFLAG_CONST            (0x5aa5a55a)    // ������־ֵ
#define CODEBUFFERFLAG1_CONST       (0x1111)        // ʹ�õ�1�ݻ�����
#define CODEBUFFERFLAG2_CONST       (0x2222)        // ʹ�õ�2�ݻ�����
#define CODEBUFFER_SIZE             (256UL*1024UL)  // ��������󳤶�

// ��������ʼ��ַ
#define FLASH_UPDATEDATA_START_ADDR             (0UL)						//����洢��1 �� 0 ��ʼ ÿ�� ���� 256K
// ��1�ݻ�����
#define FLASH_CODEBUFFER1_START_ADDR            FLASH_UPDATEDATA_START_ADDR  // S = 0
#define FLASH_CODEBUFFER1_SIZE                  CODEBUFFER_SIZE				 // L = 256K
#define FLASH_CODEBUFFER1_END_ADDR              (FLASH_CODEBUFFER1_START_ADDR + FLASH_CODEBUFFER1_SIZE) // E = 256K 
// ��2�ݻ�����
#define FLASH_CODEBUFFER2_START_ADDR            FLASH_CODEBUFFER1_END_ADDR  //  S = 256K ����洢��2 �� 256K ��ʼ ÿ�� ���� 256K
#define FLASH_CODEBUFFER2_SIZE                  CODEBUFFER_SIZE				//  L = 256K 
#define FLASH_CODEBUFFER2_END_ADDR              (FLASH_CODEBUFFER2_START_ADDR + FLASH_CODEBUFFER2_SIZE)	// E = 512K
// ������������ַ
#define FLASH_UPDATEDATA_END_ADDR               (FLASH_CODEBUFFER2_END_ADDR + SECTOR_SIZE) // = (256K * 2 + 4K) = 516K
/***************************************************************************************************/

//�������ݵ�ַ�����ӣ�
#define FLASH_FREEZE_END_ADDR_MIN               (THIRD_MEM_SPACE - SECTOR_SIZE)					// E = 8192K - 4K = 8188K
#define FLASH_FREEZE_SIZE_MIN                   (2*MAX_MIN_FREEZE_DATA_LEN/3)					// L = 800K
#define FLASH_FREEZE_BASE_MIN                   (FLASH_FREEZE_END_ADDR_MIN - FLASH_FREEZE_SIZE_MIN)	// S = 8188K - 800K = 7388K


//�������ݵ�ַ���ա��£�
#define FLASH_FREEZE_END_ADDR_DAY               FLASH_FREEZE_BASE_MIN							// E = 7388K
#define FLASH_FREEZE_SIZE_DAY                   (MAX_MIN_FREEZE_DATA_LEN/3)					// L = 400K
#define FLASH_FREEZE_BASE_DAY                   (FLASH_FREEZE_END_ADDR_DAY - FLASH_FREEZE_SIZE_DAY)	// S = 7388K - 400K = 6988K

#define FLASH_FREEZE_BASE                       FLASH_FREEZE_BASE_DAY

//�¼���¼���ݵ�ַ
#define FLASH_EVENT_END_ADDR                      FLASH_FREEZE_BASE								// E = 8188K - 1200K = 6988K
#define FLASH_EVENT_SIZE                          (SUB_EVENT_INDEX_MAX_NUM * SECTOR_SIZE * EVENT_SECTOR_NUM) // L = 39 * 4K * 2 = 312K
#define FLASH_EVENT_BASE                          (FLASH_EVENT_END_ADDR-FLASH_EVENT_SIZE)		// S = 6822K - 312K = 6510K

//SM4��¼���ݵ�ַ
#define FLASH_SM4_END_ADDR                      THIRD_MEM_SPACE									// E = 8192K 
#define FLASH_SM4_SIZE                          SECTOR_SIZE										// L = 4K
#define FLASH_SM4_BASE                          (THIRD_MEM_SPACE - 2*SECTOR_SIZE)					// S = 8188K



// ����������Ϣ�ṹ��
typedef struct TUpdatePara_t
{
    // ���ݻ������еĳ��򳤶�
    DWORD   CodeBufferLen[2];
    // ���ݻ�����У����
    WORD    CodeBufferSum[2];
    // ������ʹ�ñ�־��[0]:��ʽ��������־��[1]:��ʱ��������־
    WORD    CodeBufferFlag[2];
    // ������־
    DWORD   UpdateFlag;
    // ����
    DWORD   Reserved[2];
    // У��
    DWORD   CRC32;

}TUpdatePara;

typedef struct TParaInfo_t
{
	BYTE Para[12];
	DWORD CRC32;              						// У��
}TParaInfoSafeRom;

//���尲ȫ�ռ��Ա����
typedef struct TSafeMem_t
{
    // ����������Ϣ�ṹ�壬��λ����Ҫ��BOOT�б���һ�£��𶯣�����
    TUpdatePara         UpdatePara;

    TEventSafeRom       EventSafeRom;

    TFreezeSafeRom      FreezeSafeRom;
	
	TReportSafeRom		ReportSafeRom;

	TProSafeRom  		ProSafeRom;

	TParaInfoSafeRom	ParaInfoSafeRom;

}TSafeMem;

//���������ռ��Ա����
typedef struct TConMem_t
{
    TEventConRom        EventConRom;
}TConMem;

//��ȡ�ṹ���Ա�Ŀռ��С
#define GET_STRUCT_MEM_LEN( StructName, ItemName )	sizeof( ((StructName *)(0))->ItemName )
//��ȡȡ�ṹ���Ա�ĵ�ַ
//һ��ṹ��ĳ�Ա
#define GET_STRUCT_ADDR( StructName, ItemName )		((DWORD)&( ((StructName *)(0))->ItemName ))
//��ȫ�ռ�Ľṹ���Ա
#define SAFE_SPACE_START_ADDR                       ( 0 )
#define GET_SAFE_SPACE_ADDR( Addr_Name )            ( (DWORD)&(((TSafeMem *)SAFE_SPACE_START_ADDR)->Addr_Name) )
//�����ռ�Ľṹ���Ա
#define CONTINUE_SPACE_START_ADDR                   ((DWORD)sizeof(TSafeMem))
#define GET_CONTINUE_ADDR( Addr_Name )              ( (DWORD)&(((TConMem *)CONTINUE_SPACE_START_ADDR)->Addr_Name) )


BOOL api_VWriteSafeMem( DWORD Addr, WORD Length, BYTE * pBuf );

BOOL api_VReadSafeMem( DWORD Addr, WORD Length, BYTE * pBuf );

BOOL api_WriteContinueMem(DWORD Addr, WORD Length, BYTE * pBuf);

BOOL api_ReadContinueMem(DWORD Addr, WORD Length, BYTE * pBuf);

BOOL api_WriteMemRecordData(DWORD Addr, WORD Length, BYTE * pBuf);

BOOL api_ReadMemRecordData(DWORD Addr, WORD Length, BYTE * pBuf);

void api_ClrContinueEEPRom(DWORD Addr, WORD Length);

WORD api_ReadSaveMem( BYTE No, DWORD Addr, WORD Length, BYTE *pBuf );
//--------------------------------------------------
//��������:  дFLASH����
//         
//����:      offset ƫ�Ƶ�ַ��Length���ݳ��ȣ�pbuf��Ҫд��FLASH�����ݵ�ָ��
//         
//����ֵ:    
//         
//��ע:  һ��������СΪ4K��ֻ�ܴ�ÿһ�������ĵ�һ����ַд����д�ɹ���
//        �涨����һ�������ĵ�һ�ֽڵ�ƫ�Ƶ�ַΪ0�������������ơ�
//--------------------------------------------------
void  api_Write_FLASH(DWORD Offset,  WORD Length, BYTE * pBuf);
//--------------------------------------------------
//��������:  ��FLASH����
//         
//����:      offset ƫ�Ƶ�ַ��Length���ݳ��ȣ�pbuf�Ƕ�ȡ���ݵ�ָ��
//         
//����ֵ:    
//         
//��ע: 
//--------------------------------------------------
void  api_Read_FLASH( DWORD Offset,  WORD Length, BYTE * pBuf );
#endif//#ifndef __SAVEMEM_API_H


