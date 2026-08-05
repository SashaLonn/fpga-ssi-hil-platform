#ifndef TIMER_H
#define TIMER_H

#include "stm32f4xx_hal.h"

extern TIM_HandleTypeDef htim2;

void TIM2_InputCapture_Init(void);

#endif