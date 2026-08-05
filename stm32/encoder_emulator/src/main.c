#include "stm32f4xx_hal.h"
#include "gpio.h"
#include "timer.h"

int main(void)
{
    HAL_Init();

    __HAL_RCC_GPIOA_CLK_ENABLE();
    GPIO_Init();

    TIM2_InputCapture_Init();

    GPIO_InitTypeDef GPIO_InitStruct = {0};

    GPIO_InitStruct.Pin = GPIO_PIN_5;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;

    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);


    GPIO_InitStruct.Pin = GPIO_PIN_3;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;

HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);


    while (1)
    {
         HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_3);
        HAL_Delay(10);
    }
}