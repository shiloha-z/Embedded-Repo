#ifndef _DSP_TIME_H_
#define _DSP_TIME_H_


#ifdef __cplusplus
	extern "C" {
#endif

typedef enum
{
    Sec_10s = 10    ,
    Sec_5m  = 300   ,
    Sec_10m = 600   ,
    Sec_2H  = 7200  ,   //2�� ��ʱ��2Сʱ������
    Sec_24H = 86400
}TIMESTAMPINFO;

#define	ILLEGAL_VALUE_8F		0xffffffff

#define MAX_VALID_MONTH		12
#define MAX_VALID_DAY		31
#define MAX_VALID_HOUR		23
#define MAX_VALID_MINUTE	59

extern volatile DSPTIME PublicTime;

// extern void Init_Time(void);
extern void get_time_current_Pnt(DSPTIME *time);
extern void Sec2Time(DWORD sec);
extern void TimeFun(void); //secint.c�е���
extern DWORD GetTimeSec(void);
// extern BOOL TimeIs10Sec(void);
// extern BOOL TimeIs5Min(void);
// extern BOOL TimeIs10Min(void);
// extern BOOL TimeIs2Hour(void);
// extern BOOL TimeIs24Hour(void);
/*��ȡϵͳ��ǰʱ��*/
extern BOOL get_sys_time(TRealTimer *stime);
extern BYTE api_WriteMeterTime(TRealTimer * t);
//��������
extern void TimeRtcFun(void);
//���Զ�ʱ��������1���Ӷ�ʱ���ڴ�ѭ���е���
extern void api_RtcTask(void);
extern void api_PowerUpRtc(void);
extern DWORD api_GetRelativeMin( void );
extern DWORD api_CalcInTimeRelativeMin(TRealTimer * t);
extern DWORD api_CalcInTimeRelativeSec(TRealTimer * t);
extern BOOL api_ToAbsTime(DWORD Min, TRealTimer *p);
extern BOOL api_ReadMeterTime( TRealTimer* Timer );
extern DWORD api_CalcIntervalMinute(TRealTimer * tNew, TRealTimer * tOld);
extern long api_CompareTwoTime(TRealTimer * tNew, TRealTimer * tOld);
extern DWORD api_GetRelativeSec( void );
extern BOOL api_CheckClock(TRealTimer * p);

#ifdef __cplusplus
	}
#endif
#endif

