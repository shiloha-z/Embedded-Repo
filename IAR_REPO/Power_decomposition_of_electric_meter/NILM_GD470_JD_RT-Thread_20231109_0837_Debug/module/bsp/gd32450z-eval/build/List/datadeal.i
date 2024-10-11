












































































 


 
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














extern SYS_PARA_1808 SysPara;
extern unsigned long xStructQueue;
extern AMessage_T xMessage;

T_ApplCurData tApplCurData[30]=
{
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF},
};
T_ApplFrzData tApplFrzData[30]=
{
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
	{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},
};



float V_data[128];  
float I_data[128];  
T_ApplFrzData tApplFrzDataTemp[30];



float finalresult;

APP_STRUCT app_struct = {
  .MODE_Init = {
    .conv_layer = {
    .convolution_kernel = {
     -0.3284,  0.3807, -0.2230, -0.0998,
     -0.2875,  0.3837,  0.2657, -0.1027,
     -0.2358, -0.0788, -0.3153,  0.2009,
     -0.3217,  0.0560,  0.3572, -0.2439,
     -0.4099, -0.1697,  0.3930, -0.1179,
     -0.2461, -0.4158, -0.1385,  0.1061,
      0.3471, -0.0514, -0.3654, -0.1432,
      0.1332, -0.1646,  0.0259, -0.0341
  },
    .convolution_B = {
      0.0546, -0.0609,  0.0125,  0.1163,
      0.2116,  0.1513,  0.1430, -0.0572
  },
    .input_len = 65 + 3,
    .kernel_size = 4,
    .kernel_num = 8,
    .ConvType = 2,
  },
    .fc_layer1 = {
    .W_fc_1 = {
      1.9323e-01, -9.5882e-02, -5.5188e-02, -2.8641e-01, -2.2876e-03,
      -2.1570e-01,  2.8536e-01, -1.7725e-01,  8.2655e-02, -1.3949e-02,
      -1.3354e-01, -1.9419e-01, -9.8409e-02,  1.8951e-01, -8.5462e-02,
      -1.4783e-01,  7.2420e-02, -1.5347e-01, -6.8411e-02,  2.0930e-02,
      -5.6937e-02,  1.2198e-01, -3.1745e-01, -1.1136e-01,  3.2589e-02,
      -1.4921e-01, -1.3590e-01, -2.1333e-03,  1.7199e-02,  1.6979e-01,
      -3.3952e-01, -1.4634e-01,  6.3331e-02,  5.1010e-02, -7.7528e-02,
        6.6580e-03, -1.0634e-01,  1.4212e-01, -1.0815e-01, -1.5581e-01,
      -1.7879e-02, -5.2477e-02, -7.3054e-02, -2.0060e-02, -1.2895e-02,
        1.1983e-01, -2.4705e-02, -1.1612e-01, -5.7257e-04, -5.7527e-02,
      -1.4951e-01, -9.8078e-02,  6.5003e-02,  7.9335e-02,  1.3551e-02,
      -1.3594e-02,  1.6753e-01, -1.4077e-02, -1.3241e-03, -9.9965e-02,
        4.8985e-02,  1.9200e-01, -7.8175e-02,  4.8160e-02,  1.0088e-01,
      -5.2663e-03, -9.0163e-02, -1.1345e-01,  9.0125e-02,  9.0344e-02,
      -2.5146e-02, -2.2570e-02,  1.6454e-02, -6.9280e-02,  1.5376e-03,
      -8.9953e-02,  1.0834e-01,  3.1118e-02, -9.3416e-02, -1.1096e-01,
        1.2999e-01, -3.9026e-02,  4.5794e-02,  4.3076e-02,  1.8660e-02,
        3.9136e-03,  8.1329e-02,  1.0504e-01,  1.3321e-02, -4.3155e-02,
      -9.5076e-03,  5.4341e-02, -2.2542e-02, -4.9197e-02, -1.2186e-02,
      -6.7993e-02, -6.6528e-02,  8.2997e-02,  6.7843e-02, -1.0157e-02,
      -3.5480e-02,  5.6908e-02,  1.9305e-01,  1.1935e-02,  9.8250e-02,
        5.8362e-02,  2.4518e-02,  1.1786e-01,  1.2467e-01,  6.8019e-02,
      -2.2049e-02, -5.0229e-03,  7.1742e-02, -5.0108e-02, -1.9310e-03,
      -6.0595e-02,  8.3538e-02,  9.6512e-03, -4.3217e-02, -1.7833e-02,
        1.0812e-01, -1.0819e-01,  9.9796e-02,  1.6758e-02,  3.9279e-02,
      -9.5374e-02,  3.8384e-02,  4.4376e-02, -2.7034e-02, -9.4755e-02,
        4.7682e-02,  2.6396e-03,  1.0604e-01, -8.5428e-02, -6.5826e-02,
      -4.3033e-03, -4.5342e-02, -1.1127e-01, -3.6573e-02,  8.7262e-02,
        1.2510e-01,  1.9930e-01,  2.0981e-02, -9.8372e-02,  1.0989e-01,
      -8.6704e-02, -3.9325e-02, -7.7816e-03,  4.4067e-02, -1.6992e-02,
        1.0776e-01,  6.9973e-02,  1.1774e-01,  5.7103e-02,  7.9167e-02,
        1.4144e-01, -8.1622e-02,  8.9286e-02, -7.7720e-02,  8.5181e-02,
      -2.9905e-02, -6.4614e-02,  4.6470e-02,  1.1436e-01,  1.4706e-02,
        1.1090e-01, -1.1554e-02,  1.1480e-01,  5.0030e-03,  1.7887e-02,
      -1.0122e-01,  2.1137e-01, -9.6076e-02, -2.4094e-02,  2.5564e-03,
      -5.2903e-02, -8.4527e-02, -1.5586e-01,  2.7896e-02,  1.6694e-01,
      -4.1534e-02,  8.4658e-02, -1.3081e-02, -4.1355e-02,  1.0236e-01,
      -1.6071e-01,  8.3232e-02,  3.2887e-01, -1.7814e-02, -9.5891e-02,
      -3.3149e-02,  6.7271e-02,  1.0632e-01, -6.6929e-02,  3.0356e-02,
        2.3691e-01,  5.3338e-04,  1.1635e-01,  2.1803e-02,  8.3481e-02,
        1.2344e-01, -8.6525e-02,  2.5443e-02,  1.7419e-01,  3.0099e-03,
      -4.3864e-02, -4.3720e-02, -1.8072e-02,  4.7177e-02, -4.8944e-02,
      -5.8917e-02,  1.4112e-01,  5.5032e-02, -8.2159e-02,  1.5614e-01,
      -5.3565e-03, -1.3689e-02, -1.3444e-01, -6.3517e-02,  1.3292e-02,
        8.7237e-02,  4.2876e-02,  1.6002e-01,  1.3408e-01,  4.4876e-02,
        4.8612e-02,  8.5219e-02,  1.0407e-01,  4.7522e-02, -1.8069e-01,
        1.6638e-01,  2.4630e-02,  2.7524e-02,  5.8315e-02,  1.0569e-01,
      -3.7597e-01,  2.1338e-01, -4.2153e-01,  1.3968e-01,  1.3281e-02,
        7.8374e-02,  2.1179e-01,  2.6767e-02, -3.7823e-01,  2.0241e-01,
        3.0932e-01, -3.0816e-01,  7.6683e-02, -1.4096e-01,  2.8315e-01,
        6.7824e-02, -1.2832e-01,  1.8887e-01,  1.5340e-01, -1.5344e-01,
        3.1268e-01, -1.5548e-01, -1.1954e-01,  4.2341e-01, -3.9825e-02,
      -1.3194e-02, -3.0603e-01,  2.1304e-02,  6.1094e-01, -1.2301e-01,
      -1.1140e-01,  3.5428e-01, -1.6786e-01, -5.5110e-02, -3.4784e-01,
        3.3012e-01,  3.7696e-01, -2.2603e-02, -2.1639e-01,  3.2202e-01,
      -1.6024e-01,  2.4113e-02, -1.4521e-01,  2.6484e-01,  3.4911e-01,
      -1.0702e-01, -4.3054e-02,  6.1200e-02, -1.7491e-01, -1.7878e-02,
      -4.2354e-02,  2.1730e-01,  2.8814e-01, -6.6749e-02, -2.3909e-01,
        6.9869e-02, -2.0533e-01, -1.8803e-02, -2.0879e-02,  5.8857e-03,
        1.9593e-01, -5.8491e-02, -4.4798e-02, -1.9345e-02, -2.4973e-01,
      -4.7807e-02, -6.1419e-02, -2.4474e-02,  1.7418e-01,  6.0580e-02,
      -1.6296e-01, -4.6134e-02, -2.0288e-01,  2.9887e-02, -7.2312e-02,
      -3.4856e-02,  9.6736e-02, -5.3782e-02, -1.9149e-01, -2.0837e-04,
      -1.5235e-01, -1.8637e-02,  5.9309e-02, -1.3671e-01,  1.4624e-01,
      -5.9763e-02, -1.1924e-01,  5.4138e-02, -2.4136e-01, -9.6584e-02,
      -1.0158e-01, -8.7777e-02, -9.6043e-03,  9.4212e-02, -1.2210e-01,
      -7.9868e-02, -2.4493e-01,  3.4974e-03, -1.2400e-01,  3.4873e-03,
      -5.1948e-02,  1.3736e-01, -1.9626e-02, -6.4804e-02, -1.8878e-01,
      -3.4140e-02,  7.4986e-03, -7.5161e-02, -3.5376e-02, -1.0317e-02,
      -1.2868e-01,  1.2565e-02, -1.4617e-01, -6.2830e-02, -8.2533e-02,
      -4.7374e-02,  4.9454e-02,  6.9670e-02, -1.9107e-01, -3.2474e-03,
      -8.4822e-02,  5.3637e-02,  3.1421e-03, -9.7363e-02,  8.7447e-02,
        5.9648e-02, -1.2100e-01,  1.0951e-01, -1.8826e-01, -3.9306e-02,
      -9.2678e-02, -3.9489e-02,  1.4029e-01,  6.2490e-03, -1.7534e-01,
      -8.9511e-03, -9.9506e-02, -1.7369e-02, -5.2272e-02, -3.3489e-02,
        1.3703e-01,  3.2911e-02, -3.9694e-02,  9.8762e-03, -2.3709e-01,
        1.1138e-01, -1.5802e-02, -3.9141e-02,  2.4727e-02, -3.0794e-02,
      -1.0866e-01, -3.2453e-02, -1.8772e-01,  2.1523e-02, -1.4519e-02,
      -1.0358e-02,  1.6198e-01, -5.1348e-02, -3.0790e-02,  1.1899e-02,
      -2.0432e-01, -2.4204e-02, -1.6274e-02, -9.6244e-02,  1.6615e-01,
        3.4936e-02, -1.4524e-02,  2.6257e-02, -8.9802e-02,  2.2902e-02,
      -4.3724e-02,  5.2499e-02,  1.3990e-01,  1.5754e-02,  4.8333e-02,
      -6.1437e-02,  7.5170e-03,  8.5187e-02, -9.8414e-03, -2.2523e-02,
        1.4209e-01,  1.4348e-02,  3.7591e-02,  5.6834e-02, -5.2532e-02,
        8.2246e-02,  1.8128e-01, -1.1029e-01,  9.4566e-02, -4.4110e-03,
      -1.1999e-01, -3.8329e-02,  1.9423e-02, -1.1113e-01,  2.3093e-02,
      -2.0195e-01, -4.4109e-02, -4.1170e-02, -8.4413e-04, -1.1540e-01,
      -6.3313e-03, -5.6829e-04,  3.3973e-02, -2.3819e-01,  5.9640e-02,
      -1.4372e-02,  1.2734e-02, -8.2326e-02, -1.6638e-02, -6.3218e-02,
        6.4679e-02, -1.3609e-01, -3.6449e-02, -7.9001e-02, -7.6728e-02,
      -1.3297e-01,  6.5054e-02, -9.8043e-02, -4.4232e-02, -1.8156e-01,
        4.9504e-02,  3.7595e-02, -5.2281e-02, -1.2093e-01, -1.5186e-01,
      -1.1063e-01, -1.0285e-01,  1.4603e-02,  3.0502e-03,  8.6763e-02,
      -9.0543e-02, -1.7854e-02, -1.6170e-01, -3.1908e-02, -3.1051e-02,
      -1.2843e-01,  7.0439e-02, -6.7179e-02,  2.6931e-02, -1.7804e-02,
      -1.8761e-01, -1.3725e-01,  1.1035e-01, -1.5750e-01, -1.1377e-01,
      -9.0079e-02, -1.4726e-01, -1.5241e-01, -1.1593e-01, -1.8829e-01,
        1.6464e-01, -2.3391e-01,  7.3259e-02, -7.4776e-02, -1.4863e-01,
      -1.7784e-01, -1.5303e-01, -2.1949e-01,  1.8802e-01, -8.1528e-02,
        3.8346e-03, -1.8628e-02, -1.8912e-01, -2.8185e-02, -1.6257e-01,
      -1.1176e-01,  1.3863e-01, -2.1002e-01, -3.4455e-03, -2.2789e-03,
      -1.4431e-01, -1.4074e-01, -4.2732e-02, -2.0675e-01, -1.4999e-01,
      -1.7479e-01, -2.0892e-02, -2.6927e-02, -1.3415e-01, -1.8461e-01,
      -2.3576e-02, -1.5811e-01,  1.8297e-01, -1.6829e-01, -9.0039e-02,
        2.0509e-01, -1.0530e-01, -1.1169e-02, -6.7976e-02, -1.2126e-01,
      -2.0111e-01,  2.6733e-01, -7.1403e-02,  1.5198e-01, -2.9864e-02,
      -1.5483e-02, -9.8986e-02,  1.1754e-02,  3.7914e-01,  7.1834e-03,
      -4.4826e-02,  2.7432e-02, -1.7008e-01, -1.9530e-01, -4.8325e-02,
      -4.7149e-03,  1.7761e-01, -2.4641e-01, -1.3994e-01,  8.1627e-02,
      -1.4913e-03, -1.3253e-01,  2.6338e-02,  4.1199e-02,  5.6422e-02,
      -2.7204e-01, -7.4230e-02,  1.3002e-01,  4.1161e-02, -1.2654e-01,
        3.5716e-02, -1.5456e-02,  1.8319e-01,  4.1190e-03, -1.5772e-01,
        8.3637e-02,  7.9639e-02, -2.1989e-02,  9.7901e-03, -4.4422e-02,
        1.4921e-01, -6.1185e-02, -3.6104e-02, -6.3289e-03,  2.7497e-03,
      -8.5604e-02, -1.4749e-02,  4.3524e-02,  1.0567e-01, -1.1873e-01,
        2.2774e-03,  7.8062e-03, -1.1273e-02, -2.5888e-02,  5.4254e-02,
      -4.1598e-02,  1.0585e-01, -2.3572e-02,  5.7709e-02,  1.7647e-02,
      -1.0505e-02, -6.9241e-02,  1.0516e-02,  1.6256e-02,  5.5309e-02,
        3.3834e-02,  8.0976e-02,  7.8404e-02, -1.8161e-02, -9.0423e-02,
      -1.3094e-01,  8.4144e-02,  1.5910e-01, -2.9861e-02, -1.0407e-01,
        3.4472e-02,  2.8233e-04,  1.9422e-03,  5.1159e-02, -8.1167e-02,
        1.3703e-02,  2.0054e-02,  6.4258e-04,  8.6088e-02, -1.1374e-02,
        1.2875e-01,  5.6387e-02,  1.0531e-01, -6.0979e-02,  1.3448e-01,
      -7.6021e-02, -3.8468e-02,  9.2654e-03, -4.5774e-02, -1.7532e-02,
        1.1518e-01,  1.2000e-01,  6.6515e-02,  1.7908e-02, -4.9830e-02,
        4.3134e-02, -3.2641e-02, -3.1348e-02,  7.4506e-03,  2.6145e-01,
        9.3278e-03,  5.3836e-02,  5.1446e-02,  3.0856e-02, -7.5915e-02,
        1.9105e-02,  1.1508e-02,  3.4438e-03, -2.5072e-02, -4.3313e-02,
        8.1053e-02, -2.4812e-02,  6.6471e-03,  8.7026e-02, -2.3803e-02,
      -1.1654e-01, -6.4372e-02, -2.5209e-02,  4.4016e-02, -1.2028e-01,
      -8.4110e-03,  1.1671e-01, -4.2017e-02, -4.5044e-02, -7.8538e-02,
        6.6662e-02, -1.5458e-02, -1.1807e-01,  2.3312e-02,  4.6778e-02,
        5.2618e-02, -2.2445e-04,  9.3459e-02,  8.2085e-02, -3.1664e-02,
      -1.1214e-01,  2.4837e-02, -8.1553e-03,  8.1228e-02,  1.6376e-02,
        1.2885e-02, -3.6434e-02, -5.1400e-02, -1.4166e-01,  1.0215e-01,
        7.8028e-02,  7.0029e-02,  3.9721e-02, -4.9867e-03,  1.3535e-02,
        4.2782e-02, -1.0934e-01,  4.4378e-02,  2.1354e-01,  5.3835e-02,
        2.3750e-03, -1.0704e-01,  1.0140e-01, -3.2473e-04, -4.8085e-02,
      -1.0938e-01,  2.3004e-01, -4.5455e-02,  7.0490e-02, -8.1966e-02,
        4.4926e-02, -3.0197e-02,  2.2827e-02, -1.0708e-01,  2.4847e-01,
        5.8383e-02,  5.0400e-02,  2.4862e-03,  6.7014e-02,  6.8830e-03,
      -9.3420e-02, -2.8178e-02,  1.5009e-01, -5.3388e-02, -4.7476e-02,
        2.6436e-02,  1.0639e-01,  2.8444e-02, -7.5036e-02,  3.8790e-02,
        2.1252e-01, -8.6382e-02,  2.5345e-02,  7.8533e-02, -4.0630e-02,
      -6.0059e-03,  2.3336e-02, -7.3672e-02,  8.9134e-02,  2.3180e-02,
        1.2971e-02, -2.7406e-02, -2.4378e-02,  2.8107e-02, -2.8755e-02,
        1.0859e-03,  2.0984e-01, -5.2617e-03,  1.4865e-02,  1.0975e-01,
        9.2534e-02, -2.3949e-02, -7.0796e-02,  4.3422e-02, -1.3306e-02,
        9.6998e-02, -3.4426e-02, -2.2065e-02, -1.1977e-02,  3.2812e-02,
        8.0170e-02,  2.4739e-02,  9.0520e-02, -6.1725e-02, -2.2348e-01,
        1.4953e-01,  9.7135e-02,  1.1914e-01,  1.6570e-01,  7.1919e-02,
      -4.6708e-01,  1.9001e-01, -2.4689e-01, -4.5528e-02, -7.2070e-02,
      -2.7982e-02,  2.9540e-01,  6.0545e-02, -3.5209e-01,  1.8650e-01,
        1.7487e-01, -1.5484e-01,  7.3069e-02, -2.0518e-01,  1.0144e-01,
        1.7746e-01, -1.5164e-01, -2.7107e-03,  1.2579e-01, -2.6400e-01,
        4.0281e-01, -2.6081e-01, -1.3750e-01,  4.1987e-01,  1.0026e-01,
      -6.1419e-02, -3.4348e-01,  1.4245e-01,  4.4813e-01, -4.6708e-02,
      -1.6096e-01,  3.5148e-01, -1.4628e-01, -9.8949e-02, -2.3159e-01,
        2.5426e-01,  4.8627e-01, -3.6365e-02, -2.5285e-01,  2.3446e-01,
      -1.0875e-01,  5.3965e-02, -1.8305e-01,  1.8993e-01,  3.7142e-01,
      -6.9489e-02, -1.3139e-01,  5.2259e-02, -1.5283e-01,  4.5469e-02,
      -3.9602e-03,  8.2221e-02,  2.9368e-01, -3.4896e-02, -1.1996e-01,
        1.3205e-01, -1.0597e-01, -1.1962e-01, -1.3483e-01,  1.7806e-02,
        8.7307e-02,  1.0425e-01, -9.1663e-02, -8.2616e-02, -9.2083e-02,
        4.2811e-02, -1.1408e-02, -5.3648e-02,  1.1179e-01,  7.0490e-03,
      -4.0104e-02, -7.5279e-02, -1.2395e-01,  1.5729e-02, -1.2301e-02,
        4.9302e-02,  8.2229e-02,  3.1572e-02, -1.0271e-01, -3.4568e-02,
      -7.0869e-02,  3.5213e-02, -4.7470e-02, -3.7989e-02,  1.5214e-01,
      -5.7743e-03, -1.2028e-01, -4.2292e-03, -1.3786e-01,  7.6323e-02,
      -1.7313e-01, -8.0403e-02, -3.3871e-02,  8.1369e-02, -8.8658e-02,
      -9.0860e-02, -1.2483e-01, -6.3767e-02, -1.7147e-02, -7.8112e-02,
      -2.6163e-02,  3.9232e-02, -3.3973e-02,  5.4672e-02, -9.1087e-02,
      -4.5824e-02, -4.5738e-02, -4.7350e-02,  2.3474e-02,  2.0882e-02,
      -1.1610e-01,  1.1053e-01, -2.1515e-01,  1.9194e-02, -9.5676e-02,
        1.2469e-02,  1.4320e-01,  6.5722e-02, -2.2693e-01, -3.6753e-02,
      -1.9661e-01,  4.3672e-02, -1.1555e-01, -7.9764e-02,  1.0773e-01,
        6.7979e-02, -8.2151e-02,  9.7988e-02, -1.4480e-01, -8.3125e-03,
      -2.2429e-02,  9.5234e-02,  5.7322e-02,  1.1236e-01, -3.6884e-02,
        7.0194e-02, -1.1461e-01,  4.8568e-02, -7.1980e-02, -9.4332e-02,
        6.9637e-02,  1.1621e-01, -1.5928e-01,  2.4508e-03, -1.3734e-01,
        4.4024e-02,  3.6174e-02, -6.9709e-02,  7.7768e-02, -6.8194e-03,
      -1.9536e-01, -4.5796e-02, -2.1013e-02,  5.7653e-02,  5.7870e-02,
      -9.7096e-02,  8.1927e-02, -1.7368e-02, -5.8451e-02,  5.8282e-02,
      -1.4640e-01,  3.5732e-02,  8.3609e-02, -5.1267e-02,  1.4044e-01,
        3.1784e-02, -8.1243e-02, -4.7695e-02, -5.6691e-02, -5.8175e-02,
        1.7018e-02, -7.7203e-02,  1.9430e-02,  1.4553e-01, -1.0585e-01,
        4.1595e-02, -1.4440e-01,  8.4443e-02,  4.4780e-02, -4.8069e-02,
        9.7861e-02, -3.1969e-02, -4.7431e-02,  2.2961e-02, -5.3186e-02,
        3.5541e-02,  6.6368e-02, -1.3857e-01,  1.0860e-01,  9.4197e-02,
      -9.2163e-02,  9.3782e-03, -3.5513e-02, -1.1917e-02,  2.6128e-03,
      -1.1014e-01,  1.0645e-01,  1.0126e-01, -1.3001e-01, -3.0849e-02,
      -5.4452e-02, -2.6646e-02,  1.4942e-01, -1.0890e-01,  9.1586e-02,
        4.9127e-02, -4.7218e-02, -7.5924e-02, -3.3917e-02,  3.0367e-02,
        4.6291e-03, -1.6903e-01,  4.6734e-02,  6.0601e-02, -6.8770e-02,
      -1.4562e-01,  2.3594e-02, -1.6279e-01,  1.1772e-01, -2.0654e-01,
        8.8993e-02,  1.3004e-02, -3.9510e-02, -6.0958e-02, -8.4683e-02,
      -2.6020e-02,  2.7795e-02, -1.6776e-01, -3.4878e-02,  5.2334e-02,
        4.1853e-02, -6.8279e-02, -9.6943e-04, -3.0656e-02, -7.5941e-02,
      -1.1588e-01,  1.2054e-02, -5.3884e-02, -4.0574e-02, -6.5726e-02,
        9.7373e-03, -1.4830e-01,  1.1324e-02, -2.4677e-01, -1.7743e-03,
      -2.6038e-02,  1.4453e-02, -1.2789e-01, -1.2853e-01, -2.1505e-03,
        6.0634e-02, -2.1991e-01,  1.5642e-02, -1.3378e-01, -5.2340e-02,
      -6.2110e-02, -9.6378e-02, -1.1841e-01,  6.3245e-02, -7.1489e-02,
      -5.1187e-02, -1.1323e-04, -1.0942e-01, -8.8661e-02, -6.3247e-02,
      -2.3151e-01,  2.1474e-01, -2.2892e-01,  6.1186e-02, -1.8483e-02,
      -1.3893e-01, -1.5518e-01, -6.1608e-02, -2.9652e-01, -2.9553e-01,
      -1.3196e-01,  1.7198e-02, -9.9685e-02, -1.5296e-01, -1.6902e-01,
        7.8485e-02, -2.0909e-01, -1.8021e-02, -1.3164e-01, -1.7813e-01,
        9.5775e-02,  1.1825e-03, -9.8569e-02, -1.8164e-01, -9.1327e-02,
      -5.4037e-02,  8.0308e-02, -8.2788e-03,  7.6836e-02,  4.5223e-04,
      -1.1275e-01, -2.1259e-01, -9.6841e-02,  1.3292e-01, -1.0438e-01,
      -1.5420e-01,  3.2096e-02, -1.2382e-01, -1.2866e-02,  2.4824e-02,
        4.1289e-02,  1.5612e-02, -2.0953e-01, -8.8758e-02, -4.5813e-02,
      -1.3119e-01, -7.2015e-02,  1.8680e-02,  2.8559e-02,  8.1765e-02,
      -7.1385e-02, -1.1323e-01,  8.7490e-02,  9.3281e-02, -1.1993e-02,
        6.4219e-03, -1.0453e-01, -2.0015e-02, -1.3354e-02, -7.1746e-02,
        1.3261e-01, -5.5451e-02, -2.9407e-02, -3.3272e-02, -1.0540e-01,
        8.9822e-04,  3.3561e-02, -7.0650e-02,  1.4150e-02, -1.0470e-01,
        1.6461e-02, -7.7728e-02, -7.2313e-02,  4.5703e-02,  1.2379e-02,
        4.3410e-02,  5.9090e-02,  6.5714e-02, -4.5782e-02, -4.0150e-02,
      -7.4862e-02,  1.6393e-01, -6.1308e-02, -2.1084e-02,  1.3900e-01,
      -7.4246e-02,  1.2493e-01, -1.4049e-01, -8.3361e-02,  7.3599e-02,
        2.6178e-02, -1.0685e-02, -1.1869e-02, -3.0844e-02,  1.3845e-01,
      -1.2221e-01,  6.6961e-02, -7.8049e-03,  1.2983e-01, -7.2002e-02,
        2.3877e-02,  3.5401e-03,  4.7295e-02, -7.7915e-02,  8.6119e-02,
      -4.9109e-02,  2.3494e-01,  4.7317e-02,  1.3109e-01, -1.1347e-01,
        8.7925e-02, -8.4477e-02,  1.7056e-02,  1.8518e-02,  1.2119e-01,
        8.5062e-02,  7.9726e-02, -3.4180e-02, -5.1710e-02, -1.2108e-01,
      -5.6819e-02,  1.1680e-01,  5.4276e-02, -4.5326e-02, -4.6938e-02,
      -9.9363e-02, -1.1685e-02, -4.0699e-02,  1.0565e-01,  1.7421e-01,
        4.8941e-02,  6.1102e-02, -3.4193e-02,  6.5800e-02, -1.0324e-02,
      -1.0080e-01,  6.2985e-02,  1.5292e-01,  8.1387e-02,  6.1174e-02,
      -5.6836e-02, -1.3858e-02,  1.0595e-01, -1.7463e-01, -6.3272e-02,
      -3.6574e-02,  5.7870e-02, -6.8635e-02, -2.1271e-02, -7.7789e-02,
      -1.1764e-02,  6.1656e-03, -3.9006e-02,  1.1724e-01, -4.5379e-02,
      -4.1410e-02, -7.7083e-02, -6.7762e-02,  6.7637e-02, -1.0442e-01,
        9.0497e-02,  1.3658e-01, -5.9312e-02, -4.2316e-02, -8.1861e-02,
        4.9333e-02, -6.1635e-02, -3.7173e-02, -5.6858e-02, -8.1885e-02,
      -2.6964e-02,  6.9983e-03,  2.8168e-04,  2.5599e-02, -7.4820e-02,
        1.0118e-01,  8.9767e-02,  9.1663e-02,  7.5983e-02, -9.6024e-02,
      -6.3786e-02, -4.8095e-02, -7.7693e-02,  1.0332e-01, -2.8835e-02,
        2.1596e-01, -1.1647e-01,  1.9860e-03, -5.0153e-02, -1.8420e-02,
        1.7603e-02,  2.0009e-02,  2.5419e-02,  1.7526e-02, -1.1180e-01,
      -2.8415e-02,  5.6831e-02, -4.7122e-02,  3.2975e-02,  1.9040e-01,
        9.0480e-02,  2.1724e-01,  3.9851e-02, -8.3805e-03,  1.2804e-03,
      -4.4349e-03, -3.1836e-02,  6.5236e-02,  6.3593e-02,  3.8654e-02,
        1.2001e-01,  4.0008e-02, -1.8670e-02, -3.1979e-02, -8.4982e-02,
        1.6486e-01,  1.2173e-02,  4.9389e-02, -2.5952e-02, -1.7575e-02,
        3.1279e-02, -8.7037e-02,  2.2759e-02,  9.0325e-02, -5.2422e-03,
        7.6081e-02, -3.3697e-02, -1.3154e-02,  1.6152e-03, -3.4625e-02,
        1.9032e-02,  7.7691e-02, -5.4477e-02, -1.0230e-02, -2.0703e-02,
      -6.2092e-02, -3.9326e-02,  3.2739e-02, -5.4953e-02,  1.2447e-01,
      -9.0676e-03, -6.8909e-02,  5.5650e-02, -2.4485e-02, -2.8662e-02,
        1.5128e-02,  9.5525e-02,  4.9706e-02, -3.1216e-02, -9.4318e-02,
        1.4649e-01,  2.8324e-02, -3.3934e-03, -1.3206e-02, -4.0354e-02,
      -2.8964e-01,  1.6957e-01, -2.1754e-01,  7.8809e-02,  6.4526e-02,
      -2.2042e-02,  1.8847e-01, -3.6111e-02, -3.6150e-01,  3.6171e-01,
        2.9842e-01, -2.6368e-01,  6.0654e-02, -1.4714e-01,  2.0334e-01,
        1.2499e-01, -6.0263e-02,  1.1112e-01,  2.0005e-01, -1.7185e-01,
        3.2647e-01, -1.9639e-01, -6.7799e-02,  2.3114e-01,  9.7470e-02,
      -1.5416e-01, -1.3191e-01,  9.6874e-02,  5.5622e-01, -9.0739e-02,
      -8.1391e-02,  2.9604e-01, -1.3015e-01, -6.9758e-03, -3.2210e-01,
        3.0716e-01,  4.3453e-01, -6.3942e-02, -6.1462e-02,  2.5056e-01,
      -1.9625e-01, -4.1551e-02, -1.8773e-01,  2.5032e-01,  2.0394e-01,
        7.2919e-02, -2.1128e-01,  1.5242e-01, -1.2316e-01, -6.0292e-02,
      -5.6377e-02,  2.3636e-02,  3.0653e-01,  9.9567e-02, -1.3460e-01,
        3.2911e-02, -1.1477e-01, -9.2379e-03, -2.0441e-01,  3.3857e-02,
        9.0111e-02, -5.4608e-02, -1.5514e-01,  1.3124e-01, -6.7580e-02,
        3.8320e-02, -1.6148e-01,  1.0801e-01,  6.2774e-02, -5.4693e-03,
      -8.7015e-02,  2.8330e-03, -2.3880e-01, -1.1281e-01, -1.6742e-01,
        6.9156e-02,  6.9395e-02,  7.6701e-02, -1.9504e-01, -2.4059e-02,
      -5.0363e-02, -2.8103e-02, -1.8388e-01,  1.1008e-01,  1.6287e-01,
        4.0700e-02, -2.6273e-02, -1.2500e-02, -2.3147e-01, -6.0286e-02,
      -8.1851e-02,  5.5634e-03, -2.0076e-02,  3.7815e-03, -4.0384e-02,
        1.3310e-01, -8.4796e-02,  3.8200e-02, -5.0811e-02, -4.6108e-03,
        8.2328e-04,  1.9096e-01, -9.1112e-02, -5.2323e-02, -2.1179e-01,
        5.0699e-02, -4.6677e-02,  2.2846e-02,  1.7116e-01,  1.4706e-01,
      -1.9915e-02,  5.6949e-02, -9.6045e-02, -6.0872e-02,  1.8207e-02,
      -9.1387e-03,  1.2916e-02, -2.5822e-02, -2.0465e-01,  8.4045e-02,
      -1.2847e-01,  9.3424e-02,  9.4818e-03, -6.0812e-02,  1.1145e-01,
        1.5533e-01, -7.1490e-02,  5.0614e-02, -2.1702e-01,  3.7636e-02,
        8.5366e-02, -3.1221e-02,  9.5850e-02,  1.1855e-02, -1.0790e-01,
      -4.3949e-03, -1.4592e-01,  1.0812e-01, -1.3489e-01, -8.3295e-02,
        1.0796e-01,  1.5444e-01, -1.7053e-01, -9.5146e-02, -2.2048e-01,
        1.3148e-01,  6.1595e-02,  3.1958e-02,  1.2872e-01,  6.9248e-02,
      -1.1184e-01,  9.2319e-02, -1.4390e-01, -1.2824e-02,  2.9612e-02,
      -1.3443e-01,  1.6579e-01,  1.3427e-01, -3.6397e-02,  7.5305e-02,
      -4.4176e-02,  1.3826e-01,  5.2079e-03, -1.5412e-01,  1.0952e-01,
        9.1281e-02, -1.7018e-02,  1.2003e-02, -9.3917e-02,  8.1101e-02,
      -3.2481e-02, -2.7755e-02,  1.4217e-01,  6.8296e-02,  2.1977e-02,
      -9.5882e-02, -8.1069e-02,  7.4524e-02, -3.3138e-02, -8.4406e-02,
        1.7845e-02,  8.6435e-02, -1.2494e-01,  1.6394e-03, -2.9790e-02,
        4.2524e-02, -1.8933e-02, -2.5948e-01,  9.2555e-02, -1.7490e-02,
      -6.7329e-02,  4.9264e-02, -9.9804e-02, -1.1872e-01, -2.4574e-02,
      -2.7054e-01,  4.2856e-02,  5.0962e-02, -6.5621e-02, -7.3650e-02,
        6.1315e-02, -7.0345e-02, -1.0292e-01, -7.4798e-02, -1.4613e-02,
      -4.3674e-02,  3.0774e-02, -1.1521e-01,  4.4953e-02, -7.3940e-02,
        9.6203e-02, -2.2238e-01,  8.2239e-02, -3.4239e-02, -7.2044e-02,
        3.0654e-03,  1.9746e-03,  8.3839e-02,  9.3790e-02, -1.2177e-01,
      -1.0364e-01,  6.2600e-03, -4.7019e-02, -9.6551e-04, -7.2344e-02,
      -1.6583e-01, -3.1881e-02, -1.5671e-01, -3.7866e-02,  8.4520e-03,
      -9.8785e-02, -8.9445e-02, -7.8165e-02, -7.5160e-03,  1.6813e-02,
      -4.7884e-02, -9.2501e-03, -8.8235e-02,  3.0984e-02, -2.8622e-02,
      -6.0626e-02,  3.2187e-02, -1.2918e-02, -1.8169e-01, -9.5826e-02,
      -4.2815e-03, -2.0775e-02, -1.8889e-01,  1.2802e-01, -1.6044e-01,
        1.3627e-01, -1.9106e-01, -6.3535e-02, -9.2027e-02, -4.8319e-02,
      -3.1956e-02, -2.4240e-02, -1.6535e-01,  6.9132e-03, -2.3867e-01,
      -4.2190e-02, -3.5111e-02, -1.9952e-01, -1.2073e-01,  1.0824e-01,
      -2.1611e-01,  1.7200e-01, -5.0628e-02,  1.9625e-02, -1.7331e-02,
      -1.6402e-01, -9.8873e-02,  4.5003e-02, -2.5448e-01, -2.3433e-01,
      -1.7351e-01, -5.0999e-02,  7.3334e-03, -2.5897e-01, -1.1503e-01,
        2.7646e-02, -2.5974e-02, -4.6356e-02,  5.8434e-02, -1.9287e-01,
        2.6887e-02,  3.5405e-02, -7.4132e-03,  6.3549e-02,  6.0793e-02,
        -1.6272e-02, -4.5491e-02,  1.9558e-02, -5.3244e-02,  7.7113e-02,
        4.8418e-02, -1.1456e-02, -5.9791e-03, -8.8311e-02, -7.1628e-02,
        -2.0345e-02,  1.9268e-02, -3.5297e-02,  1.3558e-01, -8.1602e-02,
        6.4757e-02, -5.9001e-02,  7.0965e-02, -1.0492e-02,  1.0846e-01,
        -1.8240e-02,  1.8774e-02, -2.1235e-02, -8.1433e-03,  1.7935e-02,
        7.7949e-02,  8.6531e-02,  1.0161e-01,  4.1930e-02, -7.3818e-03,
        -2.2044e-02, -4.6681e-02, -1.0911e-01,  8.3161e-02,  2.4398e-02,
        9.5885e-02, -7.7042e-02,  2.4757e-02,  3.5567e-02, -4.9094e-02,
        -1.7288e-01, -8.5462e-02, -3.1045e-02,  2.8173e-02, -5.6223e-02,
        3.0532e-02,  2.4370e-03, -8.1417e-02, -1.7323e-02,  4.4830e-02,
        -4.5738e-02,  7.3503e-02,  3.3671e-02,  6.7796e-02, -4.2037e-02,
        -4.1595e-02,  5.2922e-02, -2.3241e-02,  1.4525e-01, -2.9784e-04,
        -7.8917e-02,  9.6119e-02, -5.0842e-02,  2.0847e-02, -3.0329e-02,
        -3.1908e-02,  1.2868e-01, -8.2986e-02,  1.2002e-02,  2.5184e-02,
        -9.9075e-02, -3.4386e-02,  6.5158e-02, -7.9666e-02, -3.6463e-02,
        7.6579e-02, -1.2791e-01,  1.3005e-01,  8.2631e-03, -5.2538e-02,
        1.3729e-02,  1.0652e-02,  2.5410e-02,  3.8537e-02,  4.6458e-04,
        -1.6247e-02,  4.7872e-02,  4.2154e-03, -6.7690e-02, -1.7710e-02,
        -3.0618e-02,  6.4807e-02, -1.4100e-02,  3.4372e-02, -1.1088e-01,
        2.2226e-02, -6.8377e-02, -9.9472e-02,  7.2695e-02, -5.8295e-02,
        -1.0688e-01,  1.2946e-01, -1.0451e-01, -1.1333e-01, -1.2213e-01,
        -1.5075e-03,  4.9537e-02,  7.2217e-02, -2.2053e-04,  1.1513e-01,
        -1.0373e-01,  2.1556e-02, -6.2629e-03, -1.4247e-01, -2.1107e-02,
        1.4697e-02, -3.1267e-02,  2.8042e-02, -6.2287e-02,  2.0563e-02,
        -8.3853e-02,  3.5683e-03, -5.3826e-02,  1.7770e-02,  3.3928e-02,
        -5.7222e-03,  5.4730e-02,  4.2549e-02, -1.0407e-01,  5.6129e-02,
        -2.2429e-02, -4.8587e-02, -5.8193e-03, -1.1623e-02, -8.8587e-02,
        5.8933e-02, -9.1095e-02, -2.2044e-02,  1.4825e-02, -4.0309e-02,
        -1.6333e-02,  5.8367e-02, -9.1665e-02, -7.5494e-02,  3.8110e-02,
        -4.4417e-02,  2.4789e-02, -3.0165e-02, -2.5855e-02,  1.1552e-01,
        -8.4520e-02, -9.7042e-02, -5.4028e-02, -3.0600e-02,  1.7754e-02,
        -5.7002e-03,  7.2502e-02, -2.8893e-02, -9.7893e-02,  5.5772e-02,
        -7.1151e-02, -9.2863e-02, -4.2461e-02,  3.9682e-02,  7.0484e-02,
        -2.8032e-02,  1.4339e-02, -5.4356e-02,  1.3299e-02,  2.3221e-02,
        1.1361e-01, -5.2440e-02, -1.8935e-02,  1.7840e-02, -1.3973e-02,
        -1.0352e-01, -1.7361e-02, -5.0831e-02,  4.5204e-02, -1.2195e-02,
        -6.8948e-02,  9.2833e-02,  8.7863e-03, -8.8514e-02, -2.0455e-03,
        -1.2442e-03,  2.1998e-02, -7.8635e-02, -8.1068e-03,  1.4985e-02,
        1.2901e-01,  7.2585e-02,  1.0445e-01,  5.1694e-03, -1.4904e-02,
        6.2326e-02,  2.7733e-03,  1.1423e-01,  2.0799e-02,  5.8140e-03,
        4.6161e-03,  7.3867e-02, -1.1068e-02,  7.1805e-02,  1.6712e-02,
        1.0356e-01,  5.5427e-02, -1.0185e-01,  1.0542e-01,  7.8400e-02,
        1.7311e-02, -6.0756e-04, -4.0632e-02,  6.6464e-02, -9.8312e-03,
        -8.5486e-03,  1.2463e-01,  4.2269e-02, -2.6691e-02, -5.0238e-02,
        -4.9345e-02,  6.0462e-02,  1.6523e-01, -1.1435e-01,  1.7217e-01,
        -6.0904e-02, -7.3858e-02,  6.5492e-02, -9.5044e-02,  2.9587e-02,
        6.5662e-02, -1.6379e-01,  6.7836e-02,  8.7030e-02, -1.2615e-02,
        1.3997e-01,  6.5677e-03, -7.7749e-03,  4.9509e-02,  3.1485e-03,
        -4.4544e-02, -5.5696e-02, -1.9449e-02,  6.5767e-02,  1.3313e-02,
        -1.0931e-01,  3.1948e-02, -2.0184e-02, -4.6822e-02,  8.2010e-02,
        -1.1207e-01,  1.4442e-02, -3.2985e-02,  1.7501e-02, -1.2840e-02,
        -1.2440e-02,  1.5516e-01, -1.7401e-03, -1.3071e-01,  1.6400e-01,
        -6.1888e-02,  4.8957e-02,  1.1030e-01,  2.0522e-03,  1.9322e-02,
        -9.4465e-02, -4.2038e-02,  1.1556e-01,  1.5677e-02,  4.4349e-02,
        -2.4939e-02, -1.1786e-01,  2.5148e-02, -3.5395e-02, -1.7724e-02,
        -1.6401e-02,  5.8885e-02,  2.6203e-02, -4.2914e-02, -1.2717e-01,
        4.2854e-02, -1.6362e-01, -5.2138e-02, -3.1517e-03, -1.1317e-01,
        2.9731e-03,  5.9670e-02, -1.1318e-01,  1.0392e-01,  4.3755e-02,
        9.3358e-02,  6.0997e-02, -6.6572e-02,  4.3287e-02,  6.7419e-02,
        -4.5103e-03, -2.2298e-02,  2.8658e-02, -7.9833e-03, -2.1998e-03,
        3.6835e-03,  4.1254e-02, -3.1718e-02, -4.3240e-02,  1.3282e-01,
        -1.0752e-01,  2.5514e-02,  9.7208e-02,  5.2732e-02,  1.2571e-01,
        2.9712e-02,  4.1232e-02,  8.0883e-02,  1.1177e-02,  9.8752e-02,
        1.0187e-01, -6.0784e-02,  4.6312e-02,  4.9185e-02,  3.1964e-02,
        1.6790e-02,  3.5456e-02,  8.6689e-03,  1.4125e-02,  3.9271e-02,
        7.0776e-02, -9.3784e-02, -7.4742e-03,  3.5087e-02, -9.9807e-02,
        5.6210e-03,  1.0544e-01,  7.6221e-02,  3.7775e-02, -8.0690e-02,
        -5.0230e-02, -5.8898e-02,  1.4604e-03,  9.7750e-02,  5.6260e-02,
        6.8314e-02,  4.0571e-02,  3.9124e-02,  3.4599e-02,  1.1060e-01,
        -5.6745e-03, -6.3541e-02,  9.7232e-02, -1.0668e-01,  6.1073e-02,
        -1.6711e-02, -1.4431e-01,  5.2555e-02, -1.2285e-01,  1.2545e-01,
        7.6084e-02,  3.1590e-02,  2.9286e-02, -1.4570e-01, -1.2105e-01,
        6.3899e-02, -8.3551e-02,  4.2590e-03,  1.4087e-01,  6.1050e-02,
        6.6499e-02, -5.6377e-02,  6.0187e-02, -1.2943e-02,  6.6797e-02,
        7.3973e-02,  8.3762e-02, -4.6937e-02,  7.3316e-02, -8.8777e-02,
        2.4637e-02, -7.0798e-02, -1.1100e-01,  4.4876e-02,  1.1541e-01,
        -6.0848e-02,  4.4180e-02, -7.8474e-02,  1.1527e-02, -5.1730e-02,
        5.2780e-02,  2.4504e-02,  1.3162e-01, -7.9690e-02,  5.8487e-02,
        -1.4378e-01,  3.9307e-02,  2.8063e-02, -8.1168e-03, -4.2796e-02,
        1.3882e-01, -6.5902e-02,  7.5944e-02, -2.3341e-02,  3.9546e-02,
        5.4896e-02, -5.3403e-02,  1.1273e-01, -6.2071e-03, -1.2544e-01,
        1.1152e-01, -1.4793e-01,  5.5402e-03, -2.9012e-02, -1.1648e-01,
        -3.8532e-02,  1.0256e-01, -2.2978e-02,  1.6960e-02, -1.1232e-02,
        -1.2064e-01,  7.1239e-02,  5.2938e-02,  6.3417e-02,  6.3929e-02,
        -8.8848e-03,  2.4626e-02, -1.2240e-01, -6.4455e-02, -8.2747e-02,
        5.4073e-02,  1.8923e-02, -2.4713e-02, -5.6581e-03,  8.7550e-02,
        -8.4716e-02, -2.3467e-02,  4.5808e-02, -6.6348e-02,  1.1644e-01,
        -1.5542e-02, -5.2169e-02,  1.2190e-01, -1.7289e-02,  6.8293e-02,
        6.5995e-02, -2.9740e-02,  9.8099e-03,  8.1634e-02, -7.9226e-02,
        -4.1813e-02, -6.4828e-02, -1.0259e-01,  5.0594e-02, -5.6613e-02,
        -5.5772e-02,  1.4196e-01, -8.7214e-02,  3.9520e-02, -1.4137e-01,
        2.7228e-02, -4.3178e-03, -8.1946e-02,  7.2000e-03,  1.3109e-02,
        -9.3825e-02, -1.0242e-02, -1.4144e-01, -4.2407e-02,  4.6588e-02,
        -5.5868e-02, -5.5356e-02,  1.9269e-03, -7.7953e-02,  6.1257e-03,
        -6.3728e-02, -4.3873e-02,  7.8281e-02, -7.2714e-02, -4.9121e-02,
        1.2839e-01, -1.5898e-02,  4.7634e-02,  3.8062e-02, -6.1606e-02,
        -6.7502e-02, -1.1220e-01, -3.0478e-02,  1.2884e-01,  6.2344e-03,
        -5.4376e-02,  4.1112e-02, -4.4008e-02,  6.2063e-02,  5.5156e-03,
        1.7560e-02,  1.4107e-01, -5.9496e-02,  4.4923e-03, -1.1798e-02,
        6.0348e-02,  6.3910e-02, -1.5284e-02,  9.2017e-02,  3.2032e-02,
        -4.8451e-02, -4.2518e-02, -8.3740e-02,  5.9714e-02, -3.3288e-02,
        -8.4824e-02, -2.1194e-02,  6.9032e-02, -9.8242e-03,  1.1009e-01,
        -1.6509e-02,  8.0010e-03, -5.8203e-02, -1.3223e-01,  7.6716e-02,
        3.9952e-02, -1.5330e-01, -4.9838e-02, -3.8913e-01,  2.0319e-02,
        5.3592e-02,  3.2132e-02, -1.5185e-01,  5.3939e-02, -1.3135e-01,
        -4.6424e-02, -2.6092e-01,  6.6381e-02,  7.5805e-02,  6.1986e-02,
        -2.0345e-01,  1.3084e-02,  1.5973e-02, -1.3843e-01, -1.4634e-01,
        5.9578e-02,  2.4803e-02, -1.0695e-01, -1.5543e-01, -3.5379e-02,
        -7.3753e-03, -1.8873e-01, -4.4515e-02,  1.5624e-02, -7.0938e-02,
        -8.0518e-02, -4.9320e-02, -1.0411e-02,  2.1206e-02, -2.3107e-01,
        -6.3986e-02,  6.9461e-03, -1.1789e-01, -1.2197e-02, -7.5846e-02,
        -1.5525e-01,  5.0241e-02, -5.7344e-02,  6.2616e-02,  1.0072e-01,
        -4.4418e-02, -8.6731e-02, -4.8364e-03, -8.5774e-02,  8.6290e-02,
        -1.7126e-01,  6.0183e-02,  1.6888e-01, -4.9351e-02,  9.6650e-02,
        -1.2504e-02,  4.9003e-03, -1.4694e-03, -1.3740e-02,  1.1896e-01,
        -1.4492e-02, -8.9066e-02, -3.6338e-02, -9.0128e-03, -9.5241e-02,
        -6.7131e-02, -1.2968e-01, -2.1310e-02,  7.4096e-02, -8.9638e-02,
        9.3421e-02, -9.4389e-02,  4.7280e-02,  6.9327e-02, -9.4733e-02,
        1.2627e-01, -3.5570e-02, -8.5577e-02,  1.5628e-02, -7.5203e-02,
        -6.5795e-02,  6.9122e-02, -2.2209e-01,  7.8343e-02,  1.0941e-01,
        -1.7948e-01,  5.9536e-02, -4.5399e-02,  2.5646e-02,  4.3861e-03,
        -1.7556e-01,  7.2606e-02,  1.5050e-01, -6.8251e-02,  1.4852e-01,
        -1.5114e-01, -8.7073e-02,  9.7347e-03, -1.6147e-01, -2.8213e-02,
        8.9314e-02,  4.4610e-02,  4.6826e-02, -8.9209e-02,  5.1104e-03,
        4.1098e-02, -1.9610e-01,  1.4313e-02,  1.7486e-01,  6.4608e-02,
        -1.1292e-01, -1.9636e-01,  2.6525e-02,  6.4556e-02, -2.1181e-01,
        2.0021e-02,  1.1181e-01,  9.5871e-02,  9.6415e-02, -5.1368e-02,
        -1.0716e-01,  1.4289e-01, -2.2976e-01, -6.8601e-02,  8.8047e-02,
        3.4379e-02,  3.8630e-02, -1.2031e-01, -4.7158e-02,  9.3833e-02,
        -9.9809e-02, -1.4943e-01,  1.2306e-02,  1.5991e-01, -5.9641e-02,
        -1.0437e-01, -6.1189e-02,  4.5455e-02, -1.6798e-01,  1.8796e-02,
        -2.4814e-02,  2.0169e-01, -7.6588e-02, -1.3509e-01, -9.2310e-02,
        -3.1346e-02, -1.4448e-01,  1.8108e-02,  5.5874e-02,  7.5225e-03,
        -7.5580e-02, -2.2267e-01, -9.6419e-03, -2.3264e-02, -1.4177e-01,
        -2.4995e-02, -3.6933e-02,  1.2206e-01, -2.2837e-02, -1.3210e-01,
        -8.9706e-02,  7.0441e-02, -1.8979e-01,  1.9594e-02,  1.5549e-01,
        1.6539e-01, -2.7796e-02, -4.1839e-02, -8.3559e-02,  3.9582e-02,
        -8.1954e-02, -8.6966e-02,  1.2201e-01,  1.4251e-01,  9.8973e-02,
        -1.8022e-01, -1.2157e-02,  9.5297e-03, -1.5730e-01, -4.4440e-02,
        5.0100e-02,  5.2651e-02, -9.7713e-02, -2.0239e-01, -1.4951e-01,
        -8.0433e-03, -1.8675e-01, -2.8000e-02,  1.4997e-01,  2.0119e-01,
        -2.9694e-02, -2.2048e-01, -1.3396e-01,  6.4832e-02, -1.8616e-01,
        8.6511e-02,  9.8750e-02,  8.4179e-02, -3.6819e-02, -1.0923e-01,
        -6.4116e-02, -6.6969e-02, -1.5998e-01,  1.6014e-02,  3.1867e-02,
        1.0816e-01, -5.6818e-02, -4.4096e-02, -1.5441e-01,  4.8183e-02,
        1.8484e-02,  1.1594e-01,  2.6235e-02,  6.7672e-02, -3.1343e-02,
        -7.5001e-02, -1.5860e-01, -7.4315e-02, -1.7225e-02,  3.5867e-02,
        7.0564e-02, -9.1669e-03,  7.3167e-02, -1.1429e-01, -5.4498e-02,
        5.5805e-02, -1.6009e-01,  1.4400e-01,  6.9661e-02, -1.0665e-01,
        5.6255e-02, -1.2643e-01,  5.4855e-02,  1.6265e-02, -2.2887e-01,
        1.0165e-01,  6.3040e-02, -1.0878e-01,  1.2157e-02, -2.4569e-01,
        -8.8555e-02,  8.8481e-02, -1.7349e-01,  7.9586e-02,  8.1033e-03,
        1.0159e-01, -2.2019e-01, -1.5673e-01, -4.6725e-02,  1.4034e-02,
        -1.9469e-01,  2.1458e-02,  9.9332e-02, -2.1071e-02, -7.4351e-02,
        -1.3653e-01, -4.1179e-02, -6.7109e-02, -1.8388e-01,  2.9678e-02,
        4.5898e-02, -3.0847e-03, -3.2577e-02, -9.7261e-02, -6.8951e-02,
        3.5278e-03, -5.9700e-02,  3.2652e-02,  6.5891e-02, -8.3139e-02,
        -1.7222e-02,  2.3310e-02, -7.3363e-02, -6.1478e-02, -9.7144e-02,
        -7.8916e-02,  3.0033e-02, -1.4806e-01,  4.0387e-02, -3.8372e-02,
        6.0364e-02,  8.6883e-03, -7.6896e-02, -8.9775e-03, -3.9827e-02,
        -5.4757e-02,  1.1183e-01, -9.0405e-02, -1.8282e-02, -9.7218e-02,
        -1.1666e-01,  4.9465e-02,  1.0412e-01,  5.6814e-02,  6.8752e-02,
        -1.3372e-01, -7.6249e-02, -1.0785e-01, -6.2498e-02, -1.3163e-01,
        7.5215e-02, -7.9190e-02,  8.9505e-03, -1.8206e-02, -6.7068e-02,
        -6.1850e-02, -1.3725e-01, -1.2797e-01, -6.7867e-02, -1.0018e-01,
        5.4443e-02, -5.4213e-02, -2.5227e-02,  9.1622e-02, -1.7804e-01,
        -8.4315e-02,  1.2142e-01,  1.9116e-02, -5.6165e-02, -6.1223e-02,
        5.5770e-03, -9.0895e-02, -1.7103e-01,  3.4574e-02,  6.8092e-02,
        -7.3765e-02,  7.0187e-03, -3.1573e-02,  8.1782e-02,  2.3924e-02,
        -2.8796e-02, -7.9453e-03, -2.4237e-02,  2.8822e-02,  6.2747e-02,
        7.5628e-02,  5.5418e-02, -1.8335e-02, -7.0210e-02, -6.5086e-02,
        -3.1660e-02,  4.1105e-02, -1.2962e-02,  4.9578e-02,  9.8796e-02,
        -3.8392e-02, -4.6940e-02, -2.2216e-01, -1.6678e-02, -7.5505e-02,
        9.3346e-03, -1.2698e-01,  1.0890e-01, -2.3182e-02, -2.0708e-01,
        -9.3347e-02, -8.3785e-02, -3.6315e-02,  3.8986e-02,  4.5184e-02,
        4.7692e-02, -5.7325e-02, -2.1115e-01, -1.5890e-01,  3.2988e-02,
        -2.8824e-02, -1.0689e-01, -1.1926e-01, -5.3748e-02, -3.2355e-02,
        -1.9733e-01, -1.5718e-01,  2.1206e-02, -1.2069e-01, -8.9458e-02,
        1.6818e-02,  7.4103e-02, -3.0802e-02, -1.8891e-01, -2.2652e-01,
        5.4170e-02, -2.1683e-02, -8.5485e-02, -7.9257e-02,  7.0531e-02,
        -1.2446e-01, -7.1759e-02, -7.9797e-02,  1.3826e-01, -1.4914e-01,
        -2.3045e-02, -6.0069e-02,  4.2121e-02,  2.6722e-02, -1.6869e-01,
        -5.4553e-03,  6.1231e-02, -7.9053e-02, -9.3028e-02, -4.4623e-02,
        -3.7915e-02, -1.0063e-01, -2.2558e-01, -1.2161e-01,  1.3039e-02,
        -3.8478e-02, -2.5810e-02, -8.6156e-03, -3.0800e-02, -4.3398e-02,
        -2.2752e-01, -1.0403e-01,  7.0027e-02, -1.3530e-01, -1.8700e-01,
        -1.3623e-01, -5.0841e-02, -3.7467e-02, -2.3494e-01, -8.2991e-03,
        9.4520e-02,  3.1250e-02, -1.6331e-01, -4.6811e-02, -7.1369e-02,
        -2.1644e-04, -2.0867e-01,  1.6340e-02,  2.6518e-02, -1.7647e-01,
        -1.9331e-01, -9.6141e-02, -7.7018e-02, -8.3204e-02, -2.2370e-01,
        -9.0434e-03, -7.0376e-03,  1.2017e-02, -1.7494e-01, -1.3950e-01,
        -6.4023e-03, -9.0318e-02, -1.1078e-01, -7.2057e-02, -2.0950e-02,
        -9.1093e-02, -2.0603e-01, -6.1631e-03, -1.2237e-01, -9.6542e-02,
        -2.0236e-01, -2.3064e-02, -2.7689e-02, -1.1779e-01, -8.2515e-02,
        -4.4653e-02, -1.2725e-02,  4.3215e-03, -1.4149e-01,  3.0001e-02,
        -1.6459e-01, -3.4216e-02,  5.1210e-02,  8.0737e-02, -1.3126e-02,
        -1.0683e-01, -6.7047e-02, -8.3480e-02, -6.9318e-02, -1.3109e-01,
        1.4264e-01, -1.0815e-01, -1.0524e-01, -2.7432e-02, -2.1297e-02,
        -1.2035e-01, -1.1972e-01, -4.6513e-03,  1.1927e-02, -2.9327e-02,
        5.4433e-03, -1.8312e-01, -8.8355e-02, -5.7989e-02, -9.3006e-04,
        3.5354e-02,  2.1548e-02, -1.2688e-01, -3.1395e-02, -4.4004e-02,
        -1.2789e-01,  1.5099e-02, -1.9251e-02, -1.6689e-02,  1.0198e-01,
        2.0246e-02, -4.2952e-02, -1.1110e-01, -2.2217e-02, -6.6484e-02,
        -1.1919e-01,  7.4539e-02, -2.9672e-02, -1.4534e-01, -4.5390e-02,
        -7.2083e-02, -1.4332e-01,  2.7004e-02, -2.6812e-01, -2.6787e-01,
        2.0039e-01, -6.7703e-02, -4.1633e-02, -3.1765e-01, -2.8554e-01,
        -6.0546e-02,  5.9786e-02,  2.1778e-01, -1.8099e-03, -2.2753e-01,
        -4.6046e-02, -4.3403e-03, -6.5415e-02, -1.2872e-01,  7.4968e-04,
        -1.4603e-01, -1.1917e-03,  9.6376e-02, -3.4881e-02, -6.8888e-02,
        -4.8400e-02, -1.7926e-02,  1.1035e-02, -9.6926e-02,  5.4960e-02,
        7.2759e-03, -3.6580e-02,  1.3728e-02, -1.4818e-02, -1.4515e-01,
        3.9368e-02, -5.1699e-02,  1.0179e-02,  6.2243e-02,  3.1990e-04,
        -9.4910e-02, -3.0239e-02, -5.2030e-02,  4.0231e-02,  5.4569e-02,
        6.8448e-02,  6.0508e-02,  1.2832e-01, -7.5201e-03,  7.2259e-02,
        -5.1459e-02, -7.3589e-02,  5.9358e-03, -1.1243e-01,  1.1334e-01,
        6.1171e-02, -1.8997e-02, -6.2876e-04,  3.6510e-02, -6.0335e-02,
        8.6024e-02,  1.3296e-02,  1.1550e-01,  1.3448e-01, -6.7610e-02,
        -5.6354e-02,  6.1992e-02,  1.2637e-02, -8.1280e-02,  6.3727e-02,
        1.4076e-02,  8.3547e-02,  6.5633e-02,  1.1804e-01, -7.6543e-02,
        6.9812e-02,  2.4272e-02, -6.4015e-02, -3.4902e-02,  1.0310e-01,
        7.9733e-02,  7.2602e-02, -7.5482e-02, -1.3227e-01,  3.8207e-02,
        -1.8070e-03, -3.9456e-02,  5.1099e-02, -5.3644e-02,  2.8593e-02,
        5.1599e-02,  6.3437e-02, -9.9480e-02, -4.8166e-02,  7.8322e-02,
        -8.1626e-03,  4.9547e-02, -4.8840e-04, -6.6124e-02, -6.3596e-03,
        8.0673e-02, -4.6379e-02, -1.3195e-02,  1.2988e-01,  3.9407e-02,
        1.7050e-03, -8.3968e-02, -1.9528e-02,  7.7790e-02,  7.5966e-02,
        -6.8148e-02,  1.0537e-01, -1.1292e-01,  1.1637e-01, -1.1545e-01,
        4.3048e-02, -5.9656e-02,  2.2329e-02,  1.1569e-01,  9.2877e-04,
        4.5764e-02,  6.8702e-03, -3.4751e-02, -9.7263e-02, -7.9181e-02,
        -3.5974e-02,  4.2447e-02,  8.9695e-02, -1.7275e-02,  6.9230e-02,
        6.5453e-02, -1.1220e-01,  5.2253e-02, -1.2558e-01,  2.1759e-02,
        1.0014e-01,  8.3692e-02, -7.4954e-02,  3.0704e-02,  5.8045e-02,
        -3.5311e-02,  5.5063e-02, -5.8422e-02,  1.5821e-02,  3.4844e-03,
        -2.6577e-03, -9.3604e-02,  6.0575e-03, -9.2213e-02,  5.9978e-02,
        -2.9664e-02,  1.1810e-01, -3.5781e-02, -4.0954e-02, -1.2632e-01,
        -6.6021e-02, -3.9558e-02,  2.3199e-02,  7.9102e-02,  1.9136e-02,
        3.1794e-02,  7.3534e-02,  1.5142e-02,  2.1494e-02,  5.9682e-02,
        6.1845e-02, -5.3613e-02,  1.1728e-01, -8.1903e-02,  9.5889e-02,
        -1.0152e-02, -6.9527e-02,  7.1859e-02, -5.5018e-02,  1.3649e-01,
        1.0236e-02,  5.5129e-03, -6.1809e-03,  3.6661e-02,  8.0944e-02,
        -4.3779e-02,  6.3841e-02,  3.7518e-04, -4.6042e-02, -4.2109e-03,
        3.8271e-02, -6.8169e-04, -8.5109e-02, -4.4791e-03,  3.4233e-02,
        8.0546e-03, -3.0410e-02, -4.5799e-02, -1.6164e-02, -4.6709e-02,
        -4.4514e-02,  5.3413e-02,  2.2181e-02, -3.2965e-02, -8.6566e-02,
        5.9975e-02,  8.3929e-02, -5.2730e-02,  6.9027e-02, -1.8422e-03,
        -6.4863e-03, -3.3671e-02,  9.8485e-02, -9.8553e-02,  1.5693e-02,
        -2.3746e-02, -1.0848e-01,  2.5789e-02, -8.1731e-02,  5.2301e-02,
        -5.7287e-02, -8.7134e-02,  2.4785e-02, -6.2240e-02, -6.7449e-02,
        4.9465e-02,  8.8708e-02,  6.7408e-02, -6.5570e-02, -6.8422e-02,
        -6.4010e-02,  8.6701e-02, -6.6957e-02, -3.5380e-02,  7.1232e-02,
        6.3561e-02, -1.7201e-02, -1.1145e-01,  7.0052e-02,  1.1758e-01,
        5.4426e-02,  1.3238e-01,  2.1898e-04, -4.3866e-02,  2.2671e-03,
        -9.5408e-02,  4.7984e-02,  8.2473e-02, -3.9520e-02,  1.5323e-02,
        -2.1912e-02, -5.5977e-02,  3.0449e-02,  2.2195e-02,  8.1707e-02,
        9.6821e-02, -3.5222e-02, -2.9212e-02, -6.9860e-02,  1.1616e-01,
        -2.1269e-02,  9.2159e-03, -8.0973e-02, -2.6947e-02, -1.4355e-01,
        8.5826e-02,  1.1950e-01, -4.7669e-02,  3.6442e-02, -4.6813e-03,
        8.8677e-02, -6.4255e-02, -1.1486e-02,  3.2327e-02, -4.8013e-02,
        5.2122e-02,  8.9161e-02, -1.3806e-01, -7.2211e-02,  7.2432e-02,
        -1.0327e-01,  2.7364e-03, -9.6510e-02, -8.5190e-02,  4.3900e-02,
        4.9837e-02, -2.5912e-02,  5.3856e-02,  4.6644e-02, -7.1687e-03,
        -7.1804e-02,  1.8205e-02,  1.3080e-01, -1.5440e-02,  4.3494e-02,
        -7.4583e-02, -1.1344e-01,  1.1088e-01, -6.1633e-03, -8.5279e-02,
        1.2135e-01, -3.6509e-02,  6.9759e-02,  2.1269e-02,  3.2511e-02,
        1.4973e-01, -6.2032e-02,  7.8460e-02,  1.0529e-01,  1.1178e-02,
        -9.6028e-04,  2.1417e-02, -8.3622e-02,  1.0315e-01, -1.9117e-02,
        7.3705e-02,  6.8982e-02, -1.1188e-01,  1.3731e-02,  7.7247e-02,
        -1.2626e-01,  8.3581e-02,  3.5324e-02,  6.4352e-03, -6.0094e-02,
        7.1010e-04,  7.0575e-02,  1.0670e-01, -7.6224e-02, -6.5074e-02,
        -5.4425e-02,  5.6620e-02,  1.6778e-02, -8.5266e-02,  3.3586e-02,
        -7.0985e-04, -1.3465e-01,  1.3968e-01, -9.7628e-02,  5.1096e-02,
        8.4272e-03, -1.3043e-01,  6.8566e-02, -6.4404e-02, -1.0988e-01,
        -6.4231e-02, -9.2332e-02,  7.0525e-02,  7.1259e-02, -2.3880e-02,
        1.5612e-02,  1.6226e-02, -5.7767e-02,  2.2891e-02,  9.2235e-04,
        1.1240e-02, -4.0648e-02, -9.6921e-02,  5.4659e-02, -6.7338e-02,
        4.5157e-02, -9.6545e-03,  6.8272e-02,  1.0230e-01,  7.0122e-02,
        -3.6277e-02,  5.2684e-02, -6.8258e-02,  5.6798e-02, -5.9228e-02,
        -1.1576e-01,  9.8504e-03,  1.9218e-02, -1.9675e-02,  8.9569e-02,
        7.5674e-02,  5.6868e-03,  7.7826e-02, -9.8898e-02,  3.9120e-03,
        -3.6333e-02, -1.1702e-01, -1.1414e-02,  2.6114e-02, -4.3269e-02,
        5.6110e-03, -8.7628e-02,  7.1884e-02,  1.0150e-01, -2.6202e-02,
        -7.8730e-02, -8.5439e-02,  5.1676e-02,  4.9343e-02, -5.0274e-02,
        -7.3594e-02,  4.2069e-02,  9.3589e-03,  7.9084e-02, -9.6350e-02,
        6.9017e-02,  2.9223e-02,  1.6954e-02,  6.8529e-02,  4.0143e-02,
        -7.0736e-02,  1.0160e-01, -5.5579e-02, -4.6026e-02,  5.9728e-02,
        3.8799e-02, -3.9630e-03, -7.8950e-03,  6.5628e-03,  9.6950e-02,
        6.1193e-03, -3.9442e-02,  1.0246e-02,  3.9541e-03, -1.5608e-03,
        5.7370e-02,  1.9165e-02, -4.5465e-02,  2.1812e-02, -3.5249e-02,
        1.7944e-02,  1.4677e-02, -8.3734e-02,  3.1507e-02, -1.3453e-01,
        -8.3981e-02, -4.0879e-02, -5.2878e-02, -6.1480e-02, -3.6762e-02,
        8.1048e-02,  5.1303e-02, -1.1825e-01,  1.0601e-01,  1.2088e-02,
        -4.0913e-03,  4.5236e-02, -6.6503e-02, -1.9051e-03, -3.3615e-03,
        -1.0703e-01,  1.0168e-01,  8.1001e-02, -8.5109e-02, -5.1230e-02,
        5.0716e-02,  5.1018e-02, -2.3366e-02,  3.4885e-02,  4.5739e-03,
        -5.2936e-02, -4.5682e-03,  3.2159e-02, -1.3460e-01, -3.8047e-02,
        -7.9411e-03, -1.0001e-01, -1.5530e-02, -2.7449e-02,  4.8191e-02,
        5.6296e-02,  4.6891e-02,  2.2782e-02,  5.6350e-02,  5.5739e-02,
        1.3823e-02, -1.0803e-01, -7.9159e-02,  1.9514e-02, -9.3184e-02,
        1.1621e-01, -4.8472e-02,  5.3244e-02,  1.1085e-01, -2.8177e-02,
        -5.3718e-02, -2.4582e-02, -3.7686e-02, -5.1724e-02,  9.2458e-02,
        -1.2853e-01,  2.8859e-02, -1.1194e-01, -1.0515e-01, -5.9428e-02,
        -4.8586e-02,  5.3386e-02,  1.1622e-03,  5.0507e-02,  9.4605e-02,
        -1.0292e-01,  6.2203e-02,  6.1100e-02,  7.0318e-02, -3.5063e-02,
        1.6677e-02, -8.3741e-02, -8.6463e-02, -6.4011e-02, -1.3253e-01,
        3.0870e-02,  3.8284e-02, -5.7244e-02, -1.2529e-03, -1.3130e-01,
        -3.5359e-03, -4.3516e-02,  1.9837e-02,  2.0776e-02,  5.3168e-02,
        5.5949e-02,  6.8603e-02, -7.9538e-02, -3.9500e-02, -6.7945e-02,
        1.1833e-02,  3.7733e-02, -1.1197e-01,  6.3722e-02,  3.9705e-02,
        -4.3633e-02,  4.1097e-02, -7.8423e-02, -7.3589e-02, -1.1297e-01,
        -1.0407e-02,  1.0685e-01,  1.4424e-01, -1.3419e-01,  6.2858e-02,
        2.5311e-02, -4.1332e-02,  2.4875e-02, -1.0765e-01,  4.4196e-02,
        -1.5983e-02,  1.6095e-02, -3.4861e-03, -4.0191e-02, -3.7232e-02,
        7.2680e-02, -1.3855e-01,  2.5756e-01, -1.0603e-01, -2.7159e-02,
        2.4049e-01,  2.8364e-02, -9.2331e-02, -1.2594e-01, -1.6105e-02,
        1.0224e-01, -1.3953e-01, -6.6840e-02,  2.1954e-01, -2.5353e-02,
        4.4349e-02, -2.9744e-01,  2.0825e-01,  8.2242e-02, -1.3307e-01,
        2.0780e-02,  2.8681e-02, -1.3507e-01,  5.0428e-02, -9.6412e-02,
        1.3337e-01,  2.0632e-01,  4.2297e-02, -8.3982e-02,  1.6688e-01,
        -8.6246e-02,  8.5904e-02, -9.6180e-02,  1.5683e-01,  2.2151e-02,
        -1.3305e-02, -8.6734e-02,  1.3642e-01, -3.7391e-02, -2.5562e-02,
        -5.8886e-02,  2.0918e-01,  3.2119e-02,  3.5788e-02, -1.0123e-01,
        -7.6143e-03, -5.5947e-02, -3.9934e-02, -1.9454e-01,  2.2173e-01,
        1.0886e-01, -5.8525e-02, -8.1815e-03,  5.0393e-02, -1.4139e-01,
        9.3164e-02, -9.5290e-02,  1.4588e-01,  4.3709e-02,  1.4643e-02,
        -1.3040e-01,  1.0960e-01, -1.6991e-01, -2.5407e-02, -9.1829e-02,
        3.1586e-02, -4.3633e-02,  4.9892e-02, -3.3619e-02, -1.8279e-02,
        -1.3997e-02, -8.3340e-02,  4.4896e-02,  1.1294e-01,  5.5838e-02,
        1.7020e-02, -3.4391e-02,  2.5081e-02, -7.3241e-03, -1.8538e-02,
        -9.7281e-03,  1.3979e-01,  9.6243e-02, -7.3958e-02,  4.0633e-02,
        1.1416e-01,  2.3971e-02,  2.0903e-02, -5.1662e-02,  6.5563e-02,
        7.1299e-02,  3.7148e-02, -6.1807e-02, -5.0532e-02,  8.6543e-02,
        1.0292e-03, -6.7029e-02,  2.4563e-01,  7.4669e-02,  3.7686e-02,
        1.2103e-02, -9.3398e-02, -5.6562e-02,  1.5354e-01, -6.9452e-03,
        1.0543e-01,  6.0664e-02, -2.7683e-02,  3.9065e-02,  1.6655e-02,
        3.5066e-02,  2.0395e-03,  1.2521e-01, -1.7271e-01,  7.8453e-02,
        5.4305e-02, -4.5131e-03, -1.3459e-01,  1.4629e-02,  6.2562e-02,
        -5.4447e-02, -9.1351e-02,  1.2544e-02, -9.8883e-02,  1.8452e-02,
        -1.0959e-01,  1.0373e-01, -1.6734e-02, -5.3715e-02,  5.9341e-02,
        1.7244e-02,  9.3594e-03, -7.2366e-02,  3.5221e-02,  8.8892e-02,
        1.8154e-02, -2.5936e-02,  2.5103e-02, -1.5706e-03, -2.3203e-02,
        6.0282e-02,  4.4120e-02,  7.8100e-02, -1.9199e-02,  1.0951e-01,
        4.6552e-02, -2.1436e-02, -7.3642e-02,  1.0894e-02,  8.7501e-02,
        1.0981e-01,  8.4440e-02,  5.2145e-02, -9.5016e-02,  1.0015e-01,
        3.6290e-02,  5.2617e-02, -4.0354e-02,  1.2415e-01,  7.2536e-02,
        4.7941e-02, -4.0388e-02,  7.4974e-02, -1.3500e-01, -6.2780e-02,
        -1.6552e-02,  2.1979e-01,  7.9025e-02, -1.2979e-01, -3.4942e-02,
        1.4987e-01,  5.1889e-02, -8.8408e-02, -5.4768e-02,  2.1694e-01,
        8.8110e-02, -1.1882e-01, -4.1771e-03,  1.0846e-01,  6.1961e-02,
        -1.3555e-01,  1.7595e-02,  1.4706e-01, -9.2038e-02, -8.5175e-02,
        2.4067e-02,  1.1237e-01, -6.5955e-03, -5.1394e-02,  4.5167e-02,
        -7.4676e-04,  9.7563e-02, -9.4918e-02,  1.1745e-01,  1.4128e-01,
        1.0100e-01, -3.2949e-02,  1.1276e-01,  8.7178e-02, -2.0350e-02,
        1.2894e-02,  1.0765e-01,  1.4304e-01,  3.8112e-02, -1.2986e-03,
        1.0186e-02,  8.1292e-02, -6.6475e-02, -1.1609e-01,  2.2422e-02,
        1.4820e-01, -2.7653e-02,  2.7165e-03,  8.1329e-02,  9.8114e-02,
        -7.1180e-02, -8.3414e-02,  4.3484e-02,  1.0455e-01, -2.9926e-02,
        4.3446e-02, -8.3353e-03, -2.2674e-02,  9.4784e-02, -1.9939e-01,
        7.2839e-02, -9.2963e-03, -5.5701e-03,  7.6130e-02,  8.0101e-02,
        -2.1230e-01,  2.2734e-01, -6.1781e-02,  1.1155e-01,  8.6552e-02,
        -4.6132e-02,  1.9550e-01,  1.1867e-02, -7.8548e-02,  2.5546e-01,
        6.0738e-02, -1.4519e-01,  1.6836e-01, -1.9101e-01,  5.2130e-02,
        1.5872e-01, -6.8609e-03, -2.3411e-02,  2.6520e-02, -2.5443e-01,
        2.7320e-01, -2.9115e-01, -1.8662e-01,  1.4866e-01,  8.5292e-02,
        -4.3600e-02, -3.1529e-01,  6.1417e-02,  5.1711e-01, -2.4816e-01,
        -5.0890e-02,  3.7280e-01, -5.6082e-02, -1.3906e-02, -2.6031e-01,
        2.4294e-01,  3.3971e-01, -1.2051e-01, -4.8101e-02,  1.6390e-01,
        -1.2178e-01, -1.0079e-01, -1.0571e-01,  2.8626e-01,  2.4938e-01,
        -6.5381e-03, -4.1926e-02,  3.0644e-02, -2.2637e-02,  1.1603e-01,
        -4.1340e-02,  1.5621e-01,  1.9502e-01,  5.1932e-02, -7.6262e-03,
        7.1304e-02, -3.9447e-02, -6.1807e-03, -1.1408e-01,  1.1963e-01,
        2.6262e-02, -2.6018e-03,  2.9274e-02, -1.0414e-02, -1.4110e-01,
        -1.7454e-04, -1.1756e-01,  5.5147e-02,  6.6239e-04,  3.0591e-03,
        -6.8073e-02, -7.5660e-02, -9.8277e-02,  3.7998e-02, -8.5236e-02,
        -6.7221e-03,  4.2883e-02,  1.5194e-02,  1.2104e-02,  5.1716e-02,
        4.1816e-02, -1.1328e-01, -3.4726e-02,  6.5246e-02,  1.2223e-01,
              4.0616e-02, -1.6981e-01, -7.9749e-03, -5.3580e-02,  1.6712e-02,
            -1.2683e-02,  8.5794e-02,  8.6716e-02, -5.8656e-02, -9.3787e-02,
              1.6191e-02,  6.0316e-02,  1.6205e-03, -3.5372e-02,  1.5768e-02,
              7.4478e-03,  1.3563e-01, -2.9925e-02,  1.5215e-01, -1.4565e-01,
            -9.6054e-02, -1.4285e-01,  1.2940e-01,  3.3815e-02,  1.5127e-01,
            -1.1443e-01,  5.9848e-02,  1.8730e-02,  2.9229e-03, -5.6265e-02,
            -4.6073e-03,  1.0128e-01,  1.5969e-01, -1.5640e-02,  1.6034e-02,
              2.4507e-02,  5.9340e-02, -5.3043e-02,  1.3256e-01, -1.1395e-02,
              1.1638e-01, -6.0399e-02,  1.2577e-01,  4.9795e-02, -2.6392e-02,
              1.0630e-01,  1.1669e-01,  1.5480e-01,  5.8913e-02, -7.1682e-02,
              7.4878e-02, -1.5432e-01,  8.0926e-02, -3.7100e-02,  1.1177e-01,
              1.7382e-01,  1.4871e-01, -6.6422e-02, -2.9436e-02, -1.7277e-04,
              4.9111e-02,  2.1679e-02,  1.5835e-01,  1.5669e-01,  2.2191e-02,
            -7.9307e-02,  3.6031e-02, -6.3924e-02,  3.6601e-02, -7.3065e-02,
              5.8594e-02,  6.7023e-02,  1.0599e-01, -8.0725e-03,  7.8630e-02,
              3.7498e-02,  1.2443e-01,  3.5154e-02,  3.5610e-02,  1.6212e-01,
              4.4688e-02, -1.0548e-02,  6.5438e-02, -1.1506e-01,  9.0174e-02,
            -1.1645e-01, -3.1417e-02, -2.8629e-02,  1.5121e-01, -7.1638e-02,
              4.7174e-02,  3.8440e-02, -2.4575e-02,  4.0415e-02,  7.2775e-02,
              1.0270e-01,  2.0521e-02, -8.1070e-02, -1.8576e-02, -1.1709e-02,
              1.6951e-02, -6.7901e-02, -2.5688e-02,  3.3646e-03,  9.8573e-02,
            -8.9805e-02,  1.3856e-01,  1.1948e-01, -2.4009e-02, -3.1434e-02,
            -8.3781e-03,  4.9184e-02, -5.9466e-02, -3.5743e-03, -3.1318e-02,
              6.5777e-02,  2.8122e-02, -9.7184e-03,  6.2525e-02, -5.6562e-02,
            -3.5205e-02, -8.4090e-03,  6.3978e-02,  2.4730e-02,  6.7771e-02,
              1.3228e-03, -8.7624e-02,  7.1398e-02,  2.5049e-02, -4.3390e-02,
              1.0801e-01,  1.3265e-01, -4.1989e-02,  8.3774e-02,  6.1834e-02,
              8.8091e-02, -7.9976e-02,  9.5522e-02, -9.7528e-02,  7.9741e-03,
            -3.1138e-03, -1.1239e-01, -4.2508e-02, -2.4884e-02, -9.7759e-02,
              2.2311e-02,  9.5522e-02,  1.1376e-01, -5.8390e-02, -7.9426e-03,
              4.4883e-04, -4.0148e-02, -5.4248e-02,  5.5175e-02, -2.6321e-02,
            -5.0836e-02, -1.0414e-01, -4.7360e-02, -5.9117e-02, -2.5191e-02,
              2.0448e-02, -3.5207e-02, -1.2244e-02,  9.2717e-02,  7.7700e-03,
              7.3900e-02, -5.3202e-02,  1.0562e-01, -6.6657e-02,  1.1834e-01,
            -8.9330e-02,  1.2970e-01, -3.2017e-02,  1.1808e-02, -6.5092e-02,
            -5.2330e-02, -1.5000e-01, -5.3643e-02, -4.2098e-03,  5.4759e-02,
              5.3037e-02, -3.7751e-03, -9.5301e-02, -1.1004e-01,  5.6406e-02,
            -1.6585e-02, -8.9087e-02,  6.1805e-02,  3.7298e-02, -1.5583e-02,
            -1.4050e-01, -1.2697e-01, -7.7464e-02,  1.2228e-01,  2.6789e-02,
              8.2156e-02, -1.5793e-02,  8.2267e-03, -1.1706e-01, -7.3415e-02,
            -1.3700e-01, -5.1546e-02,  1.3113e-01,  2.4288e-01,  9.2898e-02,
              1.5161e-01, -1.3831e-01,  1.2210e-01, -4.9658e-02,  6.9076e-02,
              1.2594e-01,  9.8611e-02,  1.0050e-01, -3.0958e-01,  1.6703e-01,
              2.4129e-02,  7.4351e-02, -8.0911e-03,  6.8857e-02, -4.1765e-03,
              5.5666e-02, -1.5591e-02,  2.5844e-01,  1.4540e-01, -1.1971e-01,
            -2.8289e-02,  1.9751e-01, -3.5411e-02,  1.2180e-01, -2.7514e-02,
              2.3551e-01,  1.1086e-01,  2.9862e-02, -4.6272e-02,  1.0971e-01,
              6.1909e-02, -8.9400e-02, -1.0646e-01,  1.4377e-02,  1.2627e-02,
            -1.1134e-01,  7.2353e-02,  1.3608e-01, -4.0505e-02,  1.2041e-02,
            -7.4626e-02,  1.6610e-01,  6.7030e-02, -4.0696e-02, -6.2020e-02,
              1.2627e-01,  5.1960e-02, -5.8912e-02, -1.5013e-01,  1.5129e-01,
            -2.9029e-02,  2.1110e-02,  1.5750e-02,  9.0667e-02,  9.4648e-02,
            -9.8365e-02, -1.4926e-01, -4.0850e-02,  8.3820e-02, -5.6868e-02,
              4.6211e-02, -4.1953e-02,  1.0179e-01, -7.6781e-02, -8.2758e-02,
            -2.0356e-02, -6.9059e-02,  4.4790e-02, -9.4805e-02,  4.3704e-02,
              1.1492e-01, -1.1734e-01, -8.4760e-02,  3.4779e-02, -5.7793e-02,
            -7.3981e-02, -2.1620e-02,  6.4432e-02, -9.2588e-02,  4.0752e-02,
              1.0939e-02, -3.2792e-02, -8.8067e-02, -6.6667e-02, -1.4046e-02,
            -2.3648e-02, -2.1793e-03, -9.1755e-02, -4.7974e-02, -3.6707e-02,
              7.2572e-02,  4.8446e-02,  4.0417e-02, -3.8469e-02,  2.0578e-02,
            -3.2275e-02,  1.8828e-02, -2.2082e-01,  2.3115e-02,  2.1845e-02,
              5.6934e-02,  7.2449e-02,  8.5123e-02, -2.3010e-03, -2.3768e-01,
              1.1016e-01,  6.8479e-02,  9.6332e-02,  4.0729e-02,  3.0273e-03,
              7.3083e-02,  1.8665e-02, -4.9542e-02,  3.4268e-02, -5.0363e-03,
              7.4564e-02,  2.5409e-02,  3.7486e-02, -3.8042e-02,  1.0970e-02,
              7.8954e-02, -6.5903e-02,  6.0704e-02, -7.2625e-02, -5.8856e-02,
              6.9896e-02,  6.2326e-02, -8.7207e-02,  1.2877e-01,  3.9966e-02,
              7.6978e-03, -8.3651e-02,  9.3299e-02, -3.9433e-02,  1.8624e-02,
            -1.0529e-02, -9.4462e-03,  9.2863e-03, -9.0465e-02,  4.9828e-02,
              8.1973e-03,  2.6971e-02,  4.3705e-02,  5.4717e-02,  8.0758e-02,
            -8.3899e-02, -6.9695e-02, -3.7033e-03,  1.3303e-01, -6.8633e-02,
              4.0371e-02,  1.3137e-02, -9.7217e-04, -2.7955e-02,  7.5720e-02,
            -2.9383e-02,  8.4149e-02,  2.2966e-02, -7.4450e-02,  6.0269e-02,
            -8.3058e-02, -1.1449e-01, -1.3968e-02, -8.2992e-02, -2.8916e-02,
              6.5801e-02, -1.6218e-01,  1.0791e-01, -5.3454e-02, -8.3989e-02,
            -1.4853e-01, -4.6314e-02, -4.2695e-02, -1.1810e-01, -1.5757e-01,
              2.9158e-02, -8.6346e-02, -2.3653e-02,  3.3644e-02, -9.5622e-02,
              1.5273e-01,  2.6419e-02, -6.3209e-02,  7.8055e-02,  1.0493e-01,
            -9.9438e-02,  4.8132e-02,  3.9687e-02,  1.4297e-01,  5.9426e-02,
            -9.8624e-02, -3.7556e-02,  1.1694e-02, -7.8747e-02, -9.4631e-02,
            -6.9543e-02, -4.9469e-02, -6.3765e-02, -9.5100e-02,  6.5876e-02,
            -8.3477e-02, -1.1371e-01, -4.4046e-02, -1.2667e-01, -5.4221e-02,
              5.1368e-02, -3.4523e-02,  4.0315e-02,  4.3647e-03, -1.2405e-01,
            -1.0154e-01,  1.1966e-02,  1.0692e-01,  1.7358e-02, -2.9893e-02,
              6.9924e-02,  5.2280e-02, -1.6343e-01,  1.6848e-02,  1.6782e-02,
            -8.5838e-03, -1.2482e-01,  6.8840e-02, -8.8188e-03,  8.4010e-02,
            -1.0356e-01, -1.2679e-01, -6.4369e-02, -2.6442e-02, -1.2872e-02,
              4.6903e-01, -2.1675e-01,  9.5438e-02, -4.0170e-02, -1.1908e-01,
            -1.2018e-02, -2.2341e-01, -1.3531e-01,  3.4533e-01, -3.1836e-01,
            -2.7183e-01,  2.8219e-01, -1.1596e-01,  1.0780e-01, -9.1813e-02,
            -2.3353e-01,  7.1555e-04, -8.9021e-02, -1.1562e-02,  1.0067e-01,
            -3.2697e-01,  2.3100e-01,  6.3897e-02, -2.6155e-01, -5.2639e-02,
              4.9378e-02,  2.5724e-01, -1.5045e-01, -5.3245e-01,  1.9100e-01,
              1.4368e-01, -3.5675e-01,  1.4150e-01,  5.9926e-02,  2.3386e-01,
            -3.1134e-01, -2.7105e-01,  1.5849e-01,  2.1288e-01, -1.9729e-01,
              2.4998e-01,  2.3660e-02,  1.9171e-01, -2.2640e-01, -3.0098e-01,
              2.3324e-02,  1.4682e-01, -8.6413e-02,  2.2122e-01, -7.2196e-02,
              1.3375e-01, -6.6774e-02, -5.6371e-02, -9.5056e-02,  1.1511e-01,
            -1.8199e-02,  1.5309e-01, -4.8023e-02,  8.6675e-02, -1.2672e-02,
            -5.6137e-02, -1.3458e-01,  2.0799e-01,  2.3638e-02,  1.0917e-01,
              5.5374e-02,  2.6264e-02, -5.9718e-02, -9.1338e-02,  9.8600e-03,
              5.2510e-02, -4.5860e-03,  2.6550e-01,  8.1814e-02,  5.1785e-02,
              5.1705e-02, -1.7757e-02, -1.4606e-01,  4.2204e-02, -5.9893e-02,
              1.2125e-01, -2.1280e-02,  7.7653e-02,  1.5004e-01, -9.2818e-02,
            -8.1022e-02,  1.2226e-01, -5.8977e-03,  2.2741e-01, -3.6172e-02,
              1.0210e-01, -1.4126e-02, -9.0192e-03,  2.1588e-02,  7.6452e-02,
              5.1958e-02,  7.4058e-02, -7.4242e-02, -9.4049e-02,  5.2550e-02,
              5.1120e-03,  5.7646e-03,  9.0871e-02, -7.3309e-02,  6.8967e-02,
            -1.8310e-02,  4.7871e-04,  1.1872e-01,  3.8000e-02, -1.3948e-01,
              5.9047e-02,  1.9739e-02,  2.3669e-01, -7.2676e-02, -7.4761e-02,
              7.5182e-02, -1.3888e-01,  2.6109e-02,  1.7908e-01, -2.9162e-02,
              1.7398e-01,  3.7199e-03, -5.9019e-02,  1.1308e-01, -3.0477e-02,
            -1.1492e-01,  7.7392e-02, -5.6154e-02,  1.0475e-01,  9.0120e-02,
              3.4569e-02,  8.4953e-02,  3.4021e-02, -4.7317e-02,  1.2391e-02,
              3.2890e-02,  1.5252e-01,  4.8558e-02,  7.6586e-03, -1.2839e-02,
            -1.3381e-01, -2.6165e-03,  1.6470e-01, -2.1899e-03,  1.6546e-01,
            -9.9928e-02,  1.3542e-01, -3.5551e-02, -1.3661e-01, -9.6893e-02,
            -2.1830e-02,  5.4011e-02,  6.7238e-02, -3.4365e-02,  2.3764e-02,
              2.1281e-02, -8.4220e-02, -2.6719e-02,  8.0152e-02,  5.5340e-03,
              9.5291e-02,  2.1704e-02, -5.8132e-02,  7.9584e-02, -6.3257e-02,
            -7.7216e-02,  5.8197e-02, -6.2353e-02,  6.0729e-02, -6.3060e-02,
              1.4102e-01, -3.2774e-02, -1.3886e-01, -2.4735e-02,  4.7092e-02,
              1.0423e-02,  6.9949e-02, -4.2952e-02, -5.6410e-02,  1.3360e-01,
            -2.4455e-02, -7.3602e-02,  9.3503e-02, -2.1326e-02,  6.6389e-02,
            -5.8853e-02, -3.3346e-02,  1.0897e-01,  6.0540e-02, -6.5298e-02,
              1.6776e-01, -9.6535e-03,  1.4244e-02, -4.6271e-02, -2.7794e-02,
              9.2063e-02, -1.0219e-01,  3.9770e-02,  2.4714e-02,  3.5024e-02,
              9.3459e-02,  7.1074e-02,  3.1751e-02,  2.2033e-01,  7.5282e-02,
              8.3184e-02,  7.7514e-02,  1.5851e-01,  1.1971e-01,  7.9869e-02,
              6.9536e-02,  1.5477e-01,  4.3679e-02, -8.0137e-02,  1.4902e-02,
            -4.9241e-02, -6.1250e-02,  1.0761e-01, -9.5076e-02,  2.1021e-01,
              1.3212e-02,  6.3703e-02,  3.1435e-02,  1.1389e-01, -2.2182e-02,
              1.0512e-01, -7.5516e-02,  2.1982e-01,  3.7306e-02, -5.5968e-02,
              1.2479e-01,  3.3257e-02, -3.5911e-02,  1.2254e-01, -6.2926e-02,
              8.0678e-02, -5.1138e-02,  3.1040e-02,  2.5917e-02, -3.3358e-02,
              8.7553e-02, -2.8388e-02,  9.0137e-03,  8.0862e-02,  7.9071e-02,
              1.0418e-02, -6.4527e-02,  1.2703e-02,  5.7424e-02,  1.5156e-01,
            -1.7044e-01,  2.0733e-01, -7.5538e-02,  1.2964e-01,  1.1395e-01,
              1.5596e-01,  1.4023e-01,  1.2173e-01, -9.2280e-02,  5.2472e-02,
              5.4596e-03,  8.3044e-02,  1.6326e-01,  1.9136e-02,  1.3870e-01,
              1.5710e-01, -1.0081e-01,  9.9504e-02, -4.2125e-02,  3.9911e-02,
              1.0060e-01,  1.1001e-01,  9.6343e-02,  2.0495e-02,  2.4867e-01,
              2.6842e-01,  1.6260e-01, -1.0396e-01,  9.7404e-02,  1.7039e-01,
              3.7039e-02,  1.4117e-01,  6.0953e-02, -7.5722e-03,  1.3772e-01,
            -1.0715e-01,  3.1548e-02, -3.5708e-02,  8.1258e-02,  1.4946e-02,
              8.1419e-02,  6.7452e-02, -2.6464e-02, -1.3094e-01, -2.9461e-03,
            -6.8752e-02, -3.1905e-02,  6.9184e-02,  6.4481e-02,  3.6066e-03,
            -2.6460e-02,  5.1730e-02,  4.8658e-02, -9.7063e-02, -2.2756e-02,
            -3.9771e-02,  8.5658e-02,  8.2078e-02, -9.0897e-02,  7.2076e-02,
            -3.1072e-02,  6.2123e-02,  1.0317e-01, -3.8219e-02,  2.4418e-02,
              1.1674e-01,  2.6951e-02, -9.0554e-03, -1.4879e-02, -1.0161e-01,
            -1.0009e-01,  6.8976e-02,  7.3562e-02,  8.4200e-02,  2.4821e-02,
            -7.6470e-02,  1.5990e-02,  7.4515e-02, -7.9665e-02, -2.5337e-02,
              3.4614e-02,  1.5337e-02, -1.1182e-01,  1.7408e-02, -6.3016e-02,
              2.1369e-02, -3.7115e-02, -7.0541e-02, -1.7468e-02,  1.1325e-01,
              2.2119e-02,  3.3018e-02, -3.6097e-02, -4.9431e-02,  3.3581e-02,
              2.5723e-03, -7.2729e-03,  6.8771e-02,  3.3654e-02, -8.6863e-02,
            -2.9262e-02, -6.2440e-02, -8.0945e-02,  3.3624e-02, -6.6546e-02,
              1.4663e-01,  5.1833e-02, -1.2489e-01,  4.3554e-02, -1.0930e-01,
            -7.9697e-02,  1.3299e-01,  6.1668e-02, -6.1160e-02, -6.4506e-02,
            -9.7852e-02,  1.1526e-01,  5.5976e-02, -5.4167e-02,  8.4443e-03,
              1.2535e-02,  1.0632e-01,  7.0747e-02, -1.0532e-01, -4.3804e-02,
              1.6735e-02,  6.1812e-02, -5.0337e-02,  1.5695e-02,  1.2468e-01,
            -2.5058e-02,  4.8903e-02,  5.9603e-02, -4.1040e-02,  4.8376e-02,
              5.8444e-02, -1.8767e-03,  2.2674e-03,  2.3859e-02, -1.0877e-01,
            -1.7292e-02, -2.3487e-02,  7.4783e-02,  7.5769e-02, -8.3392e-02,
              7.0036e-02,  2.2415e-02, -1.0723e-01, -2.7465e-02, -4.4665e-02,
              9.7903e-02,  9.2269e-02, -7.0407e-02,  8.7652e-02, -4.2944e-02,
            -2.0755e-02, -5.7018e-02,  1.9155e-04, -6.9604e-02,  1.4612e-02,
              7.3054e-02,  5.7613e-02,  5.5058e-02,  6.3160e-02,  4.5468e-03,
            -1.1156e-01, -1.2760e-02,  1.1604e-01, -2.4595e-02,  5.8105e-02,
            -5.0932e-02,  4.4218e-02,  4.5950e-02, -2.9372e-02,  4.4456e-02,
              1.4209e-01, -4.3193e-02,  8.9171e-02, -5.9369e-02, -9.6625e-02,
              6.7731e-02, -1.1956e-01,  1.6932e-02, -5.5666e-02, -1.3168e-02,
            -2.5337e-02,  4.5332e-03,  3.4017e-02,  4.7813e-02,  1.2694e-02,
            -7.5281e-02, -3.5088e-02,  1.2683e-02,  1.2737e-01, -6.6315e-02,
            -1.1661e-01,  7.4218e-02,  2.8400e-02,  6.8347e-02, -7.7239e-04,
              5.7625e-02, -3.2279e-02,  3.3784e-03,  1.3307e-02,  6.3826e-02,
            -2.8276e-02, -1.0108e-01,  2.9242e-02, -1.1206e-01,  6.3704e-02,
              4.1783e-02, -6.9932e-02, -3.0800e-02, -1.9521e-03,  8.7765e-02,
              5.4720e-02, -2.2200e-02,  5.9740e-02,  5.0548e-02, -5.5845e-02,
            -7.9796e-02, -2.8764e-02, -9.0440e-02,  9.4673e-02,  1.0997e-02,
              1.1843e-01, -3.7760e-02, -9.9075e-02,  1.0273e-01, -1.0488e-01,
              6.7358e-02,  5.0066e-02,  2.2278e-02, -3.6923e-02, -1.1479e-01,
            -7.2280e-02, -5.7046e-02, -1.1978e-01, -3.1914e-02,  1.3500e-01,
              6.1995e-02,  1.4406e-01,  1.7937e-04, -9.5593e-02,  7.8768e-02,
              7.4737e-02, -7.5276e-02,  3.3103e-02,  6.9092e-03,  1.1189e-01,
            -2.1228e-02, -1.1314e-01, -6.6560e-04, -1.0099e-01,  4.3111e-02,
              1.1144e-01, -8.3729e-03, -3.8782e-02, -6.3983e-02, -4.1989e-02,
              6.3907e-02,  3.6844e-02,  4.2735e-02,  3.1047e-03,  1.9455e-02,
              1.4238e-02, -2.1486e-02, -1.1125e-03, -6.3965e-02,  1.0456e-03,
            -3.4520e-02,  2.5213e-02, -1.2929e-01, -4.4390e-02,  6.5646e-02,
            -1.1880e-01, -1.8523e-02, -6.7303e-02,  2.6651e-02,  1.5447e-02,
            -1.0353e-01,  9.4241e-02,  7.5394e-02, -1.0168e-02, -6.2094e-02,
              4.8123e-02,  6.9236e-03,  4.9062e-02, -3.6224e-02,  4.5542e-02,
            -8.6580e-02,  4.9616e-02,  1.1961e-02, -1.0073e-01,  3.8267e-02,
            -2.2111e-03, -3.1327e-02,  1.0212e-01,  2.6085e-02,  5.8310e-02,
            -8.4113e-02,  2.4106e-02, -5.1611e-02,  3.9121e-02, -1.0157e-01,
            -7.9080e-03,  3.6885e-02, -1.5538e-02,  1.8035e-02,  5.0105e-02,
            -3.3072e-02,  5.4490e-02,  3.2584e-02,  5.2554e-02,  9.3025e-02,
            -1.0974e-01,  6.6027e-02,  1.0867e-02, -3.2455e-02,  1.5650e-02,
            -5.3229e-02,  7.4194e-02, -9.5648e-04, -1.0787e-01, -7.1627e-02,
            -7.1722e-02, -1.4315e-01,  1.1332e-02, -2.3203e-03, -2.3661e-02,
              4.3149e-03,  7.7782e-02, -2.3650e-02,  7.5679e-02, -4.7847e-02,
            -5.5911e-02, -5.9400e-02,  5.6094e-02,  6.7953e-02, -6.0162e-02,
            -4.0544e-02,  7.0815e-02, -1.9943e-02,  1.7096e-02, -7.7106e-02,
              7.4758e-02,  7.1870e-02, -3.9146e-02,  5.7676e-02,  3.9560e-03,
            -3.9351e-02,  9.8312e-02,  7.3016e-02,  7.7428e-02,  7.0312e-02,
            -8.3609e-03,  1.7501e-02,  1.2015e-02, -7.3770e-02,  6.4998e-03,
            -8.6578e-03,  6.8507e-02, -9.7182e-02, -1.3596e-02,  9.4997e-02,
            -1.0089e-01,  2.3749e-02,  8.5448e-03,  3.7071e-02,  1.4926e-01,
              3.9886e-02, -1.2051e-01,  6.9392e-02, -6.8974e-02,  5.4370e-02,
              7.4158e-02,  1.0600e-02, -2.6909e-02, -1.1940e-01, -1.0250e-01,
              1.3155e-01,  3.1805e-02,  5.9337e-03, -4.4821e-02, -6.1695e-02,
              5.3604e-02, -3.2505e-02,  6.1150e-02, -6.6564e-02, -3.8396e-02,
              5.6440e-02,  1.0777e-01, -1.0540e-01,  9.7370e-02, -2.6914e-02,
            -1.0380e-01,  2.5205e-02, -9.8720e-02, -3.7149e-02,  1.4257e-01,
            -1.1442e-01, -3.3889e-02,  4.2435e-02,  2.9419e-02, -3.6049e-02,
            -4.7097e-02, -5.7996e-03, -5.0690e-02, -2.3233e-02,  2.0658e-02,
            -5.2649e-02,  5.1079e-03, -2.0293e-02, -1.1842e-02,  8.4285e-02,
              1.1553e-01,  4.8646e-02,  1.3725e-01, -6.0026e-02,  6.4994e-02,
            -6.4200e-02,  7.8880e-02,  9.2428e-02,  9.0225e-02, -1.3627e-02,
              7.3303e-02, -7.3780e-02, -9.5001e-02, -3.5696e-02,  3.9561e-02,
            -9.3893e-02,  4.4661e-02,  1.1140e-02, -2.7654e-02, -9.6707e-02,
            -2.8152e-02, -5.8457e-02, -7.8203e-03, -8.4278e-02, -3.2286e-02,
            -5.9244e-02,  7.9433e-02, -5.3476e-02, -1.2471e-01, -1.3868e-02,
            -5.3788e-02,  8.1155e-02,  1.1475e-01, -4.9557e-03,  9.6403e-02,
            -1.2784e-01, -3.6224e-02,  7.7204e-02,  1.6368e-02, -4.8735e-02,
              1.0219e-01,  1.8696e-02, -8.6966e-03,  2.2134e-03, -1.1098e-01,
              8.9500e-02,  4.6527e-02, -3.0954e-03,  7.5361e-02, -7.5117e-02,
              5.3508e-03, -4.6828e-02, -9.5007e-02,  9.7412e-03, -2.8272e-02,
            -5.0672e-02,  1.0413e-01,  2.6533e-02,  1.1088e-01, -1.1162e-01,
            -7.4216e-02, -1.6512e-02,  3.1678e-02,  2.0948e-02,  1.2866e-01,
              8.2590e-02,  5.3084e-02, -7.8861e-02, -1.1219e-01,  2.8634e-02,
            -1.1038e-01, -2.9353e-02,  2.7469e-02,  8.9847e-02,  1.1067e-01,
              5.4879e-03, -6.8129e-02,  1.2242e-01, -8.2696e-02, -5.8681e-02,
            -4.9159e-02, -4.0363e-03,  1.3605e-01,  3.0908e-03,  3.9398e-02,
              1.3099e-01, -1.5465e-02, -8.8806e-02,  6.2369e-02, -8.9389e-02,
              1.8797e-02, -1.2086e-01, -4.3107e-02,  1.9766e-02,  6.1447e-02,
            -7.6260e-02,  7.2143e-04,  4.3047e-02,  1.2127e-01, -1.6554e-02,
            -9.7051e-03,  1.6519e-02, -4.1918e-02,  9.5405e-02,  1.2654e-01,
            -7.1088e-03, -4.1557e-02, -8.6654e-02, -8.5658e-02,  1.3005e-01,
            -4.8636e-02,  9.3913e-02,  8.3051e-02,  6.4979e-02, -3.3416e-02,
            -2.2682e-02,  6.7691e-03, -5.7096e-02, -1.3359e-03,  5.2139e-02,
              2.9838e-02, -1.6004e-02,  1.4659e-01,  1.4625e-02, -6.0119e-02,
            -6.4404e-02, -1.2599e-01,  2.1606e-02, -6.5654e-02,  7.6388e-02,
              8.2626e-02, -8.1848e-02, -3.3329e-03,  1.2768e-01,  6.1630e-02,
            -9.3729e-03,  4.0998e-02,  9.2552e-03,  1.0977e-01, -1.5308e-02,
            7.6515e-02, -1.3918e-01, -1.0367e-01, -2.1634e-01,  3.5751e-02,
            -2.4322e-01,  1.6196e-01, -1.3591e-01,  6.0724e-02, -1.0443e-01,
            -7.9525e-02, -3.0011e-02, -6.9599e-02,  3.2344e-01, -6.4798e-02,
            -2.2197e-01,  4.2205e-02, -1.9122e-01, -9.4245e-02, -1.0879e-02,
              2.0414e-02,  1.2447e-01, -1.1213e-01, -1.5095e-01,  1.4274e-01,
            -3.6553e-02, -9.2618e-02, -6.4804e-02, -1.0656e-01,  2.4676e-02,
            -1.7816e-01, -4.8296e-02,  1.0817e-01, -4.3595e-02, -1.8003e-01,
            -1.1778e-01,  1.8370e-02,  5.9441e-02, -1.3649e-01, -9.9829e-02,
              1.5039e-01, -3.6058e-02, -1.4825e-01, -9.7668e-02, -1.1678e-01,
              1.4145e-01, -1.7289e-01,  7.5917e-04,  1.1926e-01,  8.2191e-03,
            -7.7691e-02, -1.0071e-01, -5.2194e-02,  3.0219e-02, -7.0353e-02,
            -1.4426e-01,  2.6120e-02, -5.9186e-02,  1.8030e-02, -2.3247e-02,
              4.3073e-02, -1.0278e-03, -4.2271e-02,  8.8832e-02,  1.9587e-02,
              9.9720e-02,  9.8200e-02, -1.3503e-01, -8.0214e-03,  1.5066e-01,
            -1.1750e-01,  8.9012e-02,  1.0246e-02, -4.9070e-02,  8.4660e-02,
            -6.3706e-02,  1.4340e-02,  1.0010e-01, -1.0039e-02, -3.8728e-02,
            -1.1400e-01, -7.0841e-02,  8.7064e-02, -2.9659e-02, -9.6513e-03,
              1.3079e-01, -1.3481e-02,  1.1742e-01, -3.3155e-02, -3.8956e-02,
              2.6631e-03, -4.2409e-02,  2.4120e-02,  3.2400e-02,  1.1352e-01,
            -6.1110e-02, -4.8890e-02,  2.4490e-02,  1.1812e-01, -1.6352e-02,
            -6.6991e-02, -2.1871e-02,  8.9300e-02,  2.6982e-03, -8.4286e-02,
            -5.8757e-02, -3.2674e-02, -9.4224e-02, -5.4508e-02,  4.6180e-02,
            -2.2403e-02, -5.8081e-02, -8.9096e-02, -5.1008e-02, -4.3694e-02,
            -3.2182e-03, -5.1309e-02, -5.4992e-03,  1.6391e-03,  5.9364e-02,
            -1.8344e-02,  2.4388e-02,  1.6015e-02, -9.9876e-02, -4.1761e-02,
              5.4623e-02, -4.4953e-02,  8.0025e-02, -1.6213e-02, -1.0216e-01,
              6.6124e-02, -5.5227e-02,  1.0412e-01, -6.0492e-02,  6.8437e-02,
              1.0311e-01, -6.1127e-02, -1.9262e-02, -3.4359e-02,  1.0904e-01,
              8.4651e-02,  1.6309e-02, -1.1538e-01, -5.1454e-02,  6.5397e-02,
            -2.0597e-02,  1.8118e-02, -9.2682e-04, -1.2183e-02,  7.7309e-02,
              4.9310e-02, -3.7224e-02,  1.1139e-01, -1.2175e-01, -4.9380e-03,
              2.1622e-02,  1.3623e-02, -1.1243e-01,  2.3592e-02, -5.4837e-02,
            -6.6131e-02, -1.3031e-01,  2.5274e-02,  6.3082e-02,  8.8875e-03,
              7.3504e-02, -1.1829e-01,  6.8834e-02, -4.3228e-02, -1.1506e-01,
              2.4134e-02,  1.5144e-01, -6.9421e-02,  4.3700e-03, -6.4139e-02,
              2.8562e-02, -6.0563e-02, -8.1795e-02,  6.2583e-02,  1.2625e-01,
            -7.1956e-02, -3.9157e-02, -5.8653e-02, -6.5692e-02,  2.4563e-03,
              3.9400e-03, -8.2012e-02,  1.5250e-01,  5.9528e-02, -2.0231e-02,
              1.1280e-01,  5.9090e-02,  9.6832e-03, -1.6570e-01, -1.0439e-01,
              7.1690e-02, -1.1524e-01,  1.6130e-02, -4.4965e-02,  4.1176e-02,
              3.4780e-02, -1.3866e-01,  4.4852e-02,  7.2795e-02,  6.5038e-02,
            -2.8672e-02,  9.1546e-02, -2.7041e-02,  8.4281e-02, -8.0325e-02,
            -1.4031e-02,  5.7617e-02, -4.6177e-02,  5.2919e-02, -1.6361e-02,
              1.0924e-01,  6.9596e-02,  5.0202e-02,  4.5842e-02, -6.5208e-03,
              4.0713e-02, -4.3714e-02,  7.8847e-02,  1.3773e-01, -5.0116e-04,
              2.7566e-02, -1.8663e-02, -6.4779e-02, -1.0061e-02, -1.9921e-01,
            -1.2566e-02, -1.8767e-03,  3.4328e-02,  1.1856e-01,  1.0283e-01,
            -4.3597e-01,  2.4901e-01, -2.5684e-01,  8.5997e-02,  1.4892e-01,
              4.4092e-02,  2.5745e-01,  1.3492e-01, -3.2225e-01,  2.0076e-01,
              2.1333e-01, -2.4794e-01,  1.2968e-02, -1.1751e-01,  2.5512e-01,
              1.7069e-01,  9.0557e-04,  5.8195e-02, -2.1816e-02, -4.3724e-02,
              3.7095e-01, -2.8327e-01, -1.1242e-01,  2.9377e-01,  1.8637e-02,
            -7.3283e-02, -2.4233e-01,  3.5843e-02,  4.8601e-01, -1.6154e-01,
            -2.5391e-01,  4.2367e-01, -1.5711e-01, -9.8143e-02, -1.7120e-01,
              1.9856e-01,  2.4931e-01, -8.1164e-02, -1.4379e-01,  2.1988e-01,
            -1.2329e-01, -1.2217e-02, -2.3404e-01,  1.9587e-01,  3.3674e-01,
            -4.9996e-02, -1.9605e-01,  1.4826e-01, -2.3242e-01, -5.8647e-02,
            -7.7621e-02,  1.1181e-01,  2.3857e-01,  2.5967e-02, -2.0066e-01,
              1.1871e-01, -1.5612e-01,  7.8822e-02, -1.0952e-01,  3.0274e-02,
              3.3147e-02,  1.0687e-01, -4.6033e-02, -6.4022e-02, -9.1256e-02,
            -1.4430e-02, -6.6509e-02, -3.6791e-02,  1.0131e-01, -7.4608e-04,
            -1.2482e-01,  9.1138e-02, -2.0989e-01,  3.4613e-02, -8.5315e-02,
            -4.5531e-02,  3.2120e-02,  9.1347e-02, -3.0064e-02,  4.5652e-02,
            -1.9056e-01,  8.0348e-02,  6.1508e-02,  3.8272e-02,  1.5204e-02,
              8.6202e-03, -5.7834e-02,  7.9164e-02, -2.4772e-01, -2.3317e-02,
              1.3332e-02, -7.7902e-03,  6.7871e-03, -7.8247e-03,  2.3579e-02,
            -1.5241e-02, -1.6476e-01,  1.0904e-01, -1.1154e-01, -7.2843e-02,
              6.3725e-02,  6.0104e-02, -5.4580e-02, -6.8660e-02, -2.1152e-01,
              4.0071e-02,  9.8650e-02, -6.4215e-02,  1.4103e-01,  3.3695e-02,
            -9.4707e-02, -3.8134e-02, -1.1050e-01,  7.1547e-02, -1.4126e-01,
              2.1280e-02,  1.5063e-01,  2.4748e-02, -1.5502e-01,  8.7909e-02,
            -1.4730e-01,  8.6177e-02, -6.8653e-02,  2.1905e-02,  1.0310e-01,
              1.0632e-01,  6.1266e-04, -5.9386e-02, -6.2346e-02, -7.0430e-03,
            -1.0143e-01,  2.7589e-02,  1.5624e-01, -1.3035e-04,  4.6077e-02,
              8.5749e-03, -1.1441e-01, -6.2927e-02, -1.6163e-02, -7.7475e-02,
            -2.3493e-02,  9.8082e-02, -8.8961e-02,  1.8917e-02, -7.5161e-02,
              9.5253e-03,  7.3687e-04, -1.7093e-01,  7.8463e-02, -7.7237e-02,
            -8.7344e-02, -1.6117e-02, -1.4652e-01,  4.1430e-02,  5.7131e-02,
            -1.4304e-01,  2.9369e-02,  4.0159e-02,  2.9860e-02, -6.2004e-02,
            -1.2847e-01,  3.2536e-02,  9.7078e-02, -1.2244e-01,  1.1847e-01,
            -2.9512e-02, -1.6995e-01,  2.5927e-02,  5.1752e-02,  2.7526e-03,
            -6.4684e-02,  4.8365e-02, -9.9372e-03,  2.7487e-02, -6.5664e-02,
            -6.7987e-03, -1.2517e-01, -3.8710e-02,  2.3274e-02, -8.8952e-02,
            -6.2676e-02, -9.0648e-04, -3.0174e-02, -5.6764e-02, -1.4255e-01,
            -9.5004e-03, -2.4822e-02, -1.8960e-01, -5.7888e-02,  7.4886e-02,
            -6.2771e-02,  2.8990e-02, -5.7221e-02, -2.1748e-02, -7.3054e-02,
            -1.8218e-01,  1.0848e-02,  7.6243e-02, -1.4817e-01, -9.5578e-02,
            -9.9551e-02,  6.2655e-02, -7.0172e-02, -7.8319e-02,  3.7696e-02,
              5.3877e-02, -2.3504e-02,  1.8628e-02, -9.7666e-02,  5.3329e-02,
              1.3058e-01, -5.9768e-02, -2.4504e-02, -4.9818e-02, -2.7348e-03,
              1.8927e-02, -4.5926e-02,  3.9620e-03, -4.7615e-02, -1.6334e-01,
            -5.7916e-02, -8.1471e-02,  1.1993e-02,  4.2003e-02, -6.2102e-02,
            -1.1534e-01,  7.1460e-02, -1.5454e-01, -3.2135e-02, -2.1021e-02,
            -9.9645e-02,  5.6068e-02, -1.2707e-01, -4.9616e-02, -6.3344e-03,
            -7.2740e-02,  2.2645e-02,  5.7402e-02, -3.9271e-02, -4.0162e-03,
              2.8396e-02, -3.2790e-02,  3.2469e-02, -2.2169e-01, -1.9332e-02,
              3.0728e-02, -9.2548e-02, -2.2726e-02, -1.2277e-01, -3.7850e-02,
              1.0180e-01, -2.5428e-01, -7.8112e-02,  3.7890e-02,  1.0573e-02,
            -1.4481e-01, -8.1341e-02, -2.2182e-01, -5.4260e-03, -7.1496e-02,
            -7.0257e-02,  2.7716e-02, -1.5780e-01, -1.6009e-01, -3.4131e-02,
            -9.2518e-02,  1.9106e-01, -1.7254e-01, -6.1198e-02,  9.4786e-02,
            -5.2387e-02, -1.3634e-01, -5.5960e-02, -5.3275e-02, -2.0290e-01,
            -7.1916e-02,  1.7168e-02,  5.7686e-02, -6.4331e-02, -3.7317e-02,
            -1.0174e-01,  3.3113e-02,  9.2596e-02, -1.5806e-01, -1.6869e-01,
            1.1310e-01,  1.0350e-01, -1.6095e-02,  6.1757e-02, -8.5903e-02,
            -1.7188e-01,  6.8876e-02, -1.9303e-02,  6.8412e-02,  3.5576e-03,
              5.2375e-03, -3.3381e-02, -9.1357e-02,  1.2731e-04, -4.9133e-02,
              6.9886e-02,  3.8537e-02,  3.1709e-02, -2.3087e-02, -3.6761e-03,
            -1.0285e-01, -5.4363e-02, -7.1968e-02, -3.9670e-02, -4.3383e-02,
              4.4077e-03,  6.5057e-02, -5.3905e-03, -9.4842e-02,  1.2072e-02,
            -2.5786e-02, -9.2739e-05,  6.1917e-02, -5.5368e-02,  1.0180e-01,
              2.2202e-03, -6.6356e-02,  5.1579e-02, -1.4713e-01, -5.6046e-02,
            -2.3404e-02,  5.4412e-03, -1.1125e-02,  1.9983e-02, -9.5199e-02,
            -1.6027e-02, -2.4533e-02, -3.7901e-03,  1.0336e-02,  8.5708e-02,
            -1.2713e-02,  1.0682e-01,  2.0216e-02, -2.5627e-02, -6.3370e-02,
              8.2286e-02,  8.8476e-02, -1.0332e-01,  1.0924e-02, -3.9826e-02,
            -1.0874e-01, -7.2343e-02, -1.1220e-01,  1.6817e-02,  8.9951e-02,
              1.4740e-02,  6.0156e-02,  1.1061e-01, -9.0115e-02, -6.8628e-02,
            -9.0449e-02, -8.5108e-03,  4.2488e-02, -5.6517e-02, -7.1703e-02,
              8.4495e-02, -5.9129e-02,  2.3764e-02, -8.7874e-02,  1.2409e-01,
            -3.5155e-02, -2.9004e-02,  2.3034e-02, -2.9432e-02,  3.3229e-02,
            -1.0901e-01, -7.4231e-02, -4.1709e-02,  8.4087e-02, -2.0974e-02,
              1.3484e-01, -1.0048e-01, -3.4487e-02, -8.4470e-02, -9.6728e-02,
            -2.6651e-03, -8.3155e-02,  7.0083e-02,  6.7965e-03, -3.7837e-02,
            -1.4454e-01, -3.6471e-02,  1.1828e-02, -1.8651e-02, -4.8532e-02,
              4.9734e-02, -1.2102e-02,  1.4287e-02, -2.0709e-02, -2.0724e-02,
            -2.9384e-02, -5.7269e-02, -1.5972e-02, -4.9236e-04, -5.0947e-02,
            -1.2003e-01, -1.5216e-02, -5.4552e-02, -8.7676e-02, -9.1148e-03,
              2.4523e-03, -4.8869e-02,  1.3472e-01,  2.6542e-02, -1.5690e-02,
            -1.0459e-01, -3.2989e-02, -4.0505e-02,  8.2298e-02, -2.4421e-02,
              5.5641e-02, -5.1350e-02, -8.7766e-02,  4.4231e-02, -2.4077e-02,
              9.5315e-02,  6.8549e-02, -1.2543e-01,  5.6866e-02,  5.1629e-02,
            -1.5788e-02, -5.3178e-02,  5.9977e-02, -3.9043e-02,  5.7776e-02,
              6.2735e-02,  8.7385e-02, -4.6598e-03, -1.5733e-01,  6.9597e-02,
            -8.9054e-02,  1.1762e-01,  6.8618e-02,  1.4488e-02, -6.3862e-02,
              6.3706e-02,  2.8890e-03,  2.8383e-02, -7.8151e-02, -4.8217e-02,
            -7.7070e-02,  1.7756e-02,  2.8391e-02, -5.2192e-02,  3.8298e-02,
            -3.8596e-02, -7.3234e-02,  1.9978e-02, -7.6118e-03,  5.9609e-02,
            -3.2299e-04,  1.2169e-02,  5.6994e-02,  7.8222e-02,  1.4869e-02,
              1.2338e-03, -5.6828e-02,  5.1318e-02, -7.0680e-02,  6.7435e-02,
            -1.0457e-01,  5.9622e-02,  1.6376e-03,  9.1226e-02, -5.0982e-02,
            -8.1658e-02,  2.4895e-02, -8.5388e-02,  4.5457e-02,  1.0498e-01,
            -1.5677e-01,  4.9412e-02, -4.8787e-02,  1.0515e-01, -2.2764e-02,
              2.4248e-02, -1.5319e-02,  4.4025e-02, -1.1693e-01, -9.7028e-02,
            -3.7138e-02, -9.6439e-02,  9.7701e-02, -1.2916e-02, -3.7019e-02,
            -5.4216e-02, -6.0635e-02,  6.3196e-02,  3.7373e-02,  7.0999e-02,
              5.2114e-02, -6.8686e-02, -8.2306e-02,  4.8762e-02, -7.3009e-02,
              5.2404e-02,  8.7635e-03,  1.6657e-02, -3.4883e-02, -8.2427e-02,
              6.0616e-02,  1.0750e-01, -1.4073e-01,  7.1584e-02,  7.0385e-02,
            -8.1987e-02, -3.3062e-02, -8.2914e-02, -9.2677e-02,  8.0525e-02,
            -9.7988e-02,  7.2225e-02,  4.5097e-02,  5.5531e-02,  1.0781e-01,
              8.1257e-02,  2.9923e-02,  1.4231e-01, -2.1839e-01, -6.8856e-03,
              5.3955e-02, -1.3546e-01, -2.9176e-02,  2.8299e-02, -1.3787e-03,
            -7.5824e-02, -7.7660e-02, -5.3581e-02,  1.5477e-01, -1.2105e-01,
            -1.1262e-01, -6.1106e-02, -8.3232e-02, -2.9135e-02, -6.6622e-02,
              5.4544e-02, -6.6821e-02, -8.0428e-02, -5.2182e-02, -3.7606e-02,
              2.5796e-02,  7.3446e-02, -2.7200e-01, -1.0255e-01,  4.8101e-02,
            -2.9228e-02, -1.2362e-01,  5.4874e-02, -5.6126e-02,  1.0827e-01,
            -1.9235e-01, -6.8268e-02, -1.1164e-01, -4.4674e-02,  1.3034e-01,
            -1.2554e-01, -1.3284e-01, -1.6763e-01, -6.5628e-02, -6.7076e-02,
            -5.9364e-02,  3.7138e-02,  1.3841e-02, -1.6032e-01,  2.4213e-03,
              1.3582e-02,  1.0141e-01,  2.3629e-02, -1.1315e-02, -7.3706e-02,
              9.3105e-02, -1.1102e-01, -2.2478e-02, -4.3280e-02,  2.1124e-02,
              1.5493e-02,  8.4535e-02,  2.8458e-02, -3.2667e-02, -1.1672e-01,
            -1.2217e-01,  3.0692e-02,  9.0925e-02,  1.0272e-01, -3.8693e-02,
            -4.6717e-02,  1.4877e-02, -7.1210e-02, -5.2779e-03, -7.2520e-02,
              7.7027e-02, -1.8693e-02, -6.7019e-03,  8.4939e-02, -1.6344e-02,
            -2.9089e-02, -1.5498e-02, -6.2454e-02,  5.2965e-02,  6.2286e-02,
            -7.3775e-02,  7.5618e-02, -4.1903e-02, -8.6526e-02, -7.5241e-02,
              3.9393e-02, -5.4177e-02,  3.6599e-02,  5.6599e-02, -3.0949e-02,
              3.4844e-04, -6.2384e-02, -5.4297e-02, -3.5060e-02,  6.5373e-02,
              3.8928e-02,  1.8766e-02, -8.1248e-02,  2.7957e-02, -1.2537e-01,
            -8.5374e-03, -1.1904e-01,  2.5221e-02, -4.1122e-02, -3.6762e-03,
              5.2252e-03, -3.1131e-02, -1.5097e-01, -5.0933e-02, -4.8221e-02,
              6.2007e-02,  1.1960e-01, -8.6366e-02, -4.2341e-02, -7.9627e-02,
            -2.3212e-01,  1.3339e-02, -9.4836e-02,  5.8953e-02, -2.7893e-03,
            -8.2485e-02,  1.3222e-02, -5.0232e-02, -1.3471e-01,  2.4422e-02,
            -8.0438e-02, -2.3330e-02, -2.2873e-02,  5.9917e-02, -4.2077e-02,
              5.0903e-02, -1.3979e-01, -9.7421e-02, -9.2959e-02,  5.6706e-02,
            -6.4123e-02,  1.7199e-02, -3.8036e-02, -3.0759e-03, -1.4262e-01,
            -8.2551e-02, -9.9006e-02, -1.1606e-01, -4.4688e-02, -9.8812e-03,
            -4.6098e-02,  5.0927e-02, -8.3316e-02, -1.1903e-01, -7.0699e-02,
              7.3392e-02, -4.0709e-02,  3.2710e-02, -5.6699e-02, -7.3084e-02,
            -9.2721e-02, -8.3381e-02, -3.9395e-02, -5.8804e-02,  8.4774e-02,
              2.4243e-02,  2.2037e-02,  1.1591e-01, -1.2096e-01,  3.0304e-02,
              4.5810e-02,  4.8177e-02,  6.3117e-02, -5.6433e-02,  8.4970e-03,
              6.7865e-02, -6.3610e-02, -4.2340e-04,  8.0022e-02, -5.8639e-02,
            -7.7617e-02,  7.3675e-02, -4.0062e-02,  1.0846e-02, -1.8207e-02,
            -2.0217e-03, -3.7917e-02, -1.0752e-01, -1.0816e-02, -3.8342e-02,
            -1.7299e-02, -9.9146e-03,  1.8047e-02,  1.1041e-02,  4.1269e-02,
            -8.6511e-02,  2.4336e-02, -5.4757e-02,  3.0708e-02,  9.5416e-03,
              2.3734e-02, -4.2589e-02,  1.4996e-01, -8.0863e-02, -6.8660e-02,
              4.4415e-02, -3.5137e-02, -4.9339e-02, -3.7346e-02, -7.4723e-04,
              5.4080e-02, -5.7351e-02,  3.0366e-02, -4.0901e-02,  8.6937e-02,
            -8.5655e-02,  2.0959e-02, -9.5650e-02,  1.3905e-01, -6.2777e-02,
            -4.2752e-02,  7.5764e-02,  1.9376e-02,  6.3845e-02,  7.6119e-02,
            -3.3671e-02,  3.4649e-02, -1.1081e-01, -4.9034e-02,  4.6912e-02,
            -2.0156e-02,  6.7886e-02,  2.2766e-02, -8.3114e-02,  1.1435e-01,
            -7.0811e-02, -3.6518e-03, -3.3262e-02, -4.9163e-02, -4.9434e-03,
            -3.0728e-02,  1.3942e-02,  2.6235e-02, -1.7890e-01, -5.9019e-02,
            -9.1809e-02,  7.3859e-02,  1.0471e-01, -3.1963e-02, -5.9802e-02,
              8.2455e-02, -4.9665e-02,  3.2447e-02, -1.2888e-02, -1.1230e-01,
              3.6447e-02, -1.8081e-02, -1.2732e-02,  1.6205e-01, -1.3202e-01,
              5.8079e-02,  7.4058e-02,  1.7916e-02,  8.5125e-02, -5.6633e-02,
            -1.4935e-01,  1.6296e-01, -7.1574e-02, -6.2741e-02, -8.0723e-02,
            -6.8298e-02, -9.9055e-03,  1.5247e-01, -1.1970e-01,  1.2120e-01,
            -1.1677e-02, -9.5713e-02, -4.5226e-02, -1.9017e-02,  5.8397e-02,
            -3.6277e-02, -6.3984e-02,  8.7861e-02, -8.5468e-02,  2.2545e-02,
            1.4694e-01, -1.1482e-01, -3.2486e-02, -1.4007e-01,  4.4056e-03,
            -1.7020e-01,  1.3030e-01, -1.2543e-01,  4.5337e-02, -1.7129e-01,
            -1.4520e-01, -4.5579e-03,  4.2749e-02,  2.3723e-01, -1.1557e-01,
            -2.1327e-01,  1.1514e-01, -1.4571e-01, -9.4681e-02, -7.2230e-02,
            -4.4661e-02,  1.4817e-01, -2.6988e-01, -1.7659e-01,  2.9649e-02,
            -7.8435e-02, -1.2228e-01,  9.0706e-03,  5.5233e-02,  1.1873e-01,
            -1.6168e-01, -1.4362e-01,  3.4879e-02, -1.2916e-02, -1.3408e-01,
            -3.6172e-02,  1.2854e-02,  2.1150e-02, -1.9010e-01, -1.2652e-01,
              1.4319e-01,  4.0613e-02, -9.9690e-02, -7.4358e-02, -6.5015e-02,
              1.3746e-01, -8.8734e-02, -3.4031e-02, -2.5049e-02, -5.9464e-02,
              2.3769e-02,  6.5943e-02, -2.0488e-02,  9.8957e-02, -8.0077e-02,
            -1.5342e-01,  1.0772e-03, -5.0047e-02, -8.5597e-02, -6.8210e-02,
              1.1924e-03,  1.9139e-01, -1.0360e-01, -5.9489e-02,  6.4958e-02,
              7.2488e-02, -6.4907e-02, -2.6878e-02,  3.4290e-02,  1.6095e-01,
              3.9518e-02, -4.4774e-02,  7.2106e-02, -3.2460e-02,  5.1740e-02,
            -1.3079e-01, -3.3872e-03,  1.9583e-02,  6.7659e-02, -8.8117e-02,
            -2.0815e-02,  4.3330e-02, -1.0041e-02, -5.1090e-02,  4.3048e-02,
              1.3153e-01,  8.5126e-02,  7.1243e-02,  5.1732e-02, -9.9511e-02,
              5.7172e-02,  2.2141e-02, -5.0754e-02,  1.4552e-01,  1.0820e-01,
              1.1854e-01,  1.1662e-01,  4.0578e-03,  5.4045e-02, -4.2116e-02,
              3.2279e-02,  4.7274e-02,  1.0774e-01, -1.8451e-02, -5.3882e-02,
            -3.6770e-03, -3.9382e-02,  5.4088e-02,  1.1684e-01,  2.3312e-01,
            -1.7955e-01,  9.7041e-02,  6.3439e-03, -2.8665e-03,  2.2676e-02,
              6.0438e-02,  1.1247e-01, -4.8734e-02, -1.3288e-01, -3.5924e-02,
            -4.1856e-02, -1.1085e-01, -1.9318e-02,  2.4350e-02, -3.8819e-02,
            -1.0919e-01,  3.0096e-04,  1.0462e-02, -2.1883e-02, -6.0190e-02,
              7.3734e-02,  8.8401e-02, -3.6283e-02, -1.2167e-01, -9.6589e-02,
              4.3564e-02, -2.1399e-02,  2.5808e-02,  4.5236e-02,  1.5368e-02,
              8.4497e-02,  9.4931e-02,  1.0350e-01, -1.8722e-03, -1.3911e-02,
            -6.1797e-02, -2.9656e-02,  1.8022e-01,  1.8101e-02, -9.6863e-02,
              1.2150e-02,  9.8821e-02, -1.8570e-02,  1.7776e-02,  6.9700e-02,
              7.4127e-02,  1.9828e-02,  1.4326e-02, -2.3613e-02,  9.0537e-02,
              6.5474e-02, -1.2568e-01,  4.1390e-02,  1.2301e-01,  1.3082e-02,
              3.9740e-02, -2.3750e-02,  9.3735e-02,  7.3900e-02, -9.1914e-02,
            -7.9121e-02,  1.8594e-01, -5.1451e-02, -2.3144e-02,  3.1215e-02,
              8.7253e-02,  4.3014e-02, -8.5031e-02,  4.9841e-02,  1.2197e-01,
            -1.2157e-02,  9.2864e-03, -3.7891e-03,  1.9942e-02,  1.2200e-01,
            -1.1990e-01, -1.9697e-02,  2.4803e-01, -7.1144e-02, -9.8770e-02,
              1.6699e-01, -7.5809e-03, -2.2187e-02, -9.7369e-02,  9.7975e-02,
              1.8022e-01,  9.0698e-02, -2.2731e-02,  6.2846e-02,  1.2062e-02,
              1.7760e-01, -1.1502e-01, -1.0148e-02,  4.3846e-02, -1.0703e-02,
              1.0282e-01,  4.2410e-02, -2.1776e-02,  6.4656e-02, -1.4586e-01,
              1.2743e-01,  7.6408e-02, -4.3166e-02, -1.0152e-01,  1.7107e-02,
            -1.5500e-02,  2.6546e-02, -4.8623e-03,  1.3161e-01,  1.2092e-01,
              4.0793e-02, -1.3768e-01,  1.3718e-01,  8.8968e-02,  7.9941e-02,
            -7.3276e-02,  8.8904e-02, -2.2835e-02,  9.2099e-02, -1.2713e-01,
              1.3924e-01,  1.1427e-01,  1.4169e-01,  2.5010e-02,  1.2883e-01,
            -5.1748e-01,  2.2305e-01, -3.0612e-01,  9.3815e-03,  1.8907e-02,
              6.3634e-02,  3.0832e-01,  1.5727e-01, -4.1966e-01,  2.5796e-01,
              2.7880e-01, -2.2659e-01,  5.3425e-02, -2.6115e-01,  8.3426e-02,
              2.5949e-01, -4.4887e-02,  1.4448e-01, -2.3874e-02, -1.1320e-01,
              3.7159e-01, -2.4567e-01, -6.5064e-02,  3.0615e-01,  8.4243e-03,
            -9.5900e-02, -4.1061e-01,  1.2883e-01,  5.4905e-01, -8.9191e-02,
            -2.6820e-01,  3.6353e-01, -1.6872e-01,  3.2548e-03, -2.8599e-01,
              3.1371e-01,  3.9702e-01, -1.0707e-01, -8.2707e-02,  2.9747e-01,
            -3.1731e-01, -6.2928e-02, -2.1632e-01,  1.9065e-01,  3.9008e-01,
              3.4340e-02, -2.0246e-01,  1.1753e-01, -2.1904e-01,  3.5758e-02,
              3.2719e-02,  1.9350e-01,  2.3757e-01, -7.1338e-02, -2.2339e-01,
            -1.1121e-01, -1.0953e-01,  6.1375e-02, -1.6399e-02,  7.9397e-02,
              1.1720e-01, -1.8674e-02, -3.9915e-02, -6.5969e-04, -1.6857e-01,
            -5.7544e-02,  1.8933e-02,  2.4393e-02,  5.5715e-02,  4.1808e-02,
            -5.4861e-02, -1.1999e-01, -2.2609e-01, -5.6196e-02,  6.9614e-02,
              4.4416e-03,  4.2373e-02,  2.5411e-02, -3.4968e-02, -1.2244e-02,
            -2.1690e-01,  9.1957e-02,  5.0897e-02,  1.4898e-02,  9.8148e-02,
              7.3892e-02, -4.6015e-02,  1.6051e-02, -1.5808e-01, -8.8409e-02,
            -2.9453e-02, -6.9137e-02, -6.8894e-02,  1.5640e-01, -1.4735e-01,
              6.0059e-03, -2.5443e-01,  8.2876e-02, -3.9413e-03, -1.6227e-02,
              2.7833e-02,  7.0865e-02, -6.3865e-02, -2.1922e-02, -2.4434e-01,
              9.7811e-02,  7.4428e-02, -3.8957e-02, -1.1190e-02,  3.6410e-02,
            -6.3702e-02,  9.7090e-02, -1.4427e-01,  2.5617e-02, -6.3974e-02,
            -3.1560e-02,  9.6445e-02, -2.3528e-02, -6.5691e-02, -6.7957e-02,
            -2.3537e-01,  3.9482e-02,  8.7382e-02, -1.4763e-01,  9.9648e-02,
              2.0844e-02, -1.6746e-01, -4.5679e-03, -2.6528e-01,  2.7816e-02,
              4.0137e-02, -8.4471e-03,  9.2640e-02,  9.9279e-02, -1.9270e-02,
            -5.7749e-02, -2.1022e-01, -1.8707e-02,  5.4164e-02, -2.4947e-02,
              6.6969e-02,  6.0207e-02,  2.2825e-02, -6.2951e-02, -2.6796e-01,
            -3.0328e-02, -2.0909e-02, -1.9675e-02,  1.5339e-01,  2.8461e-02,
            -9.8577e-02,  5.8546e-02, -1.1713e-01,  2.1986e-02,  4.0956e-02,
            -9.9883e-02,  8.6790e-02, -8.4053e-03, -1.1625e-01, -7.2914e-03,
            -1.7785e-01,  8.1314e-02,  1.2148e-01, -1.2181e-02,  1.1385e-01,
            -3.9015e-04, -1.2758e-01, -6.6785e-02, -1.3901e-01, -5.7127e-02,
            -1.1426e-01,  7.4182e-03,  1.2899e-01,  7.2487e-03, -5.8978e-02,
              3.2678e-02, -1.2951e-01, -2.6544e-02,  3.9773e-02, -2.8341e-02,
            -6.0281e-02,  8.8631e-02, -1.4205e-01,  6.9973e-02, -8.7342e-02,
            -5.2828e-02,  8.4182e-02, -1.9556e-01, -2.4747e-02, -7.2481e-05,
            -4.5227e-02, -1.2653e-01, -1.0213e-01, -8.5204e-02, -5.2239e-03,
            -1.6947e-01, -1.2677e-03,  2.7676e-02,  4.6579e-02,  1.7338e-03,
            -1.1451e-01, -9.2038e-02,  1.0610e-01, -2.1021e-01,  1.1186e-01,
            -2.1053e-02,  5.6779e-02,  1.8243e-02,  3.7942e-03, -1.8258e-02,
            -2.1190e-02, -2.0124e-01, -7.3040e-02,  2.4979e-02, -1.1595e-02,
            -2.7709e-02,  3.0537e-02,  1.4116e-03, -8.8185e-02, -1.7727e-01,
            -4.8555e-02,  1.3917e-02,  6.0658e-02, -1.0674e-01, -1.2324e-02,
              1.8497e-02, -5.9074e-02, -1.6503e-01,  8.6872e-02, -6.1620e-02,
            -1.8260e-02, -8.8368e-02, -1.1538e-01, -1.3998e-01,  1.4101e-02,
            -1.1006e-01,  4.1843e-02,  5.7756e-02,  4.4720e-02,  3.7808e-02,
            -6.5242e-02,  6.8323e-03,  1.1534e-01, -1.4846e-01, -4.5413e-02,
              3.1228e-02, -1.3161e-01, -1.3392e-01, -1.0443e-01, -1.2187e-01,
              1.7356e-01, -1.4847e-01, -3.5423e-02,  5.9394e-02, -1.6837e-01,
            -7.7814e-03, -5.3379e-02, -7.0457e-02, -4.1780e-02, -1.3707e-01,
            -4.5080e-02,  4.9391e-02, -4.3781e-02, -1.7045e-01, -1.4776e-01,
            -1.9797e-01,  2.4527e-02, -1.6047e-01,  4.4605e-02, -9.3384e-02,
            -4.5079e-02, -1.9012e-01, -8.4501e-02, -9.6801e-02, -1.9187e-01,
            -7.5295e-02, -6.0004e-02,  9.8230e-02, -8.0211e-02, -1.7007e-01,
            -9.1521e-03,  4.2185e-03,  1.8632e-01, -1.4831e-01, -2.3596e-02,
            4.1909e-02,  8.7599e-02, -8.2215e-03,  1.6289e-01, -9.6464e-02,
              4.8702e-02, -1.3840e-01, -2.9363e-02, -7.9700e-03, -4.6938e-03,
              1.1660e-01,  1.0151e-01,  2.1116e-02, -1.1693e-01,  2.0923e-01,
              7.4412e-02,  5.9154e-02, -4.3614e-02,  6.2958e-02,  6.4445e-02,
            -1.3066e-01,  8.6260e-02,  2.0505e-01,  9.3216e-02, -4.4595e-02,
              5.0532e-02,  2.1225e-01, -8.5266e-03, -1.2625e-01, -1.5965e-02,
              1.8259e-01,  2.0144e-01, -4.9946e-02, -1.1725e-01,  2.1108e-01,
            -1.5644e-03,  3.1136e-02,  5.2436e-02,  6.7779e-02,  2.0383e-02,
              9.7077e-02, -6.3970e-02,  1.6255e-01, -1.3836e-02, -8.5965e-02,
              2.0252e-02,  6.0626e-02,  1.8292e-01, -5.2848e-02,  4.9609e-02,
            -1.1631e-02, -6.2906e-03, -1.3722e-01,  3.1547e-02,  4.0803e-02,
              4.0695e-02,  9.3298e-02, -1.5454e-01, -2.7783e-02,  2.4317e-02,
            -1.2999e-01, -4.0454e-02,  1.9340e-02,  1.3757e-01, -6.2857e-03,
              3.5987e-02, -5.7711e-03, -2.5562e-02, -1.3687e-01,  3.7944e-02,
              4.0957e-02,  1.5442e-01, -3.5386e-02, -1.1591e-01, -1.0807e-03,
            -1.5401e-02, -9.2325e-02, -2.3138e-02, -4.4587e-02,  5.9729e-02,
            -2.6974e-02, -2.4778e-02,  1.4061e-01,  1.9209e-02, -1.0564e-01,
              1.5830e-01, -2.6460e-02,  4.5216e-02, -1.0973e-02, -1.2416e-03,
              1.0659e-01,  5.0658e-02, -8.0930e-02,  9.6039e-02, -1.5083e-01,
              1.0874e-01,  2.9847e-03, -1.3929e-02,  1.0905e-01,  1.3226e-01,
            -7.7716e-02, -1.4079e-01, -6.5937e-02,  1.3644e-01, -8.8901e-02,
            -1.2357e-01,  1.2669e-01,  7.2886e-02, -8.3023e-02,  4.4488e-02,
              1.2929e-02,  4.2807e-02,  7.3016e-02, -6.0976e-02, -4.8562e-03,
              2.2016e-02, -7.6286e-02, -7.5623e-03, -4.2393e-02,  8.5048e-02,
            -6.4272e-02, -5.2120e-02, -1.2412e-02,  3.1407e-02, -9.3698e-02,
              1.3580e-01, -4.3260e-03, -7.9636e-02, -1.6047e-02, -7.5068e-02,
              8.3607e-02,  5.0732e-03, -4.6927e-02,  5.9583e-02,  4.0129e-02,
              2.4515e-02,  7.4064e-02,  9.3667e-02,  4.5747e-02,  1.4767e-01,
              5.0521e-02, -5.0412e-02, -7.4821e-02,  2.2044e-02, -2.7753e-02,
            -3.5267e-02,  1.8214e-02, -5.1460e-03,  4.3364e-02, -5.3959e-02,
              2.0039e-02,  2.2040e-02, -8.7129e-03, -1.1547e-01,  1.5592e-01,
            -2.4590e-02, -1.7271e-02, -4.9969e-02,  5.7016e-02,  1.3195e-02,
            -3.9981e-03,  5.3745e-02,  6.1733e-02,  1.2138e-01, -5.5835e-02,
            -1.8642e-01, -3.8875e-02,  8.9094e-02,  3.5040e-02, -2.9773e-02,
              1.9299e-01,  6.8513e-02,  7.0430e-02, -1.3821e-01, -9.4776e-02,
            -2.2233e-02,  4.1514e-02,  5.1856e-02,  3.3631e-02,  4.5156e-02,
              2.6966e-02, -6.1226e-02,  6.3085e-02,  1.4728e-01,  1.4635e-01,
              1.0069e-01,  1.7984e-01, -1.5594e-01,  1.1106e-02, -7.3759e-02,
              9.4534e-02,  4.0576e-02,  1.7947e-02, -2.6602e-02,  2.3941e-02,
            -3.6582e-02, -1.6656e-02, -1.5423e-01, -7.1107e-02, -3.8548e-03,
              7.8358e-02,  5.9147e-02,  1.6056e-01, -2.3552e-01,  4.7418e-03,
            -1.1941e-01,  3.0709e-03, -4.6727e-03,  8.7101e-02, -5.7096e-02,
              1.7676e-01, -2.0733e-01,  8.2900e-02, -4.3425e-02,  2.3807e-02,
              1.7266e-01,  8.1287e-02,  7.0148e-02,  1.6940e-01, -1.6293e-01,
              3.1277e-02,  1.7583e-02, -9.2552e-03,  1.5113e-01,  1.3057e-04,
              3.3452e-02,  1.0482e-01, -9.2084e-02,  1.1837e-02,  1.1716e-01,
              5.5216e-02,  1.5848e-01, -1.9200e-02,  7.9409e-02,  1.0529e-01,
            -1.1991e-01, -9.1673e-02,  1.0747e-01, -7.8320e-02,  1.6794e-01,
            -6.3335e-03, -6.0752e-02,  6.2281e-02, -1.1119e-01, -1.5973e-01,
            -6.6882e-02,  7.8927e-02,  1.8574e-01,  8.0584e-02, -8.5407e-02,
              1.1301e-01, -6.7032e-02,  5.9829e-02,  5.2373e-02,  2.0610e-01,
              2.6638e-02,  1.8380e-02, -1.5702e-02, -3.9598e-02, -1.4924e-01,
              5.5632e-02,  2.2590e-01,  2.9470e-02,  5.5420e-02,  6.5120e-02,
            -6.1556e-02,  5.2165e-02,  1.0523e-02,  8.8381e-02,  7.2526e-02,
            -9.3162e-02, -8.2053e-02,  4.4866e-02,  7.3022e-02,  1.5282e-01,
              6.2610e-02,  3.4447e-02,  6.1638e-03, -1.1351e-01, -7.2869e-02,
              2.9008e-03,  7.8655e-02,  1.2284e-03,  6.0618e-02, -1.2023e-01,
              1.4244e-01, -1.4996e-02, -2.5425e-02,  6.7461e-02, -8.8839e-02,
              5.0528e-02,  3.7269e-02, -2.3699e-02, -6.4326e-02,  9.7882e-02,
              6.7333e-02, -3.4032e-02,  3.5335e-02,  1.5530e-01, -7.5549e-03,
              1.1429e-02,  1.7489e-01,  6.4030e-03,  9.6536e-02, -9.3661e-02,
              3.2117e-02,  6.0560e-02,  1.6207e-01,  5.7571e-02,  1.1831e-02,
            -8.4923e-03, -5.3688e-02, -6.1911e-02, -1.1816e-01,  1.1683e-01,
              2.2032e-02, -2.9090e-02,  5.0924e-02, -1.0521e-01,  5.5831e-02,
              6.5438e-02,  5.9791e-02,  4.8995e-02,  3.5416e-02, -6.8215e-02,
            -3.2717e-02,  7.0727e-02,  5.2567e-02, -2.3951e-02,  4.2832e-02,
            -8.4604e-02,  1.0974e-01, -1.0041e-01, -1.2339e-03,  6.4304e-03,
            -1.7374e-02,  4.8324e-03, -2.6210e-02,  1.2073e-01,  9.4296e-02,
              7.4444e-02,  3.4246e-02, -4.6889e-02, -9.5811e-02, -3.7750e-02,
              6.4306e-02,  8.9645e-02,  1.5723e-01, -1.2361e-01, -4.6177e-03,
              3.9108e-02, -4.7335e-02, -4.5371e-02, -1.8468e-03,  1.8428e-02,
              2.8549e-02,  6.2078e-02, -2.0551e-02,  1.0497e-01, -6.9660e-02,
              5.1210e-02,  8.8091e-02,  9.9042e-02,  1.3909e-01,  1.3810e-02,
              4.2005e-02,  1.3745e-02, -9.2673e-03, -1.0204e-01,  2.3501e-02,
              1.2575e-01,  2.9196e-02, -8.7909e-02,  3.0714e-02,  7.7716e-02,
            -3.2451e-02, -2.4822e-02,  1.7791e-02,  5.8740e-02,  1.3775e-01,
            -5.7205e-02,  4.3615e-02, -7.4327e-02,  1.1321e-01, -6.1991e-02,
              9.8679e-02,  1.8808e-02,  3.7121e-02,  1.0180e-02,  8.2701e-02,
              1.1385e-02, -2.9482e-03, -9.3635e-02, -4.6733e-02,  1.3770e-01,
              1.4813e-01, -1.4683e-01,  5.4321e-02,  2.9228e-02, -5.3973e-02,
            -3.1897e-03,  1.8911e-02,  1.1946e-01,  9.3062e-02, -2.7369e-03,
              1.4626e-01,  1.0020e-01,  1.1798e-01, -1.3946e-02,  1.1606e-01,
              1.4464e-01, -1.5529e-02, -1.0787e-01, -2.3561e-02,  9.9136e-03,
              9.5066e-02, -7.3928e-02,  3.4910e-03,  5.1436e-02, -7.6708e-02,
            -1.3723e-02, -8.5888e-02,  1.1081e-01,  1.0783e-01,  1.0704e-01,
              2.6171e-02,  7.0540e-02, -4.8669e-02, -4.1892e-02,  2.9372e-03,
              1.1137e-01,  1.2796e-02, -5.1283e-02,  1.3802e-02,  1.1580e-01,
              8.5525e-03,  1.0135e-01, -7.4944e-02,  1.0648e-01,  5.6860e-02,
              1.3060e-01,  7.3766e-02,  3.9988e-02, -5.3642e-03, -7.2239e-02,
            -6.4044e-02,  1.1542e-01, -4.2166e-02,  1.4444e-01, -6.4422e-02,
              1.8589e-01,  1.8676e-02,  9.4750e-02,  1.4989e-01,  1.8295e-01,
              1.0824e-01,  7.6899e-02,  9.5023e-02,  3.4551e-02,  4.3796e-02,
              1.2432e-01,  1.4891e-01,  1.2843e-01,  7.8272e-02, -3.1468e-02,
              3.7278e-03,  1.2416e-01, -5.1405e-02,  1.3123e-01,  1.5397e-01,
              1.3236e-01, -1.0631e-01,  7.8542e-03, -1.3213e-02,  7.6530e-03,
              9.6722e-02, -3.2634e-02,  1.4849e-02,  1.2811e-01,  1.8923e-02,
            -2.0918e-02,  7.8884e-02,  1.0962e-01,  1.2572e-01,  6.5636e-02,
              8.0067e-02,  6.2714e-02,  5.0109e-02,  4.1417e-03,  1.6103e-01,
              1.0482e-01,  5.5106e-02,  1.4632e-01,  2.0407e-02, -1.2166e-01,
            -4.3572e-02,  4.8092e-02,  1.5848e-01,  5.0947e-02,  8.9182e-02,
              6.1345e-02,  2.0153e-03,  6.9735e-04, -4.3424e-02,  8.3292e-02,
              1.0122e-01, -1.4966e-02, -4.6719e-02,  9.6267e-02,  1.6879e-01,
            -5.2044e-02, -3.9587e-02,  5.0353e-02,  2.3852e-01,  1.1168e-01,
            -6.5870e-02, -6.5217e-02,  2.9725e-03, -1.1482e-01,  1.0738e-01,
            -1.3764e-01,  1.6260e-02,  1.9485e-02,  4.6867e-02,  1.2784e-02,
              7.8275e-02,  8.3698e-02,  4.3647e-03,  5.0435e-03,  6.3614e-03,
              7.2398e-02,  1.5731e-01, -2.4502e-03,  2.8649e-02,  3.8707e-02,
            -9.2147e-02,  2.1442e-03,  5.1384e-02, -9.5942e-02,  1.0709e-02,
              1.1936e-01,  5.2627e-02, -2.5919e-02, -6.0928e-02,  4.4023e-03,
              1.2723e-01, -1.2001e-01,  5.6159e-04, -3.1711e-02, -2.5737e-03,
              4.7529e-02, -7.2286e-02, -4.6943e-02,  4.2575e-02, -2.1954e-02,
            -4.6513e-02, -4.0360e-02,  1.0080e-01, -1.2103e-02,  6.5119e-02,
              4.7051e-02,  7.3970e-02, -5.7778e-02,  8.7346e-02,  3.3082e-02,
            -8.9287e-02,  6.6186e-02, -4.4036e-02,  5.7029e-02,  8.4013e-02,
              2.9555e-02,  7.3044e-02,  3.2082e-02, -7.5558e-03,  7.1200e-02,
              1.1223e-02, -1.4356e-01, -4.2930e-02,  3.4215e-04,  1.0983e-01,
              1.2662e-01,  1.0141e-01, -6.0003e-02, -8.9457e-02,  2.8563e-02,
              9.5648e-02,  7.4810e-02,  5.5530e-02,  4.2940e-02, -3.0450e-02,
              1.1411e-01,  1.4761e-02, -1.4104e-01,  6.1602e-02,  4.9135e-02,
            -4.1526e-02,  7.9895e-02, -9.0286e-02, -6.4111e-03, -9.6888e-02,
            -9.9912e-02,  6.1153e-03, -2.6244e-02,  8.4617e-03,  1.8045e-02,
            -6.5558e-02,  8.5641e-03, -2.6475e-02, -1.0477e-01,  2.4353e-02,
              3.5347e-02, -7.4497e-02,  2.0584e-02,  2.1657e-02,  1.3249e-01,
            -1.1265e-01, -4.6692e-02, -7.0622e-02,  7.7206e-02,  8.5165e-02,
            -6.8468e-02,  4.4504e-02, -1.9331e-02, -2.9451e-02,  3.1691e-03,
              1.3160e-01,  4.0156e-02,  1.1400e-01,  5.9771e-02,  4.5472e-02,
            -1.9170e-02,  1.9559e-02, -4.7007e-02,  9.0630e-02, -2.1580e-02,
            -2.7634e-02,  1.0887e-01, -4.4078e-02,  7.7005e-02, -1.2516e-01,
              5.6811e-02,  4.9068e-02, -1.8119e-03,  5.3473e-02, -3.6434e-02,
              4.3200e-02,  2.1277e-02, -4.5024e-03, -4.0072e-03,  1.1042e-01,
            -6.8593e-02,  4.1885e-02,  2.9653e-02,  1.1940e-02,  2.2770e-02,
            -6.3375e-02, -1.8948e-02, -5.3551e-02, -4.7928e-02,  7.0498e-02,
              8.1792e-02, -5.3564e-02, -8.9218e-03, -1.2334e-01, -2.0722e-02,
              9.8339e-02,  4.6217e-02, -4.2558e-02, -7.0276e-02,  1.0645e-03,
            -1.0394e-02, -1.3406e-02, -1.0848e-01, -4.5384e-02, -5.4254e-03,
            -8.8669e-02, -4.6085e-02,  1.5218e-02,  4.6902e-02, -9.7301e-02,
              2.6193e-03,  2.2366e-02, -9.5364e-02, -5.5319e-02,  9.3569e-02,
            -1.2461e-02,  2.7526e-02,  3.5130e-02, -4.6683e-02, -3.9551e-02,
            -8.2554e-02,  3.1782e-02, -2.7989e-02, -1.5604e-02, -5.2206e-02,
            -4.6172e-03,  6.5017e-02,  3.2495e-02, -9.8980e-03,  5.0599e-03,
              1.2257e-01, -9.8392e-02, -1.5089e-02, -6.0096e-03,  3.3476e-02,
            -1.9023e-02,  1.7082e-02,  3.1381e-02,  1.2117e-01,  6.0154e-02,
              8.4547e-02, -4.0617e-02,  4.0657e-02, -3.4530e-02, -3.8770e-02,
              7.1067e-02, -1.2769e-02, -6.3108e-03, -4.4847e-02,  3.9793e-03,
            -7.4762e-02,  5.2250e-02,  6.8937e-02,  6.1444e-02,  1.0976e-02,
            -1.0790e-01, -2.9415e-02, -1.1599e-01, -1.5732e-02,  6.9985e-02,
              2.2962e-02, -9.1535e-02,  4.3621e-02,  7.6632e-03,  9.6072e-02,
            -7.6757e-02, -4.0301e-02,  9.4911e-02,  8.4995e-02, -2.4358e-02,
              1.7345e-02,  5.3749e-02, -1.7641e-02, -1.1069e-01, -8.0382e-02,
            -5.7645e-02,  3.7766e-02,  3.8525e-02, -3.3000e-02,  2.8381e-02,
            -1.5255e-02, -3.8101e-02, -3.5821e-02,  9.2644e-02, -2.3455e-02,
            -3.4213e-03,  4.7262e-02, -4.6835e-02,  7.3810e-02, -8.4832e-02,
            -9.5062e-02,  8.9767e-02,  6.2717e-02, -8.8657e-02, -2.3958e-02,
            -6.4638e-02, -9.5759e-02, -7.6029e-02,  1.6706e-02, -3.9045e-02,
            -4.2759e-02, -4.3715e-02,  1.4188e-01,  5.4897e-02,  3.2598e-02,
            -5.2526e-03,  3.8654e-02,  1.1506e-01,  9.9069e-02,  6.5576e-02,
              4.3537e-02,  4.6946e-02, -2.8439e-02, -2.4982e-02, -6.1203e-02,
            -1.4338e-02, -5.9563e-02, -4.7908e-02,  7.3129e-02, -1.1075e-02,
              1.2173e-01, -3.1962e-02, -9.9679e-02,  1.2593e-01,  5.2838e-02,
            -3.1119e-02, -6.2156e-02,  5.7114e-03,  5.8839e-02,  1.9514e-02,
            -2.4464e-03,  1.8893e-02, -2.7007e-03, -4.9450e-02, -5.6152e-02,
              2.8916e-02,  4.6898e-02,  1.1118e-01, -9.4891e-03,  7.1374e-02,
              7.7205e-03,  3.8311e-02,  4.3171e-02, -6.1581e-02,  1.0387e-01,
              2.5807e-02, -1.1176e-01,  3.6376e-02, -1.6379e-03,  2.2288e-03,
            -2.0502e-02, -3.2695e-02, -6.5010e-02,  4.1700e-02, -7.9426e-02,
            -2.3060e-02, -5.8267e-02, -1.1563e-01, -4.5534e-02, -1.1536e-01,
              3.4489e-02,  4.3854e-02,  1.2561e-02,  5.4899e-02, -7.2391e-02,
            -5.2633e-02, -5.7558e-02,  2.6226e-03, -4.5470e-02, -1.5067e-03,
            -1.3529e-01, -6.2415e-02, -7.1599e-02, -8.6072e-02,  4.9895e-03,
            -5.3729e-03, -7.2816e-02, -3.7785e-02, -9.5208e-02, -4.0693e-02,
              7.6653e-02, -1.0650e-01, -3.4461e-02, -1.0384e-01,  9.3921e-02,
            -9.8888e-02,  2.6346e-03,  1.9378e-02, -6.8903e-02, -8.3225e-02,
              4.2151e-02, -8.7281e-02, -4.3512e-03,  5.8028e-02,  1.7757e-02,
            -7.1214e-04, -4.6965e-02,  4.3816e-02,  1.0822e-01,  7.5144e-04,
            -5.5533e-02, -9.4996e-02, -1.0635e-01,  9.6717e-02, -4.8933e-02,
              9.0432e-02,  5.8905e-02, -8.7536e-02,  6.6680e-02, -9.3831e-02,
            -1.2018e-01,  1.8197e-02,  2.4835e-02, -6.6639e-02,  6.7325e-03,
              3.1505e-02,  6.7801e-02, -9.4838e-02,  1.8635e-02, -1.7462e-02,
              7.8395e-03, -4.2394e-02,  8.2457e-02, -5.5859e-02,  1.2465e-01,
            -3.6042e-02, -1.2940e-01,  8.2965e-02, -4.1342e-02, -1.3690e-02,
              5.5694e-02, -8.4726e-02, -3.3762e-02, -1.0297e-01,  1.5255e-03,
              2.0279e-02,  2.5454e-02,  8.5714e-02,  1.1410e-01,  4.5982e-02,
            -4.8946e-02,  5.5347e-02, -1.0299e-01, -4.8993e-03,  2.5186e-02,
            -3.9638e-02, -2.9262e-02,  3.8227e-02,  4.3935e-02,  4.0867e-02,
            -1.2848e-01,  2.0635e-02, -9.8374e-02, -2.4234e-02,  3.2513e-02,
              3.3477e-02,  6.8851e-02,  5.7541e-02, -1.3704e-01,  3.6441e-02,
            -6.9872e-02,  9.5611e-02, -7.5246e-02, -7.9501e-03,  3.2288e-02,
            -9.7139e-03,  3.0195e-02, -4.5586e-02, -5.3002e-02,  1.1044e-01,
              1.2840e-01, -3.5335e-02,  4.5377e-02, -1.0031e-01,  6.7950e-04,
            -2.8531e-02, -9.9053e-02, -4.4752e-02, -7.5376e-02,  3.9253e-02,
              4.1692e-02, -1.1350e-01, -7.3112e-02,  4.2758e-02, -7.1276e-02,
            -6.7059e-02,  1.0655e-01,  8.2974e-02,  7.1362e-02, -1.1583e-01,
            -4.4062e-02,  1.1171e-01, -8.5707e-02, -4.0885e-02,  8.3786e-02,
              3.1977e-02,  4.7615e-02, -4.4852e-02,  4.2173e-03,  5.6367e-02,
            -1.2087e-01,  5.7819e-02, -4.1066e-02, -7.1978e-02,  4.1483e-02,
              6.3493e-02, -3.0627e-02, -4.2231e-02, -3.9670e-02, -8.4312e-03,
            -2.3165e-02,  8.9509e-02,  7.4102e-02,  3.0902e-02, -1.2800e-02,
              3.3566e-02, -1.1472e-01,  9.0660e-02,  1.1236e-01,  5.4513e-02,
              4.3068e-02, -1.0148e-01, -7.3485e-02, -1.0248e-02,  3.0260e-02,
              8.9949e-02, -2.2786e-02,  3.5113e-02,  1.2975e-01,  4.7201e-02,
            -7.4538e-03,  2.5678e-02,  6.8630e-02, -5.4532e-02,  1.1226e-01,
              1.6302e-02,  3.7238e-02, -5.9066e-02, -1.2038e-01, -4.1831e-02,
              5.0090e-02,  8.1925e-03,  1.1242e-01, -1.0756e-01,  6.7205e-02,
            -2.6005e-02, -1.2632e-03,  1.2221e-01,  5.8189e-02,  3.4043e-02,
            -1.4737e-02,  8.5467e-02,  1.1443e-01, -5.7703e-02,  1.9953e-02,
              4.6344e-02, -4.0848e-02,  9.9775e-02,  1.2268e-01,  1.0002e-01,
              6.7044e-02,  6.6349e-03,  4.4207e-02,  9.4476e-02, -7.4839e-02,
              3.0092e-02, -6.9097e-02,  6.9752e-02,  9.4444e-02, -8.6839e-03,
            1.2135e-01, -2.9591e-02,  1.0663e-02, -7.5669e-03,  7.3627e-02,
              2.5983e-03, -3.4511e-02,  3.7687e-02,  1.3356e-02, -1.0631e-01,
              1.0309e-01, -8.5729e-02, -5.8193e-02,  7.0653e-04, -1.4556e-02,
            -2.7320e-02,  4.1923e-02, -9.8367e-02, -6.4251e-02, -7.8494e-02,
            -8.3910e-02, -5.2043e-03, -7.6602e-03,  8.3727e-02,  8.5693e-02,
            -1.1887e-01, -5.3813e-02, -1.1472e-01, -1.1098e-01, -6.6283e-03,
            -1.0177e-01,  9.0014e-04,  8.1431e-02, -1.0093e-01, -2.4068e-02,
              1.3011e-02, -5.9811e-02, -2.8803e-02, -1.2858e-01,  8.5554e-02,
              6.1843e-02,  5.5258e-02,  6.3921e-02,  3.2422e-03, -4.5803e-02,
              7.7033e-02, -8.8882e-02,  4.7991e-02,  8.0601e-02,  1.1236e-02,
            -6.5448e-03,  2.3377e-02, -1.1070e-02, -2.5575e-02, -8.2410e-02,
              1.2240e-01,  1.1826e-01, -6.7802e-02, -3.5200e-02,  1.9648e-02,
            -3.4563e-02,  8.0921e-02, -1.3178e-01,  9.6603e-02,  5.1184e-02,
            -3.7481e-02, -8.1308e-02, -7.5273e-02, -1.1479e-01, -7.6378e-02,
              5.0375e-02,  1.2544e-01,  6.7295e-02, -1.3733e-01,  3.9905e-02,
            -5.2496e-02, -1.0891e-01, -8.8488e-02, -1.3339e-01,  4.1859e-02,
              6.3223e-02, -5.9115e-02, -1.7559e-02,  2.0729e-02, -8.7861e-02,
            -9.9815e-02, -1.1862e-01, -1.8170e-02, -3.1892e-02, -1.0787e-01,
            -8.7624e-03, -1.1685e-01, -2.2410e-02, -1.1597e-01, -6.6883e-02,
            -1.6772e-02, -3.8804e-02, -1.3237e-01, -5.4324e-02, -3.0440e-02,
            -1.9175e-02, -7.6236e-02, -3.0890e-02, -1.1923e-02, -1.3799e-02,
            -9.4939e-02,  1.1665e-01, -6.6038e-02, -3.1830e-02,  3.2847e-03,
            -9.1509e-02,  1.2247e-01,  3.9697e-02,  4.2751e-02,  8.1795e-02,
              9.4963e-03,  1.3246e-02, -6.3070e-02, -6.3726e-02, -3.3906e-02,
            -9.4545e-03, -8.2483e-02, -6.5116e-02, -8.4598e-02, -1.0052e-01,
            -2.8058e-02, -6.7886e-02,  3.1435e-02,  1.2879e-01, -7.2133e-02,
              1.2577e-01, -2.1400e-02, -3.5056e-02, -8.2503e-02,  3.1366e-02,
              5.8264e-02,  4.0237e-04, -9.0244e-02, -7.3882e-02,  4.2148e-02,
            -6.3645e-02,  9.3902e-02, -1.3400e-02,  9.4234e-02,  5.7677e-02,
            -1.0714e-01, -1.3957e-02,  2.9501e-02,  7.1317e-02, -6.4776e-02,
            -8.9592e-02, -2.6817e-02, -6.8059e-02, -3.8353e-02,  1.0510e-01,
              6.7091e-02, -6.0993e-02, -6.6460e-03,  2.9962e-02,  1.0614e-01,
              6.2266e-02, -1.2520e-01,  9.0150e-02,  1.2758e-02, -1.1557e-01,
            -7.5758e-02,  4.8982e-04,  2.4743e-02, -3.0889e-03,  4.8947e-03,
            -4.7561e-03, -6.4713e-02, -1.1011e-01,  6.6694e-02,  3.5453e-02,
            -2.6959e-03,  6.4072e-02, -1.2416e-01, -1.4784e-02,  1.4601e-02,
              5.8474e-02,  5.4625e-03, -1.0519e-01, -3.1161e-02, -1.1413e-02,
            -1.2229e-01, -6.0673e-02,  1.0064e-02, -9.6699e-02,  7.4540e-02,
              7.5768e-02,  6.9451e-02, -6.5715e-02, -9.0715e-02,  5.9603e-02,
              1.3907e-02, -1.5885e-02,  8.6806e-02, -3.9096e-02,  2.7917e-02,
              1.2333e-01, -1.2103e-01,  8.6954e-02, -7.5312e-02, -7.7050e-03,
              4.5298e-02,  8.6513e-05, -1.8350e-02,  4.2676e-03, -5.6425e-02,
              9.7730e-02, -7.9890e-02, -7.5704e-02, -5.8789e-02,  3.2671e-02,
              2.8712e-02,  1.2894e-01, -6.6796e-02,  6.7472e-02,  1.0473e-01,
            -1.4522e-02, -4.8185e-02, -4.1232e-02,  5.2731e-02,  8.6144e-02,
            -5.9841e-02, -4.1115e-02,  1.1801e-01, -9.6629e-03, -4.1900e-02,
            -8.6515e-02, -5.9870e-02, -1.9078e-02, -6.7195e-03,  9.1021e-02,
            -3.7538e-02, -1.0783e-01,  9.3995e-02, -2.6730e-02, -5.1367e-02,
              1.2941e-01, -1.2317e-01,  5.3346e-02, -1.4157e-02, -8.7467e-02,
            -8.0812e-02,  5.9907e-02,  5.3348e-02,  7.6381e-02, -4.8738e-02,
              1.1775e-02, -6.8767e-02,  7.3258e-02,  4.5976e-02,  6.2896e-03,
              1.5608e-02, -2.7056e-03, -9.2998e-02, -4.3922e-02,  6.7908e-02,
              2.7914e-02, -3.7863e-02, -1.5798e-01, -1.0024e-01,  9.8491e-02,
              1.0568e-02, -1.0529e-01,  1.4980e-02,  6.0060e-02,  5.9191e-02,
              2.7224e-02,  2.3106e-02,  4.8982e-02, -8.7317e-02, -1.7223e-02,
            -5.7462e-03,  1.0191e-02, -2.2994e-02, -2.6143e-02,  3.7116e-02,
            -1.0553e-02, -3.9215e-02, -9.1401e-03,  1.0516e-01, -9.0331e-02,
            -2.5005e-02, -1.0520e-02,  7.3850e-05,  3.4508e-03,  3.7833e-02,
              1.9110e-03,  3.7445e-02,  1.8507e-02, -1.2986e-02,  4.4816e-02,
              8.2887e-02, -5.9101e-02, -8.5792e-02,  3.3605e-02, -3.8001e-02,
            -8.0384e-02,  9.1068e-03,  7.9708e-04,  1.1422e-01, -6.3015e-02,
              4.3597e-02, -8.3041e-02,  9.3903e-03, -7.0325e-02,  7.4843e-02,
            -4.9596e-02, -4.4444e-03,  1.4138e-01,  5.2664e-02, -6.5175e-02,
              5.2652e-02, -1.8491e-02, -5.2246e-02, -7.7406e-02,  8.9880e-02,
            -1.8636e-02, -4.4748e-02,  4.0690e-02,  7.6657e-02, -1.1697e-01,
            -4.3215e-02,  2.2977e-02,  1.0622e-01,  1.1776e-01, -2.3846e-02,
              1.0034e-01, -8.1117e-02, -9.8086e-02,  5.8688e-02, -6.2355e-02,
            -1.2813e-02,  7.3465e-02, -3.9549e-02,  3.4509e-02,  8.7496e-02,
              4.2829e-02, -1.6361e-02, -9.1689e-02,  1.1841e-01, -6.7013e-02,
            -8.7133e-02, -6.0493e-02,  6.6608e-02, -1.0427e-01,  8.2485e-02,
              7.4006e-02, -8.3896e-02, -6.8661e-02,  5.4811e-02,  7.5725e-02,
            -3.7404e-02, -1.1377e-01, -8.7378e-03,  1.9548e-03, -6.4904e-02,
              8.3903e-02,  5.4951e-04,  2.9295e-02,  1.0653e-02, -5.0327e-02,
            -2.9743e-03, -1.0568e-01,  1.1417e-02,  4.0079e-02,  4.9338e-02,
              4.6413e-03,  4.6682e-03, -7.3806e-02, -4.7690e-02,  3.1973e-02,
            -2.4615e-02,  1.1660e-01,  6.4736e-02, -1.1153e-02, -1.1114e-01,
            -1.1983e-01, -1.6924e-02,  2.3972e-03, -5.4686e-02,  2.9813e-03,
            -6.0932e-02, -2.7653e-02,  6.8051e-02, -4.0118e-02, -6.5644e-02,
              1.0601e-02,  1.0296e-01,  2.1111e-02, -1.0852e-01,  1.2017e-01,
            -2.6284e-02, -9.7947e-02,  2.3339e-02,  1.8500e-02,  7.5996e-02,
            -5.9595e-02, -5.3514e-02,  3.8021e-02, -6.4054e-02,  7.9696e-02,
              3.1396e-02,  3.3392e-02, -6.7169e-02, -2.9241e-02, -9.5686e-02,
            -7.7725e-02, -4.2068e-03, -4.9254e-02, -1.0309e-01, -6.2952e-02,
              9.9947e-02,  9.5258e-02, -1.4038e-01,  3.0987e-03, -7.7111e-02,
              4.7600e-02, -2.7465e-02, -4.5686e-02,  5.1410e-02,  1.1958e-01,
              4.6908e-02,  3.5350e-02,  2.9168e-02, -2.1574e-02,  6.7059e-02,
            -6.5634e-02, -7.0237e-02,  9.1388e-03, -1.3201e-01, -2.4722e-02,
            -3.7353e-02,  1.3834e-02, -1.1530e-01, -7.0404e-02, -1.1007e-02,
              8.5111e-02, -1.1263e-02,  6.7820e-03, -9.6929e-02, -9.2096e-02,
            -6.3068e-02, -1.3003e-01,  6.5949e-02,  8.3448e-02,  6.4760e-02,
            -3.9803e-02,  9.3103e-02, -6.7061e-02,  1.9138e-02,  1.0373e-02,
              1.3057e-02,  7.8153e-02,  1.2988e-02, -5.2527e-02,  2.5533e-03,
              3.3664e-02, -2.2632e-02, -6.9172e-02,  1.0861e-02,  1.0132e-01,
              2.2834e-02, -1.1027e-04, -1.5829e-02,  5.9190e-02, -4.1238e-02,
            -2.6246e-02,  8.9231e-02,  1.1665e-01, -2.2045e-02,  8.6057e-02,
              5.9883e-04,  5.9244e-02,  3.0771e-02, -8.1232e-02,  2.4729e-03,
              1.4326e-01, -1.1957e-01,  6.5400e-02, -9.4116e-02, -9.8020e-02,
              3.1205e-02,  3.4836e-02,  8.5976e-02, -1.2512e-02, -2.6115e-02,
              3.0789e-03,  1.0183e-03, -1.1025e-01,  3.4509e-02, -1.0801e-01,
            -1.1142e-02,  4.7692e-02,  3.4879e-02,  4.6985e-02, -3.9666e-02,
            -4.4098e-02, -2.1086e-02,  3.7294e-02,  1.5492e-02,  6.5382e-02,
              2.3166e-02,  6.2880e-02, -2.9935e-02,  5.9461e-02,  3.5326e-02,
              6.7396e-02, -3.2589e-02, -1.9804e-02, -8.4777e-02,  1.7163e-02,
            -8.0717e-02, -1.8787e-02,  5.8270e-02,  5.9601e-02,  2.1184e-02,
            6.1812e-03, -5.0733e-02,  7.0329e-02, -1.5443e-02, -5.1669e-03,
              7.6761e-02,  3.5169e-02, -8.2596e-02, -9.2795e-02, -7.2953e-02,
            -6.9142e-02,  5.0337e-02,  8.5140e-02,  1.1522e-01,  6.8160e-02,
              7.3111e-02, -7.5555e-02,  2.3265e-02, -2.8207e-02,  1.1960e-01,
            -4.3024e-02,  5.6579e-02,  1.5605e-01,  5.3004e-02, -1.1629e-01,
              4.1372e-02, -1.2877e-01,  9.0778e-02,  1.8878e-02, -1.7153e-02,
            -1.3959e-02,  2.3070e-02, -9.7884e-02, -4.3400e-02,  7.2131e-02,
            -3.0466e-02,  1.2548e-01,  8.7771e-02,  6.3820e-02, -9.7691e-02,
              4.7051e-02,  4.2723e-02,  4.6707e-02, -8.1038e-03, -2.0205e-02,
              7.8143e-02,  3.3746e-02,  5.8025e-02, -2.6749e-02,  1.1404e-01,
            -1.0795e-01, -6.8173e-02, -5.7067e-02,  1.4178e-02, -3.0075e-02,
            -3.1525e-02, -5.1448e-02,  3.3075e-02, -5.8691e-02, -1.5528e-02,
            -6.5493e-02,  8.9071e-03,  1.1908e-01,  3.4751e-02,  3.8810e-02,
            -3.7190e-02, -4.0300e-02, -5.6513e-02,  4.5968e-02,  2.3924e-02,
              1.1271e-01, -4.6400e-02,  4.1175e-03, -1.7632e-02, -4.6225e-02,
              1.0146e-01,  8.7615e-02,  1.1080e-01,  1.1465e-01, -5.5082e-02,
            -3.1691e-02, -3.7646e-02,  3.2211e-02, -3.1570e-02,  2.2259e-02,
            -1.0685e-02,  7.5193e-02, -4.9941e-02,  1.1292e-02,  1.6904e-02,
            -1.9351e-02, -6.7540e-02,  1.5323e-02,  9.6471e-02,  8.6355e-02,
              7.5204e-02, -5.6864e-02, -4.7564e-02, -4.0073e-02, -4.9661e-02,
              9.0800e-02,  5.7977e-02,  8.0801e-02,  9.7461e-03, -1.4304e-01,
              2.5675e-02, -8.7649e-02,  2.1268e-02,  4.4144e-04, -7.4327e-02,
              1.0072e-02,  4.9016e-02, -6.4002e-02,  1.3123e-01, -7.8543e-02,
            -6.5458e-02,  1.0913e-01, -7.3212e-02,  7.9307e-02, -1.8091e-02,
            -1.1025e-01, -3.9979e-03, -3.8088e-02,  1.0752e-01,  1.0901e-01,
            -8.3556e-02, -4.2585e-02, -6.3856e-02, -1.4962e-02, -1.8981e-02,
            -9.8386e-02, -6.9231e-02,  9.1702e-02,  4.0859e-02, -2.6898e-03,
              6.3858e-02, -6.8853e-03,  7.6023e-02,  1.6276e-02,  1.3297e-02,
            -3.6903e-02,  8.6229e-02,  2.7945e-02,  2.0831e-02, -2.4768e-03,
              1.0490e-01,  5.8957e-02, -5.1312e-02, -1.8540e-02, -8.7183e-02,
              1.3692e-01,  4.4319e-02,  3.0319e-03,  4.6610e-02, -1.3266e-01,
            -6.9260e-02,  1.8771e-02, -8.8236e-02,  1.0434e-01, -1.3993e-01,
              4.9460e-02, -5.2434e-02, -6.3205e-02,  6.3521e-02,  9.6866e-02,
              3.2288e-02, -7.7353e-02, -9.3534e-03, -3.7586e-02, -2.9990e-02,
            -1.0871e-01,  8.2925e-02,  1.4445e-01, -5.6154e-02,  7.0848e-02,
              5.5285e-02, -1.1131e-01, -3.6451e-02,  3.0422e-02, -1.0050e-01,
            -3.0369e-02,  1.6842e-02,  9.0838e-02,  4.8087e-02, -2.6883e-02,
              4.6155e-02,  4.5694e-02, -4.5983e-02,  7.0562e-02,  3.7305e-02,
              4.2074e-02, -9.5668e-02, -1.1515e-01,  1.1626e-01,  1.9149e-02,
              7.5734e-02,  8.3319e-02,  5.8417e-02,  9.6024e-02,  7.2922e-02,
              1.1119e-02,  5.0275e-02, -8.3421e-02,  8.1366e-02,  4.5418e-02,
            -3.7557e-02, -2.4906e-02, -5.7944e-02, -1.7046e-03, -2.0915e-02,
            -8.4478e-02,  1.8639e-02,  9.8574e-02, -5.4851e-03,  7.9485e-02,
            -8.8807e-03, -6.1200e-02,  1.2321e-01,  4.0831e-02, -5.2750e-02,
            -1.8331e-02, -4.9964e-02, -3.8172e-03, -6.1836e-02, -5.2708e-02,
              2.4061e-02, -1.1981e-01,  4.8258e-02, -4.3979e-02,  1.2549e-02,
              6.6878e-02,  4.7547e-02, -9.2679e-02,  8.7786e-02, -9.5934e-02,
            -6.9910e-02,  3.3715e-02, -7.0454e-02,  9.8154e-02,  1.6519e-02,
            -7.9235e-02,  1.5482e-01,  3.0620e-02,  9.2325e-03,  1.6271e-02,
            -7.9969e-03, -3.6793e-02, -9.4818e-02, -3.0095e-02,  9.2359e-03,
            -8.4112e-02, -4.6676e-02,  1.0597e-02, -1.3612e-01,  2.6460e-02,
            -5.5736e-02,  1.7310e-02,  7.5638e-02,  6.6955e-02,  8.0046e-03,
              2.0613e-02, -1.3771e-01,  1.8213e-01,  6.3943e-02, -8.1148e-02,
              9.5688e-03,  8.8707e-02, -1.1526e-01,  8.4462e-02, -9.6002e-03,
              1.4348e-01, -8.7146e-02, -1.4325e-01,  1.1969e-01, -4.2762e-02,
              4.8157e-02, -2.3994e-02, -6.7877e-03,  1.5839e-01, -3.7138e-02,
            -1.5194e-02, -1.0908e-02,  7.0766e-02, -1.9085e-02,  1.1205e-01,
            -8.9965e-02,  4.9741e-02, -3.8657e-02, -5.4983e-02,  1.2099e-01,
            -2.2387e-02,  3.6083e-02,  6.8581e-02,  5.3265e-02,  5.3792e-02,
            -4.3311e-02,  4.7755e-02, -5.0414e-02,  2.4879e-02, -9.3594e-02,
            -1.4320e-02, -1.3902e-01,  1.0133e-01, -8.9055e-02, -5.2626e-02,
              9.5088e-02,  6.9839e-03,  3.1888e-02,  1.0342e-01, -1.2204e-02,
            -1.6530e-02, -2.5296e-02, -9.0803e-03,  8.3317e-02, -1.1042e-01,
            -1.8016e-02, -1.7914e-02, -1.7931e-02, -2.0287e-02, -5.6760e-02,
            -9.3948e-02,  9.9135e-02, -5.7040e-02, -7.3480e-02, -1.6568e-02,
            -6.5083e-02,  9.7391e-02, -4.1726e-02, -1.4553e-01,  1.0571e-01,
              6.6225e-02, -5.9738e-02, -2.3103e-02,  6.5028e-02, -4.1781e-02,
            -9.5583e-03, -1.1911e-01, -3.1516e-02, -1.3130e-01,  8.6277e-02,
              5.0619e-02,  6.3650e-02, -1.9242e-02, -9.7634e-02,  1.1064e-02,
              1.3042e-01, -6.3444e-02,  1.1604e-01,  1.2428e-01, -3.2525e-02,
              1.0043e-01,  1.7967e-02, -1.3134e-01,  8.9318e-02,  4.4925e-02,
            -1.1098e-02, -1.4223e-02,  4.3739e-02,  1.3867e-03,  6.7546e-02,
              4.1042e-02,  1.4615e-01,  6.9262e-02, -9.9981e-03,  1.2500e-02,
            -8.5497e-02,  3.3982e-02, -5.1560e-02,  1.8935e-02,  1.1063e-01,
            -9.6607e-02,  3.5335e-03,  4.4480e-02,  7.3523e-02, -2.0728e-02,
            -3.5971e-02, -1.5724e-02,  1.6204e-02, -8.0777e-02,  3.7267e-02,
              9.2197e-02, -3.7811e-02,  1.3589e-01, -7.7344e-02, -1.5062e-01,
              1.4094e-01, -5.4712e-02, -1.8919e-02,  5.9626e-02, -4.1856e-02,
            -3.0838e-02, -1.0418e-01,  5.2569e-02,  1.5961e-01, -7.8652e-02,
            -4.5824e-02,  3.8935e-02,  6.5166e-02, -6.8130e-03, -1.4055e-02,
              3.5510e-02, -6.1818e-03, -8.9630e-02, -5.1914e-02,  7.4030e-03,
            -1.9540e-02, -4.4225e-02, -4.6005e-02, -2.4360e-02,  1.5744e-01,
            -5.6423e-02,  1.1365e-01,  8.9611e-02,  7.9668e-02,  9.9888e-02,
            -9.6262e-02, -8.5947e-02, -2.4221e-02, -9.1089e-02,  1.0656e-01,
            -3.8402e-02,  7.5502e-02,  3.3137e-02,  5.0802e-02,  3.9197e-02,
              3.9632e-02,  5.2085e-02,  7.0687e-02, -4.4997e-02, -1.5154e-02,
              1.3009e-02, -6.2914e-02, -9.5755e-02,  2.9291e-02, -2.0048e-02,
              1.6760e-02,  8.7427e-02, -6.9135e-02,  2.9210e-02, -2.1400e-02,
            -4.0041e-02,  8.2342e-03,  7.2956e-02,  1.0572e-01, -2.1516e-02,
              8.0419e-02,  1.4964e-01, -1.3340e-01, -1.4654e-01,  1.5279e-01,
              4.4580e-02, -7.2762e-02,  4.6376e-02,  9.3563e-02,  3.9048e-02,
              6.7789e-02, -9.3553e-02,  1.2865e-01, -8.5970e-03, -4.4028e-02,
            -5.8920e-02, -3.3993e-03,  9.0351e-02,  1.9486e-02,  1.4078e-02,
              8.0637e-02,  7.6067e-04, -2.8333e-03,  5.2272e-02, -9.5395e-02,
              1.2309e-01, -3.8650e-02, -4.1698e-02,  1.2426e-01, -9.4231e-02,
            -2.6849e-03, -5.2659e-02, -5.4685e-02,  1.0915e-01,  3.9431e-03,
            -1.2061e-01,  1.0325e-01, -3.0678e-02, -2.1016e-02, -2.3775e-02,
              3.3769e-02,  4.2446e-03,  5.6658e-02, -5.6768e-02,  1.2993e-01,
              4.7263e-02, -6.1472e-02, -6.6134e-02,  6.9541e-02,  2.2896e-02,
            -2.3735e-02,  4.4984e-02,  5.0678e-02, -6.6730e-02,  3.7921e-03,
            -4.2112e-02,  1.3853e-02,  7.2080e-02, -5.9749e-02, -1.0884e-01,
            -1.8932e-02, -6.2153e-02, -5.1127e-02,  1.3962e-01,  3.3091e-02,
              2.8105e-03, -1.2291e-02, -9.7844e-02,  1.4486e-01,  3.6751e-02,
              7.7435e-02, -6.6151e-02,  4.2713e-02,  1.3093e-01, -8.2670e-02
    },
    .B_fc_1 = {
        0.0232,  0.0278,  0.0130,  0.0347, -0.0886,  0.0252,  0.0047, -0.0143,
      -0.0283,  0.0241,  0.0332,  0.0222,  0.0480, -0.0260,  0.0203, -0.0307
    },
  },
    .fc_layer2 = {
    .W_fc_2 = {
        -0.8702, -0.9661, -1.0864,  0.8461, -0.5047,  0.6955, -1.1983,  1.3025,
        -0.9946, -1.2055,  1.0168, -0.8665,  0.7511, -0.8143,  0.8104, -0.5924
    },
    .B_fc_2 = {
        0.4100
    },
  },
    .gru_layer = {
      .Wr_x_GRU = {
         1.4409e-01,  3.3213e-01, -8.0750e-02,  3.8832e-02,  2.4515e-01,  3.8098e-02, -7.0660e-02,  1.0223e-01,
        -8.1091e-01, -2.2675e-01, -7.0132e-01, -1.7071e-01, -6.9458e-01, -2.8964e-01, -2.7733e-02,  1.6848e-01,
        -3.8037e-01,  5.1996e-01, -1.2753e-01,  6.3209e-02, -5.2539e-01, -8.0314e-01, -3.5726e-01, -3.9479e-01,
        -3.2978e-02,  3.0681e-01,  2.7708e-02, -3.1471e-01, -4.2284e-01,  1.6338e-01,  3.0469e-01, -2.0882e-01,
        -3.8304e-01,  3.7230e-01, -3.7282e-01, -7.3446e-02, -3.0212e-01, -1.6182e-02, -4.3685e-01, -3.1424e-01,
        -1.3808e-01, -4.0544e-02,  1.9877e-01,  9.4143e-02,  3.2356e-01, -1.0128e-01,  6.7370e-02,  4.3635e-01,
        -5.2341e-01, -3.2796e-05, -3.6137e-01,  1.8897e-01,  7.5356e-02, -2.5670e-01, -4.1307e-01, -3.2506e-02,
        -1.2636e-01,  1.2424e-01, -2.0202e-01, -2.6642e-01, -4.5726e-02,  1.8844e-01,  3.0055e-01,  1.0994e-01
      },
      .Wz_x_GRU = {
         2.0164e-02,  1.5202e-01,  2.1310e-01,  4.6720e-01,  2.6042e-01,  5.7302e-02,  1.8620e-01,  2.0005e-01,
         5.1679e-01, -1.2590e-02,  4.0762e-01,  1.1336e-01,  1.9646e-01, -1.0098e-02, -1.8869e-01,  3.5334e-02,
         4.7237e-01, -3.5195e-02, -8.4243e-02, -6.7098e-03,  3.8689e-01,  6.6367e-02, -1.5985e-01,  2.4772e-01,
        -3.7106e-01,  1.1535e-01, -2.1184e-01, -2.4976e-03, -2.1110e-01, -2.0536e-01, -2.4886e-01, -3.8098e-01,
         2.7140e-01,  3.0234e-01, -1.9207e-01, -4.4729e-02,  9.9469e-03,  5.2764e-01,  3.1313e-01, -4.3463e-02,
         3.8163e-01, -1.8831e-01,  5.9018e-01,  7.3567e-02,  2.9085e-01,  1.4292e-01, -4.0124e-02,  4.8280e-01,
         1.1687e-01,  5.5258e-03, -3.0961e-02, -1.4024e-01,  1.8169e-01,  2.6930e-01,  4.2394e-01,  9.1361e-02,
        -3.1209e-01, -6.0312e-01,  1.3991e-01, -7.6569e-02, -3.1848e-01,  4.2043e-01, -7.9512e-02,  3.3121e-01
      },
      .Wh_x_GRU = {
        -4.0138e-01,  2.0533e-01, -2.3171e-01, -3.1693e-02, -2.3677e-01, -5.7368e-01,  3.5133e-01, -3.3118e-01,
         1.2867e-01, -4.3312e-01,  2.0998e-01,  1.9425e-02,  3.4688e-02, -3.8394e-02,  4.4003e-01,  4.4517e-01,
        -9.2681e-02, -1.8844e-02,  3.9922e-02,  1.5849e-01,  3.1461e-01,  2.4647e-01,  5.4246e-02, -2.4444e-02,
        -1.8485e-01, -2.1519e-01,  3.3894e-01, -1.2046e-01,  1.6226e-01,  3.7994e-01, -3.1878e-01, -2.4655e-01,
        -2.5026e-01, -4.4975e-02,  1.3534e-01,  1.7565e-01, -1.6100e-01, -3.9191e-02,  6.2668e-01, -6.2519e-02,
        -2.2822e-01,  1.5676e-01,  3.2503e-01, -2.2807e-01, -3.6649e-01,  2.2774e-02,  5.1284e-02,  9.1620e-02,
         1.4108e-01,  7.5627e-02, -2.4493e-01, -3.8531e-02,  1.2597e-01,  2.7422e-02, -2.5375e-01, -1.0430e-02,
        -9.5891e-02, -1.8150e-01,  1.2860e-01,  6.0700e-02,  2.2315e-01,  2.6402e-01, -3.0749e-03, -2.4454e-01
      },
      .Wr_h_GRU = {
         2.2395e-01,  3.4796e-02,  2.8617e-01,  2.1797e-01,  1.0996e-01,  3.5174e-02, -1.4899e-01,  2.5549e-01,
        -1.2366e-01,  1.3135e-01,  6.7442e-02, -5.4651e-02, -2.6219e-02,  2.5950e-01, -4.2437e-02, -3.6279e-01,
         1.7756e-01, -1.1267e-01, -2.0232e-01, -1.7081e-01, -1.0961e-01,  4.7247e-01, -5.5003e-01,  2.0686e-01,
         1.4350e-02,  1.3070e-01, -1.0561e-01,  6.4325e-03,  5.0928e-02, -3.9251e-02, -2.1525e-02, -2.1739e-01,
        -3.0732e-01,  4.1181e-02,  2.0082e-01,  5.3273e-01, -3.8828e-01,  1.3218e-01,  3.6296e-01,  2.0557e-01,
        -1.1762e-01, -2.8625e-01,  3.5937e-01, -6.0396e-01,  5.0594e-02, -1.0437e-01, -1.0571e-01,  5.4989e-01,
         1.2225e-01,  3.5332e-01, -2.6158e-01, -2.0870e-02,  1.5571e-01,  4.4809e-01,  1.2317e-01, -7.5950e-01,
         2.7436e-01,  6.6287e-02,  3.0900e-01, -4.6333e-01, -4.9266e-01,  2.0302e-02,  9.3471e-02,  5.5922e-01
      },
      .Wz_h_GRU = {
        -2.0257e-01,  1.0167e-01,  1.7024e-01,  3.3125e-01,  2.0125e-01, -4.7819e-01,  6.2690e-02,  7.4330e-02,
         5.2275e-01,  3.8081e-01,  5.1144e-01, -3.5958e-01, -1.4076e-01,  7.0512e-02,  5.3752e-02,  1.6357e-01,
        -1.6740e-02,  2.5691e-01,  2.5472e-01, -3.8377e-01,  2.3489e-01, -9.7485e-02,  1.5171e-01,  6.5871e-01,
         2.9622e-01, -4.1344e-01, -1.3998e-01, -6.5285e-02,  2.1726e-01, -1.6352e-01,  2.4874e-01, -4.9863e-01,
        -3.4132e-02,  5.0799e-01, -1.3832e-01,  1.6280e-01,  3.7006e-01, -3.0446e-01, -1.4487e-01,  1.1916e-01,
         2.6977e-01,  2.6337e-01, -3.5535e-01, -3.1820e-01,  1.8410e-01,  3.3181e-01, -4.4753e-01, -2.5562e-01,
         4.8924e-02,  1.8968e-01,  3.6164e-01, -4.4697e-01,  2.9763e-01, -5.4263e-01,  5.6205e-03, -1.4883e-01,
        -2.8497e-01,  3.1252e-01, -4.9355e-01, -1.9787e-01, -4.7919e-04, -1.1961e-02, -2.1074e-01, -3.0399e-01
      },
      .Wh_h_GRU = {
         2.9014e-01,  2.7505e-01, -2.4219e-01, -3.8763e-01,  2.2843e-01, -3.2191e-01,  3.6152e-01,  6.7754e-02,
        -1.9103e-01,  3.1553e-01, -4.1977e-01,  1.8778e-01,  3.3703e-01,  6.9781e-01,  3.9722e-02, -3.5219e-01,
         4.6821e-01,  6.0792e-02,  6.4951e-01, -2.4835e-01, -3.3754e-01, -3.5885e-01, -8.4964e-02,  5.0632e-01,
         1.3717e-02,  3.9007e-01,  1.7473e-01, -8.5860e-02,  3.0817e-01, -1.4996e-01, -1.2259e-01, -3.5429e-01,
         1.4275e-01,  2.0937e-01,  4.1745e-02, -4.9783e-01,  4.9718e-01, -2.2838e-01,  1.9953e-01,  1.3892e-01,
        -4.8352e-01,  3.1263e-01,  3.3641e-01,  3.0263e-01,  3.2808e-01, -3.9391e-01, -3.1933e-02,  5.7842e-02,
        -1.9876e-01,  1.2551e-01,  4.4371e-01,  8.6933e-03, -5.0991e-02, -4.3765e-01,  6.6313e-02,  3.0504e-01,
         5.7097e-01, -5.5533e-01,  6.4238e-01, -2.9638e-01, -1.1097e-01,  4.4331e-01, -2.1453e-01,  3.6288e-01
      },
      .Br_x_GRU = {
        -0.0976, -0.0776, -0.0434, -0.1926,  0.0892, -0.1536, -0.2372,  0.1236
      },
      .Bz_x_GRU = {
        -0.2523,  0.0113, -0.0891, -0.4405, -0.4277,  0.2764, -0.0367,  0.0559
      },
      .Bh_x_GRU = {
        0.2636, -0.1013,  0.4753, -0.0229, -0.2862, -0.1543, -0.2063,  0.5084
      },
      .Br_h_GRU = {
        -0.0622,  0.0745,  0.0527, -0.0369, -0.1418,  0.0111, -0.2966,  0.0914
      },
      .Bz_h_GRU = {
        -0.4277, -0.0691, -0.1335,  0.0009, -0.5597,  0.3543, -0.2696,  0.0938
      },
      .Bh_h_GRU = {
        -0.2278,  0.0463,  0.4006, -0.1829, -0.3930,  0.0855, -0.1455,  0.3264
      },
    },
  },
  .CONV_Init = {0},
  .FC_Init = {0},
  .GRU_Init = {0},
};



extern void SetPqData(unsigned char type, void* val); 
extern unsigned char _get_smp_points(void** new_data_ptr);









 
void get_voltage(void *rawdate,float *voltagedatebuff)
{
	long ptemp;
	unsigned char *r_date, temp1, i = 0;
	unsigned short bias;
	r_date = (unsigned char *)rawdate;
	temp1 = CHMAX*4;

	for (i = 0; i < 128; i++){
		bias = temp1 * i;
		ptemp = (r_date[bias+3]<<24)+(r_date[bias+2]<<16)+(r_date[bias+1]<<8)+(r_date[bias]);
		*(voltagedatebuff+i) = (float)(ptemp * SysPara.big_adjust_para.U_factor[0]);
	}
}






 
void get_current(void *rawdate,float *currentdatebuff)
{
	long ptemp;
	unsigned char *r_date, temp1, i = 0;
	unsigned short bias;
	r_date = (unsigned char *)rawdate;
	temp1 = CHMAX*4;

	for (i = 0; i < 128; i++){
		bias = temp1 * i + 4;
		ptemp = (r_date[bias+3]<<24)+(r_date[bias+2]<<16)+(r_date[bias+1]<<8)+(r_date[bias]);
		*(currentdatebuff + i) = (float)(ptemp * SysPara.big_adjust_para.I_factor[0]);
	}
}





 
int GetActivePower(void)
{
	int Act = 0;
	float sum =0;
	unsigned char i = 0;

	for (i = 0; i < 128; i++){
		sum += V_data[i] * I_data[i];
	}
	Act = (float)(sum / 128);
	return Act;
}





 
unsigned long GetVrms(void)
{
	unsigned long Vrms = 0;
	float sum = 0;
	unsigned char i = 0;

	for (i = 0; i < 128; i++){
		sum += V_data[i] * V_data[i];
	}
	Vrms = (unsigned long)((float)sqrt(sum / 128) * 10000);
	return Vrms;
}





 
unsigned long GetIrms(void)
{
	unsigned long Irms = 0;
	float sum = 0;
	unsigned char i = 0; 

	for (i = 0; i < 128; i++){
		sum += I_data[i] * I_data[i];
	}
	Irms = (unsigned long)((float)sqrt(sum / 128) * 10000);
	return Irms;
}




 
void SaveVIP( void )
{
	unsigned long Vrms,Irms;
	int P;

	Vrms = GetVrms();
	Irms = GetIrms();
	P = GetActivePower();

	SetPqData(PQ_U_RMS, &Vrms);		
	SetPqData(PQ_I_RMS, &Irms);		
	SetPqData(PQ_P, &P);			
}









void api_SaveFreezeData(void)
{
	unsigned char i;
	int num = 0;
	
	
	num = process_freeze();
	

	if(num > 30){
		num = 30;
	}
	memset(tApplFrzData, 0xFF, sizeof(T_ApplFrzData) * 30);
	
	
	for (i = 0; i < num; i++){
		tApplFrzData[i].ApplClassID = tApplFrzDataTemp[i].ApplClassID;
		tApplFrzData[i].ApplFrzCylAvgP = tApplFrzDataTemp[i].ApplFrzCylAvgP;
		tApplFrzData[i].ApplFrzCylP = tApplFrzDataTemp[i].ApplFrzCylP;
		tApplFrzData[i].EndTime = tApplFrzDataTemp[i].EndTime;
		tApplFrzData[i].SECount = tApplFrzDataTemp[i].SECount;
		tApplFrzData[i].StartTime = tApplFrzDataTemp[i].StartTime;
	}
}











 
void pad_1D(float* input,float* output, int input_len, int left, int right, float pad_val)
{
	float* xx = (float*)malloc(sizeof(float) * (input_len + left + right)); 
	for (int i = 0; i < input_len + left + right; i++){
		xx[i] = pad_val;
	}
	for (int j = left,t = 0; j < input_len + left; j++,t++){
		xx[j] = input[t];
	}
	for (int k = 0; k < input_len + left + right; k++){
		output[k] = xx[k];
	}
}







 
void convolution1D(float* input, APP_STRUCT *APP)
{
  float tmp_convolution_kernel[4 * 8]; 
  for (unsigned char j = 0; j < 8; j++) {  
      for (unsigned char i = 0; i < 4; i++) {  
          
          tmp_convolution_kernel[j * 4 + i] = 
              APP->MODE_Init.conv_layer.convolution_kernel[j * 4 + (4 - 1 - i)];
      }
  }

	for (int k = 0; k < APP->MODE_Init.conv_layer.kernel_num; k++)
	{
		float xx[71] = {0};
		
		for (int i = 0; i < APP->MODE_Init.conv_layer.input_len; i++){
			for (int j = 0; j < APP->MODE_Init.conv_layer.kernel_size; j++){
				xx[i + j] += input[i] * tmp_convolution_kernel[k * APP->MODE_Init.conv_layer.kernel_size + j];
			}
			IWDG_Feed();
		}

		switch(APP->MODE_Init.conv_layer.ConvType)
		{
      case 1:
        for (int i = 0, t = 0; i < APP->MODE_Init.conv_layer.input_len + APP->MODE_Init.conv_layer.kernel_size - 1; i++, t++){
          APP->CONV_Init.output_data[k * (APP->MODE_Init.conv_layer.input_len + APP->MODE_Init.conv_layer.kernel_size - 1) + t] = xx[i] + APP->MODE_Init.conv_layer.convolution_B[k];
        }
        break;
      case 2:
        for (int i = APP->MODE_Init.conv_layer.kernel_size - 1, t = 0; i < APP->MODE_Init.conv_layer.input_len; i++, t++){
          APP->CONV_Init.output_data[k * (APP->MODE_Init.conv_layer.input_len - APP->MODE_Init.conv_layer.kernel_size + 1) + t] = xx[i] + APP->MODE_Init.conv_layer.convolution_B[k];
        }
        break;
      case 3:
        for (int i = APP->MODE_Init.conv_layer.kernel_size / 2, t = 0; i < APP->MODE_Init.conv_layer.input_len + APP->MODE_Init.conv_layer.kernel_size / 2; i++, t++){
          APP->CONV_Init.output_data[k * APP->MODE_Init.conv_layer.input_len + t] = xx[i] + APP->MODE_Init.conv_layer.convolution_B[k];
        }
        break;
      default:
        break;
		}
	}
}





 
void fullconnected(APP_STRUCT * APP)
{
	
  
	for (short i = 0; i < 16; i++)
	{
		for (short j = 0; j < 65 * 8; j++){
			APP->FC_Init.fc_outputdata_1[i] += (APP->GRU_Init.GRU_h + 8)[j] * APP->MODE_Init.fc_layer1.W_fc_1[i * 65 * 8 + j];
		}
		APP->FC_Init.fc_outputdata_1[i] += APP->MODE_Init.fc_layer1.B_fc_1[i];
	}
}





 
void fullconnected2(APP_STRUCT * APP)
{
	
	for (short  i = 0;i < 1;i++)
	{
		for (short  j = 0;j <16;j++){
			APP->FC_Init.fc_outputdata_2[i] += APP->FC_Init.fc_inputdata_2[j]*APP->MODE_Init.fc_layer2.W_fc_2[i*16 + j];
		}   
		APP->FC_Init.fc_outputdata_2[i] += APP->MODE_Init.fc_layer2.B_fc_2[i];
	}
}

 




 
float sigmoid(float x)
{
    return 1.0 / (1.0 + exp(-x));
}








 
float STD_Cal(const float *pData, float MeanValue, unsigned short int Len)
{
	 float std_Value = 0;
	 float SumValue = 0;
	 for(unsigned short int i=0;i<Len;i++){
		 SumValue = SumValue + (*pData - MeanValue) * (*pData - MeanValue);
		 pData++;
	 }
	 std_Value = sqrtf(SumValue/Len);
	 return std_Value;	 
}





 
void GRU(APP_STRUCT * APP)
{
	register float resetGate = 0;
	register float updateGate = 0;
	register float h_1 = 0;
	
	for (int i = 0; i < 8; i++){
      for(unsigned short int j = 0; j < 65; j++){
        APP->GRU_Init.GRU_Input_DATA[i][j] = (APP->CONV_Init.output_data[i * 65 + j]);
      }
  }
	
	for(unsigned short int i = 0; i < 65; i++){
			APP->GRU_Init.GRU_h[i] = APP->GRU_Init.GRU_h[8 * 65 + i];
	}
	
	for (unsigned short int p = 0; p < 65; p++)
	{
		for (unsigned short int k = 0; k < 8; k++)
		{
			resetGate = 0;
			updateGate = 0;
			h_1 = 0;
			
			for (unsigned short int m = 0; m < 8; m++){
				resetGate += APP->GRU_Init.GRU_Input_DATA[m][p] * APP->MODE_Init.gru_layer.Wr_x_GRU[k * 8 + m];
				updateGate += APP->GRU_Init.GRU_Input_DATA[m][p] * APP->MODE_Init.gru_layer.Wz_x_GRU[k * 8 + m];
			}
			
			for (unsigned short int m = 0; m < 8; m++){
				resetGate += APP->GRU_Init.GRU_h[p * 8 + m] * APP->MODE_Init.gru_layer.Wr_h_GRU[k * 8 + m];
				updateGate += APP->GRU_Init.GRU_h[p * 8 + m] * APP->MODE_Init.gru_layer.Wz_h_GRU[k * 8 + m];
			}
			
			resetGate = sigmoid(resetGate + APP->MODE_Init.gru_layer.Br_x_GRU[k] + APP->MODE_Init.gru_layer.Br_h_GRU[k]);
			updateGate = sigmoid(updateGate + APP->MODE_Init.gru_layer.Bz_x_GRU[k] + APP->MODE_Init.gru_layer.Bz_h_GRU[k]);
	
			
			for (unsigned short int m = 0; m < 8; m++){
				h_1 += APP->GRU_Init.GRU_h[p * 8 + m] * APP->MODE_Init.gru_layer.Wh_h_GRU[k * 8 + m];
			}

			h_1 = (h_1 + APP->MODE_Init.gru_layer.Bh_h_GRU[k]) * resetGate;

			for (unsigned short int m = 0; m < 8; m++){
				h_1 += APP->GRU_Init.GRU_Input_DATA[m][p] * APP->MODE_Init.gru_layer.Wh_x_GRU[k * 8 + m];
			}

			h_1 = tanh(h_1 + APP->MODE_Init.gru_layer.Bh_x_GRU[k]);
      
			APP->GRU_Init.GRU_h[(p + 1) * 8 + k] = (1 - updateGate) * h_1+ updateGate * APP->GRU_Init.GRU_h[p * 8 + k]; 

		}
	}
}








 
void normalize(float *input, float *output, float *power_mean, float *power_std)
{
  float powerdatasum = 0;                       

  for (unsigned int i = 0; i < 65; i++){
			powerdatasum += input[i];
	}

	*power_mean = powerdatasum / 65;
	*power_std = STD_Cal(input, *power_mean, 65);
	for(unsigned int i = 0; i < 65; i++){
		output[i] = (input[i] - *power_mean) / *power_std;
	}

{
  static float mean_watch = 0; 
  mean_watch = *power_mean;
  static float std_watch = 0; 
  std_watch = *power_std;
  static float powerdata_norm_watch[65] = {0};
  for(unsigned int i = 0; i < 65; i++){
    powerdata_norm_watch[i] = output[i];
  }
}

}







 
float LoadResolve_2(float *powerdata,APP_STRUCT *APP)
{
	float LoadResolve_Result = 0;                 
	float powerdata_raw[65] = {0};      
  float powerdata_norm[65] = {0};     
	float powerdata_pad[65 + 3] = {0};  
  float power_mean = 0;                         
  float power_std = 0;                          

  normalize(powerdata, powerdata_norm, &power_mean, &power_std);
  pad_1D(powerdata_norm, powerdata_pad, 65, 1, 2, 0);

{
  static float powerdata_pad_watch[65 + 3] = {0};
  for(unsigned int i = 0; i < 65 + 3; i++){
    powerdata_pad_watch[i] = powerdata_pad[i];
  }
}
	convolution1D(powerdata_pad, APP);

{
    static float covolution_out_watch[65 * 8] = {0};
    for(unsigned int i = 0; i < 65 * 8; i++){
      covolution_out_watch[i] = APP->CONV_Init.output_data[i];
    }
  }
	GRU(APP);

{
  static float GRU_watch[65 * 8] = {0};
  for(unsigned int i = 0; i < 65 * 8; i++){
    GRU_watch[i] = APP->GRU_Init.GRU_h[i + 8];
  }
}
	fullconnected(APP);
	for(unsigned int i = 0; i < 16; i++){
		APP->FC_Init.fc_inputdata_2[i] = tanh(APP->FC_Init.fc_outputdata_1[i]);
	}

{
    static float fc_outputdata_1_watch[16] = {0};
    for(unsigned int i = 0; i < 16; i++){
      fc_outputdata_1_watch[i] = APP->FC_Init.fc_outputdata_1[i];
    }
    static float fc_inputdata_2_watch[16] = {0};
    for(unsigned int i = 0; i < 16; i++){
      fc_inputdata_2_watch[i] = APP->FC_Init.fc_inputdata_2[i];
    }
  }
	fullconnected2(APP);

{
  static float no_norm_result_watch = 0; 
  no_norm_result_watch = APP->FC_Init.fc_outputdata_2[0];
}

	LoadResolve_Result = APP->FC_Init.fc_outputdata_2[0] * power_std + power_mean;

{
  static float LoadResolve_Result_watch = 0; 
  LoadResolve_Result_watch = LoadResolve_Result;
}
	memset(&app_struct.CONV_Init, 0, sizeof(app_struct.CONV_Init));
  memset(&app_struct.GRU_Init, 0, sizeof(app_struct.GRU_Init));
  memset(&app_struct.FC_Init, 0, sizeof(app_struct.FC_Init));

  return LoadResolve_Result;
}


float input[65] = {
    1.48628869E+3,
    1.4802301022E+3,
    1.47765673E+3,
    1.48100817E+3,
    1.47793859E+3,
    1.47973864E+3,
    1.4816021722E+3,
    1.48102124E+3,
    1.48430639E+3,
    1.4805119622E+3,
    1.4801854244E+3,
    1.48326648E+3,
    1.48258471E+3,
    1.48167163E+3,
    1.4857795411E+3,
    1.4837543944E+3,
    1.48049975E+3,
    1.4745792233E+3,
    1.47843029E+3,
    1.48102539E+3,
    1.47743444E+3,
    1.47857837E+3,
    1.4789034422E+3,
    1.47639795E+3,
    1.4810001222E+3,
    1.4786110833E+3,
    1.4818042E+3,
    1.4769000244E+3,
    1.47635827E+3,
    1.47824157E+3,
    1.4796429444E+3,
    1.47885559E+3,
    1.4817595211E+3,
    1.47719433E+3,
    1.4797147211E+3,
    1.48144677E+3,
    1.4831934811E+3,
    1.48358374E+3,
    1.48014904E+3,
    1.4794312744E+3,
    1.48057824E+3,
    1.4802890622E+3,
    1.47789685E+3,
    1.4766717522E+3,
    1.4800821533E+3,
    1.47917163E+3,
    1.48184594E+3,
    1.4820050044E+3,
    1.4787202144E+3,
    1.48038952E+3,
    1.48030944E+3,
    1.4814371333E+3,
    1.48469555E+3,
    1.48107885E+3,
    1.4815532222E+3,
    1.48086914E+3,
    1.4816646722E+3,
    1.4817060544E+3,
    1.4842166744E+3,
    1.4806857911E+3,
    1.48095092E+3,
    1.4810626222E+3,
    1.48080346E+3,
    1.48249108E+3,
    1.4813092044E+3};

float input2[65] = {
    1.48932348E+3,
    1.48586499E+3,
    1.48308142E+3,
    1.48214184E+3,
    1.48340954E+3,
    1.4819519044E+3,
    1.47997033E+3,
    1.48026233E+3,
    1.4921289E+3,
    1.4890653E+3,
    1.49104773E+3,
    1.48851037E+3,
    1.4892308344E+3,
    1.4886239011E+3,
    1.4914312744E+3,
    1.48873925E+3,
    1.49033361E+3,
    1.4869619144E+3,
    1.4899990233E+3,
    1.49090307E+3,
    1.4892460933E+3,
    1.49196997E+3,
    1.48801269E+3,
    1.4874029544E+3,
    1.4862390133E+3,
    1.4841040033E+3,
    1.4846735833E+3,
    1.48246337E+3,
    1.48623706E+3,
    1.4886104733E+3,
    1.48894213E+3,
    1.48712316E+3,
    1.4824328611E+3,
    1.48127124E+3,
    1.4831983644E+3,
    1.48428686E+3,
    1.48392858E+3,
    1.48629065E+3,
    1.48567321E+3,
    1.48675268E+3,
    1.4885072022E+3,
    1.48702356E+3,
    1.48616894E+3,
    1.48557238E+3,
    1.4848059E+3,
    1.48631311E+3,
    1.4860926511E+3,
    1.48693615E+3,
    1.4884211422E+3,
    1.48630017E+3,
    1.4837767333E+3,
    1.48606823E+3,
    1.4857445E+3,
    1.4827296144E+3,
    1.48758056E+3,
    1.4903114011E+3,
    1.4922454833E+3,
    1.4966604E+3,
    1.49143859E+3,
    1.48705517E+3,
    1.4853327633E+3,
    1.48576184E+3,
    1.48626916E+3,
    1.4869982911E+3,
    1.48513122E+3};





































































 

float input3[65] = {
    1.49638769E+3,
    1.4987036133E+3,
    1.49879309E+3,
    1.50047216E+3,
    1.49947033E+3,
    1.49723523E+3,
    1.4991558833E+3,
    1.49863244E+3,
    1.49815539E+3,
    1.4983569333E+3,
    1.501307E+3,
    1.4945178222E+3,
    1.4955804444E+3,
    1.4942784422E+3,
    1.4952659911E+3,
    1.49845581E+3,
    1.49387011E+3,
    1.4953326411E+3,
    1.49273291E+3,
    1.4942331544E+3,
    1.49158935E+3,
    1.49317102E+3,
    1.49127819E+3,
    1.49087536E+3,
    1.48867077E+3,
    1.49279577E+3,
    1.49265441E+3,
    1.4931417233E+3,
    1.49331176E+3,
    1.4955897211E+3,
    1.49249145E+3,
    1.4956339111E+3,
    1.48876098E+3,
    1.4938298333E+3,
    1.49740661E+3,
    1.4978386233E+3,
    1.49763501E+3,
    1.4965719E+3,
    1.49614624E+3,
    1.4944859611E+3,
    1.4984346922E+3,
    1.4964989011E+3,
    1.50068444E+3,
    1.4969824211E+3,
    1.49733081E+3,
    1.49597155E+3,
    1.4923208E+3,
    1.4962188722E+3,
    1.4933192133E+3,
    1.49646508E+3,
    1.4951948244E+3,
    1.49579956E+3,
    1.49283239E+3,
    1.4963667E+3,
    1.492656E+3,
    1.49560962E+3,
    1.49649524E+3,
    1.4940002444E+3,
    1.49671984E+3,
    1.4972290033E+3,
    1.4990048822E+3,
    1.4989392E+3,
    1.49898693E+3,
    1.5021098633E+3,
    1.4961765133E+3};

float input_chuifeng[65] = {
    4.33973816E+2,
    4.34867157E+2,
    4.3356198122E+2,
    4.3562985222E+2,
    4.3522290033E+2,
    4.3363308711E+2,
    4.34981994E+2,
    4.33771453E+2,
    4.34644622E+2,
    4.3462130733E+2,
    4.34862121E+2,
    4.3475555411E+2,
    4.34068023E+2,
    4.3367330933E+2,
    4.34585662E+2,
    4.3336392211E+2,
    4.34298797E+2,
    4.3487088011E+2,
    4.3480407711E+2,
    4.3513269044E+2,
    4.35297973E+2,
    4.3508221433E+2,
    4.3553173822E+2,
    4.35453125E+2,
    4.3723492433E+2,
    4.3628280633E+2,
    4.35524231E+2,
    4.3616986E+2,
    4.3573172E+2,
    4.35368316E+2,
    4.36568389E+2,
    4.37040496E+2,
    4.3637548822E+2,
    4.35930542E+2,
    4.37912353E+2,
    4.36808349E+2,
    4.36407837E+2,
    4.36681823E+2,
    4.3663974E+2,
    4.3761840822E+2,
    4.3691793822E+2,
    4.37563903E+2,
    4.36592559E+2,
    4.37180236E+2,
    4.36471923E+2,
    4.36484832E+2,
    4.36512268E+2,
    4.36084716E+2,
    4.3676474E+2,
    4.35374572E+2,
    4.3589541622E+2,
    4.3471783444E+2,
    4.36361908E+2,
    4.35744964E+2,
    4.37600525E+2,
    4.3625939944E+2,
    4.3761959833E+2,
    4.36651184E+2,
    4.3671286011E+2,
    4.3705584711E+2,
    4.35679657E+2,
    4.3743994144E+2,
    4.34570465E+2,
    4.36662902E+2,
    4.35556243E+2};

float input_hufeng[65] = {
    1.8667147211E+3,
    1.86209362E+3,
    1.8544676511E+3,
    1.85163684E+3,
    1.8517519533E+3,
    1.85057434E+3,
    1.8460744622E+3,
    1.84807885E+3,
    1.84325097E+3,
    1.8403798822E+3,
    1.8424765622E+3,
    1.83347851E+3,
    1.83461425E+3,
    1.8352644044E+3,
    1.83828576E+3,
    1.83850122E+3,
    1.84380749E+3,
    1.83897509E+3,
    1.83883191E+3,
    1.8368255611E+3,
    1.8450903322E+3,
    1.84001403E+3,
    1.82637182E+3,
    1.83501806E+3,
    1.8345437011E+3,
    1.8331374511E+3,
    1.8375758E+3,
    1.83352697E+3,
    1.83309729E+3,
    1.83910705E+3,
    1.83393164E+3,
    1.8392000733E+3,
    1.83378357E+3,
    1.83333593E+3,
    1.83309375E+3,
    1.83028283E+3,
    1.8329436033E+3,
    1.83258007E+3,
    1.8436287844E+3,
    1.8398232422E+3,
    1.84625525E+3,
    1.83960241E+3,
    1.8401640622E+3,
    1.83939196E+3,
    1.83654358E+3,
    1.84138317E+3,
    1.8378480222E+3,
    1.84337707E+3,
    1.84115026E+3,
    1.84156018E+3,
    1.84105114E+3,
    1.84086621E+3,
    1.83847815E+3,
    1.8385804444E+3,
    1.8412904E+3,
    1.8382850344E+3,
    1.83867797E+3,
    1.84137133E+3,
    1.83799694E+3,
    1.83814489E+3,
    1.83928283E+3,
    1.8298945311E+3,
    1.83499414E+3,
    1.83256726E+3,
    1.8333261711E+3};

float input_tmp[sizeof(input)];

float input_tmp2[65] = {0};

unsigned char NILM_Task_i = 0;



 
void api_NILM_Task(void)
{
	void *smp_p = 0;

  
  


	if(_get_smp_points(&smp_p))
	{
      get_voltage(smp_p,V_data);		
      get_current(smp_p,I_data);		

      input_tmp2[NILM_Task_i] = GetActivePower();

      NILM_Task_i++;
      if(NILM_Task_i == 65){
        NILM_Task_i = 0;
        finalresult = LoadResolve_2(input_tmp2, &app_struct);
      }

			
			
			if(InitComplete != 0){
				xMessage.ucMessageID += 0x01;
				memset(&(xMessage.ucData), xMessage.ucMessageID, 20);
				xQueueSend(xStructQueue,(void *)&xMessage, (int)0);
			}

	}	
}



 
void api_TestComplementData(void)
{
	unsigned char i;
	static unsigned char x = 0;
	unsigned short Arr[] = {0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0A,0xA1};



	for ( i = 0; i < 11; i++){
		tApplFrzData[i].ApplClassID = Arr[i];
		tApplFrzData[i].ApplFrzCylAvgP = 1000;
		tApplFrzData[i].ApplFrzCylP = 100;
		tApplFrzData[i].EndTime = 0;
		tApplFrzData[i].SECount = 0;
		tApplFrzData[i].StartTime = 0;
	}
}















 
