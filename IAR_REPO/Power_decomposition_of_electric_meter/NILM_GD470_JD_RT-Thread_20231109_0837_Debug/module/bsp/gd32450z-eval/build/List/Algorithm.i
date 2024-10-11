











































































 


 
typedef enum{
	PH_A = 0,
	PH_NUM
}PHARSE;	

typedef enum
{
    C2U2I_U0A_1U3I_U0A = 0,
    C2U2I_I0A_1U3I_I0A,
    CHMAX
}CHNUM_INFO;

 
typedef enum
{
    MinRms = 0,
    MaxRms = 1
}HALFCYCRMSINFO;

 
typedef enum{
     TRA_EVT_VOL_DIP = 0,
     TRA_EVT_VOL_SWL, 
     TRA_EVT_VOL_INT, 
     TRA_EVT_MAX
}TRA_EVT_TYPE;


typedef enum{
	 EVT_BEGIN = 0, 
	 EVT_END, 
	 EVT_PARA_MAX
}EVT_PARA;




















typedef void (*Fun)( unsigned char Step );

typedef enum
{
	ePowerOnMode = 0,	
	ePowerDownMode		
}ePOWER_MODE;

typedef enum
{
	ePHASE_ALL = 0,
	ePHASE_A,
	ePHASE_B,
	ePHASE_C
}ePHASE_TYPE;


typedef enum
{
	eCOMPONENT_SPI_SAMPLE = 0,	
	eCOMPONENT_SPI_FLASH,		
	eCOMPONENT_TOTAL_NUM
}eCOMPONENT_TYPE;





typedef enum
{
	eSPI_MODE_0 = 0,      
	eSPI_MODE_1 = 1, 
	eSPI_MODE_2 = 2,
	eSPI_MODE_3 = 3
}eSPI_MODE;


typedef enum
{
	
	eUSART_I = 0,

}eSERIAL_TYPE;



 

















 
 

 


 







 


























 



 
   

 

 

 

 

 

 

 


 

 
 
typedef enum IRQn
{
     
    NonMaskableInt_IRQn          = -14,     
    MemoryManagement_IRQn        = -12,     
    BusFault_IRQn                = -11,     
    UsageFault_IRQn              = -10,     
    SVCall_IRQn                  = -5,      
    DebugMonitor_IRQn            = -4,      
    PendSV_IRQn                  = -2,      
    SysTick_IRQn                 = -1,      
     
    WWDGT_IRQn                   = 0,       
    LVD_IRQn                     = 1,       
    TAMPER_STAMP_IRQn            = 2,       
    RTC_WKUP_IRQn                = 3,       
    FMC_IRQn                     = 4,       
    RCU_CTC_IRQn                 = 5,       
    EXTI0_IRQn                   = 6,       
    EXTI1_IRQn                   = 7,       
    EXTI2_IRQn                   = 8,       
    EXTI3_IRQn                   = 9,       
    EXTI4_IRQn                   = 10,      
    DMA0_Channel0_IRQn           = 11,      
    DMA0_Channel1_IRQn           = 12,      
    DMA0_Channel2_IRQn           = 13,      
    DMA0_Channel3_IRQn           = 14,      
    DMA0_Channel4_IRQn           = 15,      
    DMA0_Channel5_IRQn           = 16,      
    DMA0_Channel6_IRQn           = 17,      
    ADC_IRQn                     = 18,      
    CAN0_TX_IRQn                 = 19,      
    CAN0_RX0_IRQn                = 20,      
    CAN0_RX1_IRQn                = 21,      
    CAN0_EWMC_IRQn               = 22,      
    EXTI5_9_IRQn                 = 23,      
    TIMER0_BRK_TIMER8_IRQn       = 24,      
    TIMER0_UP_TIMER9_IRQn        = 25,      
    TIMER0_TRG_CMT_TIMER10_IRQn  = 26,      
    TIMER0_Channel_IRQn          = 27,      
    TIMER1_IRQn                  = 28,      
    TIMER2_IRQn                  = 29,      
    TIMER3_IRQn                  = 30,      
    I2C0_EV_IRQn                 = 31,      
    I2C0_ER_IRQn                 = 32,      
    I2C1_EV_IRQn                 = 33,      
    I2C1_ER_IRQn                 = 34,      
    SPI0_IRQn                    = 35,      
    SPI1_IRQn                    = 36,      
    USART0_IRQn                  = 37,      
    USART1_IRQn                  = 38,      
    USART2_IRQn                  = 39,      
    EXTI10_15_IRQn               = 40,      
    RTC_Alarm_IRQn               = 41,      
    USBFS_WKUP_IRQn              = 42,      
    TIMER7_BRK_TIMER11_IRQn      = 43,      
    TIMER7_UP_TIMER12_IRQn       = 44,      
    TIMER7_TRG_CMT_TIMER13_IRQn  = 45,      
    TIMER7_Channel_IRQn          = 46,      
    DMA0_Channel7_IRQn           = 47,      
    
    EXMC_IRQn                    = 48,      
    SDIO_IRQn                    = 49,      
    TIMER4_IRQn                  = 50,      
    SPI2_IRQn                    = 51,      
    UART3_IRQn                   = 52,      
    UART4_IRQn                   = 53,      
    TIMER5_DAC_IRQn              = 54,      
    TIMER6_IRQn                  = 55,      
    DMA1_Channel0_IRQn           = 56,      
    DMA1_Channel1_IRQn           = 57,      
    DMA1_Channel2_IRQn           = 58,      
    DMA1_Channel3_IRQn           = 59,      
    DMA1_Channel4_IRQn           = 60,      
    ENET_IRQn                    = 61,      
    ENET_WKUP_IRQn               = 62,      
    CAN1_TX_IRQn                 = 63,      
    CAN1_RX0_IRQn                = 64,      
    CAN1_RX1_IRQn                = 65,      
    CAN1_EWMC_IRQn               = 66,      
    USBFS_IRQn                   = 67,      
    DMA1_Channel5_IRQn           = 68,      
    DMA1_Channel6_IRQn           = 69,      
    DMA1_Channel7_IRQn           = 70,      
    USART5_IRQn                  = 71,      
    I2C2_EV_IRQn                 = 72,      
    I2C2_ER_IRQn                 = 73,      
    USBHS_EP1_Out_IRQn           = 74,      
    USBHS_EP1_In_IRQn            = 75,      
    USBHS_WKUP_IRQn              = 76,      
    USBHS_IRQn                   = 77,      
    DCI_IRQn                     = 78,      
    TRNG_IRQn                    = 80,      
    FPU_IRQn                     = 81,      
    UART6_IRQn                   = 82,      
    UART7_IRQn                   = 83,      
    SPI3_IRQn                    = 84,      
    SPI4_IRQn                    = 85,      
    SPI5_IRQn                    = 86,      
    TLI_IRQn                     = 88,      
    TLI_ER_IRQn                  = 89,      
    IPA_IRQn                     = 90,      



} IRQn_Type;

 
 







 

























 


 #pragma system_include   














 




 


 

 






 


 
 

  #pragma system_include

 
 

 

  #pragma system_include






 















 












 






 
 


  #pragma system_include

 
 

 

  #pragma system_include






 















 





                 



  

                 













 

   



                 



























 


  #pragma system_include

 
 
 


  #pragma system_include

 

 

 

 

   

 

   #pragma system_include






 




 

 


 


 

 

 

 

 

 

 

 

 

 














 












 




















 










 




















































































































 


 










 





















 















 













 








 












 











 










 









 











 









 









 









 









 














 














 
















 












 








 











 










 









 









 









 









 









 









 









 









 







 




 









 




 





 
















































 













 






 


   

  







 





 





 




 



 





 




 



 












 
   






 
  #pragma language = save 
  #pragma language = extended
  #pragma language = restore






 





 




 





 








                 




















 


                 

 

 
 

 

 

 

 



                 






 
 


  #pragma system_include

 
 

 

  #pragma system_include






 















 




 
 





 

                                 













                 

                 

                 

                 
                 



                 
                                 


  #pragma language=save
  #pragma language=extended
  typedef long long _Longlong;
  typedef unsigned long long _ULonglong;
  #pragma language=restore

  typedef unsigned short int _Wchart;
  typedef unsigned short int _Wintt;



                 

typedef signed int  _Ptrdifft;
typedef unsigned int     _Sizet;

 

                 
  typedef _VA_LIST __Va_list;


__intrinsic __nounwind void __iar_Atexit(void (*)(void));


  typedef struct
  {        
    unsigned int _Wchar;
    unsigned int _State;
  } _Mbstatet;



  typedef struct __FILE _Filet;


typedef struct
{        
  _Longlong _Off;     
  _Mbstatet _Wstate;
} _Fpost;




                 














 


  #pragma system_include





 






















































































 

 


  
 

   


  





  #pragma language=save 
  #pragma language=extended
  __intrinsic __nounwind void __iar_dlib_perthread_initialize(void  *);
  __intrinsic __nounwind void  *__iar_dlib_perthread_allocate(void);
  __intrinsic __nounwind void __iar_dlib_perthread_destroy(void);
  __intrinsic __nounwind void __iar_dlib_perthread_deallocate(void  *);



  #pragma segment = "__DLIB_PERTHREAD" 
  #pragma segment = "__DLIB_PERTHREAD_init" 









   
  void  *__iar_dlib_perthread_access(void  *);
  #pragma language=restore








     
  



   
    __intrinsic __nounwind void __iar_Locale_lconv_init(void);

  


  
  typedef void *__iar_Rmtx;
  
  
  __intrinsic __nounwind void __iar_system_Mtxinit(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxdst(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxlock(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxunlock(__iar_Rmtx *m);

  __intrinsic __nounwind void __iar_file_Mtxinit(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxdst(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxlock(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxunlock(__iar_Rmtx *m);

  
 
  __intrinsic __nounwind void __iar_clearlocks(void);



  



  


  typedef unsigned _Once_t;

  








                 


                 
  
  
    
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Locale(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Malloc(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Stream(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Debug(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_StaticGuard(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock(unsigned int);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Locale(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Malloc(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Stream(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Debug(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_StaticGuard(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock(unsigned int);

  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Initdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Dstdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Lockdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlockdynamicfilelock(__iar_Rmtx *);
  
  

                 


                 







 


 
  typedef signed char   int8_t;
  typedef unsigned char uint8_t;

  typedef signed short int   int16_t;
  typedef unsigned short int uint16_t;

  typedef signed int   int32_t;
  typedef unsigned int uint32_t;

  #pragma language=save
  #pragma language=extended
  typedef signed long long int   int64_t;
  typedef unsigned long long int uint64_t;
  #pragma language=restore


 
typedef signed char   int_least8_t;
typedef unsigned char uint_least8_t;

typedef signed short int   int_least16_t;
typedef unsigned short int uint_least16_t;

typedef signed int   int_least32_t;
typedef unsigned int uint_least32_t;

 
  #pragma language=save
  #pragma language=extended
  typedef signed long long int int_least64_t;
  #pragma language=restore
  #pragma language=save
  #pragma language=extended
  typedef unsigned long long int uint_least64_t;
  #pragma language=restore



 
typedef signed int   int_fast8_t;
typedef unsigned int uint_fast8_t;

typedef signed int   int_fast16_t;
typedef unsigned int uint_fast16_t;

typedef signed int   int_fast32_t;
typedef unsigned int uint_fast32_t;

  #pragma language=save
  #pragma language=extended
  typedef signed long long int int_fast64_t;
  #pragma language=restore
  #pragma language=save
  #pragma language=extended
  typedef unsigned long long int uint_fast64_t;
  #pragma language=restore

 
#pragma language=save
#pragma language=extended
typedef signed long long int   intmax_t;
typedef unsigned long long int uintmax_t;
#pragma language=restore


 
typedef signed long int   intptr_t;
typedef unsigned long int uintptr_t;

 
typedef int __data_intptr_t; typedef unsigned int __data_uintptr_t;

 

























 














 
 







 

























 




 



 

 










 



#pragma system_include









 


 
 

 

  #pragma system_include






 















 





  #pragma system_include



 



#pragma language=save
#pragma language=extended

__intrinsic __nounwind void    __no_operation(void);

__intrinsic __nounwind void    __disable_interrupt(void);
__intrinsic __nounwind void    __enable_interrupt(void);

typedef unsigned long __istate_t;

__intrinsic __nounwind __istate_t __get_interrupt_state(void);
__intrinsic __nounwind void __set_interrupt_state(__istate_t);


 
__intrinsic __nounwind unsigned long __get_PSR( void );
__intrinsic __nounwind unsigned long __get_IPSR( void );
__intrinsic __nounwind unsigned long __get_MSP( void );
__intrinsic __nounwind void          __set_MSP( unsigned long );
__intrinsic __nounwind unsigned long __get_PSP( void );
__intrinsic __nounwind void          __set_PSP( unsigned long );
__intrinsic __nounwind unsigned long __get_PRIMASK( void );
__intrinsic __nounwind void          __set_PRIMASK( unsigned long );
__intrinsic __nounwind unsigned long __get_CONTROL( void );
__intrinsic __nounwind void          __set_CONTROL( unsigned long );


 
__intrinsic __nounwind unsigned long __get_FAULTMASK( void );
__intrinsic __nounwind void          __set_FAULTMASK(unsigned long);
__intrinsic __nounwind unsigned long __get_BASEPRI( void );
__intrinsic __nounwind void          __set_BASEPRI( unsigned long );


__intrinsic __nounwind void __disable_fiq(void);
__intrinsic __nounwind void __enable_fiq(void);


 

__intrinsic __nounwind unsigned long __SWP( unsigned long, volatile unsigned long * );
__intrinsic __nounwind unsigned char __SWPB( unsigned char, volatile unsigned char * );

typedef unsigned long __ul;


 
__intrinsic __nounwind void          __MCR( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1, __ul src,
                                 unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );
__intrinsic __nounwind unsigned long __MRC( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1,
                                 unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );
__intrinsic __nounwind void          __MCR2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1, __ul src,
                                  unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );
__intrinsic __nounwind unsigned long __MRC2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1,
                                  unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );

 
__intrinsic __nounwind void __LDC( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src);
__intrinsic __nounwind void __LDCL( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src);
__intrinsic __nounwind void __LDC2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src);
__intrinsic __nounwind void __LDC2L( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src);

 
__intrinsic __nounwind void __STC( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst);
__intrinsic __nounwind void __STCL( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst);
__intrinsic __nounwind void __STC2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst);
__intrinsic __nounwind void __STC2L( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst);

 
__intrinsic __nounwind void __LDC_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                              unsigned __constrange(0,255) option);

__intrinsic __nounwind void __LDCL_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __LDC2_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __LDC2L_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                                unsigned __constrange(0,255) option);

 
__intrinsic __nounwind void __STC_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                              unsigned __constrange(0,255) option);

__intrinsic __nounwind void __STCL_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __STC2_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __STC2L_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                                unsigned __constrange(0,255) option);

 
__intrinsic __nounwind unsigned long __get_APSR( void );
__intrinsic __nounwind void          __set_APSR( unsigned long );

 
__intrinsic __nounwind unsigned long __get_FPSCR( void );
__intrinsic __nounwind void __set_FPSCR( unsigned long );

 
__intrinsic __nounwind unsigned char __CLZ( unsigned long );

 
__intrinsic __nounwind signed long __QADD( signed long, signed long );
__intrinsic __nounwind signed long __QDADD( signed long, signed long );
__intrinsic __nounwind signed long __QSUB( signed long, signed long );
__intrinsic __nounwind signed long __QDSUB( signed long, signed long );

__intrinsic __nounwind signed long __QDOUBLE( signed long );

__intrinsic __nounwind int         __QFlag( void );
__intrinsic __nounwind void __reset_Q_flag( void );

__intrinsic __nounwind int         __QCFlag( void );
__intrinsic __nounwind void __reset_QC_flag( void );

__intrinsic __nounwind signed long __SMUL( signed short, signed short );

 
__intrinsic __nounwind unsigned long __REV( unsigned long );
__intrinsic __nounwind signed long __REVSH( short );

__intrinsic __nounwind unsigned long __REV16( unsigned long );
__intrinsic __nounwind unsigned long __RBIT( unsigned long );

__intrinsic __nounwind unsigned char  __LDREXB( volatile unsigned char const * );
__intrinsic __nounwind unsigned short __LDREXH( volatile unsigned short const * );
__intrinsic __nounwind unsigned long  __LDREX ( volatile unsigned long const * );
__intrinsic __nounwind unsigned long long __LDREXD( volatile unsigned long long const * );

__intrinsic __nounwind unsigned long  __STREXB( unsigned char, volatile unsigned char * );
__intrinsic __nounwind unsigned long  __STREXH( unsigned short, volatile unsigned short * );
__intrinsic __nounwind unsigned long  __STREX ( unsigned long, volatile unsigned long * );
__intrinsic __nounwind unsigned long  __STREXD( unsigned long long, volatile unsigned long long * );

__intrinsic __nounwind void __CLREX( void );

__intrinsic __nounwind void __SEV( void );
__intrinsic __nounwind void __WFE( void );
__intrinsic __nounwind void __WFI( void );
__intrinsic __nounwind void __YIELD( void );

__intrinsic __nounwind void __PLI( volatile void const * );
__intrinsic __nounwind void __PLD( volatile void const * );
__intrinsic __nounwind void __PLDW( volatile void const * );

__intrinsic __nounwind   signed long __SSAT     (unsigned long val,
                                      unsigned int __constrange( 1, 32 ) sat );
__intrinsic __nounwind unsigned long __USAT     (unsigned long val,
                                      unsigned int __constrange( 0, 31 ) sat );



 
__intrinsic __nounwind unsigned long __SEL( unsigned long op1, unsigned long op2 );

__intrinsic __nounwind unsigned long __SADD8    (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __SADD16   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __SSUB8    (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __SSUB16   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __SADDSUBX (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __SSUBADDX (unsigned long pair1, unsigned long pair2);

__intrinsic __nounwind unsigned long __SHADD8   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __SHADD16  (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __SHSUB8   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __SHSUB16  (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __SHADDSUBX(unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __SHSUBADDX(unsigned long pair1, unsigned long pair2);

__intrinsic __nounwind unsigned long __QADD8    (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __QADD16   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __QSUB8    (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __QSUB16   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __QADDSUBX (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __QSUBADDX (unsigned long pair1, unsigned long pair2);

__intrinsic __nounwind unsigned long __UADD8    (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UADD16   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __USUB8    (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __USUB16   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UADDSUBX (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __USUBADDX (unsigned long pair1, unsigned long pair2);

__intrinsic __nounwind unsigned long __UHADD8   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UHADD16  (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UHSUB8   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UHSUB16  (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UHADDSUBX(unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UHSUBADDX(unsigned long pair1, unsigned long pair2);

__intrinsic __nounwind unsigned long __UQADD8   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UQADD16  (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UQSUB8   (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UQSUB16  (unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UQADDSUBX(unsigned long pair1, unsigned long pair2);
__intrinsic __nounwind unsigned long __UQSUBADDX(unsigned long pair1, unsigned long pair2);

__intrinsic __nounwind unsigned long __USAD8(unsigned long x, unsigned long y );
__intrinsic __nounwind unsigned long __USADA8(unsigned long x, unsigned long y,
                                   unsigned long acc );

__intrinsic __nounwind unsigned long __SSAT16   (unsigned long pair,
                                      unsigned int __constrange( 1, 16 ) sat );
__intrinsic __nounwind unsigned long __USAT16   (unsigned long pair,
                                      unsigned int __constrange( 0, 15 ) sat );

__intrinsic __nounwind long __SMUAD (unsigned long x, unsigned long y);
__intrinsic __nounwind long __SMUSD (unsigned long x, unsigned long y);
__intrinsic __nounwind long __SMUADX(unsigned long x, unsigned long y);
__intrinsic __nounwind long __SMUSDX(unsigned long x, unsigned long y);

__intrinsic __nounwind long __SMLAD (unsigned long x, unsigned long y, long sum);
__intrinsic __nounwind long __SMLSD (unsigned long x, unsigned long y, long sum);
__intrinsic __nounwind long __SMLADX(unsigned long x, unsigned long y, long sum);
__intrinsic __nounwind long __SMLSDX(unsigned long x, unsigned long y, long sum);

__intrinsic __nounwind long long __SMLALD (unsigned long pair1,
                                 unsigned long pair2,
                                 long long acc);

__intrinsic __nounwind long long __SMLALDX(unsigned long pair1,
                                 unsigned long pair2,
                                 long long acc);

__intrinsic __nounwind long long __SMLSLD (unsigned long pair1,
                                 unsigned long pair2,
                                 long long acc);

__intrinsic __nounwind long long __SMLSLDX(unsigned long pair1,
                                 unsigned long pair2,
                                 long long acc);

__intrinsic __nounwind unsigned long __PKHBT(unsigned long x,
                                  unsigned long y,
                                  unsigned __constrange(0,31) count);
__intrinsic __nounwind unsigned long __PKHTB(unsigned long x,
                                  unsigned long y,
                                  unsigned __constrange(0,32) count);

__intrinsic __nounwind long __SMLABB(unsigned long x, unsigned long y, long acc);
__intrinsic __nounwind long __SMLABT(unsigned long x, unsigned long y, long acc);
__intrinsic __nounwind long __SMLATB(unsigned long x, unsigned long y, long acc);
__intrinsic __nounwind long __SMLATT(unsigned long x, unsigned long y, long acc);

__intrinsic __nounwind long __SMLAWB(long x, unsigned long y, long acc);
__intrinsic __nounwind long __SMLAWT(long x, unsigned long y, long acc);

__intrinsic __nounwind long __SMMLA (long x, long y, long acc);
__intrinsic __nounwind long __SMMLAR(long x, long y, long acc);
__intrinsic __nounwind long __SMMLS (long x, long y, long acc);
__intrinsic __nounwind long __SMMLSR(long x, long y, long acc);

__intrinsic __nounwind long __SMMUL (long x, long y);
__intrinsic __nounwind long __SMMULR(long x, long y);

__intrinsic __nounwind long __SMULBB(unsigned long x, unsigned long y);
__intrinsic __nounwind long __SMULBT(unsigned long x, unsigned long y);
__intrinsic __nounwind long __SMULTB(unsigned long x, unsigned long y);
__intrinsic __nounwind long __SMULTT(unsigned long x, unsigned long y);

__intrinsic __nounwind long __SMULWB(long x, unsigned long y);
__intrinsic __nounwind long __SMULWT(long x, unsigned long y);

__intrinsic __nounwind long __SXTAB (long x, unsigned long y);
__intrinsic __nounwind long __SXTAH (long x, unsigned long y);
__intrinsic __nounwind unsigned long __UXTAB (unsigned long x, unsigned long y);
__intrinsic __nounwind unsigned long __UXTAH (unsigned long x, unsigned long y);

__intrinsic __nounwind unsigned long long __UMAAL(unsigned long x,
                                       unsigned long y,
                                       unsigned long a,
                                       unsigned long b);

__intrinsic __nounwind long long __SMLALBB(unsigned long x,
                                 unsigned long y,
                                 long long acc);

__intrinsic __nounwind long long __SMLALBT(unsigned long x,
                                 unsigned long y,
                                 long long acc);

__intrinsic __nounwind long long __SMLALTB(unsigned long x,
                                 unsigned long y,
                                 long long acc);

__intrinsic __nounwind long long __SMLALTT(unsigned long x,
                                 unsigned long y,
                                 long long acc);

__intrinsic __nounwind unsigned long __UXTB16(unsigned long x);
__intrinsic __nounwind unsigned long __UXTAB16(unsigned long acc, unsigned long x);

__intrinsic __nounwind unsigned long __SXTB16(unsigned long x);
__intrinsic __nounwind unsigned long __SXTAB16(unsigned long acc, unsigned long x);

__intrinsic __nounwind unsigned long __SASX(unsigned long, unsigned long) ;
__intrinsic __nounwind unsigned long __SSAX(unsigned long, unsigned long) ;
__intrinsic __nounwind unsigned long __SHASX(unsigned long, unsigned long) ;
__intrinsic __nounwind unsigned long __SHSAX(unsigned long, unsigned long) ;
__intrinsic __nounwind unsigned long __QASX(unsigned long, unsigned long) ;
__intrinsic __nounwind unsigned long __QSAX(unsigned long, unsigned long) ;

__intrinsic __nounwind unsigned long __UASX(unsigned long, unsigned long) ;
__intrinsic __nounwind unsigned long __USAX(unsigned long, unsigned long) ;
__intrinsic __nounwind unsigned long __UHASX(unsigned long, unsigned long) ;
__intrinsic __nounwind unsigned long __UHSAX(unsigned long, unsigned long) ;
__intrinsic __nounwind unsigned long __UQASX(unsigned long, unsigned long) ;
__intrinsic __nounwind unsigned long __UQSAX(unsigned long, unsigned long) ;

 
__intrinsic __nounwind void __DMB(void);
__intrinsic __nounwind void __DSB(void);
__intrinsic __nounwind void __ISB(void);


#pragma language=restore




#pragma diag_suppress=Pe940
#pragma diag_suppress=Pe177






static uint32_t __get_xPSR(void)
{
  return __get_PSR();    
}












static inline uint32_t __RRX(uint32_t value)
{
  uint32_t result;
  __asm("RRX %0, %1" : "=r"(result) : "r" (value) );
  return(result);
}

static inline uint8_t __LDRBT(volatile uint8_t *addr)
{
  uint32_t result;
  __asm("LDRBT %0, [%1]" : "=r" (result) : "r" (addr) : "memory" );
  return ((uint8_t) result);
}

static inline uint16_t __LDRHT(volatile uint16_t *addr)
{
  uint32_t result;
  __asm("LDRHT %0, [%1]" : "=r" (result) : "r" (addr) : "memory" );
  return ((uint16_t) result);
}

static inline uint32_t __LDRT(volatile uint32_t *addr)
{
  uint32_t result;
  __asm("LDRT %0, [%1]" : "=r" (result) : "r" (addr) : "memory" );
  return(result);
}

static inline void __STRBT(uint8_t value, volatile uint8_t *addr)
{
  __asm("STRBT %1, [%0]" : : "r" (addr), "r" ((uint32_t)value) : "memory" );
}

static inline void __STRHT(uint16_t value, volatile uint16_t *addr)
{
  __asm("STRHT %1, [%0]" : : "r" (addr), "r" ((uint32_t)value) : "memory" );
}

static inline void __STRT(uint32_t value, volatile uint32_t *addr)
{
  __asm("STRT %1, [%0]" : : "r" (addr), "r" (value) : "memory" );
}



static inline uint32_t __ROR(uint32_t op1, uint32_t op2)
{
  return (op1 >> op2) | (op1 << ((sizeof(op1)*8)-op2));
}

#pragma diag_default=Pe940
#pragma diag_default=Pe177




   

 







 

























 




 



 

 



 

 







 

























 


 #pragma system_include   






 


 



 

 



 







 

 






 

 













 


 





 


 
typedef union
{
  struct
  {
    uint32_t _reserved0:16;               
    uint32_t GE:4;                        
    uint32_t _reserved1:7;                
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:7;                
    uint32_t GE:4;                        
    uint32_t _reserved1:4;                
    uint32_t T:1;                         
    uint32_t IT:2;                        
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t FPCA:1;                      
    uint32_t _reserved0:29;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 






 


 
typedef struct
{
  volatile uint32_t ISER[8];                  
       uint32_t RESERVED0[24];
  volatile uint32_t ICER[8];                  
       uint32_t RSERVED1[24];
  volatile uint32_t ISPR[8];                  
       uint32_t RESERVED2[24];
  volatile uint32_t ICPR[8];                  
       uint32_t RESERVED3[24];
  volatile uint32_t IABR[8];                  
       uint32_t RESERVED4[56];
  volatile uint8_t  IP[240];                  
       uint32_t RESERVED5[644];
  volatile  uint32_t STIR;                     
}  NVIC_Type;

 

 






 


 
typedef struct
{
  volatile const  uint32_t CPUID;                    
  volatile uint32_t ICSR;                     
  volatile uint32_t VTOR;                     
  volatile uint32_t AIRCR;                    
  volatile uint32_t SCR;                      
  volatile uint32_t CCR;                      
  volatile uint8_t  SHP[12];                  
  volatile uint32_t SHCSR;                    
  volatile uint32_t CFSR;                     
  volatile uint32_t HFSR;                     
  volatile uint32_t DFSR;                     
  volatile uint32_t MMFAR;                    
  volatile uint32_t BFAR;                     
  volatile uint32_t AFSR;                     
  volatile const  uint32_t PFR[2];                   
  volatile const  uint32_t DFR;                      
  volatile const  uint32_t ADR;                      
  volatile const  uint32_t MMFR[4];                  
  volatile const  uint32_t ISAR[5];                  
       uint32_t RESERVED0[5];
  volatile uint32_t CPACR;                    
} SCB_Type;

 





 










 

 







 



 






 














 



 



 





 






 


 
typedef struct
{
       uint32_t RESERVED0[1];
  volatile const  uint32_t ICTR;                     
  volatile uint32_t ACTLR;                    
} SCnSCB_Type;

 

 





 






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t LOAD;                     
  volatile uint32_t VAL;                      
  volatile const  uint32_t CALIB;                    
} SysTick_Type;

 




 

 

 



 






 


 
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                   
    volatile  uint16_t   u16;                  
    volatile  uint32_t   u32;                  
  }  PORT [32];                           
       uint32_t RESERVED0[864];
  volatile uint32_t TER;                      
       uint32_t RESERVED1[15];
  volatile uint32_t TPR;                      
       uint32_t RESERVED2[15];
  volatile uint32_t TCR;                      
       uint32_t RESERVED3[29];
  volatile  uint32_t IWR;                      
  volatile const  uint32_t IRR;                      
  volatile uint32_t IMCR;                     
       uint32_t RESERVED4[43];
  volatile  uint32_t LAR;                      
  volatile const  uint32_t LSR;                      
       uint32_t RESERVED5[6];
  volatile const  uint32_t PID4;                     
  volatile const  uint32_t PID5;                     
  volatile const  uint32_t PID6;                     
  volatile const  uint32_t PID7;                     
  volatile const  uint32_t PID0;                     
  volatile const  uint32_t PID1;                     
  volatile const  uint32_t PID2;                     
  volatile const  uint32_t PID3;                     
  volatile const  uint32_t CID0;                     
  volatile const  uint32_t CID1;                     
  volatile const  uint32_t CID2;                     
  volatile const  uint32_t CID3;                     
} ITM_Type;

 

 









 

 

 

 



   






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t CYCCNT;                   
  volatile uint32_t CPICNT;                   
  volatile uint32_t EXCCNT;                   
  volatile uint32_t SLEEPCNT;                 
  volatile uint32_t LSUCNT;                   
  volatile uint32_t FOLDCNT;                  
  volatile const  uint32_t PCSR;                     
  volatile uint32_t COMP0;                    
  volatile uint32_t MASK0;                    
  volatile uint32_t FUNCTION0;                
       uint32_t RESERVED0[1];
  volatile uint32_t COMP1;                    
  volatile uint32_t MASK1;                    
  volatile uint32_t FUNCTION1;                
       uint32_t RESERVED1[1];
  volatile uint32_t COMP2;                    
  volatile uint32_t MASK2;                    
  volatile uint32_t FUNCTION2;                
       uint32_t RESERVED2[1];
  volatile uint32_t COMP3;                    
  volatile uint32_t MASK3;                    
  volatile uint32_t FUNCTION3;                
} DWT_Type;

 


















 

 

 

 

 

 

 









   






 


 
typedef struct
{
  volatile uint32_t SSPSR;                    
  volatile uint32_t CSPSR;                    
       uint32_t RESERVED0[2];
  volatile uint32_t ACPR;                     
       uint32_t RESERVED1[55];
  volatile uint32_t SPPR;                     
       uint32_t RESERVED2[131];
  volatile const  uint32_t FFSR;                     
  volatile uint32_t FFCR;                     
  volatile const  uint32_t FSCR;                     
       uint32_t RESERVED3[759];
  volatile const  uint32_t TRIGGER;                  
  volatile const  uint32_t FIFO0;                    
  volatile const  uint32_t ITATBCTR2;                
       uint32_t RESERVED4[1];
  volatile const  uint32_t ITATBCTR0;                
  volatile const  uint32_t FIFO1;                    
  volatile uint32_t ITCTRL;                   
       uint32_t RESERVED5[39];
  volatile uint32_t CLAIMSET;                 
  volatile uint32_t CLAIMCLR;                 
       uint32_t RESERVED7[8];
  volatile const  uint32_t DEVID;                    
  volatile const  uint32_t DEVTYPE;                  
} TPI_Type;

 

 

 




 


 

 







 

 







 

 

 






 


   






 


 
typedef struct
{
  volatile const  uint32_t TYPE;                     
  volatile uint32_t CTRL;                     
  volatile uint32_t RNR;                      
  volatile uint32_t RBAR;                     
  volatile uint32_t RASR;                     
  volatile uint32_t RBAR_A1;                  
  volatile uint32_t RASR_A1;                  
  volatile uint32_t RBAR_A2;                  
  volatile uint32_t RASR_A2;                  
  volatile uint32_t RBAR_A3;                  
  volatile uint32_t RASR_A3;                  
} MPU_Type;

 



 



 

 



 










 






 


 
typedef struct
{
       uint32_t RESERVED0[1];
  volatile uint32_t FPCCR;                    
  volatile uint32_t FPCAR;                    
  volatile uint32_t FPDSCR;                   
  volatile const  uint32_t MVFR0;                    
  volatile const  uint32_t MVFR1;                    
} FPU_Type;

 









 

 




 








 




 






 


 
typedef struct
{
  volatile uint32_t DHCSR;                    
  volatile  uint32_t DCRSR;                    
  volatile uint32_t DCRDR;                    
  volatile uint32_t DEMCR;                    
} CoreDebug_Type;

 












 


 













 






 

 




 










 

 



 




 










 
static inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07);                

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((0xFFFFUL << 16) | (7UL << 8));              
  reg_value  =  (reg_value                                 |
                ((uint32_t)0x5FA << 16) |
                (PriorityGroupTmp << 8));                                      
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}







 
static inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) >> 8);    
}







 
static inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
 
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(uint32_t)((int32_t)IRQn) >> 5] = (uint32_t)(1 << ((uint32_t)((int32_t)IRQn) & (uint32_t)0x1F));  
}







 
static inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}











 
static inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}







 
static inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}







 
static inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}










 
static inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}










 
static inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - 4)) & 0xff); }  
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)] = ((priority << (8 - 4)) & 0xff);    }         
}












 
static inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)(((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] >> (8 - 4)));  }  
  else {
    return((uint32_t)(((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)]           >> (8 - 4)));  }  
}













 
static inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;

  return (
           ((PreemptPriority & ((1 << (PreemptPriorityBits)) - 1)) << SubPriorityBits) |
           ((SubPriority     & ((1 << (SubPriorityBits    )) - 1)))
         );
}













 
static inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;

  *pPreemptPriority = (Priority >> SubPriorityBits) & ((1 << (PreemptPriorityBits)) - 1);
  *pSubPriority     = (Priority                   ) & ((1 << (SubPriorityBits    )) - 1);
}





 
static inline void NVIC_SystemReset(void)
{
  __DSB();                                                     
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FA << 16)      |
                 (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) |
                 (1UL << 2));                    
  __DSB();                                                      
  while(1);                                                     
}

 



 




 
















 
static inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1) > (0xFFFFFFUL << 0))  return (1);       

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = ticks - 1;                                   
  NVIC_SetPriority (SysTick_IRQn, (1<<4) - 1);   
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0;                                           
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2) |
                   (1UL << 1)   |
                   (1UL << 0);                     
  return (0);                                                   
}


 



 




 

extern volatile int32_t ITM_RxBuffer;                     











 
static inline uint32_t ITM_SendChar (uint32_t ch)
{
  if ((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL << 0))                  &&       
      (((ITM_Type *) (0xE0000000UL) )->TER & (1UL << 0)        )                    )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0].u32 == 0);
    ((ITM_Type *) (0xE0000000UL) )->PORT[0].u8 = (uint8_t) ch;
  }
  return (ch);
}








 
static inline int32_t ITM_ReceiveChar (void) {
  int32_t ch = -1;                            

  if (ITM_RxBuffer != 0x5AA55AA5) {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5;        
  }

  return (ch);
}








 
static inline int32_t ITM_CheckChar (void) {

  if (ITM_RxBuffer == 0x5AA55AA5) {
    return (0);                                  
  } else {
    return (1);                                  
  }
}

 







 


























 

 



 
 





 

 
extern uint32_t SystemCoreClock;

 
 
extern void SystemInit (void);
 
extern void SystemCoreClockUpdate (void);


 
 





 

 
typedef enum {DISABLE = 0, ENABLE = !DISABLE}  ControlStatus;
typedef enum {RESET = 0, SET = !RESET} FlagStatus;
typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrStatus;

 

 

 

 

 

 
 

 
 

 





 


























 









 


























 









 


























 


 

 

 
 

 

 

 

 

 
                                    
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
 
 

 
 

                                         

 

 

 

 
typedef enum
{
     
    RCU_GPIOA     = (((uint32_t)(0x30U) << 6) | (uint32_t)(0U)),                   
    RCU_GPIOB     = (((uint32_t)(0x30U) << 6) | (uint32_t)(1U)),                   
    RCU_GPIOC     = (((uint32_t)(0x30U) << 6) | (uint32_t)(2U)),                   
    RCU_GPIOD     = (((uint32_t)(0x30U) << 6) | (uint32_t)(3U)),                   
    RCU_GPIOE     = (((uint32_t)(0x30U) << 6) | (uint32_t)(4U)),                   
    RCU_GPIOF     = (((uint32_t)(0x30U) << 6) | (uint32_t)(5U)),                   
    RCU_GPIOG     = (((uint32_t)(0x30U) << 6) | (uint32_t)(6U)),                   
    RCU_GPIOH     = (((uint32_t)(0x30U) << 6) | (uint32_t)(7U)),                   
    RCU_GPIOI     = (((uint32_t)(0x30U) << 6) | (uint32_t)(8U)),                   
    RCU_CRC       = (((uint32_t)(0x30U) << 6) | (uint32_t)(12U)),                  
    RCU_BKPSRAM   = (((uint32_t)(0x30U) << 6) | (uint32_t)(18U)),                  
    RCU_TCMSRAM   = (((uint32_t)(0x30U) << 6) | (uint32_t)(20U)),                  
    RCU_DMA0      = (((uint32_t)(0x30U) << 6) | (uint32_t)(21U)),                  
    RCU_DMA1      = (((uint32_t)(0x30U) << 6) | (uint32_t)(22U)),                  
    RCU_IPA       = (((uint32_t)(0x30U) << 6) | (uint32_t)(23U)),                  
    RCU_ENET      = (((uint32_t)(0x30U) << 6) | (uint32_t)(25U)),                  
    RCU_ENETTX    = (((uint32_t)(0x30U) << 6) | (uint32_t)(26U)),                  
    RCU_ENETRX    = (((uint32_t)(0x30U) << 6) | (uint32_t)(27U)),                  
    RCU_ENETPTP   = (((uint32_t)(0x30U) << 6) | (uint32_t)(28U)),                  
    RCU_USBHS     = (((uint32_t)(0x30U) << 6) | (uint32_t)(29U)),                  
    RCU_USBHSULPI = (((uint32_t)(0x30U) << 6) | (uint32_t)(30U)),                  
     
    RCU_DCI       = (((uint32_t)(0x34U) << 6) | (uint32_t)(0U)),                   
    RCU_TRNG      = (((uint32_t)(0x34U) << 6) | (uint32_t)(6U)),                   
    RCU_USBFS     = (((uint32_t)(0x34U) << 6) | (uint32_t)(7U)),                   
     
    RCU_EXMC      = (((uint32_t)(0x38U) << 6) | (uint32_t)(0U)),                   
     
    RCU_TIMER1    = (((uint32_t)(0x40U) << 6) | (uint32_t)(0U)),                   
    RCU_TIMER2    = (((uint32_t)(0x40U) << 6) | (uint32_t)(1U)),                   
    RCU_TIMER3    = (((uint32_t)(0x40U) << 6) | (uint32_t)(2U)),                   
    RCU_TIMER4    = (((uint32_t)(0x40U) << 6) | (uint32_t)(3U)),                   
    RCU_TIMER5    = (((uint32_t)(0x40U) << 6) | (uint32_t)(4U)),                   
    RCU_TIMER6    = (((uint32_t)(0x40U) << 6) | (uint32_t)(5U)),                   
    RCU_TIMER11   = (((uint32_t)(0x40U) << 6) | (uint32_t)(6U)),                   
    RCU_TIMER12   = (((uint32_t)(0x40U) << 6) | (uint32_t)(7U)),                   
    RCU_TIMER13   = (((uint32_t)(0x40U) << 6) | (uint32_t)(8U)),                      
    RCU_WWDGT     = (((uint32_t)(0x40U) << 6) | (uint32_t)(11U)),                  
    RCU_SPI1      = (((uint32_t)(0x40U) << 6) | (uint32_t)(14U)),                  
    RCU_SPI2      = (((uint32_t)(0x40U) << 6) | (uint32_t)(15U)),                  
    RCU_USART1    = (((uint32_t)(0x40U) << 6) | (uint32_t)(17U)),                  
    RCU_USART2    = (((uint32_t)(0x40U) << 6) | (uint32_t)(18U)),                  
    RCU_UART3     = (((uint32_t)(0x40U) << 6) | (uint32_t)(19U)),                  
    RCU_UART4     = (((uint32_t)(0x40U) << 6) | (uint32_t)(20U)),                  
    RCU_I2C0      = (((uint32_t)(0x40U) << 6) | (uint32_t)(21U)),                  
    RCU_I2C1      = (((uint32_t)(0x40U) << 6) | (uint32_t)(22U)),                  
    RCU_I2C2      = (((uint32_t)(0x40U) << 6) | (uint32_t)(23U)),                     
    RCU_CAN0      = (((uint32_t)(0x40U) << 6) | (uint32_t)(25U)),                  
    RCU_CAN1      = (((uint32_t)(0x40U) << 6) | (uint32_t)(26U)),                  
    RCU_PMU       = (((uint32_t)(0x40U) << 6) | (uint32_t)(28U)),                  
    RCU_DAC       = (((uint32_t)(0x40U) << 6) | (uint32_t)(29U)),                  
    RCU_UART6     = (((uint32_t)(0x40U) << 6) | (uint32_t)(30U)),                  
    RCU_UART7     = (((uint32_t)(0x40U) << 6) | (uint32_t)(31U)),                  
    RCU_RTC       = (((uint32_t)(0x70U) << 6) | (uint32_t)(15U)),                   
     
    RCU_TIMER0    = (((uint32_t)(0x44U) << 6) | (uint32_t)(0U)),                   
    RCU_TIMER7    = (((uint32_t)(0x44U) << 6) | (uint32_t)(1U)),                   
    RCU_USART0    = (((uint32_t)(0x44U) << 6) | (uint32_t)(4U)),                   
    RCU_USART5    = (((uint32_t)(0x44U) << 6) | (uint32_t)(5U)),                   
    RCU_ADC0      = (((uint32_t)(0x44U) << 6) | (uint32_t)(8U)),                   
    RCU_ADC1      = (((uint32_t)(0x44U) << 6) | (uint32_t)(9U)),                   
    RCU_ADC2      = (((uint32_t)(0x44U) << 6) | (uint32_t)(10U)),                  
    RCU_SDIO      = (((uint32_t)(0x44U) << 6) | (uint32_t)(11U)),                  
    RCU_SPI0      = (((uint32_t)(0x44U) << 6) | (uint32_t)(12U)),                  
    RCU_SPI3      = (((uint32_t)(0x44U) << 6) | (uint32_t)(13U)),                  
    RCU_SYSCFG    = (((uint32_t)(0x44U) << 6) | (uint32_t)(14U)),                  
    RCU_TIMER8    = (((uint32_t)(0x44U) << 6) | (uint32_t)(16U)),                  
    RCU_TIMER9    = (((uint32_t)(0x44U) << 6) | (uint32_t)(17U)),                  
    RCU_TIMER10   = (((uint32_t)(0x44U) << 6) | (uint32_t)(18U)),                  
    RCU_SPI4      = (((uint32_t)(0x44U) << 6) | (uint32_t)(20U)),                  
    RCU_SPI5      = (((uint32_t)(0x44U) << 6) | (uint32_t)(21U)),                  
    RCU_TLI       = (((uint32_t)(0x44U) << 6) | (uint32_t)(26U)),                  
     
    RCU_CTC       = (((uint32_t)(0xE4U) << 6) | (uint32_t)(27U)),              
    RCU_IREF      = (((uint32_t)(0xE4U) << 6) | (uint32_t)(31U)),              
}rcu_periph_enum;

 
typedef enum
{
     
    RCU_GPIOA_SLP     = (((uint32_t)(0x50U) << 6) | (uint32_t)(0U)),             
    RCU_GPIOB_SLP     = (((uint32_t)(0x50U) << 6) | (uint32_t)(1U)),             
    RCU_GPIOC_SLP     = (((uint32_t)(0x50U) << 6) | (uint32_t)(2U)),             
    RCU_GPIOD_SLP     = (((uint32_t)(0x50U) << 6) | (uint32_t)(3U)),             
    RCU_GPIOE_SLP     = (((uint32_t)(0x50U) << 6) | (uint32_t)(4U)),             
    RCU_GPIOF_SLP     = (((uint32_t)(0x50U) << 6) | (uint32_t)(5U)),             
    RCU_GPIOG_SLP     = (((uint32_t)(0x50U) << 6) | (uint32_t)(6U)),             
    RCU_GPIOH_SLP     = (((uint32_t)(0x50U) << 6) | (uint32_t)(7U)),             
    RCU_GPIOI_SLP     = (((uint32_t)(0x50U) << 6) | (uint32_t)(8U)),             
    RCU_CRC_SLP       = (((uint32_t)(0x50U) << 6) | (uint32_t)(12U)),            
    RCU_FMC_SLP       = (((uint32_t)(0x50U) << 6) | (uint32_t)(15U)),            
    RCU_SRAM0_SLP     = (((uint32_t)(0x50U) << 6) | (uint32_t)(16U)),            
    RCU_SRAM1_SLP     = (((uint32_t)(0x50U) << 6) | (uint32_t)(17U)),            
    RCU_BKPSRAM_SLP   = (((uint32_t)(0x50U) << 6) | (uint32_t)(18U)),            
    RCU_SRAM2_SLP     = (((uint32_t)(0x50U) << 6) | (uint32_t)(19U)),            
    RCU_DMA0_SLP      = (((uint32_t)(0x50U) << 6) | (uint32_t)(21U)),            
    RCU_DMA1_SLP      = (((uint32_t)(0x50U) << 6) | (uint32_t)(22U)),            
    RCU_IPA_SLP       = (((uint32_t)(0x50U) << 6) | (uint32_t)(23U)),            
    RCU_ENET_SLP      = (((uint32_t)(0x50U) << 6) | (uint32_t)(25U)),            
    RCU_ENETTX_SLP    = (((uint32_t)(0x50U) << 6) | (uint32_t)(26U)),            
    RCU_ENETRX_SLP    = (((uint32_t)(0x50U) << 6) | (uint32_t)(27U)),            
    RCU_ENETPTP_SLP   = (((uint32_t)(0x50U) << 6) | (uint32_t)(28U)),            
    RCU_USBHS_SLP     = (((uint32_t)(0x50U) << 6) | (uint32_t)(29U)),            
    RCU_USBHSULPI_SLP = (((uint32_t)(0x50U) << 6) | (uint32_t)(30U)),            
     
    RCU_DCI_SLP       = (((uint32_t)(0x54U) << 6) | (uint32_t)(0U)),             
    RCU_TRNG_SLP      = (((uint32_t)(0x54U) << 6) | (uint32_t)(6U)),             
    RCU_USBFS_SLP     = (((uint32_t)(0x54U) << 6) | (uint32_t)(7U)),             
     
    RCU_EXMC_SLP      = (((uint32_t)(0x58U) << 6) | (uint32_t)(0U)),             
     
    RCU_TIMER1_SLP    = (((uint32_t)(0x60U) << 6) | (uint32_t)(0U)),             
    RCU_TIMER2_SLP    = (((uint32_t)(0x60U) << 6) | (uint32_t)(1U)),             
    RCU_TIMER3_SLP    = (((uint32_t)(0x60U) << 6) | (uint32_t)(2U)),             
    RCU_TIMER4_SLP    = (((uint32_t)(0x60U) << 6) | (uint32_t)(3U)),             
    RCU_TIMER5_SLP    = (((uint32_t)(0x60U) << 6) | (uint32_t)(4U)),             
    RCU_TIMER6_SLP    = (((uint32_t)(0x60U) << 6) | (uint32_t)(5U)),             
    RCU_TIMER11_SLP   = (((uint32_t)(0x60U) << 6) | (uint32_t)(6U)),             
    RCU_TIMER12_SLP   = (((uint32_t)(0x60U) << 6) | (uint32_t)(7U)),             
    RCU_TIMER13_SLP   = (((uint32_t)(0x60U) << 6) | (uint32_t)(8U)),                
    RCU_WWDGT_SLP     = (((uint32_t)(0x60U) << 6) | (uint32_t)(11U)),            
    RCU_SPI1_SLP      = (((uint32_t)(0x60U) << 6) | (uint32_t)(14U)),            
    RCU_SPI2_SLP      = (((uint32_t)(0x60U) << 6) | (uint32_t)(15U)),            
    RCU_USART1_SLP    = (((uint32_t)(0x60U) << 6) | (uint32_t)(17U)),            
    RCU_USART2_SLP    = (((uint32_t)(0x60U) << 6) | (uint32_t)(18U)),            
    RCU_UART3_SLP     = (((uint32_t)(0x60U) << 6) | (uint32_t)(19U)),            
    RCU_UART4_SLP     = (((uint32_t)(0x60U) << 6) | (uint32_t)(20U)),            
    RCU_I2C0_SLP      = (((uint32_t)(0x60U) << 6) | (uint32_t)(21U)),            
    RCU_I2C1_SLP      = (((uint32_t)(0x60U) << 6) | (uint32_t)(22U)),            
    RCU_I2C2_SLP      = (((uint32_t)(0x60U) << 6) | (uint32_t)(23U)),               
    RCU_CAN0_SLP      = (((uint32_t)(0x60U) << 6) | (uint32_t)(25U)),            
    RCU_CAN1_SLP      = (((uint32_t)(0x60U) << 6) | (uint32_t)(26U)),            
    RCU_PMU_SLP       = (((uint32_t)(0x60U) << 6) | (uint32_t)(28U)),            
    RCU_DAC_SLP       = (((uint32_t)(0x60U) << 6) | (uint32_t)(29U)),            
    RCU_UART6_SLP     = (((uint32_t)(0x60U) << 6) | (uint32_t)(30U)),            
    RCU_UART7_SLP     = (((uint32_t)(0x60U) << 6) | (uint32_t)(31U)),            
     
    RCU_TIMER0_SLP    = (((uint32_t)(0x64U) << 6) | (uint32_t)(0U)),             
    RCU_TIMER7_SLP    = (((uint32_t)(0x64U) << 6) | (uint32_t)(1U)),             
    RCU_USART0_SLP    = (((uint32_t)(0x64U) << 6) | (uint32_t)(4U)),             
    RCU_USART5_SLP    = (((uint32_t)(0x64U) << 6) | (uint32_t)(5U)),             
    RCU_ADC0_SLP      = (((uint32_t)(0x64U) << 6) | (uint32_t)(8U)),             
    RCU_ADC1_SLP      = (((uint32_t)(0x64U) << 6) | (uint32_t)(9U)),             
    RCU_ADC2_SLP      = (((uint32_t)(0x64U) << 6) | (uint32_t)(10U)),            
    RCU_SDIO_SLP      = (((uint32_t)(0x64U) << 6) | (uint32_t)(11U)),            
    RCU_SPI0_SLP      = (((uint32_t)(0x64U) << 6) | (uint32_t)(12U)),            
    RCU_SPI3_SLP      = (((uint32_t)(0x64U) << 6) | (uint32_t)(13U)),            
    RCU_SYSCFG_SLP    = (((uint32_t)(0x64U) << 6) | (uint32_t)(14U)),            
    RCU_TIMER8_SLP    = (((uint32_t)(0x64U) << 6) | (uint32_t)(16U)),            
    RCU_TIMER9_SLP    = (((uint32_t)(0x64U) << 6) | (uint32_t)(17U)),            
    RCU_TIMER10_SLP   = (((uint32_t)(0x64U) << 6) | (uint32_t)(18U)),            
    RCU_SPI4_SLP      = (((uint32_t)(0x64U) << 6) | (uint32_t)(20U)),            
    RCU_SPI5_SLP      = (((uint32_t)(0x64U) << 6) | (uint32_t)(21U)),            
    RCU_TLI_SLP       = (((uint32_t)(0x64U) << 6) | (uint32_t)(26U)),            
     
    RCU_CTC_SLP       = (((uint32_t)(0xE8U) << 6) | (uint32_t)(27U)),        
    RCU_IREF_SLP      = (((uint32_t)(0xE8U) << 6) | (uint32_t)(31U)),        
}rcu_periph_sleep_enum;

 
typedef enum
{
     
    RCU_GPIOARST     = (((uint32_t)(0x10U) << 6) | (uint32_t)(0U)),               
    RCU_GPIOBRST     = (((uint32_t)(0x10U) << 6) | (uint32_t)(1U)),               
    RCU_GPIOCRST     = (((uint32_t)(0x10U) << 6) | (uint32_t)(2U)),               
    RCU_GPIODRST     = (((uint32_t)(0x10U) << 6) | (uint32_t)(3U)),               
    RCU_GPIOERST     = (((uint32_t)(0x10U) << 6) | (uint32_t)(4U)),               
    RCU_GPIOFRST     = (((uint32_t)(0x10U) << 6) | (uint32_t)(5U)),               
    RCU_GPIOGRST     = (((uint32_t)(0x10U) << 6) | (uint32_t)(6U)),               
    RCU_GPIOHRST     = (((uint32_t)(0x10U) << 6) | (uint32_t)(7U)),               
    RCU_GPIOIRST     = (((uint32_t)(0x10U) << 6) | (uint32_t)(8U)),               
    RCU_CRCRST       = (((uint32_t)(0x10U) << 6) | (uint32_t)(12U)),              
    RCU_DMA0RST      = (((uint32_t)(0x10U) << 6) | (uint32_t)(21U)),              
    RCU_DMA1RST      = (((uint32_t)(0x10U) << 6) | (uint32_t)(22U)),              
    RCU_IPARST       = (((uint32_t)(0x10U) << 6) | (uint32_t)(23U)),              
    RCU_ENETRST      = (((uint32_t)(0x10U) << 6) | (uint32_t)(25U)),                 
    RCU_USBHSRST     = (((uint32_t)(0x10U) << 6) | (uint32_t)(29U)),              
     
    RCU_DCIRST       = (((uint32_t)(0x14U) << 6) | (uint32_t)(0U)),               
    RCU_TRNGRST      = (((uint32_t)(0x14U) << 6) | (uint32_t)(6U)),               
    RCU_USBFSRST     = (((uint32_t)(0x14U) << 6) | (uint32_t)(7U)),               
     
    RCU_EXMCRST      = (((uint32_t)(0x18U) << 6) | (uint32_t)(0U)),               
     
    RCU_TIMER1RST    = (((uint32_t)(0x20U) << 6) | (uint32_t)(0U)),               
    RCU_TIMER2RST    = (((uint32_t)(0x20U) << 6) | (uint32_t)(1U)),               
    RCU_TIMER3RST    = (((uint32_t)(0x20U) << 6) | (uint32_t)(2U)),               
    RCU_TIMER4RST    = (((uint32_t)(0x20U) << 6) | (uint32_t)(3U)),               
    RCU_TIMER5RST    = (((uint32_t)(0x20U) << 6) | (uint32_t)(4U)),               
    RCU_TIMER6RST    = (((uint32_t)(0x20U) << 6) | (uint32_t)(5U)),               
    RCU_TIMER11RST   = (((uint32_t)(0x20U) << 6) | (uint32_t)(6U)),               
    RCU_TIMER12RST   = (((uint32_t)(0x20U) << 6) | (uint32_t)(7U)),               
    RCU_TIMER13RST   = (((uint32_t)(0x20U) << 6) | (uint32_t)(8U)),                  
    RCU_WWDGTRST     = (((uint32_t)(0x20U) << 6) | (uint32_t)(11U)),              
    RCU_SPI1RST      = (((uint32_t)(0x20U) << 6) | (uint32_t)(14U)),              
    RCU_SPI2RST      = (((uint32_t)(0x20U) << 6) | (uint32_t)(15U)),              
    RCU_USART1RST    = (((uint32_t)(0x20U) << 6) | (uint32_t)(17U)),              
    RCU_USART2RST    = (((uint32_t)(0x20U) << 6) | (uint32_t)(18U)),              
    RCU_UART3RST     = (((uint32_t)(0x20U) << 6) | (uint32_t)(19U)),              
    RCU_UART4RST     = (((uint32_t)(0x20U) << 6) | (uint32_t)(20U)),              
    RCU_I2C0RST      = (((uint32_t)(0x20U) << 6) | (uint32_t)(21U)),              
    RCU_I2C1RST      = (((uint32_t)(0x20U) << 6) | (uint32_t)(22U)),              
    RCU_I2C2RST      = (((uint32_t)(0x20U) << 6) | (uint32_t)(23U)),                 
    RCU_CAN0RST      = (((uint32_t)(0x20U) << 6) | (uint32_t)(25U)),              
    RCU_CAN1RST      = (((uint32_t)(0x20U) << 6) | (uint32_t)(26U)),              
    RCU_PMURST       = (((uint32_t)(0x20U) << 6) | (uint32_t)(28U)),              
    RCU_DACRST       = (((uint32_t)(0x20U) << 6) | (uint32_t)(29U)),              
    RCU_UART6RST     = (((uint32_t)(0x20U) << 6) | (uint32_t)(30U)),              
    RCU_UART7RST     = (((uint32_t)(0x20U) << 6) | (uint32_t)(31U)),              
     
    RCU_TIMER0RST    = (((uint32_t)(0x24U) << 6) | (uint32_t)(0U)),               
    RCU_TIMER7RST    = (((uint32_t)(0x24U) << 6) | (uint32_t)(1U)),               
    RCU_USART0RST    = (((uint32_t)(0x24U) << 6) | (uint32_t)(4U)),               
    RCU_USART5RST    = (((uint32_t)(0x24U) << 6) | (uint32_t)(5U)),               
    RCU_ADCRST       = (((uint32_t)(0x24U) << 6) | (uint32_t)(8U)),               
    RCU_SDIORST      = (((uint32_t)(0x24U) << 6) | (uint32_t)(11U)),              
    RCU_SPI0RST      = (((uint32_t)(0x24U) << 6) | (uint32_t)(12U)),              
    RCU_SPI3RST      = (((uint32_t)(0x24U) << 6) | (uint32_t)(13U)),              
    RCU_SYSCFGRST    = (((uint32_t)(0x24U) << 6) | (uint32_t)(14U)),              
    RCU_TIMER8RST    = (((uint32_t)(0x24U) << 6) | (uint32_t)(16U)),              
    RCU_TIMER9RST    = (((uint32_t)(0x24U) << 6) | (uint32_t)(17U)),              
    RCU_TIMER10RST   = (((uint32_t)(0x24U) << 6) | (uint32_t)(18U)),              
    RCU_SPI4RST      = (((uint32_t)(0x24U) << 6) | (uint32_t)(20U)),              
    RCU_SPI5RST      = (((uint32_t)(0x24U) << 6) | (uint32_t)(21U)),              
    RCU_TLIRST       = (((uint32_t)(0x24U) << 6) | (uint32_t)(26U)),              
     
    RCU_CTCRST       = (((uint32_t)(0xE0U) << 6) | (uint32_t)(27U)),          
    RCU_IREFRST      = (((uint32_t)(0xE0U) << 6) | (uint32_t)(31U))           
}rcu_periph_reset_enum;

 
typedef enum
{
     
    RCU_FLAG_IRC16MSTB     = (((uint32_t)(0x00U) << 6) | (uint32_t)(1U)),             
    RCU_FLAG_HXTALSTB      = (((uint32_t)(0x00U) << 6) | (uint32_t)(17U)),            
    RCU_FLAG_PLLSTB        = (((uint32_t)(0x00U) << 6) | (uint32_t)(25U)),            
    RCU_FLAG_PLLI2SSTB     = (((uint32_t)(0x00U) << 6) | (uint32_t)(27U)),            
    RCU_FLAG_PLLSAISTB     = (((uint32_t)(0x00U) << 6) | (uint32_t)(29U)),            
    RCU_FLAG_LXTALSTB      = (((uint32_t)(0x70U) << 6) | (uint32_t)(1U)),           
    RCU_FLAG_IRC32KSTB     = (((uint32_t)(0x74U) << 6) | (uint32_t)(1U)),          
    RCU_FLAG_IRC48MSTB     = (((uint32_t)(0xC0U) << 6) | (uint32_t)(17U)),         
     
    RCU_FLAG_BORRST        = (((uint32_t)(0x74U) << 6) | (uint32_t)(25U)),         
    RCU_FLAG_EPRST         = (((uint32_t)(0x74U) << 6) | (uint32_t)(26U)),         
    RCU_FLAG_PORRST        = (((uint32_t)(0x74U) << 6) | (uint32_t)(27U)),         
    RCU_FLAG_SWRST         = (((uint32_t)(0x74U) << 6) | (uint32_t)(28U)),         
    RCU_FLAG_FWDGTRST      = (((uint32_t)(0x74U) << 6) | (uint32_t)(29U)),         
    RCU_FLAG_WWDGTRST      = (((uint32_t)(0x74U) << 6) | (uint32_t)(30U)),         
    RCU_FLAG_LPRST         = (((uint32_t)(0x74U) << 6) | (uint32_t)(31U)),         
}rcu_flag_enum;

 
typedef enum
{
    RCU_INT_FLAG_IRC32KSTB = (((uint32_t)(0x0CU) << 6) | (uint32_t)(0U)),             
    RCU_INT_FLAG_LXTALSTB  = (((uint32_t)(0x0CU) << 6) | (uint32_t)(1U)),             
    RCU_INT_FLAG_IRC16MSTB = (((uint32_t)(0x0CU) << 6) | (uint32_t)(2U)),             
    RCU_INT_FLAG_HXTALSTB  = (((uint32_t)(0x0CU) << 6) | (uint32_t)(3U)),             
    RCU_INT_FLAG_PLLSTB    = (((uint32_t)(0x0CU) << 6) | (uint32_t)(4U)),             
    RCU_INT_FLAG_PLLI2SSTB = (((uint32_t)(0x0CU) << 6) | (uint32_t)(5U)),             
    RCU_INT_FLAG_PLLSAISTB = (((uint32_t)(0x0CU) << 6) | (uint32_t)(6U)),             
    RCU_INT_FLAG_CKM       = (((uint32_t)(0x0CU) << 6) | (uint32_t)(7U)),             
    RCU_INT_FLAG_IRC48MSTB = (((uint32_t)(0xCCU) << 6) | (uint32_t)(6U)),          
}rcu_int_flag_enum;

 
typedef enum
{
    RCU_INT_FLAG_IRC32KSTB_CLR = (((uint32_t)(0x0CU) << 6) | (uint32_t)(16U)),        
    RCU_INT_FLAG_LXTALSTB_CLR  = (((uint32_t)(0x0CU) << 6) | (uint32_t)(17U)),        
    RCU_INT_FLAG_IRC16MSTB_CLR = (((uint32_t)(0x0CU) << 6) | (uint32_t)(18U)),        
    RCU_INT_FLAG_HXTALSTB_CLR  = (((uint32_t)(0x0CU) << 6) | (uint32_t)(19U)),        
    RCU_INT_FLAG_PLLSTB_CLR    = (((uint32_t)(0x0CU) << 6) | (uint32_t)(20U)),        
    RCU_INT_FLAG_PLLI2SSTB_CLR = (((uint32_t)(0x0CU) << 6) | (uint32_t)(21U)),        
    RCU_INT_FLAG_PLLSAISTB_CLR = (((uint32_t)(0x0CU) << 6) | (uint32_t)(22U)),        
    RCU_INT_FLAG_CKM_CLR       = (((uint32_t)(0x0CU) << 6) | (uint32_t)(23U)),        
    RCU_INT_FLAG_IRC48MSTB_CLR = (((uint32_t)(0xCCU) << 6) | (uint32_t)(22U)),     
}rcu_int_flag_clear_enum;

 
typedef enum
{
    RCU_INT_IRC32KSTB       = (((uint32_t)(0x0CU) << 6) | (uint32_t)(8U)),            
    RCU_INT_LXTALSTB        = (((uint32_t)(0x0CU) << 6) | (uint32_t)(9U)),            
    RCU_INT_IRC16MSTB       = (((uint32_t)(0x0CU) << 6) | (uint32_t)(10U)),           
    RCU_INT_HXTALSTB        = (((uint32_t)(0x0CU) << 6) | (uint32_t)(11U)),           
    RCU_INT_PLLSTB          = (((uint32_t)(0x0CU) << 6) | (uint32_t)(12U)),           
    RCU_INT_PLLI2SSTB       = (((uint32_t)(0x0CU) << 6) | (uint32_t)(13U)),           
    RCU_INT_PLLSAISTB       = (((uint32_t)(0x0CU) << 6) | (uint32_t)(14U)),           
    RCU_INT_IRC48MSTB       = (((uint32_t)(0xCCU) << 6) | (uint32_t)(14U)),        
}rcu_int_enum;

 
typedef enum
{
    RCU_HXTAL      = (((uint32_t)(0x00U) << 6) | (uint32_t)(16U)),                    
    RCU_LXTAL      = (((uint32_t)(0x70U) << 6) | (uint32_t)(0U)),                   
    RCU_IRC16M     = (((uint32_t)(0x00U) << 6) | (uint32_t)(0U)),                     
    RCU_IRC48M     = (((uint32_t)(0xC0U) << 6) | (uint32_t)(16U)),                 
    RCU_IRC32K     = (((uint32_t)(0x74U) << 6) | (uint32_t)(0U)),                  
    RCU_PLL_CK     = (((uint32_t)(0x00U) << 6) | (uint32_t)(24U)),                    
    RCU_PLLI2S_CK  = (((uint32_t)(0x00U) << 6) | (uint32_t)(26U)),                    
    RCU_PLLSAI_CK  = (((uint32_t)(0x00U) << 6) | (uint32_t)(28U)),                    
}rcu_osci_type_enum;

 
typedef enum
{
    CK_SYS      = 0,                                                         
    CK_AHB,                                                                  
    CK_APB1,                                                                 
    CK_APB2,                                                                 
}rcu_clock_freq_enum;

 
 

 

 

 

 

 

 

 

 

 

 

 
 

 

 

 
 

 
 

 

 
                                         
 

 


 
 

 

 
 

 

 

 
 

 

 

 



 
  

 

 


 
 
void rcu_deinit(void);
 
void rcu_periph_clock_enable(rcu_periph_enum periph);
 
void rcu_periph_clock_disable(rcu_periph_enum periph);
 
void rcu_periph_clock_sleep_enable(rcu_periph_sleep_enum periph);
 
void rcu_periph_clock_sleep_disable(rcu_periph_sleep_enum periph);
 
void rcu_periph_reset_enable(rcu_periph_reset_enum periph_reset);
 
void rcu_periph_reset_disable(rcu_periph_reset_enum periph_reset);
 
void rcu_bkp_reset_enable(void);
 
void rcu_bkp_reset_disable(void);

 
void rcu_system_clock_source_config(uint32_t ck_sys);
 
uint32_t rcu_system_clock_source_get(void);
 
void rcu_ahb_clock_config(uint32_t ck_ahb);
 
void rcu_apb1_clock_config(uint32_t ck_apb1);
 
void rcu_apb2_clock_config(uint32_t ck_apb2);
 
void rcu_ckout0_config(uint32_t ckout0_src, uint32_t ckout0_div);
 
void rcu_ckout1_config(uint32_t ckout1_src, uint32_t ckout1_div);
 
ErrStatus rcu_pll_config(uint32_t pll_src, uint32_t pll_psc, uint32_t pll_n, uint32_t pll_p, uint32_t pll_q);
 
ErrStatus rcu_plli2s_config(uint32_t plli2s_n, uint32_t plli2s_r);
 
ErrStatus rcu_pllsai_config(uint32_t pllsai_n, uint32_t pllsai_p, uint32_t pllsai_r);
 
void rcu_rtc_clock_config(uint32_t rtc_clock_source);
 
void rcu_rtc_div_config(uint32_t rtc_div);
 
void rcu_i2s_clock_config(uint32_t i2s_clock_source);
 
void rcu_ck48m_clock_config(uint32_t ck48m_clock_source);
 
void rcu_pll48m_clock_config(uint32_t pll48m_clock_source);
 
void rcu_timer_clock_prescaler_config(uint32_t timer_clock_prescaler);       
 
void rcu_tli_clock_div_config(uint32_t pllsai_r_div);


 
FlagStatus rcu_flag_get(rcu_flag_enum flag);
 
void rcu_all_reset_flag_clear(void);
 
FlagStatus rcu_interrupt_flag_get(rcu_int_flag_enum int_flag);
 
void rcu_interrupt_flag_clear(rcu_int_flag_clear_enum int_flag);
 
void rcu_interrupt_enable(rcu_int_enum interrupt);
 
void rcu_interrupt_disable(rcu_int_enum interrupt);

 
void rcu_lxtal_drive_capability_config(uint32_t lxtal_dricap);
 
ErrStatus rcu_osci_stab_wait(rcu_osci_type_enum osci);
 
void rcu_osci_on(rcu_osci_type_enum osci);
 
void rcu_osci_off(rcu_osci_type_enum osci);
 
void rcu_osci_bypass_mode_enable(rcu_osci_type_enum osci);
 
void rcu_osci_bypass_mode_disable(rcu_osci_type_enum osci);
 
void rcu_hxtal_clock_monitor_enable(void);
 
void rcu_hxtal_clock_monitor_disable(void);

 
void rcu_irc16m_adjust_value_set(uint32_t irc16m_adjval);
 
void rcu_spread_spectrum_config(uint32_t spread_spectrum_type, uint32_t modstep, uint32_t modcnt);
 
void rcu_spread_spectrum_enable(void);
 
void rcu_spread_spectrum_disable(void);          
 
void rcu_voltage_key_unlock(void);
 
void rcu_deepsleep_voltage_set(uint32_t dsvol);

 
uint32_t rcu_clock_freq_get(rcu_clock_freq_enum clock);








 


























 



 

 

 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
 

 

 

 

 

 

 

 

 

 

 

 

 

 
 
 
void adc_deinit(void);
 
void adc_clock_config(uint32_t prescaler);
 
void adc_special_function_config(uint32_t adc_periph , uint32_t function , ControlStatus newvalue);
 
void adc_data_alignment_config(uint32_t adc_periph , uint32_t data_alignment);
 
void adc_enable(uint32_t adc_periph);
 
void adc_disable(uint32_t adc_periph);
 
void adc_calibration_enable(uint32_t adc_periph);
 
void adc_channel_16_to_18(uint32_t function, ControlStatus newvalue);
 
void adc_resolution_config(uint32_t adc_periph, uint32_t resolution);
 
void adc_oversample_mode_config(uint32_t adc_periph, uint32_t mode, uint16_t shift, uint8_t ratio);
 
void adc_oversample_mode_enable(uint32_t adc_periph);
 
void adc_oversample_mode_disable(uint32_t adc_periph);

 
 
void adc_dma_mode_enable(uint32_t adc_periph);
 
void adc_dma_mode_disable(uint32_t adc_periph);
 
void adc_dma_request_after_last_enable(uint32_t adc_periph);
 
void adc_dma_request_after_last_disable(uint32_t adc_periph);

 
 
void adc_discontinuous_mode_config(uint32_t adc_periph , uint8_t adc_channel_group , uint8_t length);
 
void adc_channel_length_config(uint32_t adc_periph , uint8_t adc_channel_group , uint32_t length);
 
void adc_regular_channel_config(uint32_t adc_periph , uint8_t rank , uint8_t adc_channel , uint32_t sample_time);
 
void adc_inserted_channel_config(uint32_t adc_periph , uint8_t rank , uint8_t adc_channel , uint32_t sample_time);
 
void adc_inserted_channel_offset_config(uint32_t adc_periph , uint8_t inserted_channel , uint16_t offset);
 
void adc_external_trigger_source_config(uint32_t adc_periph , uint8_t adc_channel_group , uint32_t external_trigger_source);
 
void adc_external_trigger_config(uint32_t adc_periph , uint8_t adc_channel_group , uint32_t trigger_mode);
 
void adc_software_trigger_enable(uint32_t adc_periph , uint8_t adc_channel_group);
 
void adc_end_of_conversion_config(uint32_t adc_periph , uint8_t end_selection);

 
 
uint16_t adc_regular_data_read(uint32_t adc_periph);
 
uint16_t adc_inserted_data_read(uint32_t adc_periph , uint8_t inserted_channel);

 
 
void adc_watchdog_single_channel_disable(uint32_t adc_periph );
 
void adc_watchdog_single_channel_enable(uint32_t adc_periph , uint8_t adc_channel);
 
void adc_watchdog_group_channel_enable(uint32_t adc_periph , uint8_t adc_channel_group);
 
void adc_watchdog_disable(uint32_t adc_periph , uint8_t adc_channel_group);
 
void adc_watchdog_threshold_config(uint32_t adc_periph , uint16_t low_threshold , uint16_t high_threshold);

 
 
FlagStatus adc_flag_get(uint32_t adc_periph , uint32_t adc_flag);
 
void adc_flag_clear(uint32_t adc_periph , uint32_t adc_flag);
 
FlagStatus adc_regular_software_startconv_flag_get(uint32_t adc_periph);
 
FlagStatus adc_inserted_software_startconv_flag_get(uint32_t adc_periph);
 
FlagStatus adc_interrupt_flag_get(uint32_t adc_periph , uint32_t adc_interrupt);
 
void adc_interrupt_flag_clear(uint32_t adc_periph , uint32_t adc_interrupt);
 
void adc_interrupt_enable(uint32_t adc_periph , uint32_t adc_interrupt);
 
void adc_interrupt_disable(uint32_t adc_periph , uint32_t adc_interrupt);

 
 
void adc_sync_mode_config(uint32_t sync_mode);
 
void adc_sync_delay_config(uint32_t sample_delay);
 
void adc_sync_dma_config(uint32_t dma_mode );
 
void adc_sync_dma_request_after_last_enable(void);
 
void adc_sync_dma_request_after_last_disable(void);
 
uint32_t adc_sync_regular_data_read(void);









 


























 




 

 

 

 

 

 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
 


 

 
typedef enum
{
     
    CAN_FLAG_RXL      = (((uint32_t)(((uint8_t)0x04U)) << 6) | (uint32_t)(11U)),             
    CAN_FLAG_LASTRX   = (((uint32_t)(((uint8_t)0x04U)) << 6) | (uint32_t)(10U)),             
    CAN_FLAG_RS       = (((uint32_t)(((uint8_t)0x04U)) << 6) | (uint32_t)(9U)),              
    CAN_FLAG_TS       = (((uint32_t)(((uint8_t)0x04U)) << 6) | (uint32_t)(8U)),              
    CAN_FLAG_SLPIF    = (((uint32_t)(((uint8_t)0x04U)) << 6) | (uint32_t)(4U)),              
    CAN_FLAG_WUIF     = (((uint32_t)(((uint8_t)0x04U)) << 6) | (uint32_t)(3U)),              
    CAN_FLAG_ERRIF    = (((uint32_t)(((uint8_t)0x04U)) << 6) | (uint32_t)(2U)),              
    CAN_FLAG_SLPWS    = (((uint32_t)(((uint8_t)0x04U)) << 6) | (uint32_t)(1U)),              
    CAN_FLAG_IWS      = (((uint32_t)(((uint8_t)0x04U)) << 6) | (uint32_t)(0U)),              
     
    CAN_FLAG_TMLS2    = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(31U)),            
    CAN_FLAG_TMLS1    = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(30U)),            
    CAN_FLAG_TMLS0    = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(29U)),            
    CAN_FLAG_TME2     = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(28U)),            
    CAN_FLAG_TME1     = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(27U)),            
    CAN_FLAG_TME0     = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(26U)),            
    CAN_FLAG_MTE2     = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(19U)),            
    CAN_FLAG_MTE1     = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(11U)),            
    CAN_FLAG_MTE0     = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(3U)),             
    CAN_FLAG_MAL2     = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(18U)),            
    CAN_FLAG_MAL1     = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(10U)),            
    CAN_FLAG_MAL0     = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(2U)),             
    CAN_FLAG_MTFNERR2 = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(17U)),            
    CAN_FLAG_MTFNERR1 = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(9U)),             
    CAN_FLAG_MTFNERR0 = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(1U)),             
    CAN_FLAG_MTF2     = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(16U)),            
    CAN_FLAG_MTF1     = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(8U)),             
    CAN_FLAG_MTF0     = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(0U)),             
     
    CAN_FLAG_RFO0     = (((uint32_t)(((uint8_t)0x0CU)) << 6) | (uint32_t)(4U)),            
    CAN_FLAG_RFF0     = (((uint32_t)(((uint8_t)0x0CU)) << 6) | (uint32_t)(3U)),            
     
    CAN_FLAG_RFO1     = (((uint32_t)(((uint8_t)0x10U)) << 6) | (uint32_t)(4U)),            
    CAN_FLAG_RFF1     = (((uint32_t)(((uint8_t)0x10U)) << 6) | (uint32_t)(3U)),            
     
    CAN_FLAG_BOERR    = (((uint32_t)(((uint8_t)0x18U)) << 6) | (uint32_t)(2U)),               
    CAN_FLAG_PERR     = (((uint32_t)(((uint8_t)0x18U)) << 6) | (uint32_t)(1U)),               
    CAN_FLAG_WERR     = (((uint32_t)(((uint8_t)0x18U)) << 6) | (uint32_t)(0U)),               
}can_flag_enum;

 
typedef enum
{
     
    CAN_INT_FLAG_SLPIF = (((uint32_t)(((uint8_t)0x04U)) << 12) | ((uint32_t)(4U) << 6) | (uint32_t)(17U)),       
    CAN_INT_FLAG_WUIF  = (((uint32_t)(((uint8_t)0x04U)) << 12) | ((uint32_t)(3U) << 6) | (uint32_t)(16)),        
    CAN_INT_FLAG_ERRIF = (((uint32_t)(((uint8_t)0x04U)) << 12) | ((uint32_t)(2U) << 6) | (uint32_t)(15)),        
     
    CAN_INT_FLAG_MTF2  = (((uint32_t)(((uint8_t)0x08U)) << 12) | ((uint32_t)(16U) << 6) | (uint32_t)(0U)),     
    CAN_INT_FLAG_MTF1  = (((uint32_t)(((uint8_t)0x08U)) << 12) | ((uint32_t)(8U) << 6) | (uint32_t)(0U)),      
    CAN_INT_FLAG_MTF0  = (((uint32_t)(((uint8_t)0x08U)) << 12) | ((uint32_t)(0U) << 6) | (uint32_t)(0U)),      
     
    CAN_INT_FLAG_RFO0  = (((uint32_t)(((uint8_t)0x0CU)) << 12) | ((uint32_t)(4U) << 6) | (uint32_t)(3U)),     
    CAN_INT_FLAG_RFF0  = (((uint32_t)(((uint8_t)0x0CU)) << 12) | ((uint32_t)(3U) << 6) | (uint32_t)(2U)),     
    CAN_INT_FLAG_RFL0  = (((uint32_t)(((uint8_t)0x0CU)) << 12) | ((uint32_t)(2U) << 6) | (uint32_t)(1U)),     
     
    CAN_INT_FLAG_RFO1  = (((uint32_t)(((uint8_t)0x10U)) << 12) | ((uint32_t)(4U) << 6) | (uint32_t)(6U)),     
    CAN_INT_FLAG_RFF1  = (((uint32_t)(((uint8_t)0x10U)) << 12) | ((uint32_t)(3U) << 6) | (uint32_t)(5U)),     
    CAN_INT_FLAG_RFL1  = (((uint32_t)(((uint8_t)0x10U)) << 12) | ((uint32_t)(2U) << 6) | (uint32_t)(4U)),     
     
    CAN_INT_FLAG_ERRN  = (((uint32_t)(((uint8_t)0x18U)) << 12) | ((uint32_t)(3U) << 6) | (uint32_t)(11U)),        
    CAN_INT_FLAG_BOERR = (((uint32_t)(((uint8_t)0x18U)) << 12) | ((uint32_t)(2U) << 6) | (uint32_t)(10U)),        
    CAN_INT_FLAG_PERR  = (((uint32_t)(((uint8_t)0x18U)) << 12) | ((uint32_t)(1U) << 6) | (uint32_t)(9U)),         
    CAN_INT_FLAG_WERR  = (((uint32_t)(((uint8_t)0x18U)) << 12) | ((uint32_t)(0U) << 6) | (uint32_t)(8U)),         
}can_interrupt_flag_enum;

 
typedef struct
{
    uint8_t working_mode;                                                 
    uint8_t resync_jump_width;                                           
    uint8_t time_segment_1;                                              
    uint8_t time_segment_2;                                              
    ControlStatus time_triggered;                                        
    ControlStatus auto_bus_off_recovery;                                 
    ControlStatus auto_wake_up;                                          
    ControlStatus no_auto_retrans;                                       
    ControlStatus rec_fifo_overwrite;                                    
    ControlStatus trans_fifo_order;                                      
    uint16_t prescaler;                                                  
}can_parameter_struct;

 
typedef struct
{
    uint32_t tx_sfid;                                                    
    uint32_t tx_efid;                                                    
    uint8_t tx_ff;                                                       
    uint8_t tx_ft;                                                       
    uint8_t tx_dlen;                                                     
    uint8_t tx_data[8];                                                  
}can_trasnmit_message_struct;

 
typedef struct
{
    uint32_t rx_sfid;                                                    
    uint32_t rx_efid;                                                    
    uint8_t rx_ff;                                                       
    uint8_t rx_ft;                                                       
    uint8_t rx_dlen;                                                     
    uint8_t rx_data[8];                                                  
    uint8_t rx_fi;                                                       
} can_receive_message_struct;

 
typedef struct
{
    uint16_t filter_list_high;                                           
    uint16_t filter_list_low;                                            
    uint16_t filter_mask_high;                                           
    uint16_t filter_mask_low;                                            
    uint16_t filter_fifo_number;                                         
    uint16_t filter_number;                                              
    uint16_t filter_mode;                                                
    uint16_t filter_bits;                                                
    ControlStatus filter_enable;                                         
}can_filter_parameter_struct;

 
typedef enum
{
    CAN_ERROR_NONE = 0,                                                  
    CAN_ERROR_FILL,                                                      
    CAN_ERROR_FORMATE,                                                   
    CAN_ERROR_ACK,                                                       
    CAN_ERROR_BITRECESSIVE,                                              
    CAN_ERROR_BITDOMINANTER,                                             
    CAN_ERROR_CRC,                                                       
    CAN_ERROR_SOFTWARECFG,                                               
}can_error_enum;

 
typedef enum
{
    CAN_TRANSMIT_FAILED = 0U,                                             
    CAN_TRANSMIT_OK = 1U,                                                 
    CAN_TRANSMIT_PENDING = 2U,                                            
    CAN_TRANSMIT_NOMAILBOX = 4U,                                          
}can_transmit_state_enum;

typedef enum
{
    CAN_INIT_STRUCT = 0,                                                 
    CAN_FILTER_STRUCT,                                                   
    CAN_TX_MESSAGE_STRUCT,                                               
    CAN_RX_MESSAGE_STRUCT,                                               
}can_struct_type_enum;

 

 

 

 

 

 

 

 

 

 

 

 

 

                  

                  

                  

                  

                  

 

 

 

 

 

 

 

 

 

 

 

 

         

         

         

 


 

 

 

 

 

 

 

 


 

 

 

 

 

 

 

 
 
void can_deinit(uint32_t can_periph);
 
void can_struct_para_init(can_struct_type_enum type, void* p_struct);
 
ErrStatus can_init(uint32_t can_periph, can_parameter_struct* can_parameter_init);
 
void can_filter_init(can_filter_parameter_struct* can_filter_parameter_init);
 
void can1_filter_start_bank(uint8_t start_bank);
 
 
void can_debug_freeze_enable(uint32_t can_periph);
 
void can_debug_freeze_disable(uint32_t can_periph);
 
void can_time_trigger_mode_enable(uint32_t can_periph);
 
void can_time_trigger_mode_disable(uint32_t can_periph);

 
 
uint8_t can_message_transmit(uint32_t can_periph, can_trasnmit_message_struct* transmit_message);
 
can_transmit_state_enum can_transmit_states(uint32_t can_periph, uint8_t mailbox_number);
 
void can_transmission_stop(uint32_t can_periph, uint8_t mailbox_number);
 
void can_message_receive(uint32_t can_periph, uint8_t fifo_number, can_receive_message_struct* receive_message);
 
void can_fifo_release(uint32_t can_periph, uint8_t fifo_number);
 
uint8_t can_receive_message_length_get(uint32_t can_periph, uint8_t fifo_number);
 
ErrStatus can_working_mode_set(uint32_t can_periph, uint8_t working_mode);
 
ErrStatus can_wakeup(uint32_t can_periph);

 
can_error_enum can_error_get(uint32_t can_periph);
 
uint8_t can_receive_error_number_get(uint32_t can_periph);
 
uint8_t can_transmit_error_number_get(uint32_t can_periph);

 
void can_interrupt_enable(uint32_t can_periph, uint32_t interrupt);
 
void can_interrupt_disable(uint32_t can_periph, uint32_t interrupt);
 
FlagStatus can_flag_get(uint32_t can_periph, can_flag_enum flag);
 
void can_flag_clear(uint32_t can_periph, can_flag_enum flag);
 
FlagStatus can_interrupt_flag_get(uint32_t can_periph, can_interrupt_flag_enum flag);
 
void can_interrupt_flag_clear(uint32_t can_periph, can_interrupt_flag_enum flag);








 


























 



 

 

 
 

 

 


 
 
void crc_deinit(void);

 
void crc_data_register_reset(void);
 
uint32_t crc_data_register_read(void);

 
uint8_t crc_free_data_register_read(void);
 
void crc_free_data_register_write(uint8_t free_data);

 
uint32_t crc_single_data_calculate(uint32_t sdata);
 
uint32_t crc_block_data_calculate(uint32_t array[], uint32_t size);








 


























 



 

 

 
 

 

 

 

 
 

 

 

 

 

 

 

 

 
 
void ctc_deinit(void);
 
void ctc_counter_enable(void);
 
void ctc_counter_disable(void);

 
void ctc_irc48m_trim_value_config(uint8_t trim_value);
 
void ctc_software_refsource_pulse_generate(void);
 
void ctc_hardware_trim_mode_config(uint32_t hardmode);

 
void ctc_refsource_polarity_config(uint32_t polarity);
 
void ctc_usbsof_signal_select(uint32_t usbsof);
 
void ctc_refsource_signal_select(uint32_t refs);
 
void ctc_refsource_prescaler_config(uint32_t prescaler);
 
void ctc_clock_limit_value_config(uint8_t limit_value);
 
void ctc_counter_reload_value_config(uint16_t reload_value);

 
uint16_t ctc_counter_capture_value_read(void);
 
FlagStatus ctc_counter_direction_read(void);
 
uint16_t ctc_counter_reload_value_read(void);
 
uint8_t ctc_irc48m_trim_value_read(void);

 
 
void ctc_interrupt_enable(uint32_t interrupt);
 
void ctc_interrupt_disable(uint32_t interrupt);
 
FlagStatus ctc_interrupt_flag_get(uint32_t int_flag); 
 
void ctc_interrupt_flag_clear(uint32_t int_flag);
 
FlagStatus ctc_flag_get(uint32_t flag);
 
void ctc_flag_clear(uint32_t flag);








 


























 



 

 

 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
 

 

 

 

 

 

 
 
 
void dac_deinit(void);
 
void dac_enable(uint32_t dac_periph);
 
void dac_disable(uint32_t dac_periph);
 
void dac_dma_enable(uint32_t dac_periph);
 
void dac_dma_disable(uint32_t dac_periph); 
 
void dac_output_buffer_enable(uint32_t dac_periph);
 
void dac_output_buffer_disable(uint32_t dac_periph);
 
uint16_t dac_output_value_get(uint32_t dac_periph);
 
void dac_data_set(uint32_t dac_periph, uint32_t dac_align, uint16_t data);

 
 
void dac_trigger_enable(uint32_t dac_periph);
 
void dac_trigger_disable(uint32_t dac_periph);
 
void dac_trigger_source_config(uint32_t dac_periph, uint32_t triggersource);
 
void dac_software_trigger_enable(uint32_t dac_periph);
 
void dac_software_trigger_disable(uint32_t dac_periph);

 
 
void dac_wave_mode_config(uint32_t dac_periph, uint32_t wave_mode);
 
void dac_wave_bit_width_config(uint32_t dac_periph, uint32_t bit_width);
 
void dac_lfsr_noise_config(uint32_t dac_periph, uint32_t unmask_bits);
 
void dac_triangle_noise_config(uint32_t dac_periph, uint32_t amplitude);

 
 
void dac_concurrent_enable(void);
 
void dac_concurrent_disable(void);
 
void dac_concurrent_software_trigger_enable(void);
 
void dac_concurrent_software_trigger_disable(void);
 
void dac_concurrent_output_buffer_enable(void);
 
void dac_concurrent_output_buffer_disable(void);
 
void dac_concurrent_data_set(uint32_t dac_align, uint16_t data0, uint16_t data1);
 
void dac_concurrent_interrupt_enable(void);
 
void dac_concurrent_interrupt_disable(void);

 
 
void dac_interrupt_enable(uint32_t dac_periph);
 
void dac_interrupt_disable(uint32_t dac_periph);
 
FlagStatus dac_flag_get(uint32_t dac_periph);
 
void dac_flag_clear(uint32_t dac_periph);
 
FlagStatus dac_interrupt_flag_get(uint32_t dac_periph);
 
void dac_interrupt_flag_clear(uint32_t dac_periph);








 


























 



 

 

 
 

 

 

 

 

 

 
enum dbg_reg_idx
{
    DBG_IDX_CTL0  = 0x04U,
    DBG_IDX_CTL1  = 0x08U,
    DBG_IDX_CTL2  = 0x0CU
};

typedef enum
{
    DBG_TIMER1_HOLD            = (((DBG_IDX_CTL1) << 6) | (0U)),                     
    DBG_TIMER2_HOLD            = (((DBG_IDX_CTL1) << 6) | (1U)),                     
    DBG_TIMER3_HOLD            = (((DBG_IDX_CTL1) << 6) | (2U)),                     
    DBG_TIMER4_HOLD            = (((DBG_IDX_CTL1) << 6) | (3U)),                     
    DBG_TIMER5_HOLD            = (((DBG_IDX_CTL1) << 6) | (4U)),                     
    DBG_TIMER6_HOLD            = (((DBG_IDX_CTL1) << 6) | (5U)),                     
    DBG_TIMER11_HOLD           = (((DBG_IDX_CTL1) << 6) | (6U)),                     
    DBG_TIMER12_HOLD           = (((DBG_IDX_CTL1) << 6) | (7U)),                     
    DBG_TIMER13_HOLD           = (((DBG_IDX_CTL1) << 6) | (8U)),                     
    DBG_RTC_HOLD               = (((DBG_IDX_CTL1) << 6) | (10U)),                    
    DBG_WWDGT_HOLD             = (((DBG_IDX_CTL1) << 6) | (11U)),                    
    DBG_FWDGT_HOLD             = (((DBG_IDX_CTL1) << 6) | (12U)),                    
    DBG_I2C0_HOLD              = (((DBG_IDX_CTL1) << 6) | (21U)),                    
    DBG_I2C1_HOLD              = (((DBG_IDX_CTL1) << 6) | (22U)),                    
    DBG_I2C2_HOLD              = (((DBG_IDX_CTL1) << 6) | (23U)),                    
    DBG_CAN0_HOLD              = (((DBG_IDX_CTL1) << 6) | (25U)),                    
    DBG_CAN1_HOLD              = (((DBG_IDX_CTL1) << 6) | (26U)),                    
    DBG_TIMER0_HOLD            = (((DBG_IDX_CTL2) << 6) | (0U)),         
    DBG_TIMER7_HOLD            = (((DBG_IDX_CTL2) << 6) | (1U)),         
    DBG_TIMER8_HOLD            = (((DBG_IDX_CTL2) << 6) | (16U)),        
    DBG_TIMER9_HOLD            = (((DBG_IDX_CTL2) << 6) | (17U)),        
    DBG_TIMER10_HOLD           = (((DBG_IDX_CTL2) << 6) | (18U))        
}dbg_periph_enum;


 
 
void dbg_deinit(void);
 
uint32_t dbg_id_get(void);

 
void dbg_low_power_enable(uint32_t dbg_low_power);
 
void dbg_low_power_disable(uint32_t dbg_low_power);

 
void dbg_periph_enable(dbg_periph_enum dbg_periph);
 
void dbg_periph_disable(dbg_periph_enum dbg_periph);

 
void dbg_trace_pin_enable(void);
 
void dbg_trace_pin_disable(void);
 
void dbg_trace_pin_mode_set(uint32_t trace_mode);








 


























 



 

 

 
 

 

 

 

 

 

 

 

 

 

 
 
typedef struct
{   
    uint32_t capture_mode;                                            
    uint32_t clock_polarity;                                          
    uint32_t hsync_polarity;                                          
    uint32_t vsync_polarity;                                          
    uint32_t frame_rate;                                              
    uint32_t interface_format;                                        
}dci_parameter_struct;                                                         




 


 

 

   

 
 
 
void dci_deinit(void);
 
void dci_init(dci_parameter_struct* dci_struct);

 
void dci_enable(void);
 
void dci_disable(void);
 
void dci_capture_enable(void);
 
void dci_capture_disable(void);
 
void dci_jpeg_enable(void);
 
void dci_jpeg_disable(void);

 
 
void dci_crop_window_enable(void);
 
void dci_crop_window_disable(void);
 
void dci_crop_window_config(uint16_t start_x, uint16_t start_y, uint16_t size_width, uint16_t size_height);

 
void dci_embedded_sync_enable(void);
 
void dci_embedded_sync_disable(void);
 
void dci_sync_codes_config(uint8_t frame_start, uint8_t line_start, uint8_t line_end, uint8_t frame_end);
 
void dci_sync_codes_unmask_config(uint8_t frame_start, uint8_t line_start, uint8_t line_end, uint8_t frame_end);

 
uint32_t dci_data_read(void);

 
 
FlagStatus dci_flag_get(uint32_t flag);
 
void dci_interrupt_enable(uint32_t interrupt);
 
void dci_interrupt_disable(uint32_t interrupt);


 
FlagStatus dci_interrupt_flag_get(uint32_t int_flag);
 
void dci_interrupt_flag_clear(uint32_t int_flag);








 


























 



 

 









 
 

 

 

 

 

 

 

 

 
 
typedef enum 
{
    DMA_CH0 = 0,                                     
    DMA_CH1,                                         
    DMA_CH2,                                         
    DMA_CH3,                                         
    DMA_CH4,                                         
    DMA_CH5,                                         
    DMA_CH6,                                         
    DMA_CH7                                          
} dma_channel_enum;

 
typedef enum 
{
    DMA_SUBPERI0 = 0,                                
    DMA_SUBPERI1,                                    
    DMA_SUBPERI2,                                    
    DMA_SUBPERI3,                                    
    DMA_SUBPERI4,                                    
    DMA_SUBPERI5,                                    
    DMA_SUBPERI6,                                    
    DMA_SUBPERI7                                     
} dma_subperipheral_enum;

 
typedef struct
{
    uint32_t periph_addr;                            
    uint32_t periph_width;                           
    uint32_t periph_inc;                               

    uint32_t memory0_addr;                           
    uint32_t memory_width;                           
    uint32_t memory_inc;                             

    uint32_t memory_burst_width;                     
    uint32_t periph_burst_width;                     
    uint32_t critical_value;                         

    uint32_t circular_mode;                          
    uint32_t direction;                              
    uint32_t number;                                 
    uint32_t priority;                               
}dma_multi_data_parameter_struct;

 
typedef struct
{
    uint32_t periph_addr;                            
    uint32_t periph_inc;                               

    uint32_t memory0_addr;                           
    uint32_t memory_inc;                             

    uint32_t periph_memory_width;                    

    uint32_t circular_mode;                          
    uint32_t direction;                              
    uint32_t number;                                 
    uint32_t priority;                               
} dma_single_data_parameter_struct;


 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
 

 


 
 
 
void dma_deinit(uint32_t dma_periph, dma_channel_enum channelx);
 
void dma_single_data_para_struct_init(dma_single_data_parameter_struct* init_struct);
 
void dma_multi_data_para_struct_init(dma_multi_data_parameter_struct* init_struct);
 
void dma_single_data_mode_init(uint32_t dma_periph, dma_channel_enum channelx, dma_single_data_parameter_struct* init_struct);
 
void dma_multi_data_mode_init(uint32_t dma_periph, dma_channel_enum channelx, dma_multi_data_parameter_struct* init_struct);

 
 
void dma_periph_address_config(uint32_t dma_periph, dma_channel_enum channelx, uint32_t address);
 
void dma_memory_address_config(uint32_t dma_periph, dma_channel_enum channelx, uint8_t memory_flag, uint32_t address);

 
void dma_transfer_number_config(uint32_t dma_periph,dma_channel_enum channelx, uint32_t number);
 
uint32_t dma_transfer_number_get(uint32_t dma_periph, dma_channel_enum channelx);

 
void dma_priority_config(uint32_t dma_periph, dma_channel_enum channelx, uint32_t priority);

 
void dma_memory_burst_beats_config (uint32_t dma_periph, dma_channel_enum channelx, uint32_t mbeat);
 
void dma_periph_burst_beats_config (uint32_t dma_periph, dma_channel_enum channelx, uint32_t pbeat);
 
void dma_memory_width_config (uint32_t dma_periph, dma_channel_enum channelx, uint32_t msize);
 
void dma_periph_width_config (uint32_t dma_periph, dma_channel_enum channelx, uint32_t psize);

 
void dma_memory_address_generation_config(uint32_t dma_periph, dma_channel_enum channelx, uint8_t generation_algorithm);
 
void dma_peripheral_address_generation_config(uint32_t dma_periph, dma_channel_enum channelx, uint8_t generation_algorithm);

 
void dma_circulation_enable(uint32_t dma_periph, dma_channel_enum channelx);
 
void dma_circulation_disable(uint32_t dma_periph, dma_channel_enum channelx);
 
void dma_channel_enable(uint32_t dma_periph, dma_channel_enum channelx);
 
void dma_channel_disable(uint32_t dma_periph, dma_channel_enum channelx);

 
void dma_transfer_direction_config(uint32_t dma_periph, dma_channel_enum channelx, uint8_t direction);

 
void dma_switch_buffer_mode_config(uint32_t dma_periph, dma_channel_enum channelx, uint32_t memory1_addr, uint32_t memory_select);
 
uint32_t dma_using_memory_get(uint32_t dma_periph, dma_channel_enum channelx);

 
void dma_channel_subperipheral_select(uint32_t dma_periph, dma_channel_enum channelx, dma_subperipheral_enum sub_periph);
 
void dma_flow_controller_config(uint32_t dma_periph, dma_channel_enum channelx, uint32_t controller);
 
void dma_switch_buffer_mode_enable(uint32_t dma_periph, dma_channel_enum channelx, ControlStatus newvalue);
 
uint32_t dma_fifo_status_get(uint32_t dma_periph, dma_channel_enum channelx);

 
 
FlagStatus dma_flag_get(uint32_t dma_periph, dma_channel_enum channelx, uint32_t flag);
 
void dma_flag_clear(uint32_t dma_periph, dma_channel_enum channelx, uint32_t flag);
 
FlagStatus dma_interrupt_flag_get(uint32_t dma_periph, dma_channel_enum channelx, uint32_t interrupt);
 
void dma_interrupt_flag_clear(uint32_t dma_periph, dma_channel_enum channelx, uint32_t interrupt);
 
void dma_interrupt_enable(uint32_t dma_periph, dma_channel_enum channelx, uint32_t source);
 
void dma_interrupt_disable(uint32_t dma_periph, dma_channel_enum channelx, uint32_t source);








 


























 



 

 

 
 

 

 

 

 

 

 
 
typedef enum
{ 
    EXTI_0      = ((uint32_t)((uint32_t)0x01U<<(0))),                                      
    EXTI_1      = ((uint32_t)((uint32_t)0x01U<<(1))),                                      
    EXTI_2      = ((uint32_t)((uint32_t)0x01U<<(2))),                                      
    EXTI_3      = ((uint32_t)((uint32_t)0x01U<<(3))),                                      
    EXTI_4      = ((uint32_t)((uint32_t)0x01U<<(4))),                                      
    EXTI_5      = ((uint32_t)((uint32_t)0x01U<<(5))),                                      
    EXTI_6      = ((uint32_t)((uint32_t)0x01U<<(6))),                                      
    EXTI_7      = ((uint32_t)((uint32_t)0x01U<<(7))),                                      
    EXTI_8      = ((uint32_t)((uint32_t)0x01U<<(8))),                                      
    EXTI_9      = ((uint32_t)((uint32_t)0x01U<<(9))),                                      
    EXTI_10     = ((uint32_t)((uint32_t)0x01U<<(10))),                                     
    EXTI_11     = ((uint32_t)((uint32_t)0x01U<<(11))),                                     
    EXTI_12     = ((uint32_t)((uint32_t)0x01U<<(12))),                                     
    EXTI_13     = ((uint32_t)((uint32_t)0x01U<<(13))),                                     
    EXTI_14     = ((uint32_t)((uint32_t)0x01U<<(14))),                                     
    EXTI_15     = ((uint32_t)((uint32_t)0x01U<<(15))),                                     
    EXTI_16     = ((uint32_t)((uint32_t)0x01U<<(16))),                                     
    EXTI_17     = ((uint32_t)((uint32_t)0x01U<<(17))),                                     
    EXTI_18     = ((uint32_t)((uint32_t)0x01U<<(18))),                                     
    EXTI_19     = ((uint32_t)((uint32_t)0x01U<<(19))),                                     
    EXTI_20     = ((uint32_t)((uint32_t)0x01U<<(20))),                                         
    EXTI_21     = ((uint32_t)((uint32_t)0x01U<<(21))),                                     
    EXTI_22     = ((uint32_t)((uint32_t)0x01U<<(22))),                                     
}exti_line_enum;

 
typedef enum
{
    EXTI_INTERRUPT   = 0,                                      
    EXTI_EVENT                                                 
}exti_mode_enum;

 
typedef enum
{ 
    EXTI_TRIG_RISING = 0,                                      
    EXTI_TRIG_FALLING,                                         
    EXTI_TRIG_BOTH,                                            
    EXTI_TRIG_NONE                                             
}exti_trig_type_enum;

 
 
void exti_deinit(void);
 
void exti_init(exti_line_enum linex, exti_mode_enum mode, exti_trig_type_enum trig_type);
 
void exti_interrupt_enable(exti_line_enum linex);
 
void exti_interrupt_disable(exti_line_enum linex);
 
void exti_event_enable(exti_line_enum linex);
 
void exti_event_disable(exti_line_enum linex);
 
void exti_software_interrupt_enable(exti_line_enum linex);
 
void exti_software_interrupt_disable(exti_line_enum linex);

 
 
FlagStatus exti_flag_get(exti_line_enum linex);
 
void exti_flag_clear(exti_line_enum linex);
 
FlagStatus exti_interrupt_flag_get(exti_line_enum linex);
 
void exti_interrupt_flag_clear(exti_line_enum linex);








 


























 




 

 


 
 

 

 

 

 

 

 

 

 

 
 
typedef enum
{
    FMC_READY,                                                     
    FMC_BUSY,                                                      
    FMC_RDDERR,                                                    
    FMC_PGSERR,                                                    
    FMC_PGMERR,                                                    
    FMC_WPERR,                                                     
    FMC_OPERR,                                                     
    FMC_PGERR,                                                     
}fmc_state_enum;

 


 

 

 

 

   

 

 

 

 

 

   

   

 


  

 

 

 
 
 
void fmc_wscnt_set(uint32_t wscnt);
 
void fmc_unlock(void);
 
void fmc_lock(void);
 
fmc_state_enum fmc_sector_erase(uint32_t fmc_sector);
 
fmc_state_enum fmc_mass_erase(void);
 
fmc_state_enum fmc_bank0_erase(void);
 
fmc_state_enum fmc_bank1_erase(void);
 
fmc_state_enum fmc_word_program(uint32_t address, uint32_t data);
 
fmc_state_enum fmc_halfword_program(uint32_t address, uint16_t data);
 
fmc_state_enum fmc_byte_program(uint32_t address, uint8_t data);

 
 
void ob_unlock(void);
 
void ob_lock(void);
 
void ob_start(void);
 
void ob_erase(void);
 
void ob_write_protection_enable(uint32_t ob_wp);
 
void ob_write_protection_disable(uint32_t ob_wp);
 
void ob_drp_enable(uint32_t ob_drp);
 
void ob_drp_disable(uint32_t ob_drp);
 
void ob_security_protection_config(uint8_t ob_spc);
 
void ob_user_write(uint32_t ob_fwdgt, uint32_t ob_deepsleep, uint32_t ob_stdby);
 
void ob_user_bor_threshold(uint32_t ob_bor_th);
 
void ob_boot_mode_config(uint32_t boot_mode);
 
uint8_t ob_user_get(void);
 
uint16_t ob_write_protection0_get(void);
 
uint16_t ob_write_protection1_get(void);
 
uint16_t ob_drp0_get(void);
 
uint16_t ob_drp1_get(void);
 
FlagStatus ob_spc_get(void);
 
uint8_t ob_user_bor_threshold_get(void);

 
 
void fmc_interrupt_enable(uint32_t fmc_int);
 
void fmc_interrupt_disable(uint32_t fmc_int);
 
FlagStatus fmc_flag_get(uint32_t fmc_flag);
 
void fmc_flag_clear(uint32_t fmc_flag);
 
fmc_state_enum fmc_state_get(void);
 
fmc_state_enum fmc_ready_wait(void);








 


























 



 

 

 
 

 

 

 

 
 

 

 

 

 
 
void fwdgt_write_enable(void);
 
void fwdgt_write_disable(void);
 
void fwdgt_enable(void);

 
void fwdgt_counter_reload(void);
 
ErrStatus fwdgt_config(uint16_t reload_value, uint8_t prescaler_div);

 
FlagStatus fwdgt_flag_get(uint16_t flag);








 


























 



 

 

 
 

 

 

 

 

 

 

 

 

 

 

 

 
typedef FlagStatus bit_status;

 

 

 

 

 

 

 

 

 

 
 
 

 
 
void gpio_deinit(uint32_t gpio_periph);
 
void gpio_mode_set(uint32_t gpio_periph, uint32_t mode, uint32_t pull_up_down, uint32_t pin);
 
void gpio_output_options_set(uint32_t gpio_periph, uint8_t otype, uint32_t speed, uint32_t pin);

 
void gpio_bit_set(uint32_t gpio_periph, uint32_t pin);
 
void gpio_bit_reset(uint32_t gpio_periph, uint32_t pin);
 
void gpio_bit_write(uint32_t gpio_periph, uint32_t pin, bit_status bit_value);
 
void gpio_port_write(uint32_t gpio_periph, uint16_t data);

 
FlagStatus gpio_input_bit_get(uint32_t gpio_periph, uint32_t pin);
 
uint16_t gpio_input_port_get(uint32_t gpio_periph);
 
FlagStatus gpio_output_bit_get(uint32_t gpio_periph, uint32_t pin);
 
uint16_t gpio_output_port_get(uint32_t gpio_periph);

 
void gpio_af_set(uint32_t gpio_periph, uint32_t alt_func_num, uint32_t pin);
 
void gpio_pin_lock(uint32_t gpio_periph, uint32_t pin);

 
void gpio_bit_toggle(uint32_t gpio_periph, uint32_t pin);
 
void gpio_port_toggle(uint32_t gpio_periph);








 


























 



 

 

 

 

 

 

 

 

 

 
 

 

 

 

 

 

 

 

 

 

 

 
 
 
void syscfg_deinit(void);

 
 
void syscfg_bootmode_config(uint8_t syscfg_bootmode);
 
void syscfg_fmc_swap_config(uint32_t syscfg_fmc_swap);
 
void syscfg_exmc_swap_config(uint32_t syscfg_exmc_swap); 
 
void syscfg_exti_line_config(uint8_t exti_port, uint8_t exti_pin);
 
void syscfg_enet_phy_interface_config(uint32_t syscfg_enet_phy_interface);
 
void syscfg_compensation_config(uint32_t syscfg_compensation);

 
 
FlagStatus syscfg_flag_get(void);









 


























 




 

 

 
 

 

 

 

 

 

 

 

 

 

 

 

 
typedef enum {
    I2C_DF_DISABLE,                                      
    I2C_DF_1PCLK,                                        
    I2C_DF_2PCLKS,                                       
    I2C_DF_3PCLKS,                                       
    I2C_DF_4PCLKS,                                       
    I2C_DF_5PCLKS,                                       
    I2C_DF_6PCLKS,                                       
    I2C_DF_7PCLKS,                                       
    I2C_DF_8PCLKS,                                       
    I2C_DF_9PCLKS,                                       
    I2C_DF_10PCLKS,                                      
    I2C_DF_11PCLKS,                                      
    I2C_DF_12PCLKS,                                      
    I2C_DF_13PCLKS,                                      
    I2C_DF_14PCLKS,                                      
    I2C_DF_15PCLKS                                       
}i2c_digital_filter_enum;

 
 

 

 
typedef enum
{
     
    I2C_FLAG_SBSEND = (((uint32_t)(0x14U) << 6) | (uint32_t)(0U)),                 
    I2C_FLAG_ADDSEND = (((uint32_t)(0x14U) << 6) | (uint32_t)(1U)),                
    I2C_FLAG_BTC = (((uint32_t)(0x14U) << 6) | (uint32_t)(2U)),                    
    I2C_FLAG_ADD10SEND = (((uint32_t)(0x14U) << 6) | (uint32_t)(3U)),              
    I2C_FLAG_STPDET = (((uint32_t)(0x14U) << 6) | (uint32_t)(4U)),                 
    I2C_FLAG_RBNE = (((uint32_t)(0x14U) << 6) | (uint32_t)(6U)),                   
    I2C_FLAG_TBE = (((uint32_t)(0x14U) << 6) | (uint32_t)(7U)),                    
    I2C_FLAG_BERR = (((uint32_t)(0x14U) << 6) | (uint32_t)(8U)),                   
    I2C_FLAG_LOSTARB = (((uint32_t)(0x14U) << 6) | (uint32_t)(9U)),                
    I2C_FLAG_AERR = (((uint32_t)(0x14U) << 6) | (uint32_t)(10U)),                  
    I2C_FLAG_OUERR = (((uint32_t)(0x14U) << 6) | (uint32_t)(11U)),                 
    I2C_FLAG_PECERR = (((uint32_t)(0x14U) << 6) | (uint32_t)(12U)),                
    I2C_FLAG_SMBTO = (((uint32_t)(0x14U) << 6) | (uint32_t)(14U)),                 
    I2C_FLAG_SMBALT = (((uint32_t)(0x14U) << 6) | (uint32_t)(15U)),                
     
    I2C_FLAG_MASTER = (((uint32_t)(0x18U) << 6) | (uint32_t)(0U)),                 
    I2C_FLAG_I2CBSY = (((uint32_t)(0x18U) << 6) | (uint32_t)(1U)),                 
    I2C_FLAG_TRS = (((uint32_t)(0x18U) << 6) | (uint32_t)(2U)),                    
    I2C_FLAG_RXGC = (((uint32_t)(0x18U) << 6) | (uint32_t)(4U)),                   
    I2C_FLAG_DEFSMB = (((uint32_t)(0x18U) << 6) | (uint32_t)(5U)),                 
    I2C_FLAG_HSTSMB = (((uint32_t)(0x18U) << 6) | (uint32_t)(6U)),                 
    I2C_FLAG_DUMOD = (((uint32_t)(0x18U) << 6) | (uint32_t)(7U)),                  
     
    I2C_FLAG_TFF = (((uint32_t)(0x80U) << 6) | (uint32_t)(12U)),                   
    I2C_FLAG_TFR = (((uint32_t)(0x80U) << 6) | (uint32_t)(13U)),                   
    I2C_FLAG_RFF = (((uint32_t)(0x80U) << 6) | (uint32_t)(14U)),                   
    I2C_FLAG_RFR = (((uint32_t)(0x80U) << 6) | (uint32_t)(15U))                   
}i2c_flag_enum;

 
typedef enum
{
     
    I2C_INT_FLAG_SBSEND = (((uint32_t)(0x14U) << 22) | (uint32_t)((0U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(9U))),         
    I2C_INT_FLAG_ADDSEND = (((uint32_t)(0x14U) << 22) | (uint32_t)((1U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(9U))),        
    I2C_INT_FLAG_BTC =  (((uint32_t)(0x14U) << 22) | (uint32_t)((2U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(9U))),           
    I2C_INT_FLAG_ADD10SEND =  (((uint32_t)(0x14U) << 22) | (uint32_t)((3U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(9U))),     
    I2C_INT_FLAG_STPDET = (((uint32_t)(0x14U) << 22) | (uint32_t)((4U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(9U))),         
    I2C_INT_FLAG_RBNE = (((uint32_t)(0x14U) << 22) | (uint32_t)((6U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(9U))),           
    I2C_INT_FLAG_TBE = (((uint32_t)(0x14U) << 22) | (uint32_t)((7U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(9U))),                
    I2C_INT_FLAG_BERR = (((uint32_t)(0x14U) << 22) | (uint32_t)((8U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(8U))),           
    I2C_INT_FLAG_LOSTARB = (((uint32_t)(0x14U) << 22) | (uint32_t)((9U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(8U))),        
    I2C_INT_FLAG_AERR = (((uint32_t)(0x14U) << 22) | (uint32_t)((10U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(8U))),          
    I2C_INT_FLAG_OUERR = (((uint32_t)(0x14U) << 22) | (uint32_t)((11U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(8U))),         
    I2C_INT_FLAG_PECERR = (((uint32_t)(0x14U) << 22) | (uint32_t)((12U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(8U))),        
    I2C_INT_FLAG_SMBTO = (((uint32_t)(0x14U) << 22) | (uint32_t)((14U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(8U))),         
    I2C_INT_FLAG_SMBALT = (((uint32_t)(0x14U) << 22) | (uint32_t)((15U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(8U))),        
     
    I2C_INT_FLAG_TFF = (((uint32_t)(0x80U) << 22) | (uint32_t)((12U) << 16) | (((uint32_t)(0x80U) << 6) | (uint32_t)(4U))),           
    I2C_INT_FLAG_TFR = (((uint32_t)(0x80U) << 22) | (uint32_t)((13U) << 16) | (((uint32_t)(0x80U) << 6) | (uint32_t)(5U))),          
    I2C_INT_FLAG_RFF = (((uint32_t)(0x80U) << 22) | (uint32_t)((14U) << 16) | (((uint32_t)(0x80U) << 6) | (uint32_t)(6U))),          
    I2C_INT_FLAG_RFR = (((uint32_t)(0x80U) << 22) | (uint32_t)((15U) << 16) | (((uint32_t)(0x80U) << 6) | (uint32_t)(7U)))          
}i2c_interrupt_flag_enum;

 
typedef enum
{
     
    I2C_INT_ERR = (((uint32_t)(0x04U) << 6) | (uint32_t)(8U)),                      
    I2C_INT_EV = (((uint32_t)(0x04U) << 6) | (uint32_t)(9U)),                       
    I2C_INT_BUF = (((uint32_t)(0x04U) << 6) | (uint32_t)(10U)),                     
     
    I2C_INT_TFF = (((uint32_t)(0x80U) << 6) | (uint32_t)(4U)),                     
    I2C_INT_TFR = (((uint32_t)(0x80U) << 6) | (uint32_t)(5U)),                     
    I2C_INT_RFF = (((uint32_t)(0x80U) << 6) | (uint32_t)(6U)),                     
    I2C_INT_RFR = (((uint32_t)(0x80U) << 6) | (uint32_t)(7U))                      
}i2c_interrupt_enum;

 

 

 

 

 

 

 

 

 

 
 

 

 
 

 

 
 

 

 

 

 

 

 
 
void i2c_deinit(uint32_t i2c_periph);
 
void i2c_clock_config(uint32_t i2c_periph, uint32_t clkspeed, uint32_t dutycyc);
 
void i2c_mode_addr_config(uint32_t i2c_periph, uint32_t mode, uint32_t addformat, uint32_t addr);
 
void i2c_smbus_type_config(uint32_t i2c_periph, uint32_t type);
 
void i2c_ack_config(uint32_t i2c_periph, uint32_t ack);
 
void i2c_ackpos_config(uint32_t i2c_periph, uint32_t pos);
 
void i2c_master_addressing(uint32_t i2c_periph, uint32_t addr, uint32_t trandirection);
 
void i2c_dualaddr_enable(uint32_t i2c_periph, uint32_t addr);
 
void i2c_dualaddr_disable(uint32_t i2c_periph);
 
void i2c_enable(uint32_t i2c_periph);
 
void i2c_disable(uint32_t i2c_periph);

 
void i2c_start_on_bus(uint32_t i2c_periph);
 
void i2c_stop_on_bus(uint32_t i2c_periph);
 
void i2c_data_transmit(uint32_t i2c_periph, uint8_t data);
 
uint8_t i2c_data_receive(uint32_t i2c_periph);
 
void i2c_dma_enable(uint32_t i2c_periph, uint32_t dmastate);
 
void i2c_dma_last_transfer_config(uint32_t i2c_periph, uint32_t dmalast);
 
void i2c_stretch_scl_low_config(uint32_t i2c_periph, uint32_t stretchpara);
 
void i2c_slave_response_to_gcall_config(uint32_t i2c_periph, uint32_t gcallpara);
 
void i2c_software_reset_config(uint32_t i2c_periph, uint32_t sreset);

 
void i2c_pec_enable(uint32_t i2c_periph, uint32_t pecstate);
 
void i2c_pec_transfer_enable(uint32_t i2c_periph, uint32_t pecpara);
 
uint8_t i2c_pec_value_get(uint32_t i2c_periph);
 
void i2c_smbus_issue_alert(uint32_t i2c_periph, uint32_t smbuspara);
 
void i2c_smbus_arp_enable(uint32_t i2c_periph, uint32_t arpstate);

 
void i2c_analog_noise_filter_disable(uint32_t i2c_periph);
 
void i2c_analog_noise_filter_enable(uint32_t i2c_periph);
 
void i2c_digital_noise_filter_config(uint32_t i2c_periph,i2c_digital_filter_enum dfilterpara);

 
void i2c_sam_enable(uint32_t i2c_periph);
 
void i2c_sam_disable(uint32_t i2c_periph);
 
void i2c_sam_timeout_enable(uint32_t i2c_periph);
 
void i2c_sam_timeout_disable(uint32_t i2c_periph);

 
FlagStatus i2c_flag_get(uint32_t i2c_periph, i2c_flag_enum flag);
 
void i2c_flag_clear(uint32_t i2c_periph, i2c_flag_enum flag);
 
void i2c_interrupt_enable(uint32_t i2c_periph, i2c_interrupt_enum interrupt);
 
void i2c_interrupt_disable(uint32_t i2c_periph, i2c_interrupt_enum interrupt);
 
FlagStatus i2c_interrupt_flag_get(uint32_t i2c_periph, i2c_interrupt_flag_enum int_flag);
 
void i2c_interrupt_flag_clear(uint32_t i2c_periph, i2c_interrupt_flag_enum int_flag);








 


























 



 

 

 
 

 
 

 
 
 
 
  

 
 
void iref_deinit(void);
 
void iref_enable(void);
 
void iref_disable(void);

 
void iref_mode_set(uint32_t step);
 
void iref_sink_set(uint32_t sinkmode);
 
void iref_precision_trim_value_set(uint32_t precisiontrim);
 
void iref_step_data_config(uint32_t stepdata);








 


























 




 

 

 
 

 

 
 

 

 

 

 

 

 

 

 

 

 

 

 
 
void pmu_deinit(void);

 
void pmu_lvd_select(uint32_t lvdt_n);
 
void pmu_ldo_output_select(uint32_t ldo_output);
 
void pmu_lvd_disable(void);

 
 
void pmu_highdriver_switch_select(uint32_t highdr_switch);
 
void pmu_highdriver_mode_enable(void);
 
void pmu_highdriver_mode_disable(void);
 
void pmu_low_driver_mode_enable(uint32_t lowdr_mode);
 
void pmu_lowdriver_lowpower_config(uint32_t mode);
 
void pmu_lowdriver_normalpower_config(uint32_t mode);

 
 
void pmu_to_sleepmode(uint8_t sleepmodecmd);
 
void pmu_to_deepsleepmode(uint32_t ldo, uint8_t deepsleepmodecmd);
 
void pmu_to_standbymode(uint8_t standbymodecmd);
 
void pmu_wakeup_pin_enable(void);
 
void pmu_wakeup_pin_disable(void);

 
 
void pmu_backup_ldo_config(uint32_t bkp_ldo);
 
void pmu_backup_write_enable(void);
 
void pmu_backup_write_disable(void);

 
 
void pmu_flag_reset(uint32_t flag_reset);
 
FlagStatus pmu_flag_get(uint32_t pmu_flag);








 


























 




 

 

 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
 
typedef struct
{
    uint8_t year;                                                                
    uint8_t month;                                                               
    uint8_t date;                                                                
    uint8_t day_of_week;                                                         
    uint8_t hour;                                                                
    uint8_t minute;                                                              
    uint8_t second;                                                              
    uint16_t factor_asyn;                                                        
    uint16_t factor_syn;                                                         
    uint32_t am_pm;                                                              
    uint32_t display_format;                                                     
}rtc_parameter_struct;

 
typedef struct
{
    uint32_t alarm_mask;                                                         
    uint32_t weekday_or_date;                                                    
    uint8_t alarm_day;                                                           
    uint8_t alarm_hour;                                                          
    uint8_t alarm_minute;                                                        
    uint8_t alarm_second;                                                        
    uint32_t am_pm;                                                              
}rtc_alarm_struct;

 
typedef struct
{
    uint8_t timestamp_month;                                                     
    uint8_t timestamp_date;                                                      
    uint8_t timestamp_day;                                                       
    uint8_t timestamp_hour;                                                      
    uint8_t timestamp_minute;                                                    
    uint8_t timestamp_second;                                                    
    uint32_t am_pm;                                                              
}rtc_timestamp_struct;

 
typedef struct
{
    uint32_t tamper_source;                                                      
    uint32_t tamper_trigger;                                                     
    uint32_t tamper_filter;                                                      
    uint32_t tamper_sample_frequency;                                            
    ControlStatus tamper_precharge_enable;                                       
    uint32_t tamper_precharge_time;                                              
    ControlStatus tamper_with_timestamp;                                         
}rtc_tamper_struct; 

 




 




 




 


 






 

 

 


 



 



 

 



 







 


 

 

 

 

 

 
 
 

 

 
 
ErrStatus rtc_deinit(void);
 
ErrStatus rtc_init(rtc_parameter_struct* rtc_initpara_struct);
 
ErrStatus rtc_init_mode_enter(void);
 
void rtc_init_mode_exit(void);
 
ErrStatus rtc_register_sync_wait(void);

 
void rtc_current_time_get(rtc_parameter_struct* rtc_initpara_struct);
 
uint32_t rtc_subsecond_get(void);

 
void rtc_alarm_config(uint8_t rtc_alarm, rtc_alarm_struct* rtc_alarm_time);
 
void rtc_alarm_subsecond_config(uint8_t rtc_alarm, uint32_t mask_subsecond, uint32_t subsecond);
 
void rtc_alarm_get(uint8_t rtc_alarm,rtc_alarm_struct* rtc_alarm_time);
 
uint32_t rtc_alarm_subsecond_get(uint8_t rtc_alarm);
 
void rtc_alarm_enable(uint8_t rtc_alarm);
 
ErrStatus rtc_alarm_disable(uint8_t rtc_alarm);

 
void rtc_timestamp_enable(uint32_t edge);
 
void rtc_timestamp_disable(void);
 
void rtc_timestamp_get(rtc_timestamp_struct* rtc_timestamp);
 
uint32_t rtc_timestamp_subsecond_get(void);
 
void rtc_timestamp_pin_map(uint32_t rtc_af);

 
void rtc_tamper_enable(rtc_tamper_struct* rtc_tamper);
 
void rtc_tamper_disable(uint32_t source);
 
void rtc_tamper0_pin_map(uint32_t rtc_af);

 
void rtc_interrupt_enable(uint32_t interrupt);
 
void rtc_interrupt_disable(uint32_t interrupt);
 
FlagStatus rtc_flag_get(uint32_t flag);
 
void rtc_flag_clear(uint32_t flag);

 
void rtc_alarm_output_config(uint32_t source, uint32_t mode);
 
void rtc_calibration_output_config(uint32_t source);

 
void rtc_hour_adjust(uint32_t operation);
 
ErrStatus rtc_second_adjust(uint32_t add, uint32_t minus);

 
void rtc_bypass_shadow_enable(void);
 
void rtc_bypass_shadow_disable(void);

 
ErrStatus rtc_refclock_detection_enable(void);
 
ErrStatus rtc_refclock_detection_disable(void);

 
void rtc_wakeup_enable(void);
 
ErrStatus rtc_wakeup_disable(void);
 
ErrStatus rtc_wakeup_clock_set(uint8_t wakeup_clock);
 
ErrStatus rtc_wakeup_timer_set(uint16_t wakeup_timer);
 
uint16_t rtc_wakeup_timer_get(void);

 
ErrStatus rtc_smooth_calibration_config(uint32_t window, uint32_t plus, uint32_t minus);
 
ErrStatus rtc_coarse_calibration_enable(void);
 
ErrStatus rtc_coarse_calibration_disable(void);
 
ErrStatus rtc_coarse_calibration_config(uint8_t direction, uint8_t step);








 


























 



 

 

 
 

 

 

 

 

 

 

 

 

 

 

 
 

 

 

 

 

 

 

 

 

 


 

 

 

 

 
 
 
void sdio_deinit(void);
 
void sdio_clock_config(uint32_t clock_edge, uint32_t clock_bypass, uint32_t clock_powersave, uint16_t clock_division);
 
void sdio_hardware_clock_enable(void);
 
void sdio_hardware_clock_disable(void);
 
void sdio_bus_mode_set(uint32_t bus_mode);
 
void sdio_power_state_set(uint32_t power_state);
 
uint32_t sdio_power_state_get(void);
 
void sdio_clock_enable(void);
 
void sdio_clock_disable(void);

 
 
void sdio_command_response_config(uint32_t cmd_index, uint32_t cmd_argument, uint32_t response_type);
 
void sdio_wait_type_set(uint32_t wait_type);
 
void sdio_csm_enable(void);
 
void sdio_csm_disable(void);
 
uint8_t sdio_command_index_get(void);
 
uint32_t sdio_response_get(uint32_t sdio_responsex);

 
 
void sdio_data_config(uint32_t data_timeout, uint32_t data_length, uint32_t data_blocksize);
 
void sdio_data_transfer_config(uint32_t transfer_mode, uint32_t transfer_direction);
 
void sdio_dsm_enable(void);
 
void sdio_dsm_disable(void);
 
void sdio_data_write(uint32_t data);
 
uint32_t sdio_data_read(void);
 
uint32_t sdio_data_counter_get(void);
 
uint32_t sdio_fifo_counter_get(void);
 
void sdio_dma_enable(void);
 
void sdio_dma_disable(void);

 
 
FlagStatus sdio_flag_get(uint32_t flag);
 
void sdio_flag_clear(uint32_t flag);
 
void sdio_interrupt_enable(uint32_t int_flag);
 
void sdio_interrupt_disable(uint32_t int_flag);
 
FlagStatus sdio_interrupt_flag_get(uint32_t int_flag);
 
void sdio_interrupt_flag_clear(uint32_t int_flag);

 
 
void sdio_readwait_enable(void);
 
void sdio_readwait_disable(void);
 
void sdio_stop_readwait_enable(void);
 
void sdio_stop_readwait_disable(void);
 
void sdio_readwait_type_set(uint32_t readwait_type);
 
void sdio_operation_enable(void);
 
void sdio_operation_disable(void);
 
void sdio_suspend_enable(void);
 
void sdio_suspend_disable(void);

 
 
void sdio_ceata_command_enable(void);
 
void sdio_ceata_command_disable(void);
 
void sdio_ceata_interrupt_enable(void);
 
void sdio_ceata_interrupt_disable(void);
 
void sdio_ceata_command_completion_enable(void);
 
void sdio_ceata_command_completion_disable(void);








 


























 




 

 

 

 

 
 

 

 

 

 

 

 

 

 

 

 
 
typedef struct
{   
    uint32_t device_mode;                                                        
    uint32_t trans_mode;                                                         
    uint32_t frame_size;                                                         
    uint32_t nss;                                                                
    uint32_t endian;                                                             
    uint32_t clock_polarity_phase;                                               
    uint32_t prescale;                                                           
}spi_parameter_struct;

 

 

 

 

 

 

 

 

 

 

 

 

 

 

                                     

 

 

 

                                                   

 
 
 
void spi_i2s_deinit(uint32_t spi_periph);
 
void spi_struct_para_init(spi_parameter_struct* spi_struct);
 
void spi_init(uint32_t spi_periph,spi_parameter_struct* spi_struct);
 
void spi_enable(uint32_t spi_periph);
 
void spi_disable(uint32_t spi_periph);

 
void i2s_init(uint32_t spi_periph,uint32_t i2s_mode,uint32_t i2s_standard,uint32_t i2s_ckpl);
 
void i2s_psc_config(uint32_t spi_periph,uint32_t i2s_audiosample,uint32_t i2s_frameformat,uint32_t i2s_mckout);
 
void i2s_enable(uint32_t spi_periph);
 
void i2s_disable(uint32_t spi_periph);

 
 
void spi_nss_output_enable(uint32_t spi_periph);
 
void spi_nss_output_disable(uint32_t spi_periph);
 
void spi_nss_internal_high(uint32_t spi_periph);
 
void spi_nss_internal_low(uint32_t spi_periph);

 
 
void spi_dma_enable(uint32_t spi_periph,uint8_t spi_dma);
 
void spi_dma_disable(uint32_t spi_periph,uint8_t spi_dma);

 
 
void spi_i2s_data_frame_format_config(uint32_t spi_periph,uint16_t frame_format);
 
void spi_i2s_data_transmit(uint32_t spi_periph,uint16_t data);
 
uint16_t spi_i2s_data_receive(uint32_t spi_periph);
 
void spi_bidirectional_transfer_config(uint32_t spi_periph,uint32_t transfer_direction);

 
 
void spi_crc_polynomial_set(uint32_t spi_periph,uint16_t crc_poly);
 
uint16_t spi_crc_polynomial_get(uint32_t spi_periph);
 
void spi_crc_on(uint32_t spi_periph);
 
void spi_crc_off(uint32_t spi_periph);
 
void spi_crc_next(uint32_t spi_periph);
 
uint16_t spi_crc_get(uint32_t spi_periph,uint8_t spi_crc);

 
 
void spi_ti_mode_enable(uint32_t spi_periph);
 
void spi_ti_mode_disable(uint32_t spi_periph);

 
void i2s_full_duplex_mode_config(uint32_t i2s_add_periph,uint32_t i2s_mode,uint32_t i2s_standard,uint32_t i2s_ckpl,uint32_t i2s_frameformat);

 
 
void qspi_enable(uint32_t spi_periph);
 
void qspi_disable(uint32_t spi_periph);
 
void qspi_write_enable(uint32_t spi_periph);
 
void qspi_read_enable(uint32_t spi_periph);
 
void qspi_io23_output_enable(uint32_t spi_periph);
 
void qspi_io23_output_disable(uint32_t spi_periph);

 
 
void spi_i2s_interrupt_enable(uint32_t spi_periph,uint8_t spi_i2s_int);
 
void spi_i2s_interrupt_disable(uint32_t spi_periph,uint8_t spi_i2s_int);
 
FlagStatus spi_i2s_interrupt_flag_get(uint32_t spi_periph,uint8_t spi_i2s_int);
 
FlagStatus spi_i2s_flag_get(uint32_t spi_periph,uint32_t spi_i2s_flag);
 
void spi_crc_error_clear(uint32_t spi_periph);








 



























 



 

 

 
 

 

 
 
 

 

 

 
 
 

 
 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
 
typedef struct
{ 
    uint16_t prescaler;                          
    uint16_t alignedmode;                        
    uint16_t counterdirection;                   
    uint16_t clockdivision;                      
    uint32_t period;                             
    uint8_t  repetitioncounter;                  
}timer_parameter_struct;

 
typedef struct
{ 
    uint16_t runoffstate;                        
    uint16_t ideloffstate;                       
    uint16_t deadtime;                           
    uint16_t breakpolarity;                      
    uint16_t outputautostate;                    
    uint16_t protectmode;                        
    uint16_t breakstate;                         
}timer_break_parameter_struct;

 
typedef struct
{ 
    uint16_t outputstate;                        
    uint16_t outputnstate;                       
    uint16_t ocpolarity;                         
    uint16_t ocnpolarity;                        
    uint16_t ocidlestate;                        
    uint16_t ocnidlestate;                       
}timer_oc_parameter_struct;

 
typedef struct
{ 
    uint16_t icpolarity;                         
    uint16_t icselection;                        
    uint16_t icprescaler;                        
    uint16_t icfilter;                           
}timer_ic_parameter_struct;

 

 

 



 

  

 

 

 

 

 

 

 

 

 

 

                                                  

 

 

 

 

 

 

 

 

 

  

  

 

 

 

 

  

 

 

 

 

 

 

  

 

 

  

 

 

 

 

 

 
 
 
void timer_deinit(uint32_t timer_periph);
 
void timer_struct_para_init(timer_parameter_struct* initpara);
 
void timer_init(uint32_t timer_periph, timer_parameter_struct* initpara);
 
void timer_enable(uint32_t timer_periph);
 
void timer_disable(uint32_t timer_periph);
 
void timer_auto_reload_shadow_enable(uint32_t timer_periph);
 
void timer_auto_reload_shadow_disable(uint32_t timer_periph);
 
void timer_update_event_enable(uint32_t timer_periph);
 
void timer_update_event_disable(uint32_t timer_periph);
 
void timer_counter_alignment(uint32_t timer_periph, uint16_t aligned);
 
void timer_counter_up_direction(uint32_t timer_periph);
 
void timer_counter_down_direction(uint32_t timer_periph);
 
void timer_prescaler_config(uint32_t timer_periph, uint16_t prescaler, uint8_t pscreload);
 
void timer_repetition_value_config(uint32_t timer_periph, uint16_t repetition);
 
void timer_autoreload_value_config(uint32_t timer_periph,uint32_t autoreload);
 
void timer_counter_value_config(uint32_t timer_periph , uint32_t counter);
 
uint32_t timer_counter_read(uint32_t timer_periph);
 
uint16_t timer_prescaler_read(uint32_t timer_periph);
 
void timer_single_pulse_mode_config(uint32_t timer_periph, uint32_t spmode);
 
void timer_update_source_config(uint32_t timer_periph, uint32_t update);

 
 
void timer_interrupt_enable(uint32_t timer_periph, uint32_t interrupt);
 
void timer_interrupt_disable(uint32_t timer_periph, uint32_t interrupt);
 
FlagStatus timer_interrupt_flag_get(uint32_t timer_periph, uint32_t interrupt);
 
void timer_interrupt_flag_clear(uint32_t timer_periph, uint32_t interrupt);
 
FlagStatus timer_flag_get(uint32_t timer_periph, uint32_t flag);
 
void timer_flag_clear(uint32_t timer_periph, uint32_t flag);

 
 
void timer_dma_enable(uint32_t timer_periph, uint16_t dma);
 
void timer_dma_disable(uint32_t timer_periph, uint16_t dma);
 
void timer_channel_dma_request_source_select(uint32_t timer_periph, uint8_t dma_request);
 
void timer_dma_transfer_config(uint32_t timer_periph,uint32_t dma_baseaddr, uint32_t dma_lenth);
 
void timer_event_software_generate(uint32_t timer_periph, uint16_t event);

 
 
void timer_break_struct_para_init(timer_break_parameter_struct* breakpara);
 
void timer_break_config(uint32_t timer_periph, timer_break_parameter_struct* breakpara);
 
void timer_break_enable(uint32_t timer_periph);
 
void timer_break_disable(uint32_t timer_periph);
 
void timer_automatic_output_enable(uint32_t timer_periph);
 
void timer_automatic_output_disable(uint32_t timer_periph);
 
void timer_primary_output_config(uint32_t timer_periph, ControlStatus newvalue);
 
void timer_channel_control_shadow_config(uint32_t timer_periph, ControlStatus newvalue);
 
void timer_channel_control_shadow_update_config(uint32_t timer_periph, uint8_t ccuctl);

 
 
void timer_channel_output_struct_para_init(timer_oc_parameter_struct* ocpara);
 
void timer_channel_output_config(uint32_t timer_periph,uint16_t channel, timer_oc_parameter_struct* ocpara);
 
void timer_channel_output_mode_config(uint32_t timer_periph, uint16_t channel,uint16_t ocmode);
 
void timer_channel_output_pulse_value_config(uint32_t timer_periph, uint16_t channel, uint32_t pulse);
 
void timer_channel_output_shadow_config(uint32_t timer_periph, uint16_t channel, uint16_t ocshadow);
 
void timer_channel_output_fast_config(uint32_t timer_periph, uint16_t channel, uint16_t ocfast);
 
void timer_channel_output_clear_config(uint32_t timer_periph,uint16_t channel,uint16_t occlear);
 
void timer_channel_output_polarity_config(uint32_t timer_periph, uint16_t channel, uint16_t ocpolarity);
 
void timer_channel_complementary_output_polarity_config(uint32_t timer_periph, uint16_t channel, uint16_t ocnpolarity);
 
void timer_channel_output_state_config(uint32_t timer_periph, uint16_t channel, uint32_t state);
 
void timer_channel_complementary_output_state_config(uint32_t timer_periph, uint16_t channel, uint16_t ocnstate);

 
 
void timer_channel_input_struct_para_init(timer_ic_parameter_struct* icpara);
 
void timer_input_capture_config(uint32_t timer_periph, uint16_t channel, timer_ic_parameter_struct* icpara);
 
void timer_channel_input_capture_prescaler_config(uint32_t timer_periph, uint16_t channel, uint16_t prescaler);
 
uint32_t timer_channel_capture_value_register_read(uint32_t timer_periph, uint16_t channel);
 
void timer_input_pwm_capture_config(uint32_t timer_periph, uint16_t channel, timer_ic_parameter_struct* icpwm);
 
void timer_hall_mode_config(uint32_t timer_periph, uint32_t hallmode);

 
 
void timer_input_trigger_source_select(uint32_t timer_periph, uint32_t intrigger);
 
void timer_master_output_trigger_source_select(uint32_t timer_periph, uint32_t outrigger);
 
void timer_slave_mode_select(uint32_t timer_periph,uint32_t slavemode);
 
void timer_master_slave_mode_config(uint32_t timer_periph, uint32_t masterslave);
 
void timer_external_trigger_config(uint32_t timer_periph, uint32_t extprescaler, uint32_t extpolarity, uint32_t extfilter);
 
void timer_quadrature_decoder_mode_config(uint32_t timer_periph, uint32_t decomode, uint16_t ic0polarity, uint16_t ic1polarity);
 
void timer_internal_clock_config(uint32_t timer_periph);
 
void timer_internal_trigger_as_external_clock_config(uint32_t timer_periph, uint32_t intrigger);
 
void timer_external_trigger_as_external_clock_config(uint32_t timer_periph, uint32_t extrigger, uint16_t extpolarity,uint32_t extfilter);
 
void timer_external_clock_mode0_config(uint32_t timer_periph, uint32_t extprescaler, uint32_t extpolarity, uint32_t extfilter);
 
void timer_external_clock_mode1_config(uint32_t timer_periph, uint32_t extprescaler, uint32_t extpolarity, uint32_t extfilter);
 
void timer_external_clock_mode1_disable(uint32_t timer_periph);
 
void timer_channel_remap_config(uint32_t timer_periph,uint32_t remap);

 
 
void timer_write_chxval_register_config(uint32_t timer_periph, uint16_t ccsel);
 
void timer_output_value_selection_config(uint32_t timer_periph, uint16_t outsel);








 


























 



 

 

 
 

 

 

 
 
typedef enum
{ 
    TRNG_FLAG_DRDY = ((uint32_t)((uint32_t)0x01U<<(0))),                            
    TRNG_FLAG_CECS = ((uint32_t)((uint32_t)0x01U<<(1))),                            
    TRNG_FLAG_SECS = ((uint32_t)((uint32_t)0x01U<<(2)))                             
}trng_flag_enum;

 
typedef enum
{
    TRNG_INT_FLAG_CEIF = ((uint32_t)((uint32_t)0x01U<<(5))),                        
    TRNG_INT_FLAG_SEIF = ((uint32_t)((uint32_t)0x01U<<(6)))                         
}trng_int_flag_enum;

 
 
 
void trng_deinit(void);
 
void trng_enable(void);
 
void trng_disable(void);
 
uint32_t trng_get_true_random_data(void);

 
 
void trng_interrupt_enable(void);
 
void trng_interrupt_disable(void);
 
FlagStatus trng_flag_get(trng_flag_enum flag);
 
FlagStatus trng_interrupt_flag_get(trng_int_flag_enum int_flag);
 
void trng_interrupt_flag_clear(trng_int_flag_enum int_flag);








 


























 



 

 

 
 

 

 

 

 

 

 
 
 

 

 

 

 
 

 

 
typedef enum
{
     
    USART_FLAG_CTS = (((uint32_t)(0x00U) << 6) | (uint32_t)(9U)),       
    USART_FLAG_LBD = (((uint32_t)(0x00U) << 6) | (uint32_t)(8U)),       
    USART_FLAG_TBE = (((uint32_t)(0x00U) << 6) | (uint32_t)(7U)),       
    USART_FLAG_TC = (((uint32_t)(0x00U) << 6) | (uint32_t)(6U)),        
    USART_FLAG_RBNE = (((uint32_t)(0x00U) << 6) | (uint32_t)(5U)),      
    USART_FLAG_IDLE = (((uint32_t)(0x00U) << 6) | (uint32_t)(4U)),      
    USART_FLAG_ORERR = (((uint32_t)(0x00U) << 6) | (uint32_t)(3U)),     
    USART_FLAG_NERR = (((uint32_t)(0x00U) << 6) | (uint32_t)(2U)),      
    USART_FLAG_FERR = (((uint32_t)(0x00U) << 6) | (uint32_t)(1U)),      
    USART_FLAG_PERR = (((uint32_t)(0x00U) << 6) | (uint32_t)(0U)),      
     
    USART_FLAG_BSY = (((uint32_t)(0x88U) << 6) | (uint32_t)(16U)),      
    USART_FLAG_EB = (((uint32_t)(0x88U) << 6) | (uint32_t)(12U)),       
    USART_FLAG_RT = (((uint32_t)(0x88U) << 6) | (uint32_t)(11U)),       
     
    USART_FLAG_EPERR = (((uint32_t)(0xC0U) << 6) | (uint32_t)(8U)),       
}usart_flag_enum;

 
typedef enum
{
     
    USART_INT_FLAG_PERR = (((uint32_t)(0x00U) << 22) | (uint32_t)((0U) << 16) | (((uint32_t)(0x0CU) << 6) | (uint32_t)(8U))),        
    USART_INT_FLAG_TBE = (((uint32_t)(0x00U) << 22) | (uint32_t)((7U) << 16) | (((uint32_t)(0x0CU) << 6) | (uint32_t)(7U))),         
    USART_INT_FLAG_TC = (((uint32_t)(0x00U) << 22) | (uint32_t)((6U) << 16) | (((uint32_t)(0x0CU) << 6) | (uint32_t)(6U))),          
    USART_INT_FLAG_RBNE = (((uint32_t)(0x00U) << 22) | (uint32_t)((5U) << 16) | (((uint32_t)(0x0CU) << 6) | (uint32_t)(5U))),        
    USART_INT_FLAG_RBNE_ORERR = (((uint32_t)(0x00U) << 22) | (uint32_t)((3U) << 16) | (((uint32_t)(0x0CU) << 6) | (uint32_t)(5U))),  
    USART_INT_FLAG_IDLE = (((uint32_t)(0x00U) << 22) | (uint32_t)((4U) << 16) | (((uint32_t)(0x0CU) << 6) | (uint32_t)(4U))),        
     
    USART_INT_FLAG_LBD = (((uint32_t)(0x00U) << 22) | (uint32_t)((8U) << 16) | (((uint32_t)(0x10U) << 6) | (uint32_t)(6U))),         
     
    USART_INT_FLAG_CTS = (((uint32_t)(0x00U) << 22) | (uint32_t)((9U) << 16) | (((uint32_t)(0x14U) << 6) | (uint32_t)(10U))),        
    USART_INT_FLAG_ERR_ORERR = (((uint32_t)(0x00U) << 22) | (uint32_t)((3U) << 16) | (((uint32_t)(0x14U) << 6) | (uint32_t)(0U))),   
    USART_INT_FLAG_ERR_NERR = (((uint32_t)(0x00U) << 22) | (uint32_t)((2U) << 16) | (((uint32_t)(0x14U) << 6) | (uint32_t)(0U))),    
    USART_INT_FLAG_ERR_FERR = (((uint32_t)(0x00U) << 22) | (uint32_t)((1U) << 16) | (((uint32_t)(0x14U) << 6) | (uint32_t)(0U))),    
     
    USART_INT_FLAG_EB = (((uint32_t)(0x88U) << 22) | (uint32_t)((12U) << 16) | (((uint32_t)(0x80U) << 6) | (uint32_t)(5U))),         
    USART_INT_FLAG_RT = (((uint32_t)(0x88U) << 22) | (uint32_t)((11U) << 16) | (((uint32_t)(0x80U) << 6) | (uint32_t)(4U))),         
}usart_interrupt_flag_enum;

 
typedef enum
{
     
    USART_INT_PERR = (((uint32_t)(0x0CU) << 6) | (uint32_t)(8U)),       
    USART_INT_TBE = (((uint32_t)(0x0CU) << 6) | (uint32_t)(7U)),        
    USART_INT_TC = (((uint32_t)(0x0CU) << 6) | (uint32_t)(6U)),         
    USART_INT_RBNE = (((uint32_t)(0x0CU) << 6) | (uint32_t)(5U)),       
    USART_INT_IDLE = (((uint32_t)(0x0CU) << 6) | (uint32_t)(4U)),       
     
    USART_INT_LBD = (((uint32_t)(0x10U) << 6) | (uint32_t)(6U)),        
     
    USART_INT_CTS = (((uint32_t)(0x14U) << 6) | (uint32_t)(10U)),       
    USART_INT_ERR = (((uint32_t)(0x14U) << 6) | (uint32_t)(0U)),        
     
    USART_INT_EB = (((uint32_t)(0x80U) << 6) | (uint32_t)(5U)),         
    USART_INT_RT = (((uint32_t)(0x80U) << 6) | (uint32_t)(4U)),         
}usart_interrupt_enum;

 
typedef enum
{
     
    USART_DINV_ENABLE,                              
    USART_DINV_DISABLE,                             
     
    USART_TXPIN_ENABLE,                             
    USART_TXPIN_DISABLE,                            
     
    USART_RXPIN_ENABLE,                             
    USART_RXPIN_DISABLE,                            
}usart_invert_enum;

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
 
 
void usart_deinit(uint32_t usart_periph);
 
void usart_baudrate_set(uint32_t usart_periph, uint32_t baudval);
 
void usart_parity_config(uint32_t usart_periph, uint32_t paritycfg);
 
void usart_word_length_set(uint32_t usart_periph, uint32_t wlen);
 
void usart_stop_bit_set(uint32_t usart_periph, uint32_t stblen);
 
void usart_enable(uint32_t usart_periph);
 
void usart_disable(uint32_t usart_periph);
 
void usart_transmit_config(uint32_t usart_periph, uint32_t txconfig);
 
void usart_receive_config(uint32_t usart_periph, uint32_t rxconfig);

 
 
void usart_data_first_config(uint32_t usart_periph, uint32_t msbf);
 
void usart_invert_config(uint32_t usart_periph, usart_invert_enum invertpara);
 
void usart_oversample_config(uint32_t usart_periph, uint32_t oversamp);
 
void usart_sample_bit_config(uint32_t usart_periph, uint32_t obsm);
 
void usart_receiver_timeout_enable(uint32_t usart_periph);
 
void usart_receiver_timeout_disable(uint32_t usart_periph);
 
void usart_receiver_timeout_threshold_config(uint32_t usart_periph, uint32_t rtimeout);
 
void usart_data_transmit(uint32_t usart_periph, uint32_t data);
 
uint16_t usart_data_receive(uint32_t usart_periph);

 
 
void usart_address_config(uint32_t usart_periph, uint8_t addr);
 
void usart_mute_mode_enable(uint32_t usart_periph);
 
void usart_mute_mode_disable(uint32_t usart_periph);
 
void usart_mute_mode_wakeup_config(uint32_t usart_periph, uint32_t wmehtod);

 
 
void usart_lin_mode_enable(uint32_t usart_periph);
 
void usart_lin_mode_disable(uint32_t usart_periph);
 
void usart_lin_break_detection_length_config(uint32_t usart_periph, uint32_t lblen);
 
void usart_send_break(uint32_t usart_periph);

 
 
void usart_halfduplex_enable(uint32_t usart_periph);
 
void usart_halfduplex_disable(uint32_t usart_periph);

 
 
void usart_synchronous_clock_enable(uint32_t usart_periph);
 
void usart_synchronous_clock_disable(uint32_t usart_periph);
 
void usart_synchronous_clock_config(uint32_t usart_periph, uint32_t clen, uint32_t cph, uint32_t cpl);

 
 
void usart_guard_time_config(uint32_t usart_periph, uint32_t guat);
 
void usart_smartcard_mode_enable(uint32_t usart_periph);
 
void usart_smartcard_mode_disable(uint32_t usart_periph);
 
void usart_smartcard_mode_nack_enable(uint32_t usart_periph);
 
void usart_smartcard_mode_nack_disable(uint32_t usart_periph);
 
void usart_smartcard_autoretry_config(uint32_t usart_periph, uint32_t scrtnum);
 
void usart_block_length_config(uint32_t usart_periph, uint32_t bl);

 
 
void usart_irda_mode_enable(uint32_t usart_periph);
 
void usart_irda_mode_disable(uint32_t usart_periph);
 
void usart_prescaler_config(uint32_t usart_periph, uint8_t psc);
 
void usart_irda_lowpower_config(uint32_t usart_periph, uint32_t irlp);

 
 
void usart_hardware_flow_rts_config(uint32_t usart_periph, uint32_t rtsconfig);
 
void usart_hardware_flow_cts_config(uint32_t usart_periph, uint32_t ctsconfig);

 
 
void usart_break_frame_coherence_config(uint32_t usart_periph, uint32_t bcm);
 
void usart_parity_check_coherence_config(uint32_t usart_periph, uint32_t pcm);
 
void usart_hardware_flow_coherence_config(uint32_t usart_periph, uint32_t hcm);

 
 
void usart_dma_receive_config(uint32_t usart_periph, uint32_t dmacmd);
 
void usart_dma_transmit_config(uint32_t usart_periph, uint32_t dmacmd);

 
 
FlagStatus usart_flag_get(uint32_t usart_periph, usart_flag_enum flag);
 
void usart_flag_clear(uint32_t usart_periph, usart_flag_enum flag);
 
void usart_interrupt_enable(uint32_t usart_periph, usart_interrupt_enum interrupt);
 
void usart_interrupt_disable(uint32_t usart_periph, usart_interrupt_enum interrupt);
 
FlagStatus usart_interrupt_flag_get(uint32_t usart_periph, usart_interrupt_flag_enum int_flag);
 
void usart_interrupt_flag_clear(uint32_t usart_periph, usart_interrupt_flag_enum int_flag);








 


























 



 

 

 
 

 

 

 

 
 
void wwdgt_deinit(void);
 
void wwdgt_enable(void);

 
void wwdgt_counter_update(uint16_t counter_value);
 
void wwdgt_config(uint16_t counter, uint16_t window, uint32_t prescaler);

 
void wwdgt_interrupt_enable(void);
 
FlagStatus wwdgt_flag_get(void);
 
void wwdgt_flag_clear(void);








 


























 



 
 

 

 

 

 


 

 
 
void nvic_priority_group_set(uint32_t nvic_prigroup);

 
void nvic_irq_enable(uint8_t nvic_irq, uint8_t nvic_irq_pre_priority, uint8_t nvic_irq_sub_priority);
 
void nvic_irq_disable(uint8_t nvic_irq);

 
void nvic_vector_table_set(uint32_t nvic_vict_tab, uint32_t offset);

 
void system_lowpower_set(uint8_t lowpower_mode);
 
void system_lowpower_reset(uint8_t lowpower_mode);

 
void systick_clksource_set(uint32_t systick_clksource);









 


























 


 
 


  #pragma system_include

 
 

 

  #pragma system_include






 















 




 
 


  #pragma system_include

 
 

 

  #pragma system_include






 















 






                 
typedef _Sizet size_t;

typedef unsigned int __data_size_t;





 
#pragma rtmodel="__dlib_full_locale_support",   "1"




extern int __aeabi_MB_CUR_MAX(void);





                 



                 
  typedef _Wchart wchar_t;

typedef struct
{        
  int quot;
  int rem;
} div_t;

typedef struct
{        
  long quot;
  long rem;
} ldiv_t;

    #pragma language=save
    #pragma language=extended
    typedef struct
    {      
      _Longlong quot;
      _Longlong rem;
    } lldiv_t;
    #pragma language=restore

                 
  
__intrinsic __nounwind int atexit(void (*)(void));
  __intrinsic __noreturn __nounwind void _Exit(int) ;
__intrinsic __noreturn __nounwind void exit(int) ;
__intrinsic __nounwind char * getenv(const char *);
__intrinsic __nounwind int system(const char *);



             __intrinsic __noreturn __nounwind void abort(void) ;
_Pragma("function_effects = no_state, no_errno")     __intrinsic __nounwind int abs(int);
             __intrinsic __nounwind void * calloc(size_t, size_t);
_Pragma("function_effects = no_state, no_errno")     __intrinsic __nounwind div_t div(int, int);
             __intrinsic __nounwind void free(void *);
_Pragma("function_effects = no_state, no_errno")     __intrinsic __nounwind long labs(long);
_Pragma("function_effects = no_state, no_errno")     __intrinsic __nounwind ldiv_t ldiv(long, long);
    #pragma language=save
    #pragma language=extended
    _Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind long long llabs(long long);
    _Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind lldiv_t lldiv(long long, long long);
    #pragma language=restore
             __intrinsic __nounwind void * malloc(size_t);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind int mblen(const char *, size_t);
_Pragma("function_effects = no_read(1), no_write(2)") __intrinsic __nounwind size_t mbstowcs(wchar_t *, 
                                          const char *, size_t);
_Pragma("function_effects = no_read(1), no_write(2)") __intrinsic __nounwind int mbtowc(wchar_t *, const char *, 
                                     size_t);
             __intrinsic __nounwind int rand(void);
             __intrinsic __nounwind void srand(unsigned int);
             __intrinsic __nounwind void * realloc(void *, size_t);
_Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long strtol(const char *, 
                                      char **, int);
_Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind unsigned long strtoul(const char *, char **, int);
_Pragma("function_effects = no_read(1), no_write(2)") __intrinsic __nounwind size_t wcstombs(char *, 
                                          const wchar_t *, size_t);
_Pragma("function_effects = no_read(1)")    __intrinsic __nounwind int wctomb(char *, wchar_t);
    #pragma language=save
    #pragma language=extended
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long long strtoll(const char *, char **, int);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind unsigned long long strtoull(const char *, 
                                                          char **, int);
    #pragma language=restore




    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind unsigned long __iar_Stoul(const char *, char **, 
                                                        int);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind float         __iar_Stof(const char *, char **, long);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind double        __iar_Stod(const char *, char **, long);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long double   __iar_Stold(const char *, char **, 
                                                          long);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long          __iar_Stolx(const char *, char **, int, 
                                                        int *);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind unsigned long __iar_Stoulx(const char *, char **,
                                                         int, int *);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind float         __iar_Stofx(const char *, char **, 
                                                        long, int *);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind double        __iar_Stodx(const char *, char **, 
                                                        long, int *);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long double   __iar_Stoldx(const char *, char **, 
                                                         long, int *);
      #pragma language=save
      #pragma language=extended
      _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind _Longlong   __iar_Stoll(const char *, char **, 
                                                        int);
      _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind _ULonglong   __iar_Stoull(const char *, char **, 
                                                          int);
      _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind _Longlong    __iar_Stollx(const char *, char **, 
                                                          int, int *);
      _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind _ULonglong   __iar_Stoullx(const char *, char **, 
                                                           int, int *);
      #pragma language=restore





typedef int _Cmpfun(const void *, const void *);

_Pragma("function_effects = no_write(1,2)") __intrinsic void * bsearch(const void *, 
                                                   const void *, size_t,
                                                   size_t, _Cmpfun *);
             __intrinsic void qsort(void *, size_t, size_t, 
                                               _Cmpfun *);
             __intrinsic void __qsortbbl(void *, size_t, size_t, 
                                                    _Cmpfun *);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind double atof(const char *);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind int atoi(const char *);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind long atol(const char *);
    #pragma language=save
    #pragma language=extended
    _Pragma("function_effects = no_write(1)") __intrinsic __nounwind long long atoll(const char *);
    #pragma language=restore
  _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind float strtof(const char *, 
                                         char **);
  _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long double strtold(const char *, char **);
_Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind double strtod(const char *, 
                                        char **);
                                        
                                        
               __intrinsic __nounwind size_t __iar_Mbcurmax(void);

  _Pragma("function_effects = no_state, no_errno")     __intrinsic __nounwind int __iar_DLib_library_version(void);
  




  
  typedef void _Atexfun(void);
  

                 
    #pragma inline=no_body
    double atof(const char *_S)
    {       
      return (__iar_Stod(_S, 0, 0));
    }

    #pragma inline=no_body
    int atoi(const char *_S)
    {       
      return ((int)__iar_Stoul(_S, 0, 10));
    }

    #pragma inline=no_body
    long atol(const char *_S)
    {       
      return ((long)__iar_Stoul(_S, 0, 10));
    }

        #pragma language=save
        #pragma language=extended
        #pragma inline=no_body
        long long atoll(const char *_S)
        {       
            return ((long long)__iar_Stoull(_S, 0, 10));
        }
        #pragma language=restore

    #pragma inline=no_body
    double strtod(const char * _S, char ** _Endptr)
    {       
      return (__iar_Stod(_S, _Endptr, 0));
    }

      #pragma inline=no_body
      float strtof(const char * _S, char ** _Endptr)
      {       
        return (__iar_Stof(_S, _Endptr, 0));
      }

      #pragma inline=no_body
      long double strtold(const char * _S, char ** _Endptr)
      {       
        return (__iar_Stold(_S, _Endptr, 0));
      }

    #pragma inline=no_body
    long strtol(const char * _S, char ** _Endptr, 
                int _Base)
    {       
      return (__iar_Stolx(_S, _Endptr, _Base, 0));
    }

    #pragma inline=no_body
    unsigned long strtoul(const char * _S, char ** _Endptr, 
                          int _Base)
    {       
      return (__iar_Stoul(_S, _Endptr, _Base));
    }

        #pragma language=save
        #pragma language=extended
        #pragma inline=no_body
        long long strtoll(const char * _S, char ** _Endptr,
                          int _Base)
        {       
            return (__iar_Stoll(_S, _Endptr, _Base));
        }

        #pragma inline=no_body
        unsigned long long strtoull(const char * _S, 
                                    char ** _Endptr, int _Base)
        {       
            return (__iar_Stoull(_S, _Endptr, _Base));
        }
        #pragma language=restore


  #pragma inline=no_body
  int abs(int i)
  {       
    return (i < 0 ? -i : i);
  }

  #pragma inline=no_body
  long labs(long i)
  {       
    return (i < 0 ? -i : i);
  }

      #pragma language=save
      #pragma language=extended
      #pragma inline=no_body
      long long llabs(long long i)
      {       
        return (i < 0 ? -i : i);
      }
      #pragma language=restore








 












  

 

  

 

 




 

 




 
 

 
  
 
  
 
  
 
    
 
  
 
  
 
  
 
  
  

  

  

 

 
  
 
  
 
  
 
  
 
  
 
  
 

 
  
 
 
 

 
  
 

 
  
 
  
 
  
 
  
 
  
 
  
 
  
 
   
 

  
 
  
 
  
 
  
 
  
 

 
  
 
  
 
  
 
  
 

 
  
 
  
 

 
  
 
  
 
 
 
  
 
  
 

 

 

 
  
 
  
 

 

 

 

 


 

  

 

 


 
 

 

 

 

                                                                           


 
typedef enum
{
     
    ENET_MAC_FLAG_MPKR              = (((uint32_t)(((uint16_t)0x002CU)) << 6) | (uint32_t)(5U)),       
    ENET_MAC_FLAG_WUFR              = (((uint32_t)(((uint16_t)0x002CU)) << 6) | (uint32_t)(6U)),        
     
    ENET_MAC_FLAG_FLOWCONTROL       = (((uint32_t)(((uint16_t)0x0018U)) << 6) | (uint32_t)(0U)),      
     
    ENET_MAC_FLAG_WUM               = (((uint32_t)(((uint16_t)0x0038U)) << 6) | (uint32_t)(3U)),      
    ENET_MAC_FLAG_MSC               = (((uint32_t)(((uint16_t)0x0038U)) << 6) | (uint32_t)(4U)),      
    ENET_MAC_FLAG_MSCR              = (((uint32_t)(((uint16_t)0x0038U)) << 6) | (uint32_t)(5U)),      
    ENET_MAC_FLAG_MSCT              = (((uint32_t)(((uint16_t)0x0038U)) << 6) | (uint32_t)(6U)),      
    ENET_MAC_FLAG_TMST              = (((uint32_t)(((uint16_t)0x0038U)) << 6) | (uint32_t)(9U)),      
     
    ENET_PTP_FLAG_TSSCO             = (((uint32_t)(((uint16_t)0x0728U)) << 6) | (uint32_t)(0U)),         
    ENET_PTP_FLAG_TTM               = (((uint32_t)(((uint16_t)0x0728U)) << 6) | (uint32_t)(1U)),       
     
    ENET_MSC_FLAG_RFCE              = (((uint32_t)(((uint16_t)0x0104U)) << 6) | (uint32_t)(5U)),     
    ENET_MSC_FLAG_RFAE              = (((uint32_t)(((uint16_t)0x0104U)) << 6) | (uint32_t)(6U)),     
    ENET_MSC_FLAG_RGUF              = (((uint32_t)(((uint16_t)0x0104U)) << 6) | (uint32_t)(17U)),    
      
    ENET_MSC_FLAG_TGFSC             = (((uint32_t)(((uint16_t)0x0108U)) << 6) | (uint32_t)(14U)),    
    ENET_MSC_FLAG_TGFMSC            = (((uint32_t)(((uint16_t)0x0108U)) << 6) | (uint32_t)(15U)),    
    ENET_MSC_FLAG_TGF               = (((uint32_t)(((uint16_t)0x0108U)) << 6) | (uint32_t)(21U)),    
     
    ENET_DMA_FLAG_TS                = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(0U)),      
    ENET_DMA_FLAG_TPS               = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(1U)),      
    ENET_DMA_FLAG_TBU               = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(2U)),      
    ENET_DMA_FLAG_TJT               = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(3U)),      
    ENET_DMA_FLAG_RO                = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(4U)),      
    ENET_DMA_FLAG_TU                = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(5U)),      
    ENET_DMA_FLAG_RS                = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(6U)),      
    ENET_DMA_FLAG_RBU               = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(7U)),      
    ENET_DMA_FLAG_RPS               = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(8U)),      
    ENET_DMA_FLAG_RWT               = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(9U)),      
    ENET_DMA_FLAG_ET                = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(10U)),     
    ENET_DMA_FLAG_FBE               = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(13U)),     
    ENET_DMA_FLAG_ER                = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(14U)),     
    ENET_DMA_FLAG_AI                = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(15U)),     
    ENET_DMA_FLAG_NI                = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(16U)),     
    ENET_DMA_FLAG_EB_DMA_ERROR      = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(23U)),     
    ENET_DMA_FLAG_EB_TRANSFER_ERROR = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(24U)),     
    ENET_DMA_FLAG_EB_ACCESS_ERROR   = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(25U)),     
    ENET_DMA_FLAG_MSC               = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(27U)),     
    ENET_DMA_FLAG_WUM               = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(28U)),     
    ENET_DMA_FLAG_TST               = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(29U)),                             
}enet_flag_enum;

 
typedef enum
{
     
    ENET_DMA_FLAG_TS_CLR            = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(0U)),      
    ENET_DMA_FLAG_TPS_CLR           = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(1U)),      
    ENET_DMA_FLAG_TBU_CLR           = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(2U)),      
    ENET_DMA_FLAG_TJT_CLR           = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(3U)),      
    ENET_DMA_FLAG_RO_CLR            = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(4U)),      
    ENET_DMA_FLAG_TU_CLR            = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(5U)),      
    ENET_DMA_FLAG_RS_CLR            = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(6U)),      
    ENET_DMA_FLAG_RBU_CLR           = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(7U)),      
    ENET_DMA_FLAG_RPS_CLR           = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(8U)),      
    ENET_DMA_FLAG_RWT_CLR           = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(9U)),      
    ENET_DMA_FLAG_ET_CLR            = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(10U)),     
    ENET_DMA_FLAG_FBE_CLR           = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(13U)),     
    ENET_DMA_FLAG_ER_CLR            = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(14U)),     
    ENET_DMA_FLAG_AI_CLR            = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(15U)),     
    ENET_DMA_FLAG_NI_CLR            = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(16U)),                            
}enet_flag_clear_enum;

 
typedef enum
{
     
    ENET_MAC_INT_WUMIM              = (((uint32_t)(((uint16_t)0x003CU)) << 6) | (uint32_t)(3U)),    
    ENET_MAC_INT_TMSTIM             = (((uint32_t)(((uint16_t)0x003CU)) << 6) | (uint32_t)(9U)),    
      
    ENET_MSC_INT_RFCEIM             = (((uint32_t)(((uint16_t)0x010CU)) << 6) | (uint32_t)(5U)),   
    ENET_MSC_INT_RFAEIM             = (((uint32_t)(((uint16_t)0x010CU)) << 6) | (uint32_t)(6U)),   
    ENET_MSC_INT_RGUFIM             = (((uint32_t)(((uint16_t)0x010CU)) << 6) | (uint32_t)(17U)),  
      
    ENET_MSC_INT_TGFSCIM            = (((uint32_t)(((uint16_t)0x0110U)) << 6) | (uint32_t)(14U)),  
    ENET_MSC_INT_TGFMSCIM           = (((uint32_t)(((uint16_t)0x0110U)) << 6) | (uint32_t)(15U)),  
    ENET_MSC_INT_TGFIM              = (((uint32_t)(((uint16_t)0x0110U)) << 6) | (uint32_t)(21U)),  
      
    ENET_DMA_INT_TIE                = (((uint32_t)(((uint16_t)0x101CU)) << 6) | (uint32_t)(0U)),     
    ENET_DMA_INT_TPSIE              = (((uint32_t)(((uint16_t)0x101CU)) << 6) | (uint32_t)(1U)),     
    ENET_DMA_INT_TBUIE              = (((uint32_t)(((uint16_t)0x101CU)) << 6) | (uint32_t)(2U)),     
    ENET_DMA_INT_TJTIE              = (((uint32_t)(((uint16_t)0x101CU)) << 6) | (uint32_t)(3U)),     
    ENET_DMA_INT_ROIE               = (((uint32_t)(((uint16_t)0x101CU)) << 6) | (uint32_t)(4U)),     
    ENET_DMA_INT_TUIE               = (((uint32_t)(((uint16_t)0x101CU)) << 6) | (uint32_t)(5U)),     
    ENET_DMA_INT_RIE                = (((uint32_t)(((uint16_t)0x101CU)) << 6) | (uint32_t)(6U)),     
    ENET_DMA_INT_RBUIE              = (((uint32_t)(((uint16_t)0x101CU)) << 6) | (uint32_t)(7U)),     
    ENET_DMA_INT_RPSIE              = (((uint32_t)(((uint16_t)0x101CU)) << 6) | (uint32_t)(8U)),     
    ENET_DMA_INT_RWTIE              = (((uint32_t)(((uint16_t)0x101CU)) << 6) | (uint32_t)(9U)),     
    ENET_DMA_INT_ETIE               = (((uint32_t)(((uint16_t)0x101CU)) << 6) | (uint32_t)(10U)),    
    ENET_DMA_INT_FBEIE              = (((uint32_t)(((uint16_t)0x101CU)) << 6) | (uint32_t)(13U)),    
    ENET_DMA_INT_ERIE               = (((uint32_t)(((uint16_t)0x101CU)) << 6) | (uint32_t)(14U)),    
    ENET_DMA_INT_AIE                = (((uint32_t)(((uint16_t)0x101CU)) << 6) | (uint32_t)(15U)),    
    ENET_DMA_INT_NIE                = (((uint32_t)(((uint16_t)0x101CU)) << 6) | (uint32_t)(16U)),    
}enet_int_enum;
 
 
typedef enum
{
     
    ENET_MAC_INT_FLAG_WUM           = (((uint32_t)(((uint16_t)0x0038U)) << 6) | (uint32_t)(3U)),      
    ENET_MAC_INT_FLAG_MSC           = (((uint32_t)(((uint16_t)0x0038U)) << 6) | (uint32_t)(4U)),      
    ENET_MAC_INT_FLAG_MSCR          = (((uint32_t)(((uint16_t)0x0038U)) << 6) | (uint32_t)(5U)),      
    ENET_MAC_INT_FLAG_MSCT          = (((uint32_t)(((uint16_t)0x0038U)) << 6) | (uint32_t)(6U)),      
    ENET_MAC_INT_FLAG_TMST          = (((uint32_t)(((uint16_t)0x0038U)) << 6) | (uint32_t)(9U)),      
     
    ENET_MSC_INT_FLAG_RFCE          = (((uint32_t)(((uint16_t)0x0104U)) << 6) | (uint32_t)(5U)),     
    ENET_MSC_INT_FLAG_RFAE          = (((uint32_t)(((uint16_t)0x0104U)) << 6) | (uint32_t)(6U)),     
    ENET_MSC_INT_FLAG_RGUF          = (((uint32_t)(((uint16_t)0x0104U)) << 6) | (uint32_t)(17U)),    
     
    ENET_MSC_INT_FLAG_TGFSC         = (((uint32_t)(((uint16_t)0x0108U)) << 6) | (uint32_t)(14U)),    
    ENET_MSC_INT_FLAG_TGFMSC        = (((uint32_t)(((uint16_t)0x0108U)) << 6) | (uint32_t)(15U)),    
    ENET_MSC_INT_FLAG_TGF           = (((uint32_t)(((uint16_t)0x0108U)) << 6) | (uint32_t)(21U)),    
     
    ENET_DMA_INT_FLAG_TS            = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(0U)),      
    ENET_DMA_INT_FLAG_TPS           = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(1U)),      
    ENET_DMA_INT_FLAG_TBU           = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(2U)),      
    ENET_DMA_INT_FLAG_TJT           = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(3U)),      
    ENET_DMA_INT_FLAG_RO            = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(4U)),      
    ENET_DMA_INT_FLAG_TU            = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(5U)),      
    ENET_DMA_INT_FLAG_RS            = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(6U)),      
    ENET_DMA_INT_FLAG_RBU           = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(7U)),      
    ENET_DMA_INT_FLAG_RPS           = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(8U)),      
    ENET_DMA_INT_FLAG_RWT           = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(9U)),      
    ENET_DMA_INT_FLAG_ET            = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(10U)),     
    ENET_DMA_INT_FLAG_FBE           = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(13U)),     
    ENET_DMA_INT_FLAG_ER            = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(14U)),     
    ENET_DMA_INT_FLAG_AI            = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(15U)),     
    ENET_DMA_INT_FLAG_NI            = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(16U)),     
    ENET_DMA_INT_FLAG_MSC           = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(27U)),     
    ENET_DMA_INT_FLAG_WUM           = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(28U)),     
    ENET_DMA_INT_FLAG_TST           = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(29U)),      
}enet_int_flag_enum;

 
typedef enum
{
     
    ENET_DMA_INT_FLAG_TS_CLR        = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(0U)),      
    ENET_DMA_INT_FLAG_TPS_CLR       = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(1U)),      
    ENET_DMA_INT_FLAG_TBU_CLR       = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(2U)),      
    ENET_DMA_INT_FLAG_TJT_CLR       = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(3U)),      
    ENET_DMA_INT_FLAG_RO_CLR        = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(4U)),      
    ENET_DMA_INT_FLAG_TU_CLR        = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(5U)),      
    ENET_DMA_INT_FLAG_RS_CLR        = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(6U)),      
    ENET_DMA_INT_FLAG_RBU_CLR       = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(7U)),      
    ENET_DMA_INT_FLAG_RPS_CLR       = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(8U)),      
    ENET_DMA_INT_FLAG_RWT_CLR       = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(9U)),      
    ENET_DMA_INT_FLAG_ET_CLR        = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(10U)),     
    ENET_DMA_INT_FLAG_FBE_CLR       = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(13U)),     
    ENET_DMA_INT_FLAG_ER_CLR        = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(14U)),     
    ENET_DMA_INT_FLAG_AI_CLR        = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(15U)),     
    ENET_DMA_INT_FLAG_NI_CLR        = (((uint32_t)(((uint16_t)0x1014U)) << 6) | (uint32_t)(16U)),     
}enet_int_flag_clear_enum;

 
typedef enum
{
    ENET_RX_DESC_TABLE              = ((uint16_t)0x100CU),                        
    ENET_RX_CURRENT_DESC            = ((uint16_t)0x104CU),                        
    ENET_RX_CURRENT_BUFFER          = ((uint16_t)0x1054U),                        
    ENET_TX_DESC_TABLE              = ((uint16_t)0x1010U),                        
    ENET_TX_CURRENT_DESC            = ((uint16_t)0x1048U),                        
    ENET_TX_CURRENT_BUFFER          = ((uint16_t)0x1050U)                         
}enet_desc_reg_enum;

 
typedef enum
{
    ENET_MSC_TX_SCCNT               = ((uint16_t)0x014CU),                          
    ENET_MSC_TX_MSCCNT              = ((uint16_t)0x0150U),                         
    ENET_MSC_TX_TGFCNT              = ((uint16_t)0x0168U),                         
    ENET_MSC_RX_RFCECNT             = ((uint16_t)0x0194U),                        
    ENET_MSC_RX_RFAECNT             = ((uint16_t)0x0198U),                        
    ENET_MSC_RX_RGUFCNT             = ((uint16_t)0x01C4U)                         
}enet_msc_counter_enum; 

 
typedef enum
{
    FORWARD_OPTION                  = ((uint32_t)((uint32_t)0x01U<<(0))),                                        
    DMABUS_OPTION                   = ((uint32_t)((uint32_t)0x01U<<(1))),                                        
    DMA_MAXBURST_OPTION             = ((uint32_t)((uint32_t)0x01U<<(2))),                                        
    DMA_ARBITRATION_OPTION          = ((uint32_t)((uint32_t)0x01U<<(3))),                                        
    STORE_OPTION                    = ((uint32_t)((uint32_t)0x01U<<(4))),                                        
    DMA_OPTION                      = ((uint32_t)((uint32_t)0x01U<<(5))),                                        
    VLAN_OPTION                     = ((uint32_t)((uint32_t)0x01U<<(6))),                                        
    FLOWCTL_OPTION                  = ((uint32_t)((uint32_t)0x01U<<(7))),                                        
    HASHH_OPTION                    = ((uint32_t)((uint32_t)0x01U<<(8))),                                        
    HASHL_OPTION                    = ((uint32_t)((uint32_t)0x01U<<(9))),                                        
    FILTER_OPTION                   = ((uint32_t)((uint32_t)0x01U<<(10))),                                       
    HALFDUPLEX_OPTION               = ((uint32_t)((uint32_t)0x01U<<(11))),                                       
    TIMER_OPTION                    = ((uint32_t)((uint32_t)0x01U<<(12))),                                       
    INTERFRAMEGAP_OPTION            = ((uint32_t)((uint32_t)0x01U<<(13))),                                       
}enet_option_enum;

 
typedef enum
{
    ENET_AUTO_NEGOTIATION           = 0x01U,                                         
    ENET_100M_FULLDUPLEX            = (((uint32_t)((uint32_t)0x01U<<(14))) | ((uint32_t)((uint32_t)0x01U<<(11)))),         
    ENET_100M_HALFDUPLEX            = ((uint32_t)((uint32_t)0x01U<<(14))) ,                             
    ENET_10M_FULLDUPLEX             = ((uint32_t)((uint32_t)0x01U<<(11))),                              
    ENET_10M_HALFDUPLEX             = (uint32_t)0x00000000U,                         
    ENET_LOOPBACKMODE               = (((uint32_t)((uint32_t)0x01U<<(12))) | ((uint32_t)((uint32_t)0x01U<<(11))))          
}enet_mediamode_enum;

 
typedef enum
{
    ENET_NO_AUTOCHECKSUM                = (uint32_t)0x00000000U,                     
    ENET_AUTOCHECKSUM_DROP_FAILFRAMES   = ((uint32_t)((uint32_t)0x01U<<(10))),                        
    ENET_AUTOCHECKSUM_ACCEPT_FAILFRAMES = (((uint32_t)((uint32_t)0x01U<<(10)))|((uint32_t)((uint32_t)0x01U<<(26)))) 
 
}enet_chksumconf_enum;

 
typedef enum
{
    ENET_PROMISCUOUS_MODE           = ((uint32_t)((uint32_t)0x01U<<(0))),                              
    ENET_RECEIVEALL                 = (int32_t)((uint32_t)((uint32_t)0x01U<<(31))),                    
    ENET_BROADCAST_FRAMES_PASS      = (uint32_t)0x00000000U,                         
    ENET_BROADCAST_FRAMES_DROP      = ((uint32_t)((uint32_t)0x01U<<(5)))                            
}enet_frmrecept_enum;

 
typedef enum
{
    ALL_MAC_REG                     = 0U,                                             
    ALL_MSC_REG                     = 22U,                                            
    ALL_PTP_REG                     = 33U,                                            
    ALL_DMA_REG                     = 44U,                                            
}enet_registers_type_enum;

 
typedef enum
{
    ENET_DMA_TX                     = ((0xFFFFFFFFUL << (20)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(22)))),                              
    ENET_DMA_RX                     = ((0xFFFFFFFFUL << (17)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(19))))                               
}enet_dmadirection_enum;

 
typedef enum
{
    ENET_PHY_READ                   = (uint32_t)0x00000000,                          
    ENET_PHY_WRITE                  = ((uint32_t)((uint32_t)0x01U<<(1)))                            
}enet_phydirection_enum;

 
typedef enum
{
    ENET_REG_READ,                                                                   
    ENET_REG_WRITE                                                                   
}enet_regdirection_enum;

  
typedef enum
{
    ENET_MAC_ADDRESS0               = ((uint32_t)0x00000000),                        
    ENET_MAC_ADDRESS1               = ((uint32_t)0x00000008),                        
    ENET_MAC_ADDRESS2               = ((uint32_t)0x00000010),                        
    ENET_MAC_ADDRESS3               = ((uint32_t)0x00000018)                         
}enet_macaddress_enum;

 
typedef enum
{
    TXDESC_COLLISION_COUNT,                                                          
    TXDESC_BUFFER_1_ADDR,                                                            
    RXDESC_FRAME_LENGTH,                                                             
    RXDESC_BUFFER_1_SIZE,                                                            
    RXDESC_BUFFER_2_SIZE,                                                            
    RXDESC_BUFFER_1_ADDR                                                             
}enet_descstate_enum;

 
typedef enum
{
    ENET_MSC_PRESET_NONE            = 0U,                                            
    ENET_MSC_PRESET_HALF            = ((uint32_t)((uint32_t)0x01U<<(4))),                              
    ENET_MSC_PRESET_FULL            = ((uint32_t)((uint32_t)0x01U<<(4))) | ((uint32_t)((uint32_t)0x01U<<(5)))          
}enet_msc_preset_enum;

typedef enum{
    ENET_CKNT_ORDINARY                = (((0xFFFFFFFFUL << (16)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(17)))) & ((uint32_t)(0) << 16)),                           
    ENET_CKNT_BOUNDARY                = (((0xFFFFFFFFUL << (16)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(17)))) & ((uint32_t)(1) << 16)),                           
    ENET_CKNT_END_TO_END              = (((0xFFFFFFFFUL << (16)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(17)))) & ((uint32_t)(2) << 16)),                           
    ENET_CKNT_PEER_TO_PEER            = (((0xFFFFFFFFUL << (16)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(17)))) & ((uint32_t)(3) << 16)),                           
    ENET_PTP_SYSTIME_INIT             = ((uint32_t)((uint32_t)0x01U<<(2))),                       
    ENET_PTP_SYSTIME_UPDATE           = ((uint32_t)((uint32_t)0x01U<<(3))),                        
    ENET_PTP_ADDEND_UPDATE            = ((uint32_t)((uint32_t)0x01U<<(5))),                       
    ENET_PTP_FINEMODE                 = (int32_t)(((uint32_t)((uint32_t)0x01U<<(1)))| ((uint32_t)((uint32_t)0x01U<<(31)))),   
    ENET_PTP_COARSEMODE               = ((uint32_t)((uint32_t)0x01U<<(1))),                       
    ENET_SUBSECOND_DIGITAL_ROLLOVER   = (int32_t)(((uint32_t)((uint32_t)0x01U<<(9))) | ((uint32_t)((uint32_t)0x01U<<(31)))),   
    ENET_SUBSECOND_BINARY_ROLLOVER    = ((uint32_t)((uint32_t)0x01U<<(9))),                        
    ENET_SNOOPING_PTP_VERSION_2       = (int32_t)(((uint32_t)((uint32_t)0x01U<<(10)))| ((uint32_t)((uint32_t)0x01U<<(31)))),     
    ENET_SNOOPING_PTP_VERSION_1       = ((uint32_t)((uint32_t)0x01U<<(10))),                         
    ENET_EVENT_TYPE_MESSAGES_SNAPSHOT = (int32_t)(((uint32_t)((uint32_t)0x01U<<(14)))| ((uint32_t)((uint32_t)0x01U<<(31)))),   
    ENET_ALL_TYPE_MESSAGES_SNAPSHOT   = ((uint32_t)((uint32_t)0x01U<<(14))),                       
    ENET_MASTER_NODE_MESSAGE_SNAPSHOT = (int32_t)(((uint32_t)((uint32_t)0x01U<<(15)))| ((uint32_t)((uint32_t)0x01U<<(31)))),   
    ENET_SLAVE_NODE_MESSAGE_SNAPSHOT  = ((uint32_t)((uint32_t)0x01U<<(15))),                       
}enet_ptp_function_enum;

 
typedef struct
{
    uint32_t option_enable;                                                          
    uint32_t forward_frame;                                                           
    uint32_t dmabus_mode;                                                            
    uint32_t dma_maxburst;                                                           
    uint32_t dma_arbitration;                                                        
    uint32_t store_forward_mode;                                                     
    uint32_t dma_function;                                                           
    uint32_t vlan_config;                                                               
    uint32_t flow_control;                                                           
    uint32_t hashtable_high;                                                         
    uint32_t hashtable_low;                                                          
    uint32_t framesfilter_mode;                                                      
    uint32_t halfduplex_param;                                                                   
    uint32_t timer_config;                                                           
    uint32_t interframegap;                                                          
}enet_initpara_struct;

  
typedef struct  
{
    uint32_t status;                                                                 
    uint32_t control_buffer_size;                                                    
    uint32_t buffer1_addr;                                                           
    uint32_t buffer2_next_desc_addr;                                                 

  
} enet_descriptors_struct;

  
typedef struct
{
    uint32_t second;                                                                 
    uint32_t subsecond;                                                              
    uint32_t sign;                                                                   
}enet_ptp_systime_struct;

 



 

 








 
 
 

 

          


 



 

 


 


                                                                                      
 
 

  

 






 

 


 
 


 

 

 

 
 


 


 

 









 



 








 


 

 


 


 

 



 


 


 

  

 



 
 
 
void enet_deinit(void);
 
void enet_initpara_config(enet_option_enum option, uint32_t para);
 
ErrStatus enet_init(enet_mediamode_enum mediamode, enet_chksumconf_enum checksum, enet_frmrecept_enum recept);
 
ErrStatus enet_software_reset(void);
 
uint32_t enet_rxframe_size_get(void);
 
void enet_descriptors_chain_init(enet_dmadirection_enum direction);
 
void enet_descriptors_ring_init(enet_dmadirection_enum direction);
 
ErrStatus enet_frame_receive(uint8_t *buffer, uint32_t bufsize);
 
 
ErrStatus enet_frame_transmit(uint8_t *buffer, uint32_t length);
 
 
void enet_transmit_checksum_config(enet_descriptors_struct *desc, uint32_t checksum);
 
void enet_enable(void);   
 
void enet_disable(void);
 
void enet_mac_address_set(enet_macaddress_enum mac_addr, uint8_t paddr[]);
    
void enet_mac_address_get(enet_macaddress_enum mac_addr, uint8_t paddr[]);

 
FlagStatus enet_flag_get(enet_flag_enum enet_flag);
 
void enet_flag_clear(enet_flag_clear_enum enet_flag);
 
void enet_interrupt_enable(enet_int_enum enet_int);
 
void enet_interrupt_disable(enet_int_enum enet_int);
 
FlagStatus enet_interrupt_flag_get(enet_int_flag_enum int_flag);
 
void enet_interrupt_flag_clear(enet_int_flag_clear_enum int_flag_clear);

 
 
void enet_tx_enable(void);
 
void enet_tx_disable(void);
 
void enet_rx_enable(void);
 
void enet_rx_disable(void);
 
void enet_registers_get(enet_registers_type_enum type, uint32_t *preg, uint32_t num);
 
uint32_t enet_debug_status_get(uint32_t mac_debug);
 
void enet_address_filter_enable(enet_macaddress_enum mac_addr);
 
void enet_address_filter_disable(enet_macaddress_enum mac_addr);
 
void enet_address_filter_config(enet_macaddress_enum mac_addr, uint32_t addr_mask, uint32_t filter_type);
 
ErrStatus enet_phy_config(void);
 
ErrStatus enet_phy_write_read(enet_phydirection_enum direction, uint16_t phy_address, uint16_t phy_reg, uint16_t *pvalue);
 
ErrStatus enet_phyloopback_enable(void);
 
ErrStatus enet_phyloopback_disable(void);
 
void enet_forward_feature_enable(uint32_t feature);
 
void enet_forward_feature_disable(uint32_t feature);
 
void enet_fliter_feature_enable(uint32_t feature);
 
void enet_fliter_feature_disable(uint32_t feature);

 
 
ErrStatus enet_pauseframe_generate(void);
 
void enet_pauseframe_detect_config(uint32_t detect);
 
void enet_pauseframe_config(uint32_t pausetime, uint32_t pause_threshold);
 
void enet_flowcontrol_threshold_config(uint32_t deactive, uint32_t active);
 
void enet_flowcontrol_feature_enable(uint32_t feature);
 
void enet_flowcontrol_feature_disable(uint32_t feature);

 
 
uint32_t enet_dmaprocess_state_get(enet_dmadirection_enum direction); 
 
void enet_dmaprocess_resume(enet_dmadirection_enum direction);
 
void enet_rxprocess_check_recovery(void);
 
ErrStatus enet_txfifo_flush(void);
 
uint32_t enet_current_desc_address_get(enet_desc_reg_enum addr_get);
 
uint32_t enet_desc_information_get(enet_descriptors_struct *desc, enet_descstate_enum info_get);
 
void enet_missed_frame_counter_get(uint32_t *rxfifo_drop, uint32_t *rxdma_drop);

 
 
FlagStatus enet_desc_flag_get(enet_descriptors_struct *desc, uint32_t desc_flag);
 
void enet_desc_flag_set(enet_descriptors_struct *desc, uint32_t desc_flag);
 
void enet_desc_flag_clear(enet_descriptors_struct *desc, uint32_t desc_flag); 
 
void enet_rx_desc_immediate_receive_complete_interrupt(enet_descriptors_struct *desc);
 
void enet_rx_desc_delay_receive_complete_interrupt(enet_descriptors_struct *desc, uint32_t delay_time);
 
void enet_rxframe_drop(void);
 
void enet_dma_feature_enable(uint32_t feature);
 
void enet_dma_feature_disable(uint32_t feature);


 

 
void enet_desc_select_normal_mode(void);
 
void enet_ptp_normal_descriptors_chain_init(enet_dmadirection_enum direction, enet_descriptors_struct *desc_ptptab);
 
void enet_ptp_normal_descriptors_ring_init(enet_dmadirection_enum direction, enet_descriptors_struct *desc_ptptab);
 
ErrStatus enet_ptpframe_receive_normal_mode(uint8_t *buffer, uint32_t bufsize, uint32_t timestamp[]);
 
 
ErrStatus enet_ptpframe_transmit_normal_mode(uint8_t *buffer, uint32_t length, uint32_t timestamp[]);
 


 
 
void enet_wum_filter_register_pointer_reset(void);
 
void enet_wum_filter_config(uint32_t pdata[]);
 
void enet_wum_feature_enable(uint32_t feature);
 
void enet_wum_feature_disable(uint32_t feature);

 
 
void enet_msc_counters_reset(void);
  
void enet_msc_feature_enable(uint32_t feature);
  
void enet_msc_feature_disable(uint32_t feature);
 
void enet_msc_counters_preset_config(enet_msc_preset_enum mode);
                    
uint32_t enet_msc_counters_get(enet_msc_counter_enum counter);

 
 
void enet_ptp_feature_enable(uint32_t feature);
 
void enet_ptp_feature_disable(uint32_t feature);
 
ErrStatus enet_ptp_timestamp_function_config(enet_ptp_function_enum func);
 
void enet_ptp_subsecond_increment_config(uint32_t subsecond);
 
void enet_ptp_timestamp_addend_config(uint32_t add);
 
void enet_ptp_timestamp_update_config(uint32_t sign, uint32_t second, uint32_t subsecond);
 
void enet_ptp_expected_time_config(uint32_t second, uint32_t nanosecond);
 
void enet_ptp_system_time_get(enet_ptp_systime_struct *systime_struct);
 
void enet_ptp_pps_output_frequency_config(uint32_t freq);


 
 
void enet_initpara_reset(void);









 


























 



 

 
 




 



 



 

 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
 
typedef struct
{
    uint32_t asyn_access_mode;                                           
    uint32_t syn_data_latency;                                           
    uint32_t syn_clk_division;                                           
    uint32_t bus_latency;                                                
    uint32_t asyn_data_setuptime;                                        
    uint32_t asyn_address_holdtime;                                      
    uint32_t asyn_address_setuptime;                                     
}exmc_norsram_timing_parameter_struct;

 
typedef struct
{
    uint32_t norsram_region;                                             
    uint32_t write_mode;                                                 
    uint32_t extended_mode;                                              
    uint32_t asyn_wait;                                                  
    uint32_t nwait_signal;                                               
    uint32_t memory_write;                                               
    uint32_t nwait_config;                                               
    uint32_t wrap_burst_mode;                                            
    uint32_t nwait_polarity;                                             
    uint32_t burst_mode;                                                 
    uint32_t databus_width;                                              
    uint32_t memory_type;                                                
    uint32_t address_data_mux;                                           
    exmc_norsram_timing_parameter_struct* read_write_timing;            
 
    exmc_norsram_timing_parameter_struct* write_timing;                  
}exmc_norsram_parameter_struct;

 
typedef struct
{
    uint32_t databus_hiztime;                                            
    uint32_t holdtime;                                                   
    uint32_t waittime;                                                   
    uint32_t setuptime;                                                  
}exmc_nand_pccard_timing_parameter_struct;

 
typedef struct
{
    uint32_t nand_bank;                                                   
    uint32_t ecc_size;                                                   
    uint32_t atr_latency;                                                
    uint32_t ctr_latency;                                                
    uint32_t ecc_logic;                                                  
    uint32_t databus_width;                                              
    uint32_t wait_feature;                                               
    exmc_nand_pccard_timing_parameter_struct* common_space_timing;       
    exmc_nand_pccard_timing_parameter_struct* attribute_space_timing;    
}exmc_nand_parameter_struct;

 
typedef struct
{
    uint32_t atr_latency;                                                
    uint32_t ctr_latency;                                                
    uint32_t wait_feature;                                               
    exmc_nand_pccard_timing_parameter_struct*  common_space_timing;      
    exmc_nand_pccard_timing_parameter_struct*  attribute_space_timing;   
    exmc_nand_pccard_timing_parameter_struct*  io_space_timing;          
}exmc_pccard_parameter_struct;

 
typedef struct
{
    uint32_t row_to_column_delay;                                        
    uint32_t row_precharge_delay;                                        
    uint32_t write_recovery_delay;                                       
    uint32_t auto_refresh_delay;                                         
    uint32_t row_address_select_delay;                                   
    uint32_t exit_selfrefresh_delay;                                     
    uint32_t load_mode_register_delay;                                   
}exmc_sdram_timing_parameter_struct;

 
typedef struct
{
    uint32_t sdram_device;                                               
    uint32_t pipeline_read_delay;                                        
    uint32_t brust_read_switch;                                          
    uint32_t sdclock_config;                                             
    uint32_t write_protection;                                           
    uint32_t cas_latency;                                                
    uint32_t internal_bank_number;                                       
    uint32_t data_width;                                                 
    uint32_t row_address_width;                                          
    uint32_t column_address_width;                                       
    exmc_sdram_timing_parameter_struct* timing;                          
}exmc_sdram_parameter_struct;

 
typedef struct
{
    uint32_t mode_register_content;                                      
    uint32_t auto_refresh_number;                                        
    uint32_t bank_select;                                                
    uint32_t command;                                                    
}exmc_sdram_command_parameter_struct;

 
typedef struct{
    uint32_t sample_polarity;                                            
    uint32_t id_length;                                                  
    uint32_t address_bits;                                               
    uint32_t command_bits;                                               
}exmc_sqpipsram_parameter_struct;

 



 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
 
 
 
void exmc_norsram_deinit(uint32_t exmc_norsram_region);
 
void exmc_norsram_struct_para_init(exmc_norsram_parameter_struct* exmc_norsram_init_struct);
 
void exmc_norsram_init(exmc_norsram_parameter_struct* exmc_norsram_init_struct);
 
void exmc_norsram_enable(uint32_t exmc_norsram_region);
 
void exmc_norsram_disable(uint32_t exmc_norsram_region);
 
 
void exmc_nand_deinit(uint32_t exmc_nand_bank);
 
void exmc_nand_struct_para_init(exmc_nand_parameter_struct* exmc_nand_init_struct);
 
void exmc_nand_init(exmc_nand_parameter_struct* exmc_nand_init_struct);
 
void exmc_nand_enable(uint32_t exmc_nand_bank);
 
void exmc_nand_disable(uint32_t exmc_nand_bank);
 
 
void exmc_pccard_deinit(void);
 
void exmc_pccard_struct_para_init(exmc_pccard_parameter_struct* exmc_pccard_init_struct);
 
void exmc_pccard_init(exmc_pccard_parameter_struct* exmc_pccard_init_struct);
 
void exmc_pccard_enable(void);
 
void exmc_pccard_disable(void);
 
 
void exmc_sdram_deinit(uint32_t exmc_sdram_device);
 
void exmc_sdram_struct_para_init(exmc_sdram_parameter_struct* exmc_sdram_init_struct);
 
void exmc_sdram_init(exmc_sdram_parameter_struct* exmc_sdram_init_struct);
 
 
void exmc_sqpipsram_deinit(void);
 
void exmc_sqpipsram_struct_para_init(exmc_sqpipsram_parameter_struct* exmc_sqpipsram_init_struct);
 
void exmc_sqpipsram_init(exmc_sqpipsram_parameter_struct* exmc_sqpipsram_init_struct);

 
 
 
void exmc_norsram_consecutive_clock_config(uint32_t clock_mode);
 
void exmc_norsram_page_size_config(uint32_t exmc_norsram_region, uint32_t page_size);
 
 
void exmc_nand_ecc_config(uint32_t exmc_nand_bank, ControlStatus newvalue);
 
uint32_t exmc_ecc_get(uint32_t exmc_nand_bank);
 
 
void exmc_sdram_readsample_enable(ControlStatus newvalue);
 
void exmc_sdram_readsample_config(uint32_t delay_cell, uint32_t extra_hclk);
 
void exmc_sdram_command_config(exmc_sdram_command_parameter_struct* exmc_sdram_command_init_struct);
 
void exmc_sdram_refresh_count_set(uint32_t exmc_count);
 
void exmc_sdram_autorefresh_number_set(uint32_t exmc_number);
 
void exmc_sdram_write_protection_config(uint32_t exmc_sdram_device, ControlStatus newvalue);
 
uint32_t exmc_sdram_bankstatus_get(uint32_t exmc_sdram_device);
 
 
void exmc_sqpipsram_read_command_set(uint32_t read_command_mode,uint32_t read_wait_cycle,uint32_t read_command_code);
 
void exmc_sqpipsram_write_command_set(uint32_t write_command_mode,uint32_t write_wait_cycle,uint32_t write_command_code);
 
void exmc_sqpipsram_read_id_command_send(void);
 
void exmc_sqpipsram_write_cmd_send(void);
 
uint32_t exmc_sqpipsram_low_id_get(void);
 
uint32_t exmc_sqpipsram_high_id_get(void);
 
FlagStatus exmc_sqpipsram_send_command_state_get(uint32_t send_command_flag);

 
 
void exmc_interrupt_enable(uint32_t exmc_bank,uint32_t interrupt);
 
void exmc_interrupt_disable(uint32_t exmc_bank,uint32_t interrupt);
 
FlagStatus exmc_flag_get(uint32_t exmc_bank,uint32_t flag);
 
void exmc_flag_clear(uint32_t exmc_bank,uint32_t flag);
 
FlagStatus exmc_interrupt_flag_get(uint32_t exmc_bank,uint32_t interrupt);
 
void exmc_interrupt_flag_clear(uint32_t exmc_bank,uint32_t interrupt);








 


























 



 

 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
 

 

 

 

 

 

 

 

 

 


 
 
typedef struct
{   
    uint32_t foreground_memaddr;                           
    uint32_t foreground_lineoff;                           
    uint32_t foreground_prealpha;                          
    uint32_t foreground_alpha_algorithm;                   
    uint32_t foreground_pf;                                
    uint32_t foreground_prered;                            
    uint32_t foreground_pregreen;                          
    uint32_t foreground_preblue;                           
}ipa_foreground_parameter_struct; 

 
typedef struct
{   
    uint32_t background_memaddr;                           
    uint32_t background_lineoff;                           
    uint32_t background_prealpha;                          
    uint32_t background_alpha_algorithm;                   
    uint32_t background_pf;                                
    uint32_t background_prered;                            
    uint32_t background_pregreen;                          
    uint32_t background_preblue;                           
}ipa_background_parameter_struct; 

 
typedef struct
{
    uint32_t destination_memaddr;                          
    uint32_t destination_lineoff;                          
    uint32_t destination_prealpha;                         
    uint32_t destination_pf;                               
    uint32_t destination_prered;                           
    uint32_t destination_pregreen;                         
    uint32_t destination_preblue;                          
    uint32_t image_width;                                  
    uint32_t image_height;                                 
}ipa_destination_parameter_struct; 

 
typedef enum 
{
    IPA_DPF_ARGB8888,                                      
    IPA_DPF_RGB888,                                        
    IPA_DPF_RGB565,                                        
    IPA_DPF_ARGB1555,                                      
    IPA_DPF_ARGB4444                                       
} ipa_dpf_enum;

 

 

 

 

 

 

 

 

 

 

 
 
 
void ipa_deinit(void);
 
void ipa_transfer_enable(void);
 
void ipa_transfer_hangup_enable(void);
 
void ipa_transfer_hangup_disable(void);
 
void ipa_transfer_stop_enable(void);
 
void ipa_transfer_stop_disable(void);
 
void ipa_foreground_lut_loading_enable(void);
 
void ipa_background_lut_loading_enable(void);
 
void ipa_pixel_format_convert_mode_set(uint32_t pfcm);

 

 
void ipa_foreground_struct_para_init(ipa_foreground_parameter_struct* foreground_struct);
 
void ipa_foreground_init(ipa_foreground_parameter_struct* foreground_struct);

 
void ipa_background_struct_para_init(ipa_background_parameter_struct* background_struct);
 
void ipa_background_init(ipa_background_parameter_struct* background_struct);

 
void ipa_destination_struct_para_init(ipa_destination_parameter_struct* destination_struct);
 
void ipa_destination_init(ipa_destination_parameter_struct* destination_struct);
 
void ipa_foreground_lut_init(uint8_t fg_lut_num, uint8_t fg_lut_pf, uint32_t fg_lut_addr);
 
void ipa_background_lut_init(uint8_t bg_lut_num, uint8_t bg_lut_pf, uint32_t bg_lut_addr);

 
 
void ipa_line_mark_config(uint16_t line_num);
 
void ipa_inter_timer_config(uint8_t timer_cfg);
 
void ipa_interval_clock_num_config(uint8_t clk_num);

 
 
FlagStatus ipa_flag_get(uint32_t flag);
 
void ipa_flag_clear(uint32_t flag);
 
void ipa_interrupt_enable(uint32_t int_flag);
 
void ipa_interrupt_disable(uint32_t int_flag);
 
FlagStatus ipa_interrupt_flag_get(uint32_t int_flag);
 
void ipa_interrupt_flag_clear(uint32_t int_flag);








 


























 



 
 

 

 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
 
typedef struct
{   
    uint16_t synpsz_vpsz;                      
    uint16_t synpsz_hpsz;                      
    uint16_t backpsz_vbpsz;                    
    uint16_t backpsz_hbpsz;                    
    uint32_t activesz_vasz;                    
    uint32_t activesz_hasz;                    
    uint32_t totalsz_vtsz;                     
    uint32_t totalsz_htsz;                     
    uint32_t backcolor_red;                    
    uint32_t backcolor_green;                  
    uint32_t backcolor_blue;                   
    uint32_t signalpolarity_hs;                
    uint32_t signalpolarity_vs;                
    uint32_t signalpolarity_de;                
    uint32_t signalpolarity_pixelck;           
}tli_parameter_struct; 

 
typedef struct
{
    uint16_t layer_window_rightpos;            
    uint16_t layer_window_leftpos;             
    uint16_t layer_window_bottompos;           
    uint16_t layer_window_toppos;              
    uint32_t layer_ppf;                        
    uint8_t  layer_sa;                         
    uint8_t  layer_default_alpha;              
    uint8_t  layer_default_red;                
    uint8_t  layer_default_green;              
    uint8_t  layer_default_blue;               
    uint32_t layer_acf1;                       
    uint32_t layer_acf2;                       
    uint32_t layer_frame_bufaddr;              
    uint16_t layer_frame_buf_stride_offset;    
    uint16_t layer_frame_line_length;          
    uint16_t layer_frame_total_line_number;    
}tli_layer_parameter_struct; 

 
typedef struct
{
    uint32_t layer_table_addr;                 
    uint8_t layer_lut_channel_red;             
    uint8_t layer_lut_channel_green;           
    uint8_t layer_lut_channel_blue;            
}tli_layer_lut_parameter_struct; 

 
typedef enum 
{
     LAYER_PPF_ARGB8888,                       
     LAYER_PPF_RGB888,                         
     LAYER_PPF_RGB565,                         
     LAYER_PPF_ARGB1555,                       
     LAYER_PPF_ARGB4444,                       
     LAYER_PPF_L8,                             
     LAYER_PPF_AL44,                           
     LAYER_PPF_AL88                            
}tli_layer_ppf_enum;

 

 

 

 

 

 

 

 

 

 

 

 
 
 
void tli_deinit(void);

 
void tli_struct_para_init(tli_parameter_struct *tli_struct);
 
void tli_init(tli_parameter_struct *tli_struct);
 
void tli_dither_config(uint8_t dither_stat);
 
void tli_enable(void);
 
void tli_disable(void);
 
void tli_reload_config(uint8_t reload_mod);

 

 
void tli_layer_struct_para_init(tli_layer_parameter_struct *layer_struct);
 
void tli_layer_init(uint32_t layerx,tli_layer_parameter_struct *layer_struct);
 
void tli_layer_window_offset_modify(uint32_t layerx,uint16_t offset_x,uint16_t offset_y);

 
void tli_lut_struct_para_init(tli_layer_lut_parameter_struct *lut_struct);
 
void tli_lut_init(uint32_t layerx,tli_layer_lut_parameter_struct *lut_struct);
 
void tli_color_key_init(uint32_t layerx,uint8_t redkey,uint8_t greenkey,uint8_t bluekey);
 
void tli_layer_enable(uint32_t layerx);
 
void tli_layer_disable(uint32_t layerx);
 
void tli_color_key_enable(uint32_t layerx);
 
void tli_color_key_disable(uint32_t layerx);
 
void tli_lut_enable(uint32_t layerx);
 
void tli_lut_disable(uint32_t layerx);

 
void tli_line_mark_set(uint16_t line_num);
 
uint32_t tli_current_pos_get(void);

 
 
void tli_interrupt_enable(uint32_t int_flag);
 
void tli_interrupt_disable(uint32_t int_flag);
 
FlagStatus tli_interrupt_flag_get(uint32_t int_flag);
 
void tli_interrupt_flag_clear(uint32_t int_flag);
 
FlagStatus tli_flag_get(uint32_t flag);





 
 

 

 
 

 

 
 

 

 
 

 

 
void Error_Handler(void);

 

 

 
 

 



 
 
 

  #pragma system_include

 
 

 

  #pragma system_include






 















 




 
 

  #pragma system_include



 
 

 

  #pragma system_include






 















 








                 



_Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind short        __iar_Dtest(double);
_Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind int          __iar_Dsign(double);

  _Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind short        __iar_FDtest(float);
  _Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind int          __iar_FDsign(float);




                 
typedef union
{        
  unsigned short _Word[8 / 2];
  float _Float;
  double _Double;
  long double _Long_double;
} _Dconst;

                 
_Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Cosh(double, double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Erfc(double);
_Pragma("function_effects = no_state") __intrinsic __nounwind short        __iar_Exp(double *, double, long);
_Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Log(double, int);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_Log_small(double, int);
_Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Logpoly(double);
_Pragma("function_effects = no_state") __intrinsic __nounwind unsigned int __iar_Quad(double *);
_Pragma("function_effects = no_state") __intrinsic __nounwind unsigned int __iar_QuadXp(double *);
_Pragma("function_effects = no_state") __intrinsic __nounwind unsigned int __iar_Quadph(double *, double);
_Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Rint(double);
_Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Sin(double, unsigned int);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_Sin_small(double, unsigned int);
_Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Sinh(double, double);
_Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Tgamma(double *, short *pex);

                 
  _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FCosh(float, float);
  _Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind short        __iar_FDtest(float);
  _Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind int          __iar_FDsign(float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FErfc(float);
  _Pragma("function_effects = no_state") __intrinsic __nounwind short        __iar_FExp(float *, float, long);
  _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FLog(float, int);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_Log_smallf(float, int);
  _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FLogpoly(float);
  _Pragma("function_effects = no_state") __intrinsic __nounwind unsigned int __iar_FQuad(float *);
  _Pragma("function_effects = no_state") __intrinsic __nounwind unsigned int __iar_FQuadXp(float *);
  _Pragma("function_effects = no_state") __intrinsic __nounwind unsigned int __iar_FQuadph(float *, float);
  _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FRint(float);
  _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FSin(float, unsigned int);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_Sin_smallf(float, unsigned int);
  _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FSinh(float, float);
  _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FTgamma(float *, short *pex);

                 


 extern float const __aeabi_HUGE_VALF;
 extern float const __aeabi_INFINITY;
 extern float const __aeabi_NAN;
 extern double const __aeabi_HUGE_VAL;
 extern long double const __aeabi_HUGE_VALL;

                 
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (atan2l)(long double, long double);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (cosl)(long double);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (expl)(long double);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (ldexpl)(long double, int);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (logl)(long double);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (powl)(long double, long double);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (sinl)(long double);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (sqrtl)(long double);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (tanl)(long double);
                 
_Pragma("function_effects = no_state") __intrinsic __nounwind float (atan2f)(float, float);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (cosf)(float);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (expf)(float);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (ldexpf)(float, int);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (logf)(float);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (powf)(float, float);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (sinf)(float);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (sqrtf)(float);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (tanf)(float);









 
 
 

  #pragma system_include









 






  typedef float float_t;
  typedef double double_t;



                 
_Pragma("function_effects = no_state")    __intrinsic __nounwind double acos(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double asin(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double atan(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double atan2(double, double);
_Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double ceil(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double exp(double);
_Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double fabs(double);
_Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double floor(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double fmod(double, double);
_Pragma("function_effects = no_state, no_errno, no_read(2)") __intrinsic __nounwind double frexp(double, int *);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double ldexp(double, int);
_Pragma("function_effects = no_state, no_errno, no_read(2)") __intrinsic __nounwind double modf(double, double *);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double pow(double, double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double sqrt(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double tan(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double tanh(double);

_Pragma("function_effects = no_state")    __intrinsic __nounwind double cos(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double cosh(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double log(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double log10(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double sin(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double sinh(double);


                 
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double acosh(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double asinh(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double atanh(double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double cbrt(double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double copysign(double, double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind double erf(double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind double erfc(double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind double expm1(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double exp2(double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double fdim(double, double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind double fma(double, double, double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double fmax(double, double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double fmin(double, double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double hypot(double, double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind int    ilogb(double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind double lgamma(double);
    #pragma language=save
    #pragma language=extended
    _Pragma("function_effects = no_state") __intrinsic __nounwind _Longlong llrint(double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind _Longlong llround(double);
    #pragma language=restore
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double log1p(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double log2(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double logb(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long   lrint(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long   lround(double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double nan(const char *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double nearbyint(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double nextafter(double, double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double nexttoward(double, long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double remainder(double, double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double remquo(double, double, int *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double rint(double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double round(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double scalbn(double, int);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double scalbln(double, long);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind double tgamma(double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double trunc(double);

                 
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float acosf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float asinf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float atanf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float atan2f(float, float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float ceilf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float expf(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float fabsf(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float floorf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float fmodf(float, float);
  _Pragma("function_effects = no_state, no_errno, no_read(2)") __intrinsic __nounwind float frexpf(float, int *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float ldexpf(float, int);
  _Pragma("function_effects = no_state, no_errno, no_read(2)") __intrinsic __nounwind float modff(float, float *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float powf(float, float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float sqrtf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float tanf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float tanhf(float);

  _Pragma("function_effects = no_state")    __intrinsic __nounwind float acoshf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float asinhf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float atanhf(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float cbrtf(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float copysignf(float, float);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind float erff(float);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind float erfcf(float);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind float expm1f(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float exp2f(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float fdimf(float, float);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind float fmaf(float, float, float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float fmaxf(float, float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float fminf(float, float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float hypotf(float, float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind int   ilogbf(float);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind float lgammaf(float);
    #pragma language=save
    #pragma language=extended
    _Pragma("function_effects = no_state")    __intrinsic __nounwind _Longlong llrintf(float);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind _Longlong llroundf(float);
    #pragma language=restore
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float log1pf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float log2f(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float logbf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long  lrintf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long  lroundf(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float nanf(const char *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float nearbyintf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float nextafterf(float, float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float nexttowardf(float, long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float remainderf(float, float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float remquof(float, float, int *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float rintf(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float roundf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float scalbnf(float, int);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float scalblnf(float, long);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind float tgammaf(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float truncf(float);

  _Pragma("function_effects = no_state")    __intrinsic __nounwind float cosf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float coshf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float logf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float log10f(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float sinf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float sinhf(float);

                 
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double acosl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double asinl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double atanl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double atan2l(long double, long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double ceill(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double expl(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double fabsl(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double floorl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double fmodl(long double, long double);
  _Pragma("function_effects = no_state, no_errno, no_read(2)") __intrinsic __nounwind long double frexpl(long double, int *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double ldexpl(long double, int);
  _Pragma("function_effects = no_state, no_errno, no_read(2)") __intrinsic __nounwind long double modfl(long double, long double *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double powl(long double, long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double sqrtl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double tanl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double tanhl(long double);

  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double acoshl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double asinhl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double atanhl(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double cbrtl(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double copysignl(long double, long double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind long double erfl(long double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind long double erfcl(long double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind long double expm1l(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double exp2l(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double fdiml(long double, long double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind long double fmal(long double, long double, 
                                              long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double fmaxl(long double, long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double fminl(long double, long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double hypotl(long double, long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind int         ilogbl(long double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind long double lgammal(long double);
    #pragma language=save
    #pragma language=extended
    _Pragma("function_effects = no_state")    __intrinsic __nounwind _Longlong llrintl(long double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind _Longlong llroundl(long double);
    #pragma language=restore
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double log1pl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double log2l(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double logbl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long        lrintl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long lroundl(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double nanl(const char *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double nearbyintl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double nextafterl(long double, long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double nexttowardl(long double, long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double remainderl(long double, long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double remquol(long double, long double, int *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double rintl(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double roundl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double scalbnl(long double, int);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double scalblnl(long double, long);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind long double tgammal(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double truncl(long double);

  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double cosl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double coshl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double logl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double log10l(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double sinl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double sinhl(long double);

                   
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_tan_accurate(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_cos_accurate(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_sin_accurate(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_pow_accurate(double, double);

  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_Sin_accurate(double, unsigned int);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_Pow_accurate(double, double, short *pex);
      _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_tan_accuratef(float);
      _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_cos_accuratef(float);
      _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_sin_accuratef(float);
      _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_pow_accuratef(float, float);

      _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_Sin_accuratef(float, unsigned int);
      _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_Pow_accuratef(float, float, short *pex);

      _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_tan_accuratel(long double);
      _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_cos_accuratel(long double);
      _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_sin_accuratel(long double);
      _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_pow_accuratel(long double, 
                                                            long double);

      _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_Sin_accuratel(long double, 
                                                            unsigned int);
      _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_Pow_accuratel(long double, 
                                                            long double,
                                                            short *pex);

                   
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_cos_small(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_exp_small(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_log_small(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_log2_small(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_log10_small(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_pow_small(double, double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_sin_small(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_tan_small(double);
  
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_cos_smallf(float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_exp_smallf(float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_log_smallf(float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_log2_smallf(float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_log10_smallf(float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_pow_smallf(float, float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_sin_smallf(float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_tan_smallf(float);

    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_cos_smalll(long double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_exp_smalll(long double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_log_smalll(long double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_log2_smalll(long double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_log10_smalll(long double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_pow_smalll(long double, long double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_sin_smalll(long double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_tan_smalll(long double);










                 

 

  #pragma inline=no_body
  double cos(double _X)
  {        
    return __iar_Sin(_X, 1);
  }

  #pragma inline=no_body
  double cosh(double _X)
  {        
    return __iar_Cosh(_X, 1);
  }

  #pragma inline=no_body
  double log(double _X)
  {        
    return __iar_Log(_X, 0);
  }

  #pragma inline=no_body
  double log10(double _X)
  {        
    return __iar_Log(_X, 1);
  }

  #pragma inline=no_body
  double sin(double _X)
  {        
    return __iar_Sin(_X, 0);
  }

  #pragma inline=no_body
  double sinh(double _X)
  {        
    return __iar_Sinh(_X, 1);
  }


                 
    #pragma inline=no_body
    double log2(double _Left)
    {    
      return (__iar_Log(_Left, -1));
    }

    #pragma inline=no_body
    double nan(const char *s)
    {    
      return (0.Nan);
    }

    #pragma inline=no_body
    double nextafter(double x, double y)
    {    
      return (nexttoward(x, (long double)y));
    }

    #pragma inline=no_body
    double remainder(double x, double y)
    {    
      return (remquo(x, y, 0));
    }


                 
    #pragma inline=no_body
    float cosf(float _X)
    {        
      return (__iar_FSin(_X, 1));
    }

    #pragma inline=no_body
    float coshf(float _X)
    {        
      return (__iar_FCosh(_X,  1.0F));
    }

    #pragma inline=no_body
    float logf(float _X)
    {        
      return (__iar_FLog(_X, 0));
    }

    #pragma inline=no_body 
    float log2f(float _Left)
    {        
      return (__iar_FLog(_Left, -1));
    }

    #pragma inline=no_body
    float log10f(float _X)
    {        
      return (__iar_FLog(_X, 1));
    }

    #pragma inline=no_body
    float nanf(const char *s)
    {    
      return (0.Nan);
    }

    #pragma inline=no_body
    float nextafterf(float x, float y)
    {    
      return (nexttowardf(x, (long double)y));
    }

    #pragma inline=no_body
    float remainderf(float x, float y)
    {    
      return (remquof(x, y, 0));
    }

    #pragma inline=no_body
    float sinf(float _X)
    {        
      return (__iar_FSin(_X, 0));
    }

    #pragma inline=no_body
    float sinhf(float _X)
    {        
      return (__iar_FSinh(_X,  1.0F));
    }

                 
    #pragma inline=no_body
    long double cosl(long double _X)
    {        
      return (__iar_Sin(_X, 1));
    }

    #pragma inline=no_body
    long double coshl(long double _X)
    {        
      return (__iar_Cosh(_X, (double) 1.0L));
    }

    #pragma inline=no_body
    long double logl(long double _X)
    {        
      return (__iar_Log(_X, 0));
    }

    #pragma inline=no_body 
    long double log2l(long double _Left)
    {        
      return (__iar_Log(_Left, -1));
    }

    #pragma inline=no_body
    long double log10l(long double _X)
    {        
      return (__iar_Log(_X, 1));
    }

    #pragma inline=no_body
    long double nanl(const char *s)
    {    
      return (0.Nan);
    }

    #pragma inline=no_body
    long double nextafterl(long double x, long double y)
    {    
      return (nexttowardl(x, y));
    }

    #pragma inline=no_body
    long double remainderl(long double x, long double y)
    {    
      return (remquol(x, y, 0));
    }

    #pragma inline=no_body
    long double sinl(long double _X)
    {        
      return (__iar_Sin(_X, 0));
    }

    #pragma inline=no_body
    long double sinhl(long double _X)
    {        
      return (__iar_Sinh(_X, (double) 1.0L));
    }



   






   
  
  
  _Pragma("function_effects = no_state")    __intrinsic __nounwind int __iar_Dcomp(double, double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind int __iar_FDcomp(float, float);
  
  
  
      


    

  #pragma inline=no_body
  int __iar_Dcomp(double x, double y)
  {
    if ((__c99_generic(x,,, __iar_Dtest, __iar_FDtest, __iar_Dtest,,,)(x) == 2) || (__c99_generic(y,,, __iar_Dtest, __iar_FDtest, __iar_Dtest,,,)(y) == 2))
    {
      return 0;
    }
    if (x > y)
    {
      return 4;
    }
    if (x < y)
    {
      return 1;
    }
    if (x == y)
    {
      return 2;
    }
    return 0;
  }

    #pragma inline=no_body
    int __iar_FDcomp(float x, float y)
    {
      if ((__c99_generic(x,,, __iar_Dtest, __iar_FDtest, __iar_Dtest,,,)(x) == 2) || (__c99_generic(y,,, __iar_Dtest, __iar_FDtest, __iar_Dtest,,,)(y) == 2))
      {
        return 0;
      }
      if (x > y)
      {
        return 4;
      }
      if (x < y)
      {
        return 1;
      }
      if (x == y)
      {
        return 2;
      }
      return 0;
    }




                 







 
 
 

  #pragma system_include

 
 

 

  #pragma system_include






 















 




 
 



 
 

  #pragma system_include






    struct __FILE
    {        
      unsigned short _Mode;
      unsigned char _Lockno;
      signed char _Handle;

       
       
       
      unsigned char *_Buf, *_Bend, *_Next;
       
       
      
  
      unsigned char *_Rend, *_Wend, *_Rback;

      
  
      _Wchart *_WRback, _WBack[2];

       
       
       
      unsigned char *_Rsave, *_WRend, *_WWend;

      _Mbstatet _Wstate;
      char *_Tmpnam;
      unsigned char _Back[1], _Cbuf;
    };

    
  

 

__intrinsic __nounwind int remove(const char *);
__intrinsic __nounwind int rename(const char *, const char *);









 



 
#pragma rtmodel="__dlib_file_descriptor","1"

                 

  typedef _Filet FILE;


      
       extern FILE __iar_Stdin;
       extern FILE __iar_Stdout;
       extern FILE __iar_Stderr;
      






                 
typedef _Fpost fpos_t;

                 
#pragma language=save
#pragma language=extended


                 
  

  __intrinsic __nounwind void clearerr(FILE *);
  __intrinsic __nounwind int fclose(FILE *);
  __intrinsic __nounwind int feof(FILE *);
  __intrinsic __nounwind int ferror(FILE *);
  __intrinsic __nounwind int fflush(FILE *);
  __intrinsic __nounwind int fgetc(FILE *);
  __intrinsic __nounwind int fgetpos(FILE *, fpos_t *);
  __intrinsic __nounwind char * fgets(char *, int, FILE *);
  __intrinsic __nounwind FILE * fopen(const char *, const char *);
  _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int fprintf(FILE *, const char *, 
                                      ...);
  __intrinsic __nounwind int fputc(int, FILE *);
  __intrinsic __nounwind int fputs(const char *, FILE *);
  __intrinsic __nounwind size_t fread(void *, size_t, size_t, FILE *);
  __intrinsic __nounwind FILE * freopen(const char *, const char *,
                              FILE *);
  _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown") __intrinsic __nounwind int fscanf(FILE *, const char *, 
                                    ...);
  __intrinsic __nounwind int fseek(FILE *, long, int);
  __intrinsic __nounwind int fsetpos(FILE *, const fpos_t *);
  __intrinsic __nounwind long ftell(FILE *);
  __intrinsic __nounwind size_t fwrite(const void *, size_t, size_t, 
                             FILE *);

  __intrinsic __nounwind void rewind(FILE *);
  __intrinsic __nounwind void setbuf(FILE *, char *);
  __intrinsic __nounwind int setvbuf(FILE *, char *, int, size_t);
  __intrinsic __nounwind FILE * tmpfile(void);
  __intrinsic __nounwind int ungetc(int, FILE *);
  _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vfprintf(FILE *, 
                                       const char *, __Va_list);
    _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int vfscanf(FILE *, const char *,
                                        __Va_list);

    __intrinsic __nounwind FILE * fdopen(signed char, const char *);
    __intrinsic __nounwind signed char fileno(FILE *);
    __intrinsic __nounwind int getw(FILE *);
    __intrinsic __nounwind int putw(int, FILE *);

  __intrinsic __nounwind int getc(FILE *);
  __intrinsic __nounwind int putc(int, FILE *);
  


              
_Pragma("function_effects = no_read(1)")    __intrinsic __nounwind char * __gets(char *, int);
_Pragma("function_effects = no_read(1)")    __intrinsic __nounwind char * gets(char *);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind void perror(const char *);
_Pragma("function_effects = no_write(1)")    _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int printf(const char *, ...);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind int puts(const char *);
_Pragma("function_effects = no_write(1)")    _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int scanf(const char *, ...);
_Pragma("function_effects = no_read(1), no_write(2)") _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int sprintf(char *, 
                                                 const char *, ...);
_Pragma("function_effects = no_write(1,2)") _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int sscanf(const char *, 
                                                const char *, ...);
             __intrinsic __nounwind char * tmpnam(char *);
              
             __intrinsic __nounwind int __ungetchar(int);
_Pragma("function_effects = no_write(1)")    _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vprintf(const char *,
                                                 __Va_list);
  _Pragma("function_effects = no_write(1)")    _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int vscanf(const char *, 
                                                  __Va_list);
  _Pragma("function_effects = no_write(1,2)") _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int vsscanf(const char *, 
                                                   const char *, 
                                                   __Va_list);
_Pragma("function_effects = no_read(1), no_write(2)")  _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vsprintf(char *, 
                                                   const char *,
                                                   __Va_list);
               
_Pragma("function_effects = no_write(1)")      __intrinsic __nounwind size_t __write_array(const void *, size_t, size_t);
  _Pragma("function_effects = no_read(1), no_write(3)") _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int snprintf(char *, size_t, 
                                                    const char *, ...);
  _Pragma("function_effects = no_read(1), no_write(3)") _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vsnprintf(char *, size_t,
                                                     const char *, 
                                                     __Va_list);

              __intrinsic __nounwind int getchar(void);
              __intrinsic __nounwind int putchar(int);



#pragma language=restore

             
  #pragma inline
  int (getc)(FILE *_Str)
  {
    return fgetc(_Str);
  }

  #pragma inline
  int (putc)(int _C, FILE *_Str)
  {
    return fputc(_C, _Str);
  }







 
 
 

  #pragma system_include

 
 

 

  #pragma system_include






 















 




 
 












 


  #pragma system_include


  
  

  





 


  




 




  


 

  #pragma inline=forced_no_body
  __intrinsic __nounwind void * memcpy(void * _D, const void * _S, size_t _N)
  {
    __aeabi_memcpy(_D, _S, _N);
    return _D;
  }

  #pragma inline=forced_no_body
  __intrinsic __nounwind void * memmove(void * _D, const void * _S, size_t _N)
  {
    __aeabi_memmove(_D, _S, _N);
    return _D;
  }

  #pragma inline=forced_no_body
  __intrinsic __nounwind void * memset(void * _D, int _C, size_t _N)
  {
    __aeabi_memset(_D, _N, _C);
    return _D;
  }

  
  




                 

                 

_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind int        memcmp(const void *, const void *,
                                                size_t);
_Pragma("function_effects = no_state, no_errno, no_read(1), no_write(2), returns 1") __intrinsic __nounwind void *     memcpy(void *, 
                                                const void *, size_t);
_Pragma("function_effects = no_state, no_errno, no_read(1), no_write(2), returns 1") __intrinsic __nounwind void *     memmove(void *, const void *, size_t);
_Pragma("function_effects = no_state, no_errno, no_read(1), returns 1")    __intrinsic __nounwind void *     memset(void *, int, size_t);
_Pragma("function_effects = no_state, no_errno, no_write(2), returns 1")    __intrinsic __nounwind char *     strcat(char *, 
                                                const char *);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind int        strcmp(const char *, const char *);
_Pragma("function_effects = no_write(1,2)")     __intrinsic __nounwind int        strcoll(const char *, const char *);
_Pragma("function_effects = no_state, no_errno, no_read(1), no_write(2), returns 1") __intrinsic __nounwind char *     strcpy(char *, 
                                                const char *);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind size_t     strcspn(const char *, const char *);
                 __intrinsic __nounwind char *     strerror(int);
_Pragma("function_effects = no_state, no_errno, no_write(1)")      __intrinsic __nounwind size_t     strlen(const char *);
_Pragma("function_effects = no_state, no_errno, no_write(2), returns 1")    __intrinsic __nounwind char *     strncat(char *, 
                                                 const char *, size_t);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind int        strncmp(const char *, const char *, 
                                                 size_t);
_Pragma("function_effects = no_state, no_errno, no_read(1), no_write(2), returns 1") __intrinsic __nounwind char *     strncpy(char *, 
                                                 const char *, size_t);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind size_t     strspn(const char *, const char *);
_Pragma("function_effects = no_write(2)")        __intrinsic __nounwind char *     strtok(char *, 
                                                const char *);
_Pragma("function_effects = no_write(2)")        __intrinsic __nounwind size_t     strxfrm(char *, 
                                                 const char *, size_t);

  _Pragma("function_effects = no_write(1)")      __intrinsic __nounwind char *   strdup(const char *);
  _Pragma("function_effects = no_write(1,2)")   __intrinsic __nounwind int      strcasecmp(const char *, const char *);
  _Pragma("function_effects = no_write(1,2)")   __intrinsic __nounwind int      strncasecmp(const char *, const char *, 
                                                   size_t);
  _Pragma("function_effects = no_state, no_errno, no_write(2)")    __intrinsic __nounwind char *   strtok_r(char *, const char *, char **);
  _Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind size_t   strnlen(char const *, size_t);



  _Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind void *memchr(const void *_S, int _C, size_t _N);
  _Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind char *strchr(const char *_S, int _C);
  _Pragma("function_effects = no_state, no_errno, no_write(1,2)") __intrinsic __nounwind char *strpbrk(const char *_S, const char *_P);
  _Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind char *strrchr(const char *_S, int _C);
  _Pragma("function_effects = no_state, no_errno, no_write(1,2)") __intrinsic __nounwind char *strstr(const char *_S, const char *_P);


                 

                 

_Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind void *__iar_Memchr(const void *, int, size_t);
_Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind char *__iar_Strchr(const char *, int);
               __intrinsic __nounwind char *__iar_Strerror(int, char *);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)") __intrinsic __nounwind char *__iar_Strpbrk(const char *, const char *);
_Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind char *__iar_Strrchr(const char *, int);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)") __intrinsic __nounwind char *__iar_Strstr(const char *, const char *);


                 
                 
    #pragma inline
    void *memchr(const void *_S, int _C, size_t _N)
    {
      return (__iar_Memchr(_S, _C, _N));
    }

    #pragma inline
    char *strchr(const char *_S, int _C)
    {
      return (__iar_Strchr(_S, _C));
    }

    #pragma inline
    char *strpbrk(const char *_S, const char *_P)
    {
      return (__iar_Strpbrk(_S, _P));
    }

    #pragma inline
    char *strrchr(const char *_S, int _C)
    {
      return (__iar_Strrchr(_S, _C));
    }

    #pragma inline
    char *strstr(const char *_S, const char *_P)
    {
      return (__iar_Strstr(_S, _P));
    }

  #pragma inline
  char *strerror(int _Err)
  {
    return (__iar_Strerror(_Err, 0));
  }









 
 
 






 
 
 

  #pragma system_include

 
 

 

  #pragma system_include






 















 






 
 


  #pragma system_include

 
 

 

  #pragma system_include






 















 





 
 

  #pragma system_include

 
 

  #pragma system_include

 
 

 

  #pragma system_include






 















 





 
 






 







 

 
#pragma diag_suppress = Pe076


__intrinsic __nounwind int __iar_Atthreadexit(void (*)(void));
__intrinsic __nounwind void __iar_Destroytls(void);














 


 
 

  #pragma system_include

 
 

 

  #pragma system_include






 















 




 
 






 

 
#pragma rtmodel="__dlib_file_descriptor","1"

 


                 



                 
typedef _Mbstatet mbstate_t;
struct tm;


  typedef _Wintt wint_t;


                 
  __intrinsic __nounwind wint_t fgetwc(_Filet *);
  __intrinsic __nounwind wchar_t * fgetws(wchar_t *, int, _Filet *);
  __intrinsic __nounwind wint_t fputwc(wchar_t, _Filet *);
  __intrinsic __nounwind int fputws(const wchar_t *, _Filet *);
  __intrinsic __nounwind int fwide(_Filet *, int);
  __intrinsic __nounwind int fwprintf(_Filet *, const wchar_t *, ...);
  __intrinsic __nounwind int fwscanf(_Filet *, const wchar_t *, ...);
  __intrinsic __nounwind wint_t getwc(_Filet *);
  __intrinsic __nounwind wint_t putwc(wchar_t, _Filet *);
  __intrinsic __nounwind wint_t ungetwc(wint_t, _Filet *);
  __intrinsic __nounwind int vfwprintf(_Filet *, const wchar_t *,
                             __Va_list);
    __intrinsic __nounwind int vfwscanf(_Filet *, const wchar_t *,
                              __Va_list);


__intrinsic __nounwind wint_t getwchar(void);
__intrinsic __nounwind wint_t __ungetwchar(wint_t);
__intrinsic __nounwind wint_t putwchar(wchar_t);
__intrinsic __nounwind int swprintf(wchar_t *, size_t, 
                          const wchar_t *, ...);
__intrinsic __nounwind int swscanf(const wchar_t *,
                         const wchar_t *, ...);
__intrinsic __nounwind int vswprintf(wchar_t *, size_t,
                           const wchar_t *, __Va_list);
__intrinsic __nounwind int vwprintf(const wchar_t *, __Va_list);
  __intrinsic __nounwind int vswscanf(const wchar_t *, const wchar_t *,
                            __Va_list);
  __intrinsic __nounwind int vwscanf(const wchar_t *, __Va_list);
__intrinsic __nounwind int wprintf(const wchar_t *, ...);
__intrinsic __nounwind int wscanf(const wchar_t *, ...);

                 
__intrinsic __nounwind size_t mbrlen(const char *, size_t,
                           mbstate_t *);
__intrinsic __nounwind size_t mbrtowc(wchar_t *, const char *, size_t,
                            mbstate_t *);
__intrinsic __nounwind size_t mbsrtowcs(wchar_t *, const char **,
                              size_t, mbstate_t *);
__intrinsic __nounwind int mbsinit(const mbstate_t *);
__intrinsic __nounwind size_t wcrtomb(char *, wchar_t, mbstate_t *);
__intrinsic __nounwind size_t wcsrtombs(char *, const wchar_t **,
                              size_t, mbstate_t *);
__intrinsic __nounwind long wcstol(const wchar_t *, wchar_t **, int);
__intrinsic __nounwind unsigned long wcstoul(const wchar_t *,
                                   wchar_t **, int);

    #pragma language=save
    #pragma language=extended
    __intrinsic __nounwind _Longlong wcstoll(const wchar_t *, 
                                   wchar_t **, int);
    __intrinsic __nounwind _ULonglong wcstoull(const wchar_t *, 
                                     wchar_t **, int);
    #pragma language=restore

                 
__intrinsic __nounwind wchar_t * wcscat(wchar_t *, const wchar_t *);
__intrinsic __nounwind int wcscmp(const wchar_t *, const wchar_t *);
__intrinsic __nounwind int wcscoll(const wchar_t *, const wchar_t *);
__intrinsic __nounwind wchar_t * wcscpy(wchar_t *, const wchar_t *);
__intrinsic __nounwind size_t wcscspn(const wchar_t *, const wchar_t *);
__intrinsic __nounwind size_t wcslen(const wchar_t *);
__intrinsic __nounwind wchar_t * wcsncat(wchar_t *, const wchar_t *, 
                               size_t);
__intrinsic __nounwind int wcsncmp(const wchar_t *, const wchar_t *, size_t);
__intrinsic __nounwind wchar_t * wcsncpy(wchar_t *, const wchar_t *,
                               size_t);
__intrinsic __nounwind size_t wcsspn(const wchar_t *, const wchar_t *);
__intrinsic __nounwind wchar_t * wcstok(wchar_t *, const wchar_t *,
                              wchar_t **);
__intrinsic __nounwind size_t wcsxfrm(wchar_t *, const wchar_t *, 
                            size_t);
__intrinsic __nounwind int wmemcmp(const wchar_t *, const wchar_t *, size_t);
__intrinsic __nounwind wchar_t * wmemcpy(wchar_t *, const wchar_t *, 
                               size_t);
__intrinsic __nounwind wchar_t * wmemmove(wchar_t *, const wchar_t *, size_t);
__intrinsic __nounwind wchar_t * wmemset(wchar_t *, wchar_t, size_t);

                 
__intrinsic __nounwind size_t wcsftime(wchar_t *, size_t,
                             const wchar_t *, 
                             const struct tm *);


__intrinsic __nounwind wint_t btowc(int);
  __intrinsic __nounwind float wcstof(const wchar_t *, wchar_t **);
  __intrinsic __nounwind long double wcstold(const wchar_t *,
                                   wchar_t **);
__intrinsic __nounwind double wcstod(const wchar_t *, wchar_t **);
__intrinsic __nounwind int wctob(wint_t);


  __intrinsic __nounwind wint_t __iar_Btowc(int);
  __intrinsic __nounwind int __iar_Wctob(wint_t);
  __intrinsic __nounwind double __iar_WStod(const wchar_t *, wchar_t **, long);
  __intrinsic __nounwind float __iar_WStof(const wchar_t *, wchar_t **, long);
  __intrinsic __nounwind long double __iar_WStold(const wchar_t *, wchar_t **, long);
  __intrinsic __nounwind unsigned long __iar_WStoul(const wchar_t *, wchar_t **, int);
  __intrinsic __nounwind _Longlong __iar_WStoll(const wchar_t *, wchar_t **, int);
  __intrinsic __nounwind _ULonglong __iar_WStoull(const wchar_t *, wchar_t **, int);

  __intrinsic __nounwind wchar_t * __iar_Wmemchr(const wchar_t *, wchar_t, size_t);
  __intrinsic __nounwind wchar_t * __iar_Wcschr(const wchar_t *, wchar_t);
  __intrinsic __nounwind wchar_t * __iar_Wcspbrk(const wchar_t *, const wchar_t *);
  __intrinsic __nounwind wchar_t * __iar_Wcsrchr(const wchar_t *, wchar_t);
  __intrinsic __nounwind wchar_t * __iar_Wcsstr(const wchar_t *, const wchar_t *);
  
  


 

  __intrinsic __nounwind wchar_t * wmemchr(const wchar_t *, wchar_t, size_t);
  __intrinsic __nounwind wchar_t * wcschr(const wchar_t *, wchar_t);
  __intrinsic __nounwind wchar_t * wcspbrk(const wchar_t *, const wchar_t *);
  __intrinsic __nounwind wchar_t * wcsrchr(const wchar_t *, wchar_t);
  __intrinsic __nounwind wchar_t * wcsstr(const wchar_t *, const wchar_t *);

    #pragma inline
    wchar_t * wmemchr(const wchar_t *_S, wchar_t _C, size_t _N)
    {
      return (__iar_Wmemchr(_S, _C, _N));
    }

    #pragma inline
    wchar_t * wcschr(const wchar_t *_S, wchar_t _C)
    {
      return (__iar_Wcschr(_S, _C));
    }

    #pragma inline
    wchar_t * wcspbrk(const wchar_t *_S, const wchar_t *_P)
    {
      return (__iar_Wcspbrk(_S, _P));
    }

    #pragma inline
    wchar_t * wcsrchr(const wchar_t *_S, wchar_t _C)
    {
      return (__iar_Wcsrchr(_S, _C));
    }

    #pragma inline
    wchar_t * wcsstr(const wchar_t *_S, const wchar_t *_P)
    {
      return (__iar_Wcsstr(_S, _P));
    }

  #pragma inline
  wint_t btowc(int _C)
  {        
    return (__iar_Btowc(_C));
  }

    #pragma inline
    float wcstof(const wchar_t *_S,
                 wchar_t **_Endptr)
    {        
      return (__iar_WStof(_S, _Endptr, 0));
    }

    #pragma inline
    long double wcstold(const wchar_t *_S,
                        wchar_t **_Endptr)
    {        
      return (__iar_WStold(_S, _Endptr, 0));
    }

      #pragma language=save
      #pragma language=extended
      #pragma inline
       _Longlong wcstoll(const wchar_t * _S, 
                         wchar_t ** _Endptr, int _Base)
       {
	return (__iar_WStoll(_S, _Endptr, _Base));
       }

      #pragma inline
      _ULonglong wcstoull(const wchar_t * _S, 
                          wchar_t ** _Endptr, int _Base)
      {
	return (__iar_WStoull(_S, _Endptr, _Base));
      }
      #pragma language=restore


  #pragma inline
  double wcstod(const wchar_t *_S,
                wchar_t **_Endptr)
  {        
    return (__iar_WStod(_S, _Endptr, 0));
  }


  #pragma inline
  unsigned long wcstoul(const wchar_t *_S,
                        wchar_t **_Endptr, int _Base)
  {        
    return (__iar_WStoul(_S, _Endptr, _Base));
  }

  #pragma inline
  int wctob(wint_t _Wc)
  {        
    return (__iar_Wctob(_Wc));
  }








 
 
 

  #pragma system_include

 
 

 

  #pragma system_include






 















 








 
#pragma rtmodel="__dlib_full_locale_support",   "1"

                 


                 
                 

                 





                 




                 

                 


 
 

  #pragma system_include

struct lconv
{        
   
  char *currency_symbol;
  char *int_curr_symbol;
  char *mon_decimal_point;
  char *mon_grouping;
  char *mon_thousands_sep;
  char *negative_sign;
  char *positive_sign;

  char frac_digits;
  char n_cs_precedes;
  char n_sep_by_space;
  char n_sign_posn;
  char p_cs_precedes;
  char p_sep_by_space;
  char p_sign_posn;

  char int_frac_digits;

   
  char *decimal_point;
  char *grouping;
  char *thousands_sep;
  char *_Frac_grouping;
  char *_Frac_sep;
  char *_False;
  char *_True;

   
  char *_No;
  char *_Yes;

   
  char int_n_cs_precedes;
  char int_n_sep_by_space;
  char int_n_sign_posn;
  char int_p_cs_precedes;
  char int_p_sep_by_space;
  char int_p_sign_posn;
};



                 

__intrinsic __nounwind struct __aeabi_lconv *__aeabi_localeconv(void);
__intrinsic __nounwind struct lconv *localeconv(void);
  __intrinsic __nounwind char *setlocale(int, const char *);








 
  



 


  

  



 

   






 


  #pragma system_include
































































































































































  

 


  enum
  {
    _LocaleC_id,
    _LocaleCount  
  };



  
  extern int _LocaleC_toupper(int);
  extern int _LocaleC_tolower(int);
  extern int _LocaleC_isalpha(int);
  extern int _LocaleC_iscntrl(int);
  extern int _LocaleC_islower(int);
  extern int _LocaleC_ispunct(int);
  extern int _LocaleC_isspace(int);
  extern int _LocaleC_isupper(int);
  extern wint_t _LocaleC_towupper(wint_t);
  extern wint_t _LocaleC_towlower(wint_t);
  extern int _LocaleC_iswalpha(wint_t);
  extern int _LocaleC_iswcntrl(wint_t);
  extern int _LocaleC_iswlower(wint_t);
  extern int _LocaleC_iswpunct(wint_t);
  extern int _LocaleC_iswspace(wint_t);
  extern int _LocaleC_iswupper(wint_t);
  extern int _LocaleC_iswdigit(wint_t);
  extern int _LocaleC_iswxdigit(wint_t);
  

  





 
#pragma rtmodel="__dlib_full_locale_support",   "1"




         __intrinsic __nounwind int isalnum(int);
         __intrinsic __nounwind int isalpha(int);
         __intrinsic __nounwind int isblank(int);
         __intrinsic __nounwind int iscntrl(int);
_Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind int isdigit(int);
         __intrinsic __nounwind int isgraph(int);
         __intrinsic __nounwind int islower(int);
         __intrinsic __nounwind int isprint(int);
         __intrinsic __nounwind int ispunct(int);
         __intrinsic __nounwind int isspace(int);
         __intrinsic __nounwind int isupper(int);
_Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind int isxdigit(int);
         __intrinsic __nounwind int tolower(int);
         __intrinsic __nounwind int toupper(int);


 

      #pragma inline=no_body
      int isblank(int _C)
      {
        return (   _C == ' '
                || _C == '\t'
                || isspace(_C));
      }

    #pragma inline=no_body
    int isdigit(int _C)
    {
      return _C >= '0' && _C <= '9';
    }

    #pragma inline=no_body
    int isxdigit(int _C)
    {
      return (   (_C >= 'a' && _C <= 'f')
              || (_C >= 'A' && _C <= 'F')
              || isdigit(_C));
    }

    #pragma inline=no_body
    int isalnum(int _C)
    {
      return (   isalpha(_C)
              || isdigit(_C));
    }

    #pragma inline=no_body
    int isprint(int _C)
    {
      return (   (_C >= ' ' && _C <= '\x7e')
              || isalpha(_C)
              || ispunct(_C));
    }

    #pragma inline=no_body
    int isgraph(int _C)
    {
      return (   _C != ' '
              && isprint(_C));
    }





      
 



  
  






 



 



 



 
typedef enum{
    PQ_U_RMS=0,             
    PQ_U_ANG,               
    PQ_U_DC,                
    PQ_U_SEQ_POS,           
    PQ_U_SEQ_NEG,           
    PQ_U_SEQ_ZERO,          
    PQ_U_DEV,               
    PQ_U_UNBALANCE_NEG,     
    PQ_U_UNBALANCE_ZERO,    
    PQ_U_FREQ,              
    PQ_U_FREQ_DEV,          
    PQ_U_FLUC,              
    PQ_U_FLUCF,             
    PQ_U_PST,               
    PQ_U_PLT,               
    PQ_I_RMS,               
    PQ_I_ANG,               
    PQ_I_DC,                
    PQ_I_SEQ_POS,           
    PQ_I_SEQ_NEG,           
    PQ_I_SEQ_ZERO,          
    PQ_I_UNBALANCE_NEG,     
    PQ_I_UNBALANCE_ZERO,    
    PQ_PF,                  
    PQ_P,                   
    PQ_Q,                   
    PQ_S,                   
    PQ_FUND_P,              
    PQ_FUND_Q,              
    PQ_HARM_POS_P_TOTAL,    
    PQ_HARM_REV_P_TOTAL,    
    PQ_HARM_POS_Q_TOTAL,    
    PQ_HARM_REV_Q_TOTAL,    
    PQ_HARM_P,              
    PQ_HARM_Q,              
    PQ_IHARM_P,             
    PQ_IHARM_Q,             
    PQ_EXTRERMS,            

	PQ_U_FLUC2,              
    PQ_U_FLUCF2,             

}PQ_MMXU_TYPE;

 

typedef enum{
    STATS_HARM_VOL=0,
    STATS_HARM_CUR,
    STATS_IHARM_VOL,
    STATS_IHARM_CUR,
    STATS_PST,
    STATS_PLT,
    STATS_U_DEV,         
    STATS_HZ_DEV,        
    STATS_U_UNBALANCE,   
    STATS_I_UNBALANCE,   
    STATS_U_FLUC,        
    STATS_U_FLUC_F,      
    STATS_MAX_NUM
}STATS_TYPE;


typedef struct{
    unsigned long sec;
    unsigned long msec;
}DSPTIME;

 
typedef enum{
    TIME_3S = 0,     
    TIME_10S,        
    TIME_10M,        
    TIME_2H          
}TIIME_STAMP;

#pragma pack(1)

typedef struct TRealTimer_t
{
	
	unsigned short wYear;
	
	unsigned char Mon;
	
	unsigned char Day;
	
	unsigned char Hour;
	
	unsigned char Min;
	
	unsigned char Sec;

}TRealTimer;
#pragma pack()

 
typedef enum{
    PARA_3P3W_VOL = 0,   
     
    PARA_RATE_VOL,    
     
    PARA_RATE_CUR    
}PARA_TYPE;



typedef enum
{
    Evt_Min_0ms     =   0,              
    Evt_Min_5ms     =   1,              
    Evt_Min_7_5ms   =   2,              
    Evt_Min_10ms    =   3,              
    Evt_Min_20ms    =   4,              
    Evt_Min_40ms    =   5,              
    Evt_Min_enum_MAX
}EVT_START_MIN_DUR;


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
    unsigned long   fluc[PH_NUM];                   
    unsigned long   fluc_f[PH_NUM];                 
    unsigned long   pst[PH_NUM];                    
    unsigned long   plt[PH_NUM];                    
    unsigned long   hz;                             
    long  vol_dev[PH_NUM];                
    long  hz_dev;                         
    unsigned long   ExtreRms[PH_NUM][MaxRms+1];     

	unsigned long   fluc2[PH_NUM];                   
    unsigned long   fluc_f2[PH_NUM];                 
}VOL_UNION;

typedef struct{
    
    int     P[PH_NUM+1];
    int     Q[PH_NUM+1];
    int     S[PH_NUM+1];
    int     PF[PH_NUM+1]; 
}CUR_UNION;

typedef union{
    VOL_UNION v;
    CUR_UNION c;
}VI_UNION;

typedef struct{
    unsigned long   pos;            
    unsigned long   neg;            
    unsigned long   zero;           
}VI_SEQ;

typedef struct{
    unsigned long   neg;  
    unsigned long   zero; 
}VI_UNBALANCE;


typedef struct{
    unsigned long           vi_mag[PH_NUM];                                 
    VI_UNION        vi_union;
    int             vi_dc[PH_NUM];                                  
    unsigned long           vi_harm_mag[PH_NUM][50];        
    unsigned long           vi_intharm_mag[PH_NUM][50];     
    unsigned short            vi_harm_ang[PH_NUM][50];        
    unsigned short            vi_intharm_ang[PH_NUM][50];     
    unsigned long           vi_THD[PH_NUM];                                 
    unsigned long           vi_harm_content[PH_NUM][50];    
    unsigned long           vi_intharm_content[PH_NUM][50]; 
    VI_SEQ          vi_seq;                                         
    VI_UNBALANCE    vi_unbalance;                                   
}DSP_RT_ONE_50;

 
typedef struct{
    DSPTIME tm_3s;       
    DSPTIME tm_10s;  
    DSPTIME tm_10m;  
    DSPTIME tm_2h;       
}TIME_STAMP;


typedef struct
{
    float P[PH_NUM+1];     
    float Q[PH_NUM+1];     
}FUNDPOWER;


typedef struct
{
    float posP[PH_NUM+1];     
    float revP[PH_NUM+1];     
    float posQ[PH_NUM+1];     
    float revQ[PH_NUM+1];     
}HARMPOWER_TOTAL;


typedef struct
{
    float P[PH_NUM+1][50];     
    float Q[PH_NUM+1][50];     
}HARMPOWER;


typedef struct
{
    FUNDPOWER       fundpower;              
    HARMPOWER_TOTAL harmpower_total;        
    HARMPOWER       harmpower;              
    HARMPOWER       iharmpower;             
    unsigned long           harmactpower_content[PH_NUM][50];       
    unsigned long           iharmactpower_content[PH_NUM][50];      

}HARM_DATA;


typedef struct
{
    TIME_STAMP      time;
    DSP_RT_ONE_50   vol;
    DSP_RT_ONE_50   cur;
    HARM_DATA       harm_data;
}PQ_DATA;











typedef union{
    unsigned long   d;
    long  l;
}TYPE_UNION;

typedef struct
{
    TYPE_UNION  max_data;
    TRealTimer  max_time;
    TYPE_UNION  min_data;
    TRealTimer  min_time;
}STATSDATA_STRUCT;


typedef struct
{
    unsigned long               p95_harm_vol[PH_NUM][24];
    unsigned long               p95_harm_cur[PH_NUM][24];
    unsigned long               p95_iharm_vol[PH_NUM][21];
    unsigned long               p95_iharm_cur[PH_NUM][21];
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
    
    PQ_Correct_P        ,
    PQ_Correct_Q        ,
    PQ_Correct_U_double ,
    PQ_Correct_I_double ,
    PQ_Correct_A
}CORRECT_TYPE;


typedef struct
{
    float U_factor[PH_NUM];
    float I_factor[PH_NUM];
    float A_factor[PH_NUM];
    float P_factor[PH_NUM];
    float Q_factor[PH_NUM];
    
    unsigned long dwCRCfact;
    
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
    U = 0,                  
    U_SEQ_POS,              
    U_SEQ_NEG,              
    U_SEQ_ZERO,             
    U_DEV,                  
    I,                      
    I_HIGHPREC,             
    I_SEQ_POS,              
    I_SEQ_NEG,              
    I_SEQ_ZERO,             
    PF,                     
    U_THD,                  
    I_THD,                  
    HZ,                     
    HZ_DEV,                 
    U_UNBALANCE_NEG,        
    U_UNBALANCE_ZERO,       
    I_UNBALANCE_NEG,        
    I_UNBALANCE_ZERO,       

    UChange,                
	UChangeFre,             
    UFlicker,               
	UFlickerLong,           

    MODULE_STATUS,          
    HarmonicU,              
    HarmonicI,              
    HarmonicP,              
    HarmonicPALL,           
    IHarmonicU,             
    IHarmonicI,             
    IHarmonicP,             
    HarmonicUDayCount,      
    HarmonicIDayCount,      
    IHarmonicUDayCount,     
    IHarmonicIDayCount,     
    PSTDayCount,            
    PLTDayCount,            
    U_DEV_DayCount,         
    HZ_DEV_DayCount,        
    U_SEQ_DayCount,         
    I_SEQ_DayCount,         
    UChange_DayCount,       
    UChangeFre_DayCount,       

	HarmUContent,
	HarmIContent,
	IHarmUContent,
	IHarmIContent,

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
	UChange3,                
	NILM_P,

}eModuleType;

typedef struct
{
	unsigned long	dwDayJZOAD;					
	unsigned char	byDayJZPeriod;
	unsigned long   dwDayJZTi;
}JZ_PARA;

typedef struct
{
	
	
	
	
	
	
	


	unsigned long	dwDayJZOAD;					
	unsigned char	byDayJZPeriod;
	unsigned long   dwDayJZTi;
	
	
	
	
	
	
	
	
	
	
	
	
	
	unsigned long	dwDayTJOAD;					
	unsigned char	byDayTJPeriod;
	unsigned long   dwDayTJTi;
	unsigned char	byDayTJConLevel;
	unsigned char	byDayTJType;
	
	
	
	
	unsigned long	dwBdThreshold;
	
	
}PQ_JZ_RATE;

#pragma pack(push)
#pragma pack(1)
typedef struct
{
    unsigned char Uis3P3W;
    unsigned long vol_std;
    unsigned long cur_std;
    unsigned char EvtCtrl;         
    unsigned short evt_threshold[TRA_EVT_MAX][EVT_PARA_MAX];
    BIG_ADJUST_PARA big_adjust_para;

}SYS_PARA_1808;
#pragma pack(pop)

 
extern PQ_DATA * GetPqDataAddr(void);
extern PQ_STATSDATA * GetPqStatsDataAddr(void);
extern void SetTimeStamp(unsigned char type, DSPTIME *val);
extern void SetPqData(unsigned char type, void *val);
extern unsigned long GetFreq(void);

 
extern SYS_PARA_1808 *GetSysParaAddr(void);
extern unsigned long Get_Sys_Para(unsigned char type);
extern void Set_Adjust_Para(unsigned char type ,unsigned char phase,void *factor);
extern void GetDig_Factor(void *buf);
extern int ICorrect(unsigned char ph,unsigned char type, float val);
extern void Correct_UI_double(unsigned char ph, unsigned char type, double *data);
extern int CorrectUIPQ(unsigned char ph, unsigned char type, void *data);
extern void CorrectAngle(int *p,int *q);
extern void SysParaInit(void);
extern void Save_Para(void);
extern void RefreshTemFactor(void);
extern void memclr_f(void *ptr, int len);
extern unsigned long GetFastFreq(void);        
extern unsigned short api_GetModuleData( unsigned char ModuleType, unsigned char Phase, unsigned char Times, unsigned char *pBuf );




















typedef union TTwoByteUnion_t
{
	
	unsigned short w;
	
	unsigned char  b[2];
	
	short sw;

}TTwoByteUnion;


typedef union TFourByteUnion_t
{
	
	unsigned long d;
	
	unsigned short w[2];
	
	unsigned char b[4];	
	
	long l;
	
}TFourByteUnion;

typedef union TEightByteUnion_t
{
	
	unsigned long long q;
	
	unsigned long d[2];
	
	unsigned short w[4];
	
	unsigned char b[8];
	
	long long ll;
}TEightByteUnion;


















unsigned char lib_BBCDToBin(unsigned char In);















void lib_MultipleBBCDToBin( unsigned short Num, unsigned char* pIn, unsigned char* pOut );











unsigned char lib_BBinToBCD(unsigned char In);












unsigned short lib_WBCDToBin(unsigned short In);












unsigned short lib_WBinToBCD(unsigned short In);












unsigned long lib_DWBCDToBin(unsigned long In);












unsigned long lib_DWBinToBCD(unsigned long In);












long long lib_QWBCDToBin( long long In );












long long lib_QWBinToBCD( long long In );












unsigned long lib_MyPow10( unsigned char PowNum );












unsigned char lib_CheckBCD(unsigned char In);














unsigned char lib_CheckSum(unsigned char * ptr, unsigned short Length);













unsigned long lib_DWORDCheckSum(unsigned char * ptr, unsigned short Length);














unsigned long lib_CheckCRC32( unsigned char *pBuf, unsigned short wSize);













unsigned char lib_CheckSafeMemVerify( unsigned char * p, unsigned short Size, unsigned short Fix );











void lib_InverseData( unsigned char *Buf, unsigned short Len );















void lib_ExchangeData(unsigned char *BufA, unsigned char *BufB, unsigned char Len );














void lib_ExchangeBit(unsigned char *BufA, unsigned char *BufB, unsigned char Len );













void lib_XorData( unsigned char *BufA, unsigned char *BufB, unsigned short Num );












unsigned char lib_IsAllAssignNum( unsigned char *p, unsigned char AssignNum, unsigned short Length );










unsigned char lib_IsBCD( unsigned char Value );











unsigned char lib_IsMultiBcd( unsigned char *Buf, unsigned char Len );

void *api_AllocBuf(unsigned short *BufSize);

void api_FreeBuf(void *pBuf);










 unsigned short fcs16(unsigned char *cp, unsigned short len);

  
 
 
 
 
 
 
 
 
 unsigned short fcs16_Ex(unsigned short wInitCrc, unsigned char *cp, unsigned short len);

 void GetAppDateTimeString(unsigned char* Info);

 float GetStringToFloat(char* szText, int nLen);













typedef enum
{
 	eTASK_SAMPLE_ID = 0,	
	eTASK_LCD_ID,			
	eTASK_PROTOCOL_ID,		
	eTASK_LOADPROFILE_ID,	
	eTASK_DEMAND_ID,		
	eTASK_EVENTS_ID,		
	eTASK_PREPAY_ID,		
	eTASK_FREEZE_ID,		
	eTASK_ENERGY_ID,		
	eTASK_PARA_ID,			
	eTASK_RTC_ID,			
	eTASK_LOWPOWER_ID,		
	eTASK_SYSWATCH_ID,		
	eTASK_RELAY_ID,			

    eTASK_FREQ_ID,          
    eTASK_STATS_ID,         
    eTASK_FLICK_ID,         
	
	eTASK_VFRATE_ID,					
	
	
	eTASK_ID_NUM_T
	
}TTaskIDNum;


typedef enum
{
	
	eFLAG_10_MS = 0,
	
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
	eFLAG_TIME_CHANGE,			
	eFLAG_SWITCH_JUDGE,			
	
	eFLAG_TIMER_T

}eTaskTimeFlag;

typedef enum
{
	
	eSYS_STATUS_INSIDE_FACTORY,
    
    eSYS_STATUS_CALC_SEQ,
    
    
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

    
    eSYS_STATUS_U_THD_OVER,
    
    eSYS_STATUS_I_THD_OVER,
    
    eSYS_STATUS_METERING_FAULT,
    
    eSYS_STATUS_PST_OVER,
    
    eSYS_STATUS_PLT_OVER,
    
    eSYS_STATUS_U_DIP,
    
    eSYS_STATUS_U_SWL,
    
    eSYS_STATUS_U_INT,

	
    eSYS_STATUS_U_DEV,
	
    eSYS_STATUS_F_DEV,
	
    eSYS_STATUS_U_BAL,
	
    eSYS_STATUS_I_BAL,
	
    eSYS_STATUS_U_CHG,

    eSYS_STATUS_METERING_FAULT2,
	
	eSYS_STATUS_NUM_T,
	
}eSysStatusFlag;


typedef struct TFlagBytes_t
{
	
	unsigned long TaskTimeFlag[eFLAG_TIMER_T];
    
	unsigned char SysStatus[64 / 8];
	
}TFlagBytes;









void api_SetAllTaskFlag( unsigned char FlagID );












void api_SetTaskFlag( unsigned char TaskID, unsigned char FlagID );












unsigned char api_GetTaskFlag( unsigned char TaskID, unsigned char FlagID );












void api_ClrTaskFlag( unsigned char TaskID, unsigned char FlagID );











void api_SetSysStatus(unsigned char StatusNo);











void api_ClrSysStatus(unsigned char StatusNo);











unsigned char api_GetSysStatus(unsigned char StatusNo);




typedef enum
{
    Sec_10s = 10    ,
    Sec_5m  = 300   ,
    Sec_10m = 600   ,
    Sec_2H  = 7200  ,   
    Sec_24H = 86400
}TIMESTAMPINFO;



extern volatile DSPTIME PublicTime;


extern void get_time_current_Pnt(DSPTIME *time);
extern void Sec2Time(unsigned long sec);
extern void TimeFun(void); 
extern unsigned long GetTimeSec(void);





 
extern unsigned char get_sys_time(TRealTimer *stime);
extern unsigned char api_WriteMeterTime(TRealTimer * t);

extern void TimeRtcFun(void);

extern void api_RtcTask(void);
extern void api_PowerUpRtc(void);
extern unsigned long api_GetRelativeMin( void );
extern unsigned long api_CalcInTimeRelativeMin(TRealTimer * t);
extern unsigned long api_CalcInTimeRelativeSec(TRealTimer * t);
extern unsigned char api_ToAbsTime(unsigned long Min, TRealTimer *p);
extern unsigned char api_ReadMeterTime( TRealTimer* Timer );
extern unsigned long api_CalcIntervalMinute(TRealTimer * tNew, TRealTimer * tOld);
extern long api_CompareTwoTime(TRealTimer * tNew, TRealTimer * tOld);
extern unsigned long api_GetRelativeSec( void );
extern unsigned char api_CheckClock(TRealTimer * p);

































typedef struct
{
	unsigned char SerialType;
	unsigned char SCI_Ph_Num;								
	unsigned char (*SCIInit)( unsigned char SCI_Ph_Num );				
	unsigned char (*SCIEnableRcv)( unsigned char SCI_Ph_Num );		
	unsigned char (*SCIDisableRcv)( unsigned char SCI_Ph_Num );		
	unsigned char (*SCIEnableSend)( unsigned char SCI_Ph_Num );		
	unsigned char (*SCIBeginSend)( unsigned char SCI_Ph_Num );		
}TypeDef_Pulic_SCI;

typedef struct
{
    unsigned long RxCount;
    unsigned long TxBegCount;
    unsigned long TxCptCount;
    unsigned long TxDMAErrorCount;
    unsigned long ErrorCallbackCount;
} USARTCOUNT;



extern const TypeDef_Pulic_SCI SerialMap[1];
extern volatile USARTCOUNT USART_Count;

void InitBoard(void);
void DoSPICS(unsigned short No, unsigned short Do);

extern void InitLED(void);
extern void api_DeInitTIM2(void);















extern unsigned char InitComplete;
extern unsigned char LED_SPI3Working;
extern unsigned char LED_USART1Working;
extern unsigned char LED_SPIEvent;

unsigned long GetPrivateTime(void);

void api_InitCPU(void);

void api_InitSci( unsigned char Channel );




unsigned char api_UWriteSpi( eCOMPONENT_TYPE Component, unsigned char Data );




void api_DelayNop(unsigned char Step);
void api_Delayus(unsigned long us);
void api_Delay10us(unsigned short us);
void api_Delay100us(unsigned short us);
void api_Delayms(unsigned short ms);

void IWDG_Feed(void);

unsigned short api_CheckCpuFlashSum(unsigned char Type);
unsigned char api_ReadCpuRamAndInFlash(unsigned char Type, unsigned long Addr, unsigned char Len, unsigned char *Buf);
void api_StartUpdateProgMessage(unsigned char *pBuf);



 














 
 


	


	
	
	
	
	
	
	
	
	
	












typedef struct TSerial_t
{

	
	unsigned char ProBuf[512+30];

	unsigned short ProStepDlt645;
	
	unsigned short BeginPosDlt645;

	
	unsigned short Dlt645DataLen;

	
	unsigned short ProStepDlt698_45;
	
	unsigned short BeginPosDlt698_45;
	unsigned short wLen;
	unsigned char Addr_Len;

	
	unsigned short RXWPoint;
	unsigned short RXRPoint;

	unsigned short TXPoint;
	unsigned short SendLength;

	
	unsigned char WatchSciTimer;

	unsigned char BroadCastFlag;

	unsigned char BeginPoint;

	
	
	unsigned short RxOverCount;

	
	unsigned short ReceToSendDelay;

	unsigned char byLastRXDCon;
	
	
	unsigned char OperationFlag;

    unsigned char SendingFlag;

	unsigned char pBufEx[512];
	unsigned short wExLen;
}TSerial;


typedef struct TDlt645Head_t
{
	unsigned char Sync1;
	unsigned char ID[6];
	unsigned char Sync2;
	unsigned char Control;
	unsigned char Length;
}TDlt645Head;


typedef struct  TSafeModeParaSub_t
{
	unsigned short OI;
	unsigned short wSafeMode;
}TSafeModeParaSub;

typedef struct  TSafeModePara_t
{
	unsigned char Num;		                         		
	unsigned char Flag;   	                            	
	TSafeModeParaSub Sub[60];
	unsigned long CRC32;              						
}TSafeModePara;




typedef struct TProtocol_Para_t
{
	TSafeModePara SafeModePara;


}TProSafeRom;

typedef enum
{
	eCLEAR_METER   = 0x1111,		
	eCLEAR_FACTORY = 0x2222,		
	eCLEAR_EVENT   = 0x4444,		
	eCLEAR_MONEY   = 0x6666,		
	eCLEAR_PARA    = 0x7777,		
	eCLEAR_DEMAND  = 0x8888		
}eCLEAR_METER_TYPE;

typedef enum
{
	ePROTOCO_698 = 0,   
	ePROTOCO_645      
}ePROTOCO_TYPE;


typedef enum
{
	eRecInit,
        eRecErr,
        eRecOk,
        
}eUART_REC_RESULT;


typedef struct TUart_Para_t
{
      unsigned char      byRecResult;            
      
      int       nDelayTime;
      
      int       nBaud;

      unsigned long      dwRecCount;
      unsigned long      dwOldRecCount;
}TUart_Para;




extern TSerial Serial[1];

extern unsigned char Reply;
extern unsigned char g_byUsePasswordP2;
extern unsigned short g_wRelayReplyStauts;
extern unsigned short FactoryTime;
extern unsigned short LowFactoryTime;

extern unsigned char APDUResponseBuf[1][2000+30];

extern const unsigned short RECE_TO_SEND_DELAY;




void InitPoint(TSerial * p);
void api_InitSubProtocol(unsigned short);


void api_InitSciStatus( unsigned char i );

void api_EnableRece(TSerial * p);

void api_DisableRece(TSerial * p);

unsigned char CalRXD_CheckSum(unsigned short ProtocolType, TSerial * p);

void DoReceMoveData(unsigned short ProtocolType, TSerial * p);

unsigned short DoReceProc_Dlt645(unsigned char ReceByte, TSerial * p);




TSerial *GetSerial(unsigned char *pBuf);













unsigned short JudgeRecMeterNoOnlyOneData(unsigned char bySpecialData,unsigned char *pBuf);




void InitDlt645_2007(void);


unsigned short JudgeRecMeterNo(unsigned char *pBuf);
void api_ProtocolTask(void);
void api_PowerUpProtocol( void );











unsigned char* AllocResponseBuf(unsigned char Ch,         ePROTOCO_TYPE PROTOCO_TYPE );










unsigned short ReadFactoryExtPro(unsigned char *pBuf);










unsigned short ReadADData(unsigned char *pBuf, unsigned char temp1, unsigned char temp2, unsigned char *pBufTemp);

















unsigned char api_SetClearFlag( eCLEAR_METER_TYPE ClearType, unsigned char DelayTime_500ms );


















typedef enum
{
   	eData = 0,         	
   	eTagData,    		
   	eAddTag,        	
   	eProtocolData,      
   	eMaxData = 0X55    
}eDataTagChoice;

typedef enum
{
    eNULL_TIME_FLAG = 0x00,
   	eFREEZE_TIME_FLAG = 0x01, 		
   	eRECORD_TIME_INTERVAL_FLAG = 0x02, 
   	eNUM_FLAG = 0x04,    				
   	eEVENT_START_TIME_FLAG = 0x08,		
   	eEVENT_END_TIME_FLAG = 0x10		
}eRecoredFlagChoice;

typedef struct TTimeIntervalPara_t	
{
    unsigned long StartTime;				
    unsigned long EndTime;					
    unsigned short  TI;						
    unsigned short  ReturnFreezeNum;			
    unsigned char  AllCycle;                 
}TTimeIntervalPara;

typedef struct TDLT698RecordPara_t			
{
	unsigned short OI;								
	unsigned char Ch;                                
	ePHASE_TYPE Phase;						
	eRecoredFlagChoice eTimeOrLastFlag; 	
	unsigned long TimeOrLast;						
	TTimeIntervalPara TimeIntervalPara;     
	unsigned char OADNum;							
	unsigned char *pOAD;								
}TDLT698RecordPara;

typedef struct TDLT698APPConnect_t   	
{
	unsigned char Mode;						    
	unsigned long ConnectValidTime;				
	unsigned long ConstConnectValidTime;	 	
	unsigned char  ConnectChannel;				
	unsigned long IRAuthTime;			        
}TDLT698APPConnect;

typedef struct TCoefficient_t
{
	unsigned long UK;
	unsigned long IK;
	unsigned long Phase;
}TCoefficient;

typedef enum
{	
	eGET_ALL  = 0,
	eGET_ADDR,
	eGET_SAMPLENUM,
	eGET_SAMPLEINFO,
	eGET_V,
	eGET_I,
	eGET_RTC,
	eMAXCOMNO
}eCOMStatus;

typedef struct TManageComInfo_t   	
{
	eCOMStatus Status;
	unsigned char AddressType;
	unsigned char SampleNO;
	unsigned short DelayTime;
	unsigned char Address[6];
	TCoefficient Coefficient;
	unsigned short EventReportOverTime;

	unsigned char byRecOkFlag;

	unsigned long dwEVol;
	unsigned long dwECur;

        unsigned char  byRetryCount;
        
}TManageComInfo;


typedef enum
{
	eFileRate = 99,		
	eFileOk,			
	eFileLinking,		
	eFileRemote,		
	eFileExe,			
	eFileNotExist,		
	eFileNotUse,		
	eFileInterupt,		
	eFileCrcError,		
	eFileTransFail,		
	eFileDeliveryFail,	
	eFileLinkFail,		
	eFileLogonFail,		
	eFileNoRoom,		
	eFileReset,			
}eFileStatus;

typedef enum		
{
	eFileUpdateInit		= 0,			
	eFileUpdateStartOk	= 1,			
	eFileUpdateDowning	= 2,			
	eFileUpdateDownOk	= 3,			
	eFileUpdateCheckOK	= 4,			
	eFileUpdateTimeWait	= 5,			
	eFileUpdateSuccess	= 6,			

	eFileUpdateHardErr	= 20,			
	eFileUpdateSoftErr	= 21,			

	eFileUpdateWFlashErr	= 22,		
	eFileUpdateRFlashErr	= 23,		
	eFileUpdateWProgramErr	= 24,		
	eFileUpdateCheckErr		= 25,		
	eFileUpdateCheckTrueErr	= 26,		
	eFileUpdateTimerErr		= 27,		
	eFileUpdateOtherErr		= 255,		

}eFileUpdateResult;












#pragma pack(push)
#pragma pack(1)
typedef struct TTFileInfo
{
	unsigned long   dwMagic;

	char	sourseFile[30];		
	char	destFile[30];		
	unsigned long	lFileSize;			
	unsigned char	FileAttr;			
	char	FileVersion[20];		
	unsigned char	byFileType;			

	unsigned long   dwTxBlockLen;		
	unsigned char    byCheckType;
	unsigned long	dwCrcCheck;			

	char    szSoftVersion[33];		
	char    szHardwareVersion[33];  
	char    szDownFlag[33];
	
	unsigned short    BlockStatusNum;
	unsigned char    BlockStatus[256];
	TRealTimer FileUpdateTime;

	unsigned char	FileStatus;
	
		
	unsigned char	FileTransferStatus;

	TRealTimer ResetTime;
	unsigned char	dwUpFlag;

	unsigned short    wCrc;

}TFileInfo;
#pragma pack(pop)


typedef struct TTFileText
{
	unsigned long	lFileIndex;			
	unsigned char	File[4*1024];			

}TFileText;







extern TDLT698APPConnect APPConnect;
extern unsigned char g_EnableAutoReportFlag;
extern unsigned char g_byClrTimer_500ms;
extern TManageComInfo ManageComInfo;




















extern unsigned short api_GetProOadData( unsigned char DataType,unsigned char Dot,unsigned char *pOAD, unsigned char *InBuf, unsigned short OutBufLen, unsigned char *OutBuf );












extern unsigned short api_GetProOADLen(unsigned char DataType, unsigned char *pOAD, unsigned char Number);

















extern unsigned short api_ReadProRecordData( unsigned char Tag, TDLT698RecordPara *pDLT698RecordPara, unsigned short BufLen,unsigned char *pBuf );

extern void api_ClrProSafeModePara(unsigned char byType);















extern void api_AddTimeSegParaExtDataWithLastValid(unsigned char byLen, unsigned char byMaxLen, unsigned char *pBuf );











int api_GetFileExeTime(unsigned char *Buffer);











int api_GetFileBlockSize(unsigned char *Buffer);











int api_GetFileLoadFlag(unsigned char *Buffer);











int api_GetFileStatus(unsigned char *Buffer);











int api_GetFileTransmitStatus(unsigned char *Buffer);
int api_GetFileTransmitMakeType(unsigned char *Buffer);

int api_GetFileVersion(unsigned char *Buffer,unsigned char classType);










void api_SetTagArrayNum(unsigned char Num);












































void api_Release645_Auth( void );



































typedef enum
{
	eFACTORY_INIT = 0,					
	eEXCEPT_CLEAR_METER,				
	eEXCEPT_CLEAR_METER_CLEAR_EVENT		
}eEVENT_CLEAR_TYPE;


typedef enum
{
	eEVENT_CURRENT_RECORD_NO = 0,	
	eEVENT_MAX_RECORD_NO			
}eEVENT_RECORD_NO_TYPE;


typedef enum
{
  eCLEAR_EVENT_DELAYED_STATUS = 0,		 
  eSET_EVENT_DELAYED_STATUS,			 
  eGET_EVENT_DELAYED_STATUS,			 
}eDEAL_EVENT_DELAYED_STATUS;

typedef enum
{
  eCLEAR_EVENT_CURRENT_STATUS = 3,	 	
  eSET_EVENT_CURRENT_STATUS,	 		
  eGET_EVENT_CURRENT_STATUS,	 		
}eDEAL_EVENT_CURRENT_STATUS;
 

typedef enum
{
	eEVENT_ENDTIME_CURRENT = 0, 
	eEVENT_ENDTIME_PWRDOWN		
}eEVENT_ENDTIME_TYPE;


typedef enum
{
	ePROGRAM_NOT_YET_START = 0,	
	ePROGRAM_STARTED			
}ePROGRAM_STATUS;


typedef enum
{
	eTYPE_BYTE = 0,	
	eTYPE_WORD,		
	eTYPE_DWORD,	
	eTYPE_SPEC1,	
	eTYPE_SPEC2,	
	eTYPE_SPEC3,	
	eTYPE_NULL,		
}eEVENT_PARA_TYPE;


typedef enum
{	
	
	eSUB_EVENT_HARMONIC_U_DISTORTION_A = 0,
	
	
	eSUB_EVENT_HARMONIC_I_DISTORTION_A,

	
	eSUB_EVENT_HARMONIC_U_OVERRUN_A,

	
	eSUB_EVENT_HARMONIC_I_OVERRUN_A,

	
	eSUB_EVENT_HARMONIC_P_OVERRUN_A,

	
	eSUB_EVENT_INTER_HARMONIC_U_OVERRUN_A,

	
	eSUB_EVENT_INTER_HARMONIC_I_OVERRUN_A,

	
	eSUB_EVENT_INTER_HARMONIC_P_OVERRUN_A,

	
	eSUB_EVENT_SHORT_FLICKER_U_OVERRUN_A,

	
	eSUB_EVENT_LONG_FLICKER_U_OVERRUN_A,

	
	eSUB_EVENT_SAG_U_A,

	
	eSUB_EVENT_SWELL_U_A,

	
	eSUB_EVENT_INTERRUPTION_U_A,

	
	
	
	eSUB_EVENT_U_DEV_A,
	
	
	eSUB_EVENT_F_DEV_A,

	
	
	
	eSUB_EVENT_U_CHANGE_A,
	


	
	eSUB_EVENT_UPDATE,

	
	eSUB_EVENT_METER_CLEAR,

	
	eSUB_EVENT_JLCHIP_FAIL,
	
	
	eSUB_EVENT_ADJUST_TIME,

	eSUB_EVENT_STATUS_TOTAL,

}eSUB_EVENT_INDEX;


typedef enum
{
	
	eEVENT_HARMONIC_U_DISTORTION_NO,		

	eEVENT_HARMONIC_I_DISTORTION_NO,		

	eEVENT_HARMONIC_U_OVERRUN_NO,			

	eEVENT_HARMONIC_I_OVERRUN_NO,			

	eEVENT_HARMONIC_P_OVERRUN_NO,			

	eEVENT_INTER_HARMONIC_U_OVERRUN_NO,		

	eEVENT_INTER_HARMONIC_I_OVERRUN_NO,		

	eEVENT_INTER_HARMONIC_P_OVERRUN_NO,		
	
	eEVENT_SHORT_FLICKER_U_OVERRUN_NO,		
	
	eEVENT_LONG_FLICKER_U_OVERRUN_NO,		

	eEVENT_SAG_U_NO,						

	eEVENT_SWELL_U_NO,						

	eEVENT_INTERRUPTION_U_NO,				
	
	
	eEVENT_U_DEV_NO,
	eEVENT_F_DEV_NO,
	eEVENT_U_UNBALANCE_NO,
	eEVENT_I_UNBALANCE_NO,
	eEVENT_U_CHANGE_NO,

	
	eSUB_EVENT_UPDATE_NO,					

	eSUB_EVENT_METER_CLEAR_NO,				

	eSUB_EVENT_JLCHIP_FAIL_NO,				

	eSUB_EVENT_ADJUST_TIME_NO,				

	eSUB_EVENT_3320,						
	
	eNUM_OF_EVENT,							
	
	ePRG_RECORD_NO = eNUM_OF_EVENT,			

	eNUM_OF_EVENT_PRG,						

	

	eNUM_OF_EVENT_ALL,						
	
}eEVENT_INDEX;

typedef struct TEventStatus_t
{
	unsigned char CurrentStatus[(eSUB_EVENT_STATUS_TOTAL+7)/8];	
	unsigned char DelayedStatus[(eSUB_EVENT_STATUS_TOTAL+7)/8]; 
}TEventStatus;

#pragma pack(1)

typedef struct TEventTime_t
{
	
	TRealTimer BeginTime;
	
	TRealTimer EndTime;

}TEventTime;

typedef struct TLostPowerTime_t
{
	TRealTimer	Time;		
	unsigned long		CRC32;
}TLostPowerTime;
#pragma pack()

typedef struct TEventOADCommonData_t
{
	unsigned long			EventNo;					
	TEventTime		EventTime;					
}TEventOADCommonData;

typedef struct TEventDataInfo_t
{
	unsigned long	RecordNo;						
	unsigned long	AccTime;						
	unsigned long	CRC32;
}TEventDataInfo;

typedef struct TEventAddrLen_t
{
	unsigned long	dwAttInfoEeAddr;
	unsigned long	dwDataInfoEeAddr;
	unsigned long	dwRecordAddr;					
	unsigned short	wDataLen;						
	unsigned char	EventIndex;
	unsigned char	Phase;
	unsigned char	SubEventIndex;
}TEventAddrLen;

typedef struct TSubEventInfoTab_t
{
	eSUB_EVENT_INDEX	SubEventIndex;
	eEVENT_INDEX		EventIndex;	
	ePHASE_TYPE			Phase;
	unsigned char 	(*pGetEventStatus)( unsigned char Phase );	
}TSubEventInfoTab;

typedef struct TEventInfoTab_t
{
	unsigned short	OI;
	unsigned char 	EventIndex;							
	unsigned char 	NumofPhase;							
	unsigned char	SpecialProc;						
	unsigned char	ExtDataLen;							
	unsigned char 	ParaNum;							
	unsigned char 	ParaType[4];		
}TEventInfoTab;









extern TEventStatus EventStatus;
extern const TSubEventInfoTab	SubEventInfoTab[];



















unsigned char SaveInstantEventRecord( unsigned char inEventIndex, unsigned char Phase, unsigned char BeforeAfter, unsigned char EndTimeType );


















unsigned char GetEventInfo( TEventAddrLen *pEventAddrLen );














unsigned char GetEventIndex( unsigned short OI, unsigned char *pEventIndex );










unsigned char GetSubEventIndex(TEventAddrLen *pEventAddrLen);


unsigned char GetUHarDistorStatus(unsigned char Phase);
unsigned char GetIHarDistorStatus(unsigned char Phase);
unsigned char GetUHarOverRunStatus(unsigned char Phase);
unsigned char GetIHarOverRunStatus(unsigned char Phase);
unsigned char GetPHarOverRunStatus(unsigned char Phase);
unsigned char GetUInterHarOverRunStatus(unsigned char Phase);
unsigned char GetIInterHarOverRunStatus(unsigned char Phase);
unsigned char GetPInterHarOverRunStatus(unsigned char Phase);
unsigned char GetUShortFlickerStatus(unsigned char Phase);
unsigned char GetULongFlickerStatus(unsigned char Phase);
unsigned char GetUSagStatus(unsigned char Phase);
unsigned char GetUSwellStatus(unsigned char Phase);
unsigned char GetUInterruptionStatus(unsigned char Phase);

unsigned char GetJLChipFailStatus(unsigned char Phase);

unsigned char GetUDevStatus(unsigned char Phase);
unsigned char GetFDevStatus(unsigned char Phase);
unsigned char GetUUnbalanceStatus(unsigned char Phase);
unsigned char GetIUnbalanceStatus(unsigned char Phase);
unsigned char GetUChangeStatus(unsigned char Phase);

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









typedef struct TEventAttInfo_t
{
	unsigned long	Oad[20];			
	unsigned char	NumofOad;						
	unsigned char	bValidFlag;						
	unsigned short	OadValidDataLen;				
	unsigned short	AllDataLen;						
	unsigned short	OadLen[20];		
	unsigned short	MaxRecordNo;					
}TEventAttInfo;



typedef struct TEventPara_t
{
	unsigned short	SetTimeLimit;					

	short   sHrmUDistorThreshold;			
	unsigned char	HrmUDistorDelayTime;			

	short   sHrmIDistorThreshold;			
	unsigned char	HrmIDistorDelayTime;			

	unsigned short    wShortFlkThreshold;				
	unsigned short	wShortFlkDelayTime;				

	unsigned short    wLongFlkThreshold;				
	unsigned short	wLongFlkDelayTime;				

	unsigned short    wSagUThreshold;					
	unsigned short	wSagUDelayTime;					
	
	unsigned short    wSwellUThreshold;				
	unsigned short	wSwellUDelayTime;				

	unsigned short    wInterruptUThreshold;			
	unsigned short	wInterruptUDelayTime;			


	short   sHrmUContentThreshold;			
	unsigned char	HrmUContentDelayTime;			

	short   sHrmIContentThreshold;			
	unsigned char	HrmIContentDelayTime;			

	short   sHrmPContentThreshold;			
	unsigned char	HrmPContentDelayTime;			

	short   sInterHrmUContentThreshold;		
	unsigned char	InterHrmUContentDelayTime;		

	short   sInterHrmIContentThreshold;		
	unsigned char	InterHrmIContentDelayTime;		

	short   sInterHrmPContentThreshold;		
	unsigned char	InterHrmPContentDelayTime;		


	short   sUDevThreshold;			
	unsigned char	UDevDelayTime;			

	short   sFDevThreshold;			
	unsigned char	FDevDelayTime;			

	short   sUUnbalanceThreshold;	
	unsigned char	UUnbalanceDelayTime;	

	short   sIUnbalanceThreshold;	
	unsigned char	IUnbalanceDelayTime;	

	short   sUChangeThreshold;		
	unsigned char	UChangeDelayTime;		


	unsigned char    SPIDelayTime;			
        
        int     nUartBps;
        
        unsigned short    wBodongThreshold;
        
	unsigned char    byRec[8];

	unsigned long   wCRC;

}TEventPara;


typedef struct TReportMode_t
{
	
	unsigned char g_EnableAutoReportFlag;		
	unsigned char g_EnableFollowReportFlag;		

	unsigned char 	byFollowReportMode[4];
	

	unsigned char 	byReportMode[eNUM_OF_EVENT_PRG];

	unsigned char 	byReportFlag[eNUM_OF_EVENT_PRG];

	
	unsigned long 	ReportChannelOAD[1];

	unsigned char 	byEventValid[eNUM_OF_EVENT_PRG];			

	unsigned long	CRC32;
}TReportMode;

typedef struct TVHG_t
{
	unsigned char	VHG[256];	
}TVHG;


typedef struct TPowerDownFlag_t
{
	unsigned char	ProgramPwrDwn;										
	unsigned char	InstantEventFlag[(eSUB_EVENT_STATUS_TOTAL+7)/8];	
}TPowerDownFlag;

typedef struct TEventSafeRom_t
{
	TEventDataInfo			EventDataInfo[eSUB_EVENT_STATUS_TOTAL];	
	TLostPowerTime			LostPowerTime;
}TEventSafeRom;

typedef struct TEvent_t
{
	TEventPara				EventPara;							
	TEventAttInfo			EventAttInfo[eNUM_OF_EVENT_PRG];	

	TPowerDownFlag			PowerDownFlag;						
	TReportMode				ReportMode;	


	TVHG					VHG;
        char                           szAssetsCode[36];
        
         BIG_ADJUST_PARA                big_adjust_para;
   
         
        unsigned long                           CRC32;
}TEventConRom;

typedef struct TReportPara_t
{
	unsigned char		Times;		
	unsigned char		OAD_Num;	
	unsigned long		ReportOAD[eSUB_EVENT_STATUS_TOTAL];
	unsigned long		CRC32;
}TReportPara;

typedef struct TFollowPara_t
{
	unsigned long		OldOad;	
	unsigned char		OAD_Num;	
	unsigned long		ReportOAD;
	unsigned long		CRC32;
}TFollowPara;

typedef struct TReportSafeRom_t
{
	TReportPara ReportPara;
}TReportSafeRom;






typedef struct TReportIndex_t
{
	unsigned char	Index[eSUB_EVENT_STATUS_TOTAL];
	unsigned char	Pointer;	
	unsigned long	CRC32;
}TReportIndex;

typedef struct TReportSafeRom2_t
{
	
	TReportMode		ReportMode;
}TReportSafeRom2;

typedef struct TReport_t
{
	TReportIndex	ReportIndex[1];
	
}TReportConRom;

typedef struct TFollowReportStatusRam_t
{
	unsigned char Status[1][4];
	unsigned char StatusBak[1][4];
	unsigned char byEEErrStatus;
	unsigned long CRC32;
}TFollowReportStatusRam;



















void api_EventTask(void);















unsigned short api_ReadEventAttribute( unsigned short OI, unsigned char No, unsigned short Len, unsigned char *pBuf );





















unsigned char api_WriteEventAttribute( unsigned short OI, unsigned char OadType, unsigned char *pOad, unsigned short OadNum );










unsigned char api_GetPowerDownTime( TRealTimer *pPowerDownTime );












unsigned char api_SavePrgOperationRecord( unsigned short OI );




















unsigned short api_ReadEventRecord( unsigned char Tag, TDLT698RecordPara *pDLT698RecordPara, unsigned short Len, unsigned char *pBuf );










void api_FactoryInitEvent( void );











unsigned char api_ClrAllEvent( unsigned char Type );












unsigned char api_ClrSepEvent( unsigned short OI );
















unsigned char api_ReadEventPara( unsigned short OI, unsigned char No, unsigned char *pLen, unsigned char *pBuf );










void api_PowerDownEvent(void);











unsigned char api_WritePreProgramData( unsigned char Type,unsigned long dwData );



















unsigned char api_ReadEventRecordNo( unsigned short OI, unsigned char Phase, unsigned char Type, unsigned char *pBuf );















unsigned short api_ReadCurrentRecordTable( unsigned short OI, unsigned char Phase, unsigned char Type, unsigned char *pBuf );













unsigned char api_DealEventDelayedStatus(eDEAL_EVENT_DELAYED_STATUS Type, unsigned char inSubEventIndex );














unsigned char api_DealEventCurrentStatus(eDEAL_EVENT_CURRENT_STATUS Type, unsigned char inSubEventIndex );











void api_PowerUpEvent(void);












unsigned char api_SaveManageUpDateRecord( unsigned char *pBuf );












unsigned short api_GetLostPowerDate( unsigned char Type, unsigned char *InBuf );











void SetDoubleChipReportIndex( unsigned char inSubEventIndex );










void api_PowerDownSetCoverReg( void );









unsigned short api_GetReportEventAPDU( unsigned char* Buf );


























typedef enum
{
	eDELETE_ATT_BY_OAD,	
	eDELETE_ATT_ALL		
}eDELETE_ATT_TYPE;

typedef enum
{
	ePOWERUP_FREEZE_MODE,		
	eMAINTASK_FREEZE_MODE,		
	eADJUST_TIME_MODE			
}eFreezeMode;

typedef struct TFreezeDataInfo_t
{
	unsigned long	RecordNo;						
	unsigned long	SaveDot;
	unsigned long	CRC32;
}TFreezeDataInfo;


typedef struct TFreezeInfoRom_t
{
	TFreezeDataInfo	MinDataInfo[(1)];	
	unsigned long			CRC32;							
}TFreezeInfoRom;


typedef struct TFreezeUpdateTimeFlag_t
{
	unsigned char	Flag;	
	unsigned long	CRC32;
}TFreezeUpdateTimeFlag;

typedef struct TFreezeSafe_t
{
	TFreezeInfoRom			FreezeInfoRom;						
	TFreezeUpdateTimeFlag	FreezeUpdateTimeFlag;				
}TFreezeSafeRom;































unsigned short api_ReadFreezeAttribute( unsigned short Type, unsigned char No, unsigned short Len, unsigned char *pBuf );












void api_ClrFreezeData( void );












void api_FreezeTask( void );




















unsigned short api_ReadFreezeRecord( unsigned char Tag, TDLT698RecordPara *pDLT698RecordPara, unsigned short Len, unsigned char *pBuf );









unsigned long api_ReadLastFreezeTime( void );












void api_PowerUpFreeze( void );












void api_PowerDownFreeze( void );












void api_FactoryInitFreeze( void );









void ProcMinFreezeTask(unsigned char byType, unsigned long TmpRelativeMin, eFreezeMode FreezeMode );











void api_UpdateFreezeTime( unsigned long InOldRelativeMin );




















void api_ReadHisLastTime(void);















#pragma pack(1)
typedef struct
{
	unsigned short	ApplClassID;	
	unsigned char 	ApplStatus;		
	unsigned long 	ApplP;			
}T_ApplCurData;

typedef struct
{
	unsigned short	ApplClassID;	
	unsigned long 	ApplFrzCylP;	
	unsigned long 	ApplFrzCylAvgP;	
	unsigned char	StartTime;		
	unsigned char	EndTime;		
	unsigned char	SECount;		
}T_ApplFrzData;
#pragma pack()



extern T_ApplCurData tApplCurData[];
extern T_ApplFrzData tApplFrzData[];












void api_SaveFreezeData( void );









void api_NILM_Task(void);










void  api_TestComplementData( void );














 





 














typedef struct TUpdatePara_t
{
    
    unsigned long   CodeBufferLen[2];
    
    unsigned short    CodeBufferSum[2];
    
    unsigned short    CodeBufferFlag[2];
    
    unsigned long   UpdateFlag;
    
    unsigned long   Reserved[2];
    
    unsigned long   CRC32;

}TUpdatePara;

typedef struct TParaInfo_t
{
	unsigned char Para[12];
	unsigned long CRC32;              						
}TParaInfoSafeRom;


typedef struct TSafeMem_t
{
    
    TUpdatePara         UpdatePara;

    TEventSafeRom       EventSafeRom;

    TFreezeSafeRom      FreezeSafeRom;
	
	TReportSafeRom		ReportSafeRom;

	TProSafeRom  		ProSafeRom;

	TParaInfoSafeRom	ParaInfoSafeRom;

}TSafeMem;


typedef struct TConMem_t
{
    TEventConRom        EventConRom;
}TConMem;








unsigned char api_VWriteSafeMem( unsigned long Addr, unsigned short Length, unsigned char * pBuf );

unsigned char api_VReadSafeMem( unsigned long Addr, unsigned short Length, unsigned char * pBuf );

unsigned char api_WriteContinueMem(unsigned long Addr, unsigned short Length, unsigned char * pBuf);

unsigned char api_ReadContinueMem(unsigned long Addr, unsigned short Length, unsigned char * pBuf);

unsigned char api_WriteMemRecordData(unsigned long Addr, unsigned short Length, unsigned char * pBuf);

unsigned char api_ReadMemRecordData(unsigned long Addr, unsigned short Length, unsigned char * pBuf);

void api_ClrContinueEEPRom(unsigned long Addr, unsigned short Length);

unsigned short api_ReadSaveMem( unsigned char No, unsigned long Addr, unsigned short Length, unsigned char *pBuf );










void  api_Write_FLASH(unsigned long Offset,  unsigned short Length, unsigned char * pBuf);









void  api_Read_FLASH( unsigned long Offset,  unsigned short Length, unsigned char * pBuf );

















typedef struct AMessage
{
	char ucMessageID;
	char ucData[ 20 ];
}AMessage_T;
#pragma pack()






















typedef struct {
    float convolution_kernel[4 * 8]; 
    float convolution_B[8];      
	int input_len;
    int kernel_size;
	int kernel_num;
	int ConvType;
} CONVOLUTION_LAYER;

typedef struct {
	float W_fc_1[65 * 8 * 16]; 
	float B_fc_1[16]; 
} FULL_CONNECT_LAYER1;

typedef struct {
	float W_fc_2[16]; 
	float B_fc_2[1]; 
} FULL_CONNECT_LAYER2;

typedef struct {
	float Wr_x_GRU[8*8];   
	float Wz_x_GRU[8*8];   
	float Wh_x_GRU[8*8];   
	float Wr_h_GRU[8*8]; 
	float Wz_h_GRU[8*8]; 
	float Wh_h_GRU[8*8]; 
	float Br_x_GRU[8];             
	float Bz_x_GRU[8];             
	float Bh_x_GRU[8];             
	float Br_h_GRU[8];             
	float Bz_h_GRU[8];             
	float Bh_h_GRU[8];             
}GRU_LAYER;

typedef struct
{
	CONVOLUTION_LAYER conv_layer;            
	FULL_CONNECT_LAYER1 fc_layer1;           
	FULL_CONNECT_LAYER2 fc_layer2;           
	GRU_LAYER gru_layer;                     
}MODEL_PARAM;


typedef struct{
	float output_data[65 * 8];				
}CONVOLUTION_PARAM;

typedef struct{
	float GRU_Input_DATA[8][65];		
 	float GRU_h[8 * (65 + 1)];		
}GRU_PARAM;

typedef struct{
	float fc_outputdata_1[16];			
	float fc_inputdata_2[16];				
	float fc_outputdata_2[1];			
}FOOLCONNECTED_PARAM;


typedef struct {
	MODEL_PARAM MODE_Init;
	
	CONVOLUTION_PARAM CONV_Init;
	FOOLCONNECTED_PARAM FC_Init;
	GRU_PARAM GRU_Init;

}APP_STRUCT;


typedef struct {
	unsigned short int CycleNumber;					
	unsigned short int cycle_cnt;					
	unsigned short int power_cycle_cnt;				
	unsigned short int power_data_flag;				
	float finalresult_of_code[2];				
	float finalresult_after_scaling[2];		
	float meanpower_old; 							
	float meanpower_new; 							
}LOADDETEC_PARAM;


























 



 
 

 


 


 


 


 



 



 


 


 


 


 


 


 


 


 


 


 


 


 

 


 

 


 


 


 


 

 


 


 

 


 


 


 

 


 


 


 


 

 


 


 


 


 


 

 

 


 


 


 


 


 


 


 


 

 


 


 


 


 










 



 

 











 



 




 





 




















































 


 
 





 
 
 

  #pragma system_include

 
 

 

  #pragma system_include






 















 




 
 






                 


                 
  typedef _Ptrdifft ptrdiff_t;








 
#include <stdarg.h>









 


 
 





 
 
 






 
 
 

  #pragma system_include

 
 

 

  #pragma system_include






 















 




 
 








    typedef unsigned int __time32_t;
    typedef unsigned int clock_t;

  #pragma language=save
  #pragma language=extended
  typedef signed long long __time64_t;
  #pragma language=restore


  typedef __time32_t time_t;

struct tm
{        
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;
  int __BSD_bug_filler1;
  int __BSD_bug_filler2;
};



        
__intrinsic __nounwind time_t time(time_t *);
__intrinsic __nounwind __time32_t __time32(__time32_t *);
  __intrinsic __nounwind __time64_t __time64(__time64_t *);


      
__intrinsic __nounwind char * asctime(const struct tm *);
__intrinsic __nounwind clock_t clock(void);
__intrinsic __nounwind char * ctime(const time_t *);
_Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind double difftime(time_t, time_t);
__intrinsic __nounwind struct tm * gmtime(const time_t *);
__intrinsic __nounwind struct tm * localtime(const time_t *);
__intrinsic __nounwind time_t mktime(struct tm *);


__intrinsic __nounwind char * __ctime32(const __time32_t *);
_Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind double __difftime32(__time32_t, __time32_t);
__intrinsic __nounwind struct tm * __gmtime32(const __time32_t *);
__intrinsic __nounwind struct tm * __localtime32(const __time32_t *);
__intrinsic __nounwind __time32_t __mktime32(struct tm *);
  __intrinsic __nounwind char * __ctime64(const __time64_t *);
  _Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind double __difftime64(__time64_t, __time64_t);
  __intrinsic __nounwind struct tm * __gmtime64(const __time64_t *);
  __intrinsic __nounwind struct tm * __localtime64(const __time64_t *);
  __intrinsic __nounwind __time64_t __mktime64(struct tm *);
__intrinsic __nounwind size_t strftime(char *, size_t, const char *,
                             const struct tm *);
                                                         


 

  #pragma inline=forced
  time_t time(time_t *p)
  {
      return __time32(p);
  }

  #pragma inline=forced
  char * ctime(const time_t *p)
  {
      return __ctime32(p);
  }

  #pragma inline=forced
  double difftime(time_t t1, time_t t2)
  {
      return __difftime32(t1, t2);
  }

  #pragma inline=forced
  struct tm * gmtime(const time_t *p)
  {
      return __gmtime32(p);
  }

  #pragma inline=forced
  struct tm * localtime(const time_t *p)
  {
      return __localtime32(p);
  }

  #pragma inline=forced
  time_t mktime(struct tm *p)
  {
      return __mktime32(p);
  }









 


typedef int32_t          clockid_t;
typedef int32_t          key_t;          
typedef int              pid_t;          
typedef unsigned short   uid_t;
typedef unsigned short   gid_t;
typedef signed long      off_t;
typedef int              mode_t;
typedef signed long      ssize_t;        
typedef unsigned long    __timer_t;
typedef __timer_t        timer_t;
typedef long             suseconds_t;    
typedef unsigned long    useconds_t;     

typedef unsigned long    dev_t;

typedef unsigned int     u_int;
typedef unsigned char    u_char;
typedef unsigned long    u_long;






 

 

 

 

 


 
typedef int                             rt_bool_t;       
typedef signed long                     rt_base_t;       
typedef unsigned long                   rt_ubase_t;      

typedef int8_t                          rt_int8_t;       
typedef int16_t                         rt_int16_t;      
typedef int32_t                         rt_int32_t;      
typedef uint8_t                         rt_uint8_t;      
typedef uint16_t                        rt_uint16_t;     
typedef uint32_t                        rt_uint32_t;     
typedef int64_t                         rt_int64_t;      
typedef uint64_t                        rt_uint64_t;     
typedef size_t                          rt_size_t;       
typedef ssize_t                         rt_ssize_t;      

typedef rt_base_t                       rt_err_t;        
typedef rt_uint32_t                     rt_time_t;       
typedef rt_uint32_t                     rt_tick_t;       
typedef rt_base_t                       rt_flag_t;       
typedef rt_ubase_t                      rt_dev_t;        
typedef rt_base_t                       rt_off_t;        

typedef volatile rt_base_t rt_atomic_t;

 

 

 

 


 

 


 

 

 
typedef int (*init_fn_t)(void);

 

 
 
 
 
 
 

 


 

 

 





 

 

 

 







 







 



 
struct rt_list_node
{
    struct rt_list_node *next;                           
    struct rt_list_node *prev;                           
};
typedef struct rt_list_node rt_list_t;                   



 
struct rt_slist_node
{
    struct rt_slist_node *next;                          
};
typedef struct rt_slist_node rt_slist_t;                 



 

 



 



 
struct rt_object
{
    char        name[8];                        
    rt_uint8_t  type;                                     
    rt_uint8_t  flag;                                     



    rt_list_t   list;                                     
};
typedef struct rt_object *rt_object_t;                    

















 
enum rt_object_class_type
{
    RT_Object_Class_Null          = 0x00,       
    RT_Object_Class_Thread        = 0x01,       
    RT_Object_Class_Semaphore     = 0x02,       
    RT_Object_Class_Mutex         = 0x03,       
    RT_Object_Class_Event         = 0x04,       
    RT_Object_Class_MailBox       = 0x05,       
    RT_Object_Class_MessageQueue  = 0x06,       
    RT_Object_Class_MemHeap       = 0x07,       
    RT_Object_Class_MemPool       = 0x08,       
    RT_Object_Class_Device        = 0x09,       
    RT_Object_Class_Timer         = 0x0a,       
    RT_Object_Class_Module        = 0x0b,       
    RT_Object_Class_Memory        = 0x0c,       
    RT_Object_Class_Channel       = 0x0d,       
    RT_Object_Class_Custom        = 0x0e,       
    RT_Object_Class_Unknown       = 0x0f,       
    RT_Object_Class_Static        = 0x80        
};



 
struct rt_object_information
{
    enum rt_object_class_type type;                      
    rt_list_t                 object_list;               
    rt_size_t                 object_size;               
};



 



 



 

 



 




 



 
struct rt_timer
{
    struct rt_object parent;                             

    rt_list_t        row[1];

    void (*timeout_func)(void *parameter);               
    void            *parameter;                          

    rt_tick_t        init_tick;                          
    rt_tick_t        timeout_tick;                       
};
typedef struct rt_timer *rt_timer_t;

 



 
 



 



 

 



 



 



 
enum
{
    RT_INTERRUPTIBLE = 0,
    RT_KILLABLE,
    RT_UNINTERRUPTIBLE,
};







 


struct rt_thread;




 
struct rt_thread
{
    struct rt_object parent;
    rt_list_t   tlist;                                   

     
    void       *sp;                                      
    void       *entry;                                   
    void       *parameter;                               
    void       *stack_addr;                              
    rt_uint32_t stack_size;                              

     
    rt_err_t    error;                                   

    rt_uint8_t  stat;                                    


     
    rt_uint8_t  current_priority;                        
    rt_uint8_t  init_priority;                           
    rt_uint32_t number_mask;                             

     
    rt_list_t taken_object_list;
    rt_object_t pending_object;

     
    rt_uint32_t event_set;
    rt_uint8_t  event_info;



    rt_ubase_t  init_tick;                               
    rt_ubase_t  remaining_tick;                          



    struct rt_timer thread_timer;                        

    void (*cleanup)(struct rt_thread *tid);              

     

    rt_ubase_t user_data;                              
};
typedef struct rt_thread *rt_thread_t;

 



 

 



 





 
struct rt_ipc_object
{
    struct rt_object parent;                             

    rt_list_t        suspend_thread;                     
};



 
struct rt_semaphore
{
    struct rt_ipc_object parent;                         

    rt_uint16_t          value;                          
    rt_uint16_t          reserved;                       
};
typedef struct rt_semaphore *rt_sem_t;



 
struct rt_mutex
{
    struct rt_ipc_object parent;                         

    rt_uint8_t           ceiling_priority;               
    rt_uint8_t           priority;                       
    rt_uint8_t           hold;                           
    rt_uint8_t           reserved;                       

    struct rt_thread    *owner;                          
    rt_list_t            taken_list;                     
};
typedef struct rt_mutex *rt_mutex_t;



 



 
struct rt_event
{
    struct rt_ipc_object parent;                         

    rt_uint32_t          set;                            
};
typedef struct rt_event *rt_event_t;



 
struct rt_mailbox
{
    struct rt_ipc_object parent;                         

    rt_ubase_t          *msg_pool;                       

    rt_uint16_t          size;                           

    rt_uint16_t          entry;                          
    rt_uint16_t          in_offset;                      
    rt_uint16_t          out_offset;                     

    rt_list_t            suspend_sender_thread;          
};
typedef struct rt_mailbox *rt_mailbox_t;



 
struct rt_messagequeue
{
    struct rt_ipc_object parent;                         

    void                *msg_pool;                       

    rt_uint16_t          msg_size;                       
    rt_uint16_t          max_msgs;                       

    rt_uint16_t          entry;                          

    void                *msg_queue_head;                 
    void                *msg_queue_tail;                 
    void                *msg_queue_free;                 

    rt_list_t            suspend_sender_thread;          
};
typedef struct rt_messagequeue *rt_mq_t;

 



 

 



 
struct rt_memory
{
    struct rt_object        parent;                  
    const char *            algorithm;               
    rt_ubase_t              address;                 
    rt_size_t               total;                   
    rt_size_t               used;                    
    rt_size_t               max;                     
};
typedef struct rt_memory *rt_mem_t;




 

typedef rt_mem_t rt_smem_t;





 
struct rt_mempool
{
    struct rt_object parent;                             

    void            *start_address;                      
    rt_size_t        size;                               

    rt_size_t        block_size;                         
    rt_uint8_t      *block_list;                         

    rt_size_t        block_total_count;                  
    rt_size_t        block_free_count;                   

    rt_list_t        suspend_thread;                     
};
typedef struct rt_mempool *rt_mp_t;

 



 

 



 
enum rt_device_class_type
{
    RT_Device_Class_Char = 0,                            
    RT_Device_Class_Block,                               
    RT_Device_Class_NetIf,                               
    RT_Device_Class_MTD,                                 
    RT_Device_Class_CAN,                                 
    RT_Device_Class_RTC,                                 
    RT_Device_Class_Sound,                               
    RT_Device_Class_Graphic,                             
    RT_Device_Class_I2CBUS,                              
    RT_Device_Class_USBDevice,                           
    RT_Device_Class_USBHost,                             
    RT_Device_Class_USBOTG,                              
    RT_Device_Class_SPIBUS,                              
    RT_Device_Class_SPIDevice,                           
    RT_Device_Class_SDIO,                                
    RT_Device_Class_PM,                                  
    RT_Device_Class_Pipe,                                
    RT_Device_Class_Portal,                              
    RT_Device_Class_Timer,                               
    RT_Device_Class_Miscellaneous,                       
    RT_Device_Class_Sensor,                              
    RT_Device_Class_Touch,                               
    RT_Device_Class_PHY,                                 
    RT_Device_Class_Security,                            
    RT_Device_Class_WLAN,                                
    RT_Device_Class_Pin,                                 
    RT_Device_Class_ADC,                                 
    RT_Device_Class_DAC,                                 
    RT_Device_Class_WDT,                                 
    RT_Device_Class_PWM,                                 
    RT_Device_Class_Bus,                                 
    RT_Device_Class_Unknown                              
};



 










 



 



 
 
 
 
 

typedef struct rt_device *rt_device_t;




 
struct rt_wqueue
{
    rt_uint32_t flag;
    rt_list_t waiting_list;
};
typedef struct rt_wqueue rt_wqueue_t;



 
struct rt_device
{
    struct rt_object          parent;                    
    enum rt_device_class_type type;                      
    rt_uint16_t               flag;                      
    rt_uint16_t               open_flag;                 

    rt_uint8_t                ref_count;                 
    rt_uint8_t                device_id;                 

     
    rt_err_t (*rx_indicate)(rt_device_t dev, rt_size_t size);
    rt_err_t (*tx_complete)(rt_device_t dev, void *buffer);

     
    rt_err_t  (*init)   (rt_device_t dev);
    rt_err_t  (*open)   (rt_device_t dev, rt_uint16_t oflag);
    rt_err_t  (*close)  (rt_device_t dev);
    rt_ssize_t (*read)  (rt_device_t dev, rt_off_t pos, void *buffer, rt_size_t size);
    rt_ssize_t (*write) (rt_device_t dev, rt_off_t pos, const void *buffer, rt_size_t size);
    rt_err_t  (*control)(rt_device_t dev, int cmd, void *args);


    void                     *user_data;                 
};

struct rt_device_id
{
    const char *compatible;
    void *data;
};

struct rt_driver
{
     
    rt_err_t  (*init)   (rt_device_t dev);
    rt_err_t  (*open)   (rt_device_t dev, rt_uint16_t oflag);
    rt_err_t  (*close)  (rt_device_t dev);
    rt_ssize_t (*read)  (rt_device_t dev, rt_off_t pos, void *buffer, rt_size_t size);
    rt_ssize_t (*write) (rt_device_t dev, rt_off_t pos, const void *buffer, rt_size_t size);
    rt_err_t  (*control)(rt_device_t dev, int cmd, void *args);
    const struct filesystem_ops *fops;
    const char *name;
    enum rt_device_class_type dev_type;
    int device_size;
    int flag;
    const struct rt_device_id *dev_match;
    int (*probe)(struct rt_device *dev);
    int (*probe_init)(struct rt_device *dev);
    int (*remove)(struct rt_device *dev);
    const void *ops;     
    void *drv_priv_data;
};
typedef struct rt_driver *rt_driver_t;



 
struct rt_device_notify
{
    void (*notify)(rt_device_t dev);
    struct rt_device *dev;
};




 
struct rt_device_blk_geometry
{
    rt_uint64_t sector_count;                            
    rt_uint32_t bytes_per_sector;                        
    rt_uint32_t block_size;                              
};



 
struct rt_device_blk_sectors
{
    rt_uint64_t sector_begin;                            
    rt_uint64_t sector_end;                              
};



 



 

 
enum
{
    RTGRAPHIC_PIXEL_FORMAT_MONO = 0,
    RTGRAPHIC_PIXEL_FORMAT_GRAY4,
    RTGRAPHIC_PIXEL_FORMAT_GRAY16,
    RTGRAPHIC_PIXEL_FORMAT_RGB332,
    RTGRAPHIC_PIXEL_FORMAT_RGB444,
    RTGRAPHIC_PIXEL_FORMAT_RGB565,
    RTGRAPHIC_PIXEL_FORMAT_RGB565P,
    RTGRAPHIC_PIXEL_FORMAT_BGR565 = RTGRAPHIC_PIXEL_FORMAT_RGB565P,
    RTGRAPHIC_PIXEL_FORMAT_RGB666,
    RTGRAPHIC_PIXEL_FORMAT_RGB888,
    RTGRAPHIC_PIXEL_FORMAT_BGR888,
    RTGRAPHIC_PIXEL_FORMAT_ARGB888,
    RTGRAPHIC_PIXEL_FORMAT_ABGR888,
    RTGRAPHIC_PIXEL_FORMAT_RESERVED,
};



 



 
struct rt_device_graphic_info
{
    rt_uint8_t  pixel_format;                            
    rt_uint8_t  bits_per_pixel;                          
    rt_uint16_t pitch;                                   

    rt_uint16_t width;                                   
    rt_uint16_t height;                                  

    rt_uint8_t *framebuffer;                             
    rt_uint32_t smem_len;                                
};



 
struct rt_device_rect_info
{
    rt_uint16_t x;                                       
    rt_uint16_t y;                                       
    rt_uint16_t width;                                   
    rt_uint16_t height;                                  
};



 
struct rt_device_graphic_ops
{
    void (*set_pixel) (const char *pixel, int x, int y);
    void (*get_pixel) (char *pixel, int x, int y);

    void (*draw_hline)(const char *pixel, int x1, int x2, int y);
    void (*draw_vline)(const char *pixel, int x, int y1, int y2);

    void (*blit_line) (const char *pixel, int x, int y, rt_size_t size);
};

 
















 





 

 




 




 





 
static inline void rt_list_init(rt_list_t *l)
{
    l->next = l->prev = l;
}






 
static inline void rt_list_insert_after(rt_list_t *l, rt_list_t *n)
{
    l->next->prev = n;
    n->next = l->next;

    l->next = n;
    n->prev = l;
}






 
static inline void rt_list_insert_before(rt_list_t *l, rt_list_t *n)
{
    l->prev->next = n;
    n->prev = l->prev;

    l->prev = n;
    n->next = l;
}




 
static inline void rt_list_remove(rt_list_t *n)
{
    n->next->prev = n->prev;
    n->prev->next = n->next;

    n->next = n->prev = n;
}




 
static inline int rt_list_isempty(const rt_list_t *l)
{
    return l->next == l;
}




 
static inline unsigned int rt_list_len(const rt_list_t *l)
{
    unsigned int len = 0;
    const rt_list_t *p = l;
    while (p->next != l)
    {
        p = p->next;
        len ++;
    }

    return len;
}






 





 






 






 







 








 






 
static inline void rt_slist_init(rt_slist_t *l)
{
    l->next = 0;
}

static inline void rt_slist_append(rt_slist_t *l, rt_slist_t *n)
{
    struct rt_slist_node *node;

    node = l;
    while (node->next) node = node->next;

     
    node->next = n;
    n->next = 0;
}

static inline void rt_slist_insert(rt_slist_t *l, rt_slist_t *n)
{
    n->next = l->next;
    l->next = n;
}

static inline unsigned int rt_slist_len(const rt_slist_t *l)
{
    unsigned int len = 0;
    const rt_slist_t *list = l->next;
    while (list != 0)
    {
        list = list->next;
        len ++;
    }

    return len;
}

static inline rt_slist_t *rt_slist_remove(rt_slist_t *l, rt_slist_t *n)
{
     
    struct rt_slist_node *node = l;
    while (node->next && node->next != n) node = node->next;

     
    if (node->next != (rt_slist_t *)0) node->next = node->next->next;

    return l;
}

static inline rt_slist_t *rt_slist_first(rt_slist_t *l)
{
    return l->next;
}

static inline rt_slist_t *rt_slist_tail(rt_slist_t *l)
{
    while (l->next) l = l->next;

    return l;
}

static inline rt_slist_t *rt_slist_next(rt_slist_t *n)
{
    return n->next;
}

static inline int rt_slist_isempty(rt_slist_t *l)
{
    return l->next == 0;
}






 





 






 








 








 

 









 





















 








 



 
struct rt_object_information *
rt_object_get_information(enum rt_object_class_type type);
int rt_object_get_length(enum rt_object_class_type type);
int rt_object_get_pointers(enum rt_object_class_type type, rt_object_t *pointers, int maxlen);

void rt_object_init(struct rt_object         *object,
                    enum rt_object_class_type type,
                    const char               *name);
void rt_object_detach(rt_object_t object);
rt_object_t rt_object_allocate(enum rt_object_class_type type,
                               const char               *name);
void rt_object_delete(rt_object_t object);
rt_bool_t rt_object_is_systemobject(rt_object_t object);
rt_uint8_t rt_object_get_type(rt_object_t object);
rt_object_t rt_object_find(const char *name, rt_uint8_t type);

 
rt_object_t rt_custom_object_create(const char *name, void *data, rt_err_t (*data_destroy)(void *));
rt_err_t rt_custom_object_destroy(rt_object_t obj);

void rt_object_attach_sethook(void (*hook)(struct rt_object *object));
void rt_object_detach_sethook(void (*hook)(struct rt_object *object));
void rt_object_trytake_sethook(void (*hook)(struct rt_object *object));
void rt_object_take_sethook(void (*hook)(struct rt_object *object));
void rt_object_put_sethook(void (*hook)(struct rt_object *object));

 




 



 
rt_tick_t rt_tick_get(void);
void rt_tick_set(rt_tick_t tick);
void rt_tick_increase(void);
rt_tick_t  rt_tick_from_millisecond(rt_int32_t ms);
rt_tick_t rt_tick_get_millisecond(void);
void rt_tick_sethook(void (*hook)(void));

void rt_system_timer_init(void);
void rt_system_timer_thread_init(void);

void rt_timer_init(rt_timer_t  timer,
                   const char *name,
                   void (*timeout)(void *parameter),
                   void       *parameter,
                   rt_tick_t   time,
                   rt_uint8_t  flag);
rt_err_t rt_timer_detach(rt_timer_t timer);
rt_timer_t rt_timer_create(const char *name,
                           void (*timeout)(void *parameter),
                           void       *parameter,
                           rt_tick_t   time,
                           rt_uint8_t  flag);
rt_err_t rt_timer_delete(rt_timer_t timer);
rt_err_t rt_timer_start(rt_timer_t timer);
rt_err_t rt_timer_stop(rt_timer_t timer);
rt_err_t rt_timer_control(rt_timer_t timer, int cmd, void *arg);

rt_tick_t rt_timer_next_timeout_tick(void);
void rt_timer_check(void);

void rt_timer_enter_sethook(void (*hook)(struct rt_timer *timer));
void rt_timer_exit_sethook(void (*hook)(struct rt_timer *timer));

 




 



 
rt_err_t rt_thread_init(struct rt_thread *thread,
                        const char       *name,
                        void (*entry)(void *parameter),
                        void             *parameter,
                        void             *stack_start,
                        rt_uint32_t       stack_size,
                        rt_uint8_t        priority,
                        rt_uint32_t       tick);
rt_err_t rt_thread_detach(rt_thread_t thread);
rt_thread_t rt_thread_create(const char *name,
                             void (*entry)(void *parameter),
                             void       *parameter,
                             rt_uint32_t stack_size,
                             rt_uint8_t  priority,
                             rt_uint32_t tick);
rt_err_t rt_thread_delete(rt_thread_t thread);
rt_thread_t rt_thread_self(void);
rt_thread_t rt_thread_find(char *name);
rt_err_t rt_thread_startup(rt_thread_t thread);
rt_err_t rt_thread_yield(void);
rt_err_t rt_thread_delay(rt_tick_t tick);
rt_err_t rt_thread_delay_until(rt_tick_t *tick, rt_tick_t inc_tick);
rt_err_t rt_thread_mdelay(rt_int32_t ms);
rt_err_t rt_thread_control(rt_thread_t thread, int cmd, void *arg);
rt_err_t rt_thread_suspend(rt_thread_t thread);
rt_err_t rt_thread_suspend_with_flag(rt_thread_t thread, int suspend_flag);
rt_err_t rt_thread_resume(rt_thread_t thread);
void rt_thread_timeout(void *parameter);


void rt_thread_suspend_sethook(void (*hook)(rt_thread_t thread));
void rt_thread_resume_sethook (void (*hook)(rt_thread_t thread));
void rt_thread_inited_sethook (void (*hook)(rt_thread_t thread));



 
void rt_thread_idle_init(void);
rt_err_t rt_thread_idle_sethook(void (*hook)(void));
rt_err_t rt_thread_idle_delhook(void (*hook)(void));
rt_thread_t rt_thread_idle_gethandler(void);



 
void rt_system_scheduler_init(void);
void rt_system_scheduler_start(void);

void rt_schedule(void);
void rt_schedule_insert_thread(struct rt_thread *thread);
void rt_schedule_remove_thread(struct rt_thread *thread);

void rt_enter_critical(void);
void rt_exit_critical(void);
rt_uint16_t rt_critical_level(void);

void rt_scheduler_sethook(void (*hook)(rt_thread_t from, rt_thread_t to));
void rt_scheduler_switch_sethook(void (*hook)(struct rt_thread *tid));


 




 
 




 



 


 
rt_err_t rt_mp_init(struct rt_mempool *mp,
                    const char        *name,
                    void              *start,
                    rt_size_t          size,
                    rt_size_t          block_size);
rt_err_t rt_mp_detach(struct rt_mempool *mp);
rt_mp_t rt_mp_create(const char *name,
                     rt_size_t   block_count,
                     rt_size_t   block_size);
rt_err_t rt_mp_delete(rt_mp_t mp);

void *rt_mp_alloc(rt_mp_t mp, rt_int32_t time);
void rt_mp_free(void *block);

void rt_mp_alloc_sethook(void (*hook)(struct rt_mempool *mp, void *block));
void rt_mp_free_sethook(void (*hook)(struct rt_mempool *mp, void *block));




 
void rt_system_heap_init(void *begin_addr, void *end_addr);

void *rt_malloc(rt_size_t nbytes);
void rt_free(void *ptr);
void *rt_realloc(void *ptr, rt_size_t nbytes);
void *rt_calloc(rt_size_t count, rt_size_t size);
void *rt_malloc_align(rt_size_t size, rt_size_t align);
void rt_free_align(void *ptr);

void rt_memory_info(rt_size_t *total,
                    rt_size_t *used,
                    rt_size_t *max_used);


void rt_malloc_sethook(void (*hook)(void *ptr, rt_size_t size));
void rt_free_sethook(void (*hook)(void *ptr));




 
rt_smem_t rt_smem_init(const char    *name,
                     void          *begin_addr,
                     rt_size_t      size);
rt_err_t rt_smem_detach(rt_smem_t m);
void *rt_smem_alloc(rt_smem_t m, rt_size_t size);
void *rt_smem_realloc(rt_smem_t m, void *rmem, rt_size_t newsize);
void rt_smem_free(void *rmem);



 




 



 
rt_err_t rt_sem_init(rt_sem_t    sem,
                     const char *name,
                     rt_uint32_t value,
                     rt_uint8_t  flag);
rt_err_t rt_sem_detach(rt_sem_t sem);
rt_sem_t rt_sem_create(const char *name, rt_uint32_t value, rt_uint8_t flag);
rt_err_t rt_sem_delete(rt_sem_t sem);

rt_err_t rt_sem_take(rt_sem_t sem, rt_int32_t timeout);
rt_err_t rt_sem_take_interruptible(rt_sem_t sem, rt_int32_t timeout);
rt_err_t rt_sem_take_killable(rt_sem_t sem, rt_int32_t timeout);
rt_err_t rt_sem_trytake(rt_sem_t sem);
rt_err_t rt_sem_release(rt_sem_t sem);
rt_err_t rt_sem_control(rt_sem_t sem, int cmd, void *arg);



 
rt_err_t rt_mutex_init(rt_mutex_t mutex, const char *name, rt_uint8_t flag);
rt_err_t rt_mutex_detach(rt_mutex_t mutex);
rt_mutex_t rt_mutex_create(const char *name, rt_uint8_t flag);
rt_err_t rt_mutex_delete(rt_mutex_t mutex);
void rt_mutex_drop_thread(rt_mutex_t mutex, rt_thread_t thread);
rt_uint8_t rt_mutex_setprioceiling(rt_mutex_t mutex, rt_uint8_t priority);
rt_uint8_t rt_mutex_getprioceiling(rt_mutex_t mutex);

rt_err_t rt_mutex_take(rt_mutex_t mutex, rt_int32_t timeout);
rt_err_t rt_mutex_trytake(rt_mutex_t mutex);
rt_err_t rt_mutex_take_interruptible(rt_mutex_t mutex, rt_int32_t time);
rt_err_t rt_mutex_take_killable(rt_mutex_t mutex, rt_int32_t time);
rt_err_t rt_mutex_release(rt_mutex_t mutex);
rt_err_t rt_mutex_control(rt_mutex_t mutex, int cmd, void *arg);



 
rt_err_t rt_event_init(rt_event_t event, const char *name, rt_uint8_t flag);
rt_err_t rt_event_detach(rt_event_t event);
rt_event_t rt_event_create(const char *name, rt_uint8_t flag);
rt_err_t rt_event_delete(rt_event_t event);

rt_err_t rt_event_send(rt_event_t event, rt_uint32_t set);
rt_err_t rt_event_recv(rt_event_t   event,
                       rt_uint32_t  set,
                       rt_uint8_t   opt,
                       rt_int32_t   timeout,
                       rt_uint32_t *recved);
rt_err_t rt_event_recv_interruptible(rt_event_t   event,
                       rt_uint32_t  set,
                       rt_uint8_t   opt,
                       rt_int32_t   timeout,
                       rt_uint32_t *recved);
rt_err_t rt_event_recv_killable(rt_event_t   event,
                       rt_uint32_t  set,
                       rt_uint8_t   opt,
                       rt_int32_t   timeout,
                       rt_uint32_t *recved);
rt_err_t rt_event_control(rt_event_t event, int cmd, void *arg);



 
rt_err_t rt_mb_init(rt_mailbox_t mb,
                    const char  *name,
                    void        *msgpool,
                    rt_size_t    size,
                    rt_uint8_t   flag);
rt_err_t rt_mb_detach(rt_mailbox_t mb);
rt_mailbox_t rt_mb_create(const char *name, rt_size_t size, rt_uint8_t flag);
rt_err_t rt_mb_delete(rt_mailbox_t mb);

rt_err_t rt_mb_send(rt_mailbox_t mb, rt_ubase_t value);
rt_err_t rt_mb_send_wait(rt_mailbox_t mb,
                         rt_ubase_t  value,
                         rt_int32_t   timeout);
rt_err_t rt_mb_send_wait_interruptible(rt_mailbox_t mb,
                         rt_ubase_t  value,
                         rt_int32_t   timeout);
rt_err_t rt_mb_send_wait_killable(rt_mailbox_t mb,
                         rt_ubase_t  value,
                         rt_int32_t   timeout);
rt_err_t rt_mb_urgent(rt_mailbox_t mb, rt_ubase_t value);
rt_err_t rt_mb_recv(rt_mailbox_t mb, rt_ubase_t *value, rt_int32_t timeout);
rt_err_t rt_mb_recv_interruptibale(rt_mailbox_t mb, rt_ubase_t *value, rt_int32_t timeout);
rt_err_t rt_mb_recv_killable(rt_mailbox_t mb, rt_ubase_t *value, rt_int32_t timeout);
rt_err_t rt_mb_control(rt_mailbox_t mb, int cmd, void *arg);



 
rt_err_t rt_mq_init(rt_mq_t     mq,
                    const char *name,
                    void       *msgpool,
                    rt_size_t   msg_size,
                    rt_size_t   pool_size,
                    rt_uint8_t  flag);
rt_err_t rt_mq_detach(rt_mq_t mq);
rt_mq_t rt_mq_create(const char *name,
                     rt_size_t   msg_size,
                     rt_size_t   max_msgs,
                     rt_uint8_t  flag);
rt_err_t rt_mq_delete(rt_mq_t mq);

rt_err_t rt_mq_send(rt_mq_t mq, const void *buffer, rt_size_t size);
rt_err_t rt_mq_send_interrupt(rt_mq_t mq, const void *buffer, rt_size_t size);
rt_err_t rt_mq_send_killable(rt_mq_t mq, const void *buffer, rt_size_t size);
rt_err_t rt_mq_send_wait(rt_mq_t     mq,
                         const void *buffer,
                         rt_size_t   size,
                         rt_int32_t  timeout);
rt_err_t rt_mq_send_wait_interruptible(rt_mq_t     mq,
                         const void *buffer,
                         rt_size_t   size,
                         rt_int32_t  timeout);
rt_err_t rt_mq_send_wait_killable(rt_mq_t     mq,
                         const void *buffer,
                         rt_size_t   size,
                         rt_int32_t  timeout);
rt_err_t rt_mq_urgent(rt_mq_t mq, const void *buffer, rt_size_t size);
rt_err_t rt_mq_recv(rt_mq_t    mq,
                    void      *buffer,
                    rt_size_t  size,
                    rt_int32_t timeout);
rt_err_t rt_mq_recv_interruptible(rt_mq_t    mq,
                    void      *buffer,
                    rt_size_t  size,
                    rt_int32_t timeout);
rt_err_t rt_mq_recv_killable(rt_mq_t    mq,
                    void      *buffer,
                    rt_size_t  size,
                    rt_int32_t timeout);
rt_err_t rt_mq_control(rt_mq_t mq, int cmd, void *arg);

 
void rt_thread_defunct_enqueue(rt_thread_t thread);
rt_thread_t rt_thread_defunct_dequeue(void);



 


 




 



 
rt_device_t rt_device_find(const char *name);

rt_err_t rt_device_register(rt_device_t dev,
                            const char *name,
                            rt_uint16_t flags);
rt_err_t rt_device_unregister(rt_device_t dev);

rt_device_t rt_device_create(int type, int attach_size);
void rt_device_destroy(rt_device_t device);

rt_err_t
rt_device_set_rx_indicate(rt_device_t dev,
                          rt_err_t (*rx_ind)(rt_device_t dev, rt_size_t size));
rt_err_t
rt_device_set_tx_complete(rt_device_t dev,
                          rt_err_t (*tx_done)(rt_device_t dev, void *buffer));

rt_err_t  rt_device_init (rt_device_t dev);
rt_err_t  rt_device_open (rt_device_t dev, rt_uint16_t oflag);
rt_err_t  rt_device_close(rt_device_t dev);
rt_ssize_t rt_device_read(rt_device_t dev,
                          rt_off_t    pos,
                          void       *buffer,
                          rt_size_t   size);
rt_ssize_t rt_device_write(rt_device_t dev,
                          rt_off_t    pos,
                          const void *buffer,
                          rt_size_t   size);
rt_err_t  rt_device_control(rt_device_t dev, int cmd, void *arg);
 



 



 
void rt_interrupt_enter(void);
void rt_interrupt_leave(void);




 
rt_uint8_t rt_interrupt_get_nest(void);

void rt_interrupt_enter_sethook(void (*hook)(void));
void rt_interrupt_leave_sethook(void (*hook)(void));

void rt_components_init(void);
void rt_components_board_init(void);




 



 

int rt_vsprintf(char *dest, const char *format, va_list arg_ptr);
int rt_vsnprintf(char *buf, rt_size_t size, const char *fmt, va_list args);
int rt_sprintf(char *buf, const char *format, ...);
int rt_snprintf(char *buf, rt_size_t size, const char *format, ...);


rt_err_t rt_get_errno(void);
void rt_set_errno(rt_err_t no);
int *_rt_errno(void);
const char *rt_strerror(rt_err_t error);

int __rt_ffs(int value);

void *rt_memset(void *src, int c, rt_ubase_t n);
void *rt_memcpy(void *dest, const void *src, rt_ubase_t n);
void *rt_memmove(void *dest, const void *src, rt_size_t n);
rt_int32_t rt_memcmp(const void *cs, const void *ct, rt_size_t count);
char *rt_strdup(const char *s);
rt_size_t rt_strnlen(const char *s, rt_ubase_t maxlen);
char *rt_strstr(const char *str1, const char *str2);
rt_int32_t rt_strcasecmp(const char *a, const char *b);
char *rt_strcpy(char *dst, const char *src);
char *rt_strncpy(char *dest, const char *src, rt_size_t n);
rt_int32_t rt_strncmp(const char *cs, const char *ct, rt_size_t count);
rt_int32_t rt_strcmp(const char *cs, const char *ct);
rt_size_t rt_strlen(const char *src);

void rt_show_version(void);

extern void (*rt_assert_hook)(const char *ex, const char *func, rt_size_t line);
void rt_assert_set_hook(void (*hook)(const char *ex, const char *func, rt_size_t line));

void rt_assert_handler(const char *ex, const char *func, rt_size_t line);


 










AMessage_T xMessage;
AMessage_T xRxedStructure; 



unsigned long xStructQueue = 0;




















void vCreateQueues(void)
{
	xMessage.ucMessageID = 0x00;
	memset(&(xMessage.ucData), 0x00, 20);

	xStructQueue = xQueueCreate(sizeof(xMessage), 10);

	if(xStructQueue == 0){

	}
}









void Algorithm (void)
{
	for(;;){
		IWDG_Feed();
		 
		api_NILM_Task();
		rt_thread_mdelay(1);
	}
}









void vCreatTasktoCalc(void)
{
	int xReturned;
	int* xHandle = 0;

	 
	xReturned = xTaskCreate(
					Algorithm,        
					"algroithm",           
					1024*10,       
					0,     
					11, 
					&xHandle);       

	if( xReturned == 0 ){

	}
}
