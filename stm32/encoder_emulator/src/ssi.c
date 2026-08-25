#include "ssi.h"

SPI_HandleTypeDef hspi1;

void SPI1_Init(void)
{
    GPIO_InitTypeDef GPIO_InitStruct = {0};

    __HAL_RCC_GPIOA_CLK_ENABLE();
    __HAL_RCC_SPI1_CLK_ENABLE();

    HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5, GPIO_PIN_SET);

    /*
     * PA5 -> SPI1_SCK  (Klocka ut till FPGA, Idle HIGH)
     * PA6 -> SPI1_MISO (Data in från FPGA)
     */
    GPIO_InitStruct.Pin = GPIO_PIN_5 | GPIO_PIN_6;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_PULLUP; // Håll pinnen HIGH i vila
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
    GPIO_InitStruct.Alternate = GPIO_AF5_SPI1;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

    /*
     * SPI1 Konfiguration utan CS
     */
    hspi1.Instance = SPI1;
    hspi1.Init.Mode = SPI_MODE_MASTER;
    hspi1.Init.Direction = SPI_DIRECTION_2LINES_RXONLY;
    hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
    
    // CPOL = HIGH, CPHA = 1EDGE
    // 1:a fallande flank = START-signal (ingen dataläsning)
    // 2:a fallande flank = Första databiten samplas
    hspi1.Init.CLKPolarity = SPI_POLARITY_LOW;
    hspi1.Init.CLKPhase = SPI_PHASE_2EDGE;
    
    hspi1.Init.NSS = SPI_NSS_SOFT; // Ingen hårdvaru-CS används
    hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_128; // 16 MHz / 128 = 125 kHz
    hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
    hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
    hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;

    HAL_SPI_Init(&hspi1);
}