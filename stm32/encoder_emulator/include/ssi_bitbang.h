// ssi_bitbang.h
#ifndef SSI_BITBANG_H
#define SSI_BITBANG_H

#include "stm32f4xx_hal.h"
#include <stdint.h>

void DWT_Init(void);
void SSI_GPIO_Init(void);
void SSI_ReadFrame(uint8_t *data_bits_out);
void SSI_BitsToXYZ(const uint8_t *bits, int16_t *x, int16_t *y, int16_t *z);

#endif