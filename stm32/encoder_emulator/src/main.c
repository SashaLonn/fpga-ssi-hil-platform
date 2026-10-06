#include "stm32f4xx_hal.h"
#include "usart.h"
#include "cube_render.h"
#include "ssi_bitbang.h"
#include <stdio.h>

void SysTick_Handler(void) { HAL_IncTick(); }

int main(void)
{
    HAL_Init();
    USART2_Init();
    SSI_GPIO_Init();
    DWT_Init();

    Filter_Init();
    HAL_Delay(500);

    printf("Kalibrerar - hall stilla...\r\n");
    for (int i = 0; i < 200; i++)
    {
        uint8_t bits[48];
        SSI_ReadFrame(bits);

        int16_t raw_x, raw_y, raw_z;
        SSI_BitsToXYZ(bits, &raw_x, &raw_y, &raw_z);

        float ax = raw_x * 0.0039f;
        float ay = raw_y * 0.0039f;
        float az = raw_z * 0.0039f;
        Filter_Calibrate_Sample(ax, ay, az);
    }
    Filter_Calibrate_Finish();
    printf("Kalibrering klar\r\n");
    printf("OFFSETS: ax_offset=%.4f ay_offset=%.4f\r\n", Get_Ax_Offset(), Get_Ay_Offset());

    while (1)
    {
        uint8_t bits[48];
        SSI_ReadFrame(bits);

        int16_t raw_x, raw_y, raw_z;
        SSI_BitsToXYZ(bits, &raw_x, &raw_y, &raw_z);

        printf("OFFSETS: ax_offset=%.4f ay_offset=%.4f\r\n", Get_Ax_Offset(), Get_Ay_Offset());

        Update_Angles_From_Accel(raw_x, raw_y, raw_z);
        printf("%.2f,%.2f\r\n", angle_x, angle_y);
        printf("RAW x=%d y=%d z=%d | angle=%.2f,%.2f\r\n", raw_x, raw_y, raw_z, angle_x, angle_y);
    }
}