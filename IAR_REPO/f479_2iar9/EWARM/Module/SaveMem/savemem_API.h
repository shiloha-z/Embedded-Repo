//----------------------------------------------------------------------
//Copyright (C) 2016-2026 烟台东方威思顿电气股份有限公司电表软件研发部 
//创建人	胡春华
//创建日期	2016.8.11
//描述		存储器大小定义、安全空间和连续空间分配
//修改记录	
//----------------------------------------------------------------------
#ifndef __SAVEMEM_API_H
#define __SAVEMEM_API_H

//-----------------------------------------------
//				宏定义
//-----------------------------------------------
#define SECTOR_SIZE  (4096UL)
#define THIRD_MEM_SPACE                             (8192UL*1024UL)  //8MB,2048个扇区
#define RMN_MEN_SPACE                               (512UL*1024UL)   //512K,  500页
#define HALFRMN_MEM_SPACE                           (RMN_MEN_SPACE/2)  

/***************************************************************************************************
 * 程序缓冲区
 */
#define UPDATEFLAG_CONST            (0x5aa5a55a)    // 升级标志值
#define CODEBUFFERFLAG1_CONST       (0x1111)        // 使用第1份缓冲区
#define CODEBUFFERFLAG2_CONST       (0x2222)        // 使用第2份缓冲区
#define CODEBUFFER_SIZE             (256UL*1024UL)  // 缓冲区最大长度

// 缓冲区开始地址
#define FLASH_UPDATEDATA_START_ADDR             (0UL)						//程序存储区1 从 0 开始 每个 长度 256K
// 第1份缓冲区
#define FLASH_CODEBUFFER1_START_ADDR            FLASH_UPDATEDATA_START_ADDR  // S = 0
#define FLASH_CODEBUFFER1_SIZE                  CODEBUFFER_SIZE				 // L = 256K
#define FLASH_CODEBUFFER1_END_ADDR              (FLASH_CODEBUFFER1_START_ADDR + FLASH_CODEBUFFER1_SIZE) // E = 256K 
// 第2份缓冲区
#define FLASH_CODEBUFFER2_START_ADDR            FLASH_CODEBUFFER1_END_ADDR  //  S = 256K 程序存储区2 从 256K 开始 每个 长度 256K
#define FLASH_CODEBUFFER2_SIZE                  CODEBUFFER_SIZE				//  L = 256K 
#define FLASH_CODEBUFFER2_END_ADDR              (FLASH_CODEBUFFER2_START_ADDR + FLASH_CODEBUFFER2_SIZE)	// E = 512K
// 缓冲区结束地址
#define FLASH_UPDATEDATA_END_ADDR               (FLASH_CODEBUFFER2_END_ADDR + SECTOR_SIZE) // = (256K * 2 + 4K) = 516K
/***************************************************************************************************/

//冻结数据地址（分钟）
#define FLASH_FREEZE_END_ADDR_MIN               (THIRD_MEM_SPACE - SECTOR_SIZE)					// E = 8192K - 4K = 8188K
#define FLASH_FREEZE_SIZE_MIN                   (2*MAX_MIN_FREEZE_DATA_LEN/3)					// L = 800K
#define FLASH_FREEZE_BASE_MIN                   (FLASH_FREEZE_END_ADDR_MIN - FLASH_FREEZE_SIZE_MIN)	// S = 8188K - 800K = 7388K


//冻结数据地址（日、月）
#define FLASH_FREEZE_END_ADDR_DAY               FLASH_FREEZE_BASE_MIN							// E = 7388K
#define FLASH_FREEZE_SIZE_DAY                   (MAX_MIN_FREEZE_DATA_LEN/3)					// L = 400K
#define FLASH_FREEZE_BASE_DAY                   (FLASH_FREEZE_END_ADDR_DAY - FLASH_FREEZE_SIZE_DAY)	// S = 7388K - 400K = 6988K

#define FLASH_FREEZE_BASE                       FLASH_FREEZE_BASE_DAY

//事件记录数据地址
#define FLASH_EVENT_END_ADDR                      FLASH_FREEZE_BASE								// E = 8188K - 1200K = 6988K
#define FLASH_EVENT_SIZE                          (SUB_EVENT_INDEX_MAX_NUM * SECTOR_SIZE * EVENT_SECTOR_NUM) // L = 39 * 4K * 2 = 312K
#define FLASH_EVENT_BASE                          (FLASH_EVENT_END_ADDR-FLASH_EVENT_SIZE)		// S = 6822K - 312K = 6510K

//SM4记录数据地址
#define FLASH_SM4_END_ADDR                      THIRD_MEM_SPACE									// E = 8192K 
#define FLASH_SM4_SIZE                          SECTOR_SIZE										// L = 4K
#define FLASH_SM4_BASE                          (THIRD_MEM_SPACE - 2*SECTOR_SIZE)					// S = 8188K



// 程序升级信息结构体
typedef struct TUpdatePara_t
{
    // 两份缓冲区中的程序长度
    DWORD   CodeBufferLen[2];
    // 两份缓冲区校验码
    WORD    CodeBufferSum[2];
    // 缓冲区使用标志，[0]:正式缓冲区标志，[1]:临时缓冲区标志
    WORD    CodeBufferFlag[2];
    // 升级标志
    DWORD   UpdateFlag;
    // 保留
    DWORD   Reserved[2];
    // 校验
    DWORD   CRC32;

}TUpdatePara;

typedef struct TParaInfo_t
{
	BYTE Para[12];
	DWORD CRC32;              						// 校验
}TParaInfoSafeRom;

//定义安全空间成员变量
typedef struct TSafeMem_t
{
    // 程序升级信息结构体，此位置需要和BOOT中保持一致，勿动！！！
    TUpdatePara         UpdatePara;

    TEventSafeRom       EventSafeRom;

    TFreezeSafeRom      FreezeSafeRom;
	
	TReportSafeRom		ReportSafeRom;

	TProSafeRom  		ProSafeRom;

	TParaInfoSafeRom	ParaInfoSafeRom;

}TSafeMem;

//定义连续空间成员变量
typedef struct TConMem_t
{
    TEventConRom        EventConRom;
}TConMem;

//获取结构体成员的空间大小
#define GET_STRUCT_MEM_LEN( StructName, ItemName )	sizeof( ((StructName *)(0))->ItemName )
//获取取结构体成员的地址
//一般结构体的成员
#define GET_STRUCT_ADDR( StructName, ItemName )		((DWORD)&( ((StructName *)(0))->ItemName ))
//安全空间的结构体成员
#define SAFE_SPACE_START_ADDR                       ( 0 )
#define GET_SAFE_SPACE_ADDR( Addr_Name )            ( (DWORD)&(((TSafeMem *)SAFE_SPACE_START_ADDR)->Addr_Name) )
//连续空间的结构体成员
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
//功能描述:  写FLASH函数
//         
//参数:      offset 偏移地址，Length数据长度，pbuf是要写入FLASH的数据的指针
//         
//返回值:    
//         
//备注:  一个扇区大小为4K，只能从每一个扇区的第一个地址写才能写成功。
//        规定：第一个扇区的第一字节的偏移地址为0，其他依次类推。
//--------------------------------------------------
void  api_Write_FLASH(DWORD Offset,  WORD Length, BYTE * pBuf);
//--------------------------------------------------
//功能描述:  读FLASH函数
//         
//参数:      offset 偏移地址，Length数据长度，pbuf是读取数据的指针
//         
//返回值:    
//         
//备注: 
//--------------------------------------------------
void  api_Read_FLASH( DWORD Offset,  WORD Length, BYTE * pBuf );
#endif//#ifndef __SAVEMEM_API_H


