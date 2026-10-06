// ssi_bitbang.c
#include "ssi_bitbang.h"

// ANPASSA dessa till de pinnar du faktiskt kopplat GPIO(35)/GPIO_data till
#define SSI_CLK_PORT   GPIOA
#define SSI_CLK_PIN    GPIO_PIN_0   // STM32 -> FPGA (klocka, master ut)
#define SSI_DATA_PORT  GPIOA
#define SSI_DATA_PIN   GPIO_PIN_1   // FPGA -> STM32 (data in)

#define SSI_TOTAL_BITS      49   // 48 databitar + 1 break-bit
#define SSI_HALF_PERIOD_US  5    // klock-halvperiod (god marginal, synk-kedjan kräver bara ~60ns)
#define SSI_FRAME_GAP_US    100  // MÅSTE vara > 50us (tm_timer_count), extra marginal inlagd

// --- Mikrosekund-fördröjning via DWT-cykelräknare (Cortex-M4) ---
void DWT_Init(void)
{
    CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk;
    DWT->CYCCNT = 0;
    DWT->CTRL |= DWT_CTRL_CYCCNTENA_Msk;
}

static inline void delay_us(uint32_t us)
{
    uint32_t start = DWT->CYCCNT;
    uint32_t ticks = us * (SystemCoreClock / 1000000UL);
    while ((DWT->CYCCNT - start) < ticks) { }
}

void SSI_GPIO_Init(void)
{
    __HAL_RCC_GPIOA_CLK_ENABLE(); // byt till rätt port

    GPIO_InitTypeDef gpio = {0};

    // Klocka = output, push-pull
    gpio.Pin   = SSI_CLK_PIN;
    gpio.Mode  = GPIO_MODE_OUTPUT_PP;
    gpio.Pull  = GPIO_NOPULL;
    gpio.Speed = GPIO_SPEED_FREQ_HIGH;
    HAL_GPIO_Init(SSI_CLK_PORT, &gpio);

    // Data = input
    gpio.Pin   = SSI_DATA_PIN;
    gpio.Mode  = GPIO_MODE_INPUT;
    gpio.Pull  = GPIO_NOPULL;
    HAL_GPIO_Init(SSI_DATA_PORT, &gpio);

    // Klockan ska vila HÖG
    HAL_GPIO_WritePin(SSI_CLK_PORT, SSI_CLK_PIN, GPIO_PIN_SET);
}

static inline void ssi_clk_high(void) { HAL_GPIO_WritePin(SSI_CLK_PORT, SSI_CLK_PIN, GPIO_PIN_SET); }
static inline void ssi_clk_low(void)  { HAL_GPIO_WritePin(SSI_CLK_PORT, SSI_CLK_PIN, GPIO_PIN_RESET); }
static inline uint8_t ssi_read_data(void) { return (uint8_t)HAL_GPIO_ReadPin(SSI_DATA_PORT, SSI_DATA_PIN); }

// Läser en komplett 48-bitars frame (X,Y,Z), MSB-först.
// data_bits_out måste vara minst 48 bytes stor (varje element = 0 eller 1)
void SSI_ReadFrame(uint8_t *data_bits_out)
{
    // 1. Säkerställ vila (klocka hög) och att FPGA:ns pausperiod redan passerat
    ssi_clk_high();
    delay_us(SSI_FRAME_GAP_US);

    // 2. Fallande flank -> FPGA latchar in senaste s_acc_send
    ssi_clk_low();
    delay_us(SSI_HALF_PERIOD_US);

    // 3. Klocka ut 49 bitar (48 data + 1 break-bit)
    for (int i = 0; i < SSI_TOTAL_BITS; i++)
    {
        ssi_clk_high();                // stigande flank -> FPGA uppdaterar data-linjen
        delay_us(SSI_HALF_PERIOD_US);  // ge synkroniseraren (3 cykler @ 50MHz ~60ns) gott om tid

        if (i < 48) {
            data_bits_out[i] = ssi_read_data(); // bit 0 = MSB av X ... bit 47 = LSB av Z
        }
        // i == 48 -> break-bit, ignoreras (alltid 0 enligt design)

        ssi_clk_low();
        delay_us(SSI_HALF_PERIOD_US);
    }

    // 4. Lämna klockan i vila (hög) och vänta ut FPGA:ns obligatoriska paus
    ssi_clk_high();
    delay_us(SSI_FRAME_GAP_US);
}

void SSI_BitsToXYZ(const uint8_t *bits, int16_t *x, int16_t *y, int16_t *z)
{
    uint16_t ux = 0, uy = 0, uz = 0;
    for (int i = 0; i < 16; i++) ux = (uint16_t)((ux << 1) | bits[i]);
    for (int i = 0; i < 16; i++) uy = (uint16_t)((uy << 1) | bits[16 + i]);
    for (int i = 0; i < 16; i++) uz = (uint16_t)((uz << 1) | bits[32 + i]);
    *x = (int16_t)ux;
    *y = (int16_t)uy;
    *z = (int16_t)uz;
}