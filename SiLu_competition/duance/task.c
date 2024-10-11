/* TEST_TASK1 任务 配置
 * 包括: 任务优先级 堆栈大小 任务函数体
 */
Os_Task_t TestTask1Handle;
///< 任务句柄
#define TEST_TASK1_STK_DEPTH (16*1024)
///< 任务堆栈大小
void Test_Task1_Func( void * pvParameters );
///< 任务 1 函数体申明
DEF_ONE_TASK(Test_Task1,Test_Task1_Func,TEST_TASK1_STK_DEPTH,INOS_MIN_PRIO,0);
///< Test_Task1：任务名称
///< Test_Task1_Func：任务的函数体 指针
///< 0x400：任务栈深度

/* TEST_TASK2 任务 配置
 * 包括: 任务优先级 堆栈大小 任务函数体
 */
Os_Task_t TestTask2Handle;
///< 任务句柄
#define TEST_TASK2_STK_DEPTH (2*1024)
///< 任务堆栈大小
void Test_Task2_Func( void * pvParameters );
///< 任务 2 函数体申明
DEF_ONE_TASK(Test_Task2,Test_Task2_Func,TEST_TASK2_STK_DEPTH,INOS_MIN_PRIO,0); 
///< Test_Task2：任务名称
///< Test_Task2_Func：任务的函数体 指针
///< 0x400：任务栈深度

/* TEST_TASK3 任务 配置
 * 包括: 任务优先级 堆栈大小 任务函数体
 */
Os_Task_t TestTask3Handle;
///< 任务句柄
#define TEST_TASK3_STK_DEPTH (2*1024)
///< 任务堆栈大小
void Test_Task3_Func( void * pvParameters );
///< 任务 3 函数体申明
DEF_ONE_TASK(Test_Task3,Test_Task3_Func,TEST_TASK3_STK_DEPTH,INOS_MIN_PRIO,0); 
///< Test_Task3：任务名称
///< Test_Task3_Func：任务的函数体 指针
///< 0x400：任务栈深度

/* TEST_TASK4 任务 配置
 * 包括: 任务优先级 堆栈大小 任务函数体
 */
Os_Task_t TestTask4Handle;
///< 任务句柄
#define TEST_TASK4_STK_DEPTH (2*1024)
///< 任务堆栈大小
void Test_Task4_Func( void * pvParameters );
///< 任务 4 函数体申明
DEF_ONE_TASK(Test_Task4,Test_Task4_Func,TEST_TASK4_STK_DEPTH,INOS_MIN_PRIO,0); 
///< Test_Task4：任务名称
///< Test_Task4_Func：任务的函数体 指针
///< 0x400：任务栈深度

uint8 Pool[16*1024];
///< 动态内存池
Os_MutexSem_t PoolMutex = INOS_HANDLE_ERR; ///< 动态内存互斥量
