//------------------------------------------------------------------------------------------
//	��    �ƣ� main.c
//	��    ��:  ϵͳ��ں���
//	��    ��:  wangjunsheng
//	����ʱ��:  2020.10.28
//	����ʱ��:
//	��    ע:
//	�޸ļ�¼:
//------------------------------------------------------------------------------------------
#include "AllHead.h"

#include <rtthread.h>

//��ʱ����
void rt_timer_init(rt_timer_t timer,const char* name,void(*timeout)(void *parameter),void * parameter,rt_tick_t time,rt_uint8_t flag);
rt_err_t rt_timer_delete(rt_timer_t timer);

//������
rt_err_t rt_mq_init (rt_mq_t mq, const char *name, void *msgpool, rt_size_t msg_size, rt_size_t pool_size, rt_uint8_t flag);
rt_err_t rt_mq_delete (rt_mq_t mq);

//��ʼ��������
rt_err_t rt_mutex_init (rt_mutex_t mutex, const char *name, rt_uint8_t flag);
rt_err_t rt_mutex_delete (rt_mutex_t mutex);

//�ź���
rt_err_t rt_sem_init (rt_sem_t sem, const char *name, rt_uint32_t value, rt_uint8_t flag);
rt_sem_t rt_sem_create (const char *name, rt_uint32_t value, rt_uint8_t flag);
rt_err_t rt_sem_delete (rt_sem_t sem);
rt_err_t rt_sem_take (rt_sem_t sem, rt_int32_t time);
rt_err_t rt_sem_release (rt_sem_t sem);



///////////////////////////////////////////////////////////////
//	�� �� �� : xTaskCreate
//	�������� : ����һ������
//	������� : 
//	��    ע : 
//	��    �� : Administrator
//	ʱ    �� : 2023��4��20��
//	�� �� ֵ : int
//	����˵�� : void (*pvTaskCode
///////////////////////////////////////////////////////////////
int xTaskCreate(void (*pvTaskCode)(void *parameter), 
                const char * const pcName,
                int usStackDepth,
                void *pvParameters,
                int uxPriority,
                 int *pxCreatedTask
                )
{
    rt_thread_t tid;
    
    tid = rt_thread_create(pcName,	//�߳���
                          pvTaskCode, pvParameters,	//��ں�����������һ��ΪRT_NULL��
                          usStackDepth,	//�߳�ջ��С
                          uxPriority, 10);	//���ȼ�  ʱ��Ƭ
    
    if(tid != RT_NULL)
    {
        rt_thread_startup(tid);
        
    }
    
    *pxCreatedTask = (int)tid;
    
    return 1;
}


///////////////////////////////////////////////////////////////
//	�� �� �� : xTimerCreate
//	�������� : ����һ����ʱ��
//	������� : 
//	��    ע : 
//	��    �� : Administrator
//	ʱ    �� : 2023��4��20��
//	�� �� ֵ : void*
//	����˵�� :  const char * const pcTimerName,
//				                           const int xTimerPeriod,
//				                           const int uxAutoReload,
//				                           void * const pvTimerID,
//				                           void(*timeout
///////////////////////////////////////////////////////////////
void* xTimerCreate( const char * const pcTimerName,
                         const int xTimerPeriod,
                         const int uxAutoReload,
                         void * const pvTimerID,
                         void(*timeout)(void *parameter) )
{
       
      return rt_timer_create(pcTimerName, timeout , pvTimerID, xTimerPeriod, RT_TIMER_FLAG_PERIODIC);  //�����Զ�ʱ��
                
}



///////////////////////////////////////////////////////////////
//	�� �� �� : xTimerStart
//	�������� : ����һ����ʱ��
//	������� : 
//	��    ע : 
//	��    �� : Administrator
//	ʱ    �� : 2023��4��20��
//	�� �� ֵ : int
//	����˵�� :  void* xTimer,
//				  int xBlockTime 
///////////////////////////////////////////////////////////////
int xTimerStart( void* xTimer,  int xBlockTime )
{
    
      return rt_timer_start(xTimer);

}


///////////////////////////////////////////////////////////////
//	�� �� �� : xTimerStop
//	�������� : ֹͣһ����ʱ��
//	������� : 
//	��    ע : 
//	��    �� : Administrator
//	ʱ    �� : 2023��4��20��
//	�� �� ֵ : int
//	����˵�� :  void* xTimer,
//				 int xBlockTime 
///////////////////////////////////////////////////////////////
int xTimerStop( void* xTimer, int xBlockTime )
{
    
    return rt_timer_stop(xTimer);	

}

int QueueLen = 0;

///////////////////////////////////////////////////////////////
//	�� �� �� : xQueueCreate
//	�������� : ����һ����Ϣ����
//	������� : 
//	��    ע : 
//	��    �� : Administrator
//	ʱ    �� : 2023��4��20��
//	�� �� ֵ : void*
//	����˵�� :  int uxQueueLength,
//				 int uxItemSize 
///////////////////////////////////////////////////////////////
void* xQueueCreate( int uxQueueLength, int uxItemSize )
{
  
      QueueLen = uxQueueLength;
      return rt_mq_create("FH_Queue", uxQueueLength, uxItemSize, RT_IPC_FLAG_FIFO);

}



///////////////////////////////////////////////////////////////
//	�� �� �� : xQueueReceive
//	�������� : ����һ����Ϣ
//	������� : 
//	��    ע : 
//	��    �� : Administrator
//	ʱ    �� : 2023��4��20��
//	�� �� ֵ : int
//	����˵�� : void* xQueue,
//				 void *pvBuffer,
//				int xTicksToWait 
///////////////////////////////////////////////////////////////
int xQueueReceive(void* xQueue, void *pvBuffer,int xTicksToWait )
{
      
      return rt_mq_recv (xQueue, pvBuffer, QueueLen, xTicksToWait);
}


///////////////////////////////////////////////////////////////
//	�� �� �� : xQueueSend
//	�������� : ����һ����Ϣ
//	������� : 
//	��    ע : 
//	��    �� : Administrator
//	ʱ    �� : 2023��4��20��
//	�� �� ֵ : int
//	����˵�� : void* xQueue,
//				void *pvBuffer,
//				 int xTicksToWait
///////////////////////////////////////////////////////////////
int xQueueSend(void* xQueue,void *pvBuffer, int xTicksToWait)
{
  
    return rt_mq_send(xQueue, pvBuffer, QueueLen);

}


void* xSemaphoreCreateBinary( void )
{
}


///////////////////////////////////////////////////////////////
//	�� �� �� : xSemaphoreCreateMutex
//	�������� : ����һ�������ź���
//	������� : 
//	��    ע : 
//	��    �� : Administrator
//	ʱ    �� : 2023��4��20��
//	�� �� ֵ : void*
//	����˵�� :  void 
///////////////////////////////////////////////////////////////
void* xSemaphoreCreateMutex( void )
{
    return rt_mutex_create ("FH_PV",  RT_IPC_FLAG_FIFO);
 
}

///////////////////////////////////////////////////////////////
//	�� �� �� : xSemaphoreTake
//	�������� : ��ȡһ���ź���
//	������� : 
//	��    ע : 
//	��    �� : Administrator
//	ʱ    �� : 2023��4��20��
//	�� �� ֵ : BOOL
//	����˵�� :  void* xSemaphore,
//				 int xTicksToWait 
///////////////////////////////////////////////////////////////
BOOL xSemaphoreTake( void* xSemaphore, int xTicksToWait )
{
     
      return rt_mutex_take (xSemaphore, xTicksToWait);
 
}



///////////////////////////////////////////////////////////////
//	�� �� �� : xSemaphoreGive
//	�������� : �ͷ�һ���ź���
//	������� : 
//	��    ע : 
//	��    �� : Administrator
//	ʱ    �� : 2023��4��20��
//	�� �� ֵ : BOOL
//	����˵�� :  void* xSemaphore 
///////////////////////////////////////////////////////////////
BOOL xSemaphoreGive( void* xSemaphore )
{
    return rt_mutex_release (xSemaphore);
}


///////////////////////////////////////////////////////////////
//	�� �� �� : delay_ms
//	�������� : ��ʱ����
//	������� : 
//	��    ע : 
//	��    �� : Administrator
//	ʱ    �� : 2023��4��20��
//	�� �� ֵ : BOOL
//	����˵�� :  void* xSemaphore 
///////////////////////////////////////////////////////////////
void delay_ms(uint32_t ms)
{
    rt_thread_mdelay(ms);
}
  
///////////////////////////////////////////////////////////////
//	�� �� �� : delay_us
//	�������� : 
//	������� : ��ʱ΢��
//	��    ע : 
//	��    �� : Administrator
//	ʱ    �� : 2023��4��20��
//	�� �� ֵ : BOOL
//	����˵�� :  uint32_t us 
///////////////////////////////////////////////////////////////

void delay_us(uint32_t us)
{
      api_Delayus(us);
}


///////////////////////////////////////////////////////////////
//	�� �� �� : vCreatTasktoCalc
//	�������� : �����㷨�⣬��������һ������
//	������� : 
//	��    ע : 
//	��    �� : Administrator
//	ʱ    �� : 2023��4��20��
//	�� �� ֵ : void
//	����˵�� : void
///////////////////////////////////////////////////////////////
void CreateNULMTask(void)
{
	//����һ������
	vCreateQueues();
	//�����㷨���������
	vCreatTasktoCalc();
  
}