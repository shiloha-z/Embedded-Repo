
#ifndef DBASE_H_
#define DBASE_H_

/* ��ϵͳ�õ����޹��㷨,����������޹� ��Լ���й��� Q_Ratio �� */
#if(SAMPLE_NUM==128)
#define Q_Ratio 10.190008123548713f
#elif(SAMPLE_NUM==256)
#define Q_Ratio 20.373878167204523f
#else
#define Q_Ratio (SAMPLE_NUM/128*10.190008123548713f)
#endif

#define DEFAULT_U_FACTOR 0.0001f//2.82533248f//(282533248/100000000.0f)//10.0f//
#define DEFAULT_I_FACTOR 0.0001f//0.02990633f//(2990633/100000000.0f)//10.0f//
#define DEFAULT_A_FACTOR 0.0f
// #define DEFAULT_P_FACTOR (DEFAULT_U_FACTOR*DEFAULT_I_FACTOR/10000.0f)  //8λС��ת4λС��,����10���Ĵη�
#define DEFAULT_P_FACTOR (DEFAULT_U_FACTOR*DEFAULT_I_FACTOR)
#define DEFAULT_Q_FACTOR (DEFAULT_P_FACTOR*Q_Ratio)

/*4λС��*/
#define DEFAULT_U       (2200000)
#define DEFAULT_I       (10000)



/* ˲ʱ������ */
typedef enum{
    PQ_U_RMS=0,             // ��ѹ��Чֵ
    PQ_U_ANG,               // ��ѹ���
    PQ_U_DC,                // ��ѹֱ������
    PQ_U_SEQ_POS,           // �����ѹ
    PQ_U_SEQ_NEG,           // �����ѹ
    PQ_U_SEQ_ZERO,          // �����ѹ
    PQ_U_DEV,               // ��ѹƫ��
    PQ_U_UNBALANCE_NEG,     // �����ѹ��ƽ��
    PQ_U_UNBALANCE_ZERO,    // �����ѹ��ƽ��
    PQ_U_FREQ,              // Ƶ��
    PQ_U_FREQ_DEV,          // Ƶ��ƫ��
    PQ_U_FLUC,              // ����
    PQ_U_FLUCF,             // ����Ƶ��
    PQ_U_PST,               // ����
    PQ_U_PLT,               // ����
    PQ_I_RMS,               // ������Чֵ
    PQ_I_ANG,               // �������
    PQ_I_DC,                // ����ֱ������
    PQ_I_SEQ_POS,           // �������
    PQ_I_SEQ_NEG,           // �������
    PQ_I_SEQ_ZERO,          // �������
    PQ_I_UNBALANCE_NEG,     // ���������ƽ��
    PQ_I_UNBALANCE_ZERO,    // ���������ƽ��
    PQ_PF,                  // ��������
    PQ_P,                   // �й�����
    PQ_Q,                   // �޹�����
    PQ_S,                   // ���ڹ���
    PQ_FUND_P,              // �����й�����
    PQ_FUND_Q,              // �����޹�����
    PQ_HARM_POS_P_TOTAL,    // 2-50����г�������й�����
    PQ_HARM_REV_P_TOTAL,    // 2-50����г�������й�����
    PQ_HARM_POS_Q_TOTAL,    // 2-50����г�������޹�����
    PQ_HARM_REV_Q_TOTAL,    // 2-50����г�������޹�����
    PQ_HARM_P,              // 2-50��г���й�����
    PQ_HARM_Q,              // 2-50��г���޹�����
    PQ_IHARM_P,             // 2-50�μ�г���й�����
    PQ_IHARM_Q,             // 2-50�μ�г���޹�����
    PQ_EXTRERMS,            // �����ݽ��ж��õ��ܲ���Чֵ

	PQ_U_FLUC2,              // ����
    PQ_U_FLUCF2,             // ����Ƶ��

}PQ_MMXU_TYPE;

/* ͳ������ */
// ˳������ı䣬���� eSysStatusFlag ����һ��
typedef enum{
    STATS_HARM_VOL=0,
    STATS_HARM_CUR,
    STATS_IHARM_VOL,
    STATS_IHARM_CUR,
    STATS_PST,
    STATS_PLT,
    STATS_U_DEV,         // ��ѹƫ����ͳ��
    STATS_HZ_DEV,        // Ƶ��ƫ����ͳ��
    STATS_U_UNBALANCE,   // ��ѹ��ƽ����ͳ��
    STATS_I_UNBALANCE,   // ������ƽ����ͳ��
    STATS_U_FLUC,        // ��ѹ������ͳ��
    STATS_U_FLUC_F,      // ��ѹ������ͳ��
    STATS_MAX_NUM
}STATS_TYPE;


typedef struct{
    DWORD sec;
    DWORD msec;
}DSPTIME;

/* ʱ������� */
typedef enum{
    TIME_3S = 0,    /* 3������ʱ��� */
    TIME_10S,       /* 10������ʱ��� */
    TIME_10M,       /* 10������ʱ��� */
    TIME_2H         /* 2Сʱ����ʱ��� */
}TIIME_STAMP;

#pragma pack(1)
//����ʵʱʱ�ӽṹ 698Э���� date_time_s �������ֽṹ Ҫ������word��������Ϊ7���ֽ�
typedef struct TRealTimer_t
{
	//��
	WORD wYear;
	//��
	BYTE Mon;
	//��
	BYTE Day;
	//ʱ
	BYTE Hour;
	//��
	BYTE Min;
	//��
	BYTE Sec;

}TRealTimer;
#pragma pack()

/* ϵͳ���� */
typedef enum{
    PARA_3P3W_VOL = 0,  /* ��ѹ1�Ƿ�3��3 */
    /*--------------��������-------------*/
    PARA_RATE_VOL,   /* ���ѹ1 4λС��*/
    /*�����*/
    PARA_RATE_CUR   /* �����1 4λС��*/
}PARA_TYPE;


//��̬��ʼ �� ��̬������ ��Сʱ��.�����ﵽ��ʱ��,�򲻼�¼
typedef enum
{
    Evt_Min_0ms     =   0,              //0msʱ ��ζ�Ų����� ����                                        --(DSPĬ��)
    Evt_Min_5ms     =   1,              //5msʱ ���˵�����5ms���ڵ������ݽ��¼�
    Evt_Min_7_5ms   =   2,              //7.5msʱ ���˵�����7.5ms���ڵ������ݽ��¼�
    Evt_Min_10ms    =   3,              //10msʱ ���˵�����10ms���ڵ������ݽ��¼�
    Evt_Min_20ms    =   4,              //20msʱ ���˵�����20ms���ڵ������ݽ��¼�
    Evt_Min_40ms    =   5,              //40msʱ ���˵�����40ms���ڵ������ݽ��¼�
    Evt_Min_enum_MAX
}EVT_START_MIN_DUR;

//��̬���� �� ��һ����̬��ʼ�� ��Сʱ��.�����ﵽ��ʱ��,����Ϊ��һ����̬
typedef enum
{
    Evt_Wait_100ms       =   0,
    Evt_Wait_150ms       =   1,
    Evt_Wait_200ms       =   2,
    Evt_Wait_250ms       =   3,
    Evt_Wait_400ms       =   4,
    Evt_Wait_500ms       =   5,
    Evt_Wait_enum_MAX
}EVT_END_MIN_DUR;


typedef struct{
    DWORD   fluc[PH_NUM];                   //4λС��  ��ѹ����
    DWORD   fluc_f[PH_NUM];                 //0λС��  ��ѹ����Ƶ��
    DWORD   pst[PH_NUM];                    //4λС��  ������  10min
    DWORD   plt[PH_NUM];                    //4λС��  ������  2h
    DWORD   hz;                             //4λС��  Ƶ��     10s
    SDWORD  vol_dev[PH_NUM];                //2λС��  ��ѹƫ�� xx.xx%
    SDWORD  hz_dev;                         //4λС��  Ƶ��ƫ�� Hz
    DWORD   ExtreRms[PH_NUM][MaxRms+1];     //4λС��  �����ݽ��ж��õ��ܲ���Чֵ

	DWORD   fluc2[PH_NUM];                   //4λС��  ��ѹ����
    DWORD   fluc_f2[PH_NUM];                 //0λС��  ��ѹ����Ƶ��
}VOL_UNION;

typedef struct{
    // ����
    INT     P[PH_NUM+1];//  4λС��    �й�����w   ABC+��  3s
    INT     Q[PH_NUM+1];//  4λС��    �޹�����var ABC+��  3s
    INT     S[PH_NUM+1];//  4λС��    ���ڹ���VA  ABC+��  3s
    INT     PF[PH_NUM+1]; //  ��������   ABC
}CUR_UNION;

typedef union{
    VOL_UNION v;
    CUR_UNION c;
}VI_UNION;

typedef struct{
    DWORD   pos;            // ���� 4λС��
    DWORD   neg;            // ���� 4λС��
    DWORD   zero;           // ���� 4λС��
}VI_SEQ;

typedef struct{
    DWORD   neg;  // ����ƽ�� xx.xx%
    DWORD   zero; // ����ƽ�� xx.xx%
}VI_UNBALANCE;

#define     HAMONIC_ANYSIS_NUM  50      // г���������� 256��ÿ�ܲ���10�ܲ�2560���ϻ�
#define     STATS_HARM_NUM      24      // ͳ��г������ 2-25 ��
#define     STATS_IHARM_NUM     21      // ͳ�Ƽ�г������ 0.5-20.5 ��
//������Ϊ256*50, ������Ӧ���ܷ���256/4/50Hz=95��г��
typedef struct{
    DWORD           vi_mag[PH_NUM];                                 // 4λС�� ��ѹ����
    VI_UNION        vi_union;
    INT             vi_dc[PH_NUM];                                  // 4λС�� ֱ��
    DWORD           vi_harm_mag[PH_NUM][HAMONIC_ANYSIS_NUM];        // 4λС�� ����+г����ֵ
    DWORD           vi_intharm_mag[PH_NUM][HAMONIC_ANYSIS_NUM];     // 4λС�� ����+г����ֵ
    WORD            vi_harm_ang[PH_NUM][HAMONIC_ANYSIS_NUM];        // 4λС�� ����+г����λ����
    WORD            vi_intharm_ang[PH_NUM][HAMONIC_ANYSIS_NUM];     // 4λС�� ����+г����λ����
    DWORD           vi_THD[PH_NUM];                                 // 2λС��(xxxx=xx.xx%) ��г��������
    DWORD           vi_harm_content[PH_NUM][HAMONIC_ANYSIS_NUM];    // 2λС��(xxxx=xx.xx%) г������
    DWORD           vi_intharm_content[PH_NUM][HAMONIC_ANYSIS_NUM]; // 2λС��(xxxx=xx.xx%) ��г������
    VI_SEQ          vi_seq;                                         // �����
    VI_UNBALANCE    vi_unbalance;                                   // ��ƽ��
}DSP_RT_ONE_50;

/* ʱ��� */
typedef struct{
    DSPTIME tm_3s;      /* 3������ʱ��� */
    DSPTIME tm_10s; /* 10������ʱ��� */
    DSPTIME tm_10m; /* 10��������ʱ��� */
    DSPTIME tm_2h;      /* 2Сʱ����ʱ��� */
}TIME_STAMP;

// ��������
typedef struct
{
    FLOAT P[PH_NUM+1];     // �����й�����
    FLOAT Q[PH_NUM+1];     // �����޹�����
}FUNDPOWER;

// г���ܹ���
typedef struct
{
    FLOAT posP[PH_NUM+1];     // г�������й��ܹ���
    FLOAT revP[PH_NUM+1];     // г�������й��ܹ���
    FLOAT posQ[PH_NUM+1];     // г�������޹��ܹ���
    FLOAT revQ[PH_NUM+1];     // г�������޹��ܹ���
}HARMPOWER_TOTAL;

// ����г������
typedef struct
{
    FLOAT P[PH_NUM+1][HAMONIC_ANYSIS_NUM];     // 1-50��г���й�����
    FLOAT Q[PH_NUM+1][HAMONIC_ANYSIS_NUM];     // 1-50��г���޹�����
}HARMPOWER;

// г����
typedef struct
{
    FUNDPOWER       fundpower;              // ��������
    HARMPOWER_TOTAL harmpower_total;        // г���ܹ���
    HARMPOWER       harmpower;              // г������
    HARMPOWER       iharmpower;             // ��г������
    DWORD           harmactpower_content[PH_NUM][HAMONIC_ANYSIS_NUM];       // 2λС��(xxxx=xx.xx%) г�����ʺ���
    DWORD           iharmactpower_content[PH_NUM][HAMONIC_ANYSIS_NUM];      // 2λС��(xxxx=xx.xx%) ��г�����ʺ���

}HARM_DATA;

// ˲ʱ��
typedef struct
{
    TIME_STAMP      time;
    DSP_RT_ONE_50   vol;
    DSP_RT_ONE_50   cur;
    HARM_DATA       harm_data;
}PQ_DATA;

// ͳ�ƽṹ��
// typedef struct
// {
//     DWORD max;
//     DWORD min;
//     DWORD avg;
//     DWORD p95;
//     DWORD rms;
// }STATSDATA;

typedef union{
    DWORD   d;
    SDWORD  l;
}TYPE_UNION;

typedef struct
{
    TYPE_UNION  max_data;
    TRealTimer  max_time;
    TYPE_UNION  min_data;
    TRealTimer  min_time;
}STATSDATA_STRUCT;

// ͳ����
typedef struct
{
    DWORD               p95_harm_vol[PH_NUM][STATS_HARM_NUM];
    DWORD               p95_harm_cur[PH_NUM][STATS_HARM_NUM];
    DWORD               p95_iharm_vol[PH_NUM][STATS_IHARM_NUM];
    DWORD               p95_iharm_cur[PH_NUM][STATS_IHARM_NUM];
    STATSDATA_STRUCT    pst[PH_NUM];
    STATSDATA_STRUCT    plt[PH_NUM];
    STATSDATA_STRUCT    vol_dev[PH_NUM];
    STATSDATA_STRUCT    hz_dev;
    STATSDATA_STRUCT    vol_unbalance;
    STATSDATA_STRUCT    cur_unbalance;
    STATSDATA_STRUCT    fluc[PH_NUM];
    STATSDATA_STRUCT    fluc_f[PH_NUM];

}PQ_STATSDATA;

typedef enum
{
    PQ_Correct_U    = 0 ,
    PQ_Correct_I        ,
    // PQ_Correct_I_3s     ,
    PQ_Correct_P        ,
    PQ_Correct_Q        ,
    PQ_Correct_U_double ,
    PQ_Correct_I_double ,
    PQ_Correct_A
}CORRECT_TYPE;


typedef struct
{
    FLOAT U_factor[PH_NUM];// ��У��ϵ��
    FLOAT I_factor[PH_NUM];// У��ϵ��
    FLOAT A_factor[PH_NUM];// У��ϵ�� -�������-����
    FLOAT P_factor[PH_NUM];// У��ϵ�� �й�����
    FLOAT Q_factor[PH_NUM];// У��ϵ�� �޹�����
    
    DWORD dwCRCfact;
    
}BIG_ADJUST_PARA;

typedef enum
{
    Factor_Big_Vol      = 0 ,
    Factor_Big_Cur      = 1 ,
    Factor_Big_Ang      = 2 ,
    Factor_P            = 3 ,
    Factor_Q            = 4 ,
    Factor_Clr          = 5 ,
	
		EVol								= 6,
		ECur								= 7,
		Is3P3W							= 8
}ADJUST_TYPE;

typedef enum
{  
    U = 0,                  // ��ѹ
    U_SEQ_POS,              // �����ѹ
    U_SEQ_NEG,              // �����ѹ
    U_SEQ_ZERO,             // �����ѹ
    U_DEV,                  // ��ѹƫ��
    I,                      // ������2λС����
    I_HIGHPREC,             // �߾��ȵ�����4λС����
    I_SEQ_POS,              // �������
    I_SEQ_NEG,              // �������
    I_SEQ_ZERO,             // �������
    PF,                     // ��������
    U_THD,                  // ��ѹ����ʧ���(������)
    I_THD,                  // ��������ʧ���(������)
    HZ,                     // Ƶ��
    HZ_DEV,                 // Ƶ��ƫ��
    U_UNBALANCE_NEG,        // �����ѹ��ƽ��
    U_UNBALANCE_ZERO,       // �����ѹ��ƽ��
    I_UNBALANCE_NEG,        // ���������ƽ��
    I_UNBALANCE_ZERO,       // ���������ƽ��

    UChange,                // ��ѹ����      ��ѹ����4
	UChangeFre,             // ��ѹ����      ��ѹƵ��4
    UFlicker,               // ��ѹ����      ��ʱ4+
	UFlickerLong,           // ��ѹ����      ��ʱ4

    MODULE_STATUS,          // ģ��״̬��
    HarmonicU,              // г����ѹ          4�ֽ�  ����+����
    HarmonicI,              // г������          4�ֽ�    ����+����
    HarmonicP,              // г������          4�ֽ�  ����+����
    HarmonicPALL,           // г���ܹ���        8�ֽ�
    IHarmonicU,             // ��г����ѹ        4�ֽ�  ����+����
    IHarmonicI,             // ��г������        4�ֽ�  ����+����
    IHarmonicP,             // ��г������        4�ֽ�  ����+����
    HarmonicUDayCount,      // г����ѹ��ͳ��    20���ֽ� ����+����
    HarmonicIDayCount,      // г��������ͳ��    20���ֽ� ����+����
    IHarmonicUDayCount,     // ��г����ѹ��ͳ��  20���ֽ� ����+����
    IHarmonicIDayCount,     // ��г��������ͳ��  20���ֽ� ����+����
    PSTDayCount,            // ���ն�ʱ����ͳ��
    PLTDayCount,            // ���ճ�ʱ����ͳ��
    U_DEV_DayCount,         // ��ѹƫ����ͳ��
    HZ_DEV_DayCount,        // Ƶ��ƫ����ͳ��
    U_SEQ_DayCount,         // ��ѹ��ƽ����ͳ��
    I_SEQ_DayCount,         // ������ƽ����ͳ��
    UChange_DayCount,       // ��ѹ������ͳ��
    UChangeFre_DayCount,       // ��ѹ������ͳ��

	HarmUContent,//200E0200��A��г��
	HarmIContent,//200E0200��A��г������������
	IHarmUContent,//20490200��A���г����ѹ������
	IHarmIContent,//204A0200��A���г������������

	ExtremStat,	
	ProbabilityStat,

	HGStat_A,
	HGStat_B,
	HGStat_C,
	FATStat,
	FATStatPara,

	BodongPara,
	ExtremStat3,	
	ProbabilityStat3,


	MD_LIST,
	UChange3,                // ��ѹ����      ��ѹ����4
	NILM_P,

}eModuleType;//��������

typedef struct
{
	DWORD	dwDayJZOAD;					//	��������������
	BYTE	byDayJZPeriod;
	DWORD   dwDayJZTi;
}JZ_PARA;

typedef struct
{
	//�ռ�ֵͳ��
	//	һ�������������ԡ�=structure
	//{
	//		������������������  OAD��
	//		ͳ������  unsigned��
	//		ͳ�Ƽ��  TI
	//}


	DWORD	dwDayJZOAD;					//	��������������
	BYTE	byDayJZPeriod;
	DWORD   dwDayJZTi;
	
	//�ո���ֵͳ��
	//һ�������������ԡ�=structure
	//{
	//	������������������  OAD��
	//		ͳ������  unsigned��
	//		ͳ�Ƽ��  TI��
	//		����ˮƽ  unsigned����λ��%�����㣺0����
	//		ͳ������  enum{���ֵ��0������Сֵ��1�����м�ֵ��2�����Զ��壨255��}��
	//		�Զ������ visible-string��
	//		�Զ��幫ʽ octet-string,
	//		�Զ������ octet-string
	//}
	DWORD	dwDayTJOAD;					//	��������������
	BYTE	byDayTJPeriod;
	DWORD   dwDayTJTi;
	BYTE	byDayTJConLevel;
	BYTE	byDayTJType;
	
	//��ѹ����
	//����4��������ֵ����=long-unsigned����λ��%�����㣺-2
	
	DWORD	dwBdThreshold;
	
	
}PQ_JZ_RATE;

#pragma pack(push)
#pragma pack(1)
typedef struct
{
    BOOL Uis3P3W;// ��ѹ�Ƿ�3��3�� �Ͱ��ֽ�=0��ʾ3��4; �Ͱ��ֽ�=1
    DWORD vol_std;// ���ѹ -4λС��
    DWORD cur_std;// ����� -4λС��
    BYTE EvtCtrl;         //��̬����
    WORD evt_threshold[TRA_EVT_MAX][EVT_PARA_MAX];// �ݽ���ʼ���� �ݽ��������� ������ʼ���� ������������ �жϿ�ʼ���� �жϽ������ޣ��ٷֱ�
    BIG_ADJUST_PARA big_adjust_para;

}SYS_PARA_1808;
#pragma pack(pop)

/* ˲ʱ�������� */
extern PQ_DATA * GetPqDataAddr(void);
extern PQ_STATSDATA * GetPqStatsDataAddr(void);
extern void SetTimeStamp(BYTE type, DSPTIME *val);
extern void SetPqData(BYTE type, void *val);
extern DWORD GetFreq(void);

/*ϵͳ���������� */
extern SYS_PARA_1808 *GetSysParaAddr(void);
extern DWORD Get_Sys_Para(BYTE type);
extern void Set_Adjust_Para(BYTE type ,BYTE phase,void *factor);
extern void GetDig_Factor(void *buf);
extern int ICorrect(BYTE ph,BYTE type, float val);
extern void Correct_UI_double(BYTE ph, BYTE type, double *data);
extern int CorrectUIPQ(BYTE ph, BYTE type, void *data);
extern void CorrectAngle(INT *p,INT *q);
extern void SysParaInit(void);
extern void Save_Para(void);
extern void RefreshTemFactor(void);
extern void memclr_f(void *ptr, int len);
extern DWORD GetFastFreq(void);        //������task_freq.c
extern WORD api_GetModuleData( BYTE ModuleType, BYTE Phase, BYTE Times, BYTE *pBuf );

#endif /* DBASE_H_ */
