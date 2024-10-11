/** 
* @brief 测试任务 1 函数体
* @param[in] 
* @param[out] 
* @return
* @note
* @see
* @par
* @code
* @endcode 
*/
void Test_Task1_Func(void *pvParameters)
{
    ( void ) pvParameters;
    const char* pTaskName = "\0";

    Inos_Print("Test_App:测试任务 1 成功运行");
    while(1)
    {
        Inos_Task_DelayMs(1000);

        //TEST_FLOW(Flow_Task_Message);
        //TEST_CASE(Api_Comp_Storage);
        //TEST_CASE(Api_Drv_MeterSpi_Rec);
        //TEST_FLOW(Flow_Task_EventGroup);
        TEST_CASE(Api_App_Message);
        //TEST_CASE(Api_Comp_Meter_Manage);

        Print_Test_Result();

        //打印任务运行信息
        pTaskName = Inos_Task_GetName();
        Inos_Print("测试 APP 任务 1 运行中........^_^........pTaskName:%s", pTaskName);

        Inos_App_Event_Proc(&App_Event_Proc); ///<APP 事件处理，每个 task 都要在任务循环中调用，App_Event_Proc 由用户 APP 自己实现对 EventBits 的处理
    }
}

/** 
* @brief 测试任务 2 函数体
* @param[in] 
* @param[out] 
* @return
* @note
* @see
* @par
* @code
* @endcode 
*/
void Test_Task2_Func(void *pvParameters)
{
    ( void ) pvParameters;
    const char* pTaskName = "\0";


    Inos_Print("Test_App:测试任务 2 成功运行");
    while(1)
    {
        Inos_Task_DelayMs(1000);

        //TEST_FLOW_BUDDY(Flow_Task_Message);
        //TEST_FLOW_BUDDY(Flow_Task_EventGroup);

        /// 周期性打印任务运行信息
        pTaskName = Inos_Task_GetName();
        Inos_Print("测试 APP 任务 2 运行中........^_^........pTaskName:%s", pTaskName);

        Inos_App_Event_Proc(&App_Event_Proc); ///<APP 事件处理，每个 task 都要在任务循环中调用，App_Event_Proc 由用户 APP 自己实现对 EventBits 的处理
    }

}

/** 
* @brief 测试任务 3 函数体
* @param[in] 
* @param[out] 
* @return
* @note
* @see
* @par
* @code
* @endcode 
*/
void Test_Task3_Func(void *pvParameters)
{
    ( void ) pvParameters;
    const char* pTaskName = "\0";

    Inos_Print("Test_App：测试任务 3 成功运行");
    while(1)
    {
        Inos_Task_DelayMs(1000);

        //周期性打印任务运行信息
        pTaskName = Inos_Task_GetName();
        Inos_Print("测试 APP 任务 3 运行中........^_^........pTaskName:%s", pTaskName);

        Inos_App_Event_Proc(&App_Event_Proc); ///<APP 事件处理，每个 task 都要在任务循环中调用，App_Event_Proc 由用户 APP 自己实现对 EventBits 的处理
    }

}

/** 
* @brief 测试任务 4 函数体
* @param[in] 
* @param[out] 
* @return
* @note
* @see
* @par
* @code
* @endcode 
*/
void Test_Task4_Func(void *pvParameters)
{
    ( void ) pvParameters;
    const char* pTaskName = "\0";

    Inos_Print("Test_App:测试任务 4 成功运行");
    while(1)
    {
        Inos_Task_DelayMs(1000);

        //周期性打印任务运行信息
        pTaskName = Inos_Task_GetName();
        Inos_Print("测试 APP 任务 4 运行中........^_^........pTaskName:%s", pTaskName);

        Inos_App_Event_Proc(&App_Event_Proc); ///<APP 事件处理，每个 task 都要在任务循环中调用，App_Event_Proc 由用户 APP 自己实现对 EventBits 的处理
    }

}
