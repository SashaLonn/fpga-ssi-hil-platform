#ifndef CUBE_RENDER_H
#define CUBE_RENDER_H

#include <stdint.h>

extern float angle_x;
extern float angle_y;

void Filter_Init(void);
void Filter_Calibrate_Sample(float ax, float ay, float az);
void Filter_Calibrate_Finish(void);
void Update_Angles_From_Accel(int16_t raw_x, int16_t raw_y, int16_t raw_z);

float Get_Ax_Offset(void);   // <-- måste finnas HÄR, i headern
float Get_Ay_Offset(void);   // <-- måste finnas HÄR, i headern

#endif