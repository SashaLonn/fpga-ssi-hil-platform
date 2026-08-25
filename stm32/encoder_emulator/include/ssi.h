#ifndef SSI_H
#define SSI_H

#include "stm32f4xx_hal.h"

#define initial_data  0b11110110


SPI_HandleTypeDef hspi1;


typedef enum
{
    SSI_IDLE,
    SSI_TRANSMITTING,
    SSI_TIME_INTERVAL
} SSI_State;

static volatile SSI_State ssi_state = SSI_IDLE;
static volatile uint8_t tm_counter = 0;

void SPI1_Init(void);
void SSI_SPI_UpdateTxData(uint16_t data);


#endif