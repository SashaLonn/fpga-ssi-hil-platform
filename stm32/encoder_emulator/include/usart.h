#ifndef USART_H
#define USART_H

#include "stm32f4xx_hal.h"
#include <stdio.h>

extern UART_HandleTypeDef huart1;

void USART2_Init(void);
void USART1_Init(void);

#endif