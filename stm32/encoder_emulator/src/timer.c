#include "timer.h"

TIM_HandleTypeDef htim2;

void TIM2_InputCapture_Init(void)
{
    TIM_IC_InitTypeDef sConfigIC = {0};

    __HAL_RCC_TIM2_CLK_ENABLE();

    htim2.Instance = TIM2;

    htim2.Init.Prescaler = 0;
    htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
    htim2.Init.Period = 0xFFFFFFFF;
    htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;

    HAL_TIM_IC_Init(&htim2);


    sConfigIC.ICPolarity = TIM_INPUTCHANNELPOLARITY_RISING;
    sConfigIC.ICSelection = TIM_ICSELECTION_DIRECTTI;
    sConfigIC.ICPrescaler = TIM_ICPSC_DIV1;
    sConfigIC.ICFilter = 0;

    HAL_TIM_IC_ConfigChannel(
        &htim2,
        &sConfigIC,
        TIM_CHANNEL_1
    );


    HAL_TIM_IC_Start_IT(
        &htim2,
        TIM_CHANNEL_1
    );


    // Enable timer interrupt
    HAL_NVIC_SetPriority(TIM2_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(TIM2_IRQn);



}

void TIM2_IRQHandler(void)
{
    HAL_TIM_IRQHandler(&htim2);
}



void HAL_TIM_IC_CaptureCallback(TIM_HandleTypeDef *htim)
{
    if (htim->Instance == TIM2)
    {
        HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_5);   // LED
    }
}