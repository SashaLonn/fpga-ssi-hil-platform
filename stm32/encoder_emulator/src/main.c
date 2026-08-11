
#include "stm32f4xx_hal.h"

// Hårdkodat testvärde för verifiering mot FPGA
#define TEST_HARDCODED_POSITION  0b10100110


SPI_HandleTypeDef hspi1;


void MX_GPIO_Init(void);
void MX_SPI1_Init_SSI_Slave(void);

void SysTick_Handler(void) {
    HAL_IncTick();
}



int main(void)
{
    HAL_Init();
    MX_GPIO_Init();
    MX_SPI1_Init_SSI_Slave();




    /* 1. Tvinga ur SPI-modulen ur drift för att tvinga fram reset på interna skiftregistret */
    CLEAR_BIT(SPI1->CR1, SPI_CR1_SPE);

    /* 2. Ladda registret medan modul är inaktiv */
    SPI1->DR = TEST_HARDCODED_POSITION;

    /* 3. Slå på SPI igen. Nu garanteras att skiftregistret startar från bit 7! */
    SET_BIT(SPI1->CR1, SPI_CR1_SPE);


    while (1)
    {
        /*
         * When SPI shifts the byte,
         * TXE becomes available again.
         */

         if (SPI1->SR & SPI_SR_TXE)
        {
            // Ladda direkt på nytt utan HAL-overhead!
            SPI1->DR = TEST_HARDCODED_POSITION;
        }

    }
}

/**
  * @brief EXTI-avbrott på PA5 (Första fallande klockflanken från FPGA)
  */


/**
  * @brief Konfiguration av GPIO (PA5 för EXTI, PA6 för SPI MISO)
  */
void MX_GPIO_Init(void)
{
    GPIO_InitTypeDef GPIO_InitStruct = {0};

    __HAL_RCC_GPIOA_CLK_ENABLE();

    /*
     * PA5 = SPI1_SCK
     */
    GPIO_InitStruct.Pin = GPIO_PIN_5;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_PULLUP;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
    GPIO_InitStruct.Alternate = GPIO_AF5_SPI1;

    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);


    /*
     * PA6 = SPI1_MISO
     */
    GPIO_InitStruct.Pin = GPIO_PIN_6;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_PULLUP;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
    GPIO_InitStruct.Alternate = GPIO_AF5_SPI1;

    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
}

/**
  * @brief Konfiguration av SPI1 som SSI Slav
  */
void MX_SPI1_Init_SSI_Slave(void)
{
    __HAL_RCC_SPI1_CLK_ENABLE();

    hspi1.Instance = SPI1;
    hspi1.Init.Mode = SPI_MODE_SLAVE;
    hspi1.Init.Direction = SPI_DIRECTION_2LINES;
    hspi1.Init.DataSize = SPI_DATASIZE_8BIT;

    /*
     * SSI clock idle HIGH
     */
    hspi1.Init.CLKPolarity = SPI_POLARITY_HIGH;

    /*
     * Data must be available before rising edge.
     */
    hspi1.Init.CLKPhase = SPI_PHASE_1EDGE;
    hspi1.Init.NSS = SPI_NSS_SOFT;
    hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
    hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
    hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;

    HAL_SPI_Init(&hspi1);

    /*
     * Software NSS
     */
    SET_BIT(SPI1->CR1, SPI_CR1_SSM);
    CLEAR_BIT(SPI1->CR1, SPI_CR1_SSI);

    /*
     * Enable SPI
     */
    __HAL_SPI_ENABLE(&hspi1);
}