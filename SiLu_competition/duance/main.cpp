#include "main.h"
#include "Test_All.h"

int main(void *pvParameters)
{
    (void) pvParameters;  // 避免未使用的参数产生警告

    // 打印启动信息
    Inos_Print("Test_App:测试 APP 启动,MAIN 函数已进入 ");

    // 创建互斥量，用于内存池操作
    PoolMutex = Inos_Task_MutexSem_Create();

    // 初始化内存池，Pool 是动态内存池，PoolMutex 是互斥量
    Inos_Mem_Init(Pool, sizeof(Pool), PoolMutex);
    
    // 创建四个任务
    TestTask1Handle = CREATE_ONE_TASK(Test_Task1);
    TestTask2Handle = CREATE_ONE_TASK(Test_Task2);
    TestTask3Handle = CREATE_ONE_TASK(Test_Task3);
    TestTask4Handle = CREATE_ONE_TASK(Test_Task4);
    
    return 0;  // 主函数返回
}
