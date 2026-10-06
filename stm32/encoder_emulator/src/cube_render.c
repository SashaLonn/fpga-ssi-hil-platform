#include "cube_render.h"
#include <math.h>
#include <stdio.h>

#ifndef M_PI
#define M_PI 3.14159265358979323846f
#endif

// VIKTIGT: eftersom vi ändrade till FULL_RES + 4g i ADXL345-init,
// är skalfaktorn fortfarande 3.9 mg/LSB (FULL_RES ger konstant
// upplösning oavsett g-range - det är poängen med full resolution-läget)
#define ADXL_SCALE 0.0039f

// Deadband: ignorera små förändringar under denna gräns (grader)
// Detta tar bort finkornigt "sensor-brus-skak" utan att göra
// systemet segt för verkliga rörelser
#define DEADBAND_DEG 0.4f

// Lågpassfilter-koefficient. Högre = snabbare men skakigare,
// lägre = mjukare men trögare. 0.15 är en bra kompromiss för
// en accel-only lösning på en vibrerande drönare.
#define FILTER_ALPHA 0.15f

#define MAX_JUMP_DEG 15.0f  // ingen enskild sample ska hoppa mer än detta mellan mätningar
#define RAW_AVG_SAMPLES 5

static int16_t hist_x[RAW_AVG_SAMPLES] = {0};
static int16_t hist_y[RAW_AVG_SAMPLES] = {0};
static int16_t hist_z[RAW_AVG_SAMPLES] = {0};
static int hist_idx = 0;

static float last_raw_angle_x = 0.0f;
static float last_raw_angle_y = 0.0f;


typedef struct {
    float filtered_x;
    float filtered_y;
} LowPassFilter_t;

static LowPassFilter_t drone_filter = {0.0f, 0.0f};

// Offset-bias, uppmätt vid kalibrering (drönaren liggande stilla och plant)
static float ax_offset = 0.0f;
static float ay_offset = 0.0f;
float Get_Ax_Offset(void) { return ax_offset; }
float Get_Ay_Offset(void) { return ay_offset; }
float debug_raw_angle_x = 0.0f;
float debug_raw_angle_y = 0.0f;

// Temporära ackumulatorer för kalibrering
static float calib_sum_ax = 0.0f;
static float calib_sum_ay = 0.0f;
static uint32_t calib_count = 0;

float angle_x = 0.0f;
float angle_y = 0.0f;

void Filter_Init(void) {
    drone_filter.filtered_x = 0.0f;
    drone_filter.filtered_y = 0.0f;
    ax_offset = 0.0f;
    ay_offset = 0.0f;
}

// Anropas N gånger med RÅ (oskalad offset) accel-data medan
// drönaren ligger helt stilla och plant på ett bord
void Filter_Calibrate_Sample(float ax, float ay, float az) {
    (void)az; // az behövs inte för offset (Z ska vara ~1g, X/Y ska vara ~0g)
    calib_sum_ax += ax;
    calib_sum_ay += ay;
    calib_count++;
}

void Filter_Calibrate_Finish(void) {
    if (calib_count == 0) return;
    ax_offset = calib_sum_ax / (float)calib_count;
    ay_offset = calib_sum_ay / (float)calib_count;
    calib_sum_ax = 0.0f;
    calib_sum_ay = 0.0f;
    calib_count = 0;
}

static float apply_deadband(float new_val, float old_val) {
    if (fabsf(new_val - old_val) < DEADBAND_DEG) {
        return old_val; // för liten förändring - ignorera, håll gamla värdet
    }
    return new_val;
}




void Update_Angles_From_Accel(int16_t raw_x, int16_t raw_y, int16_t raw_z) {
    hist_x[hist_idx] = raw_x;
    hist_y[hist_idx] = raw_y;
    hist_z[hist_idx] = raw_z;
    hist_idx = (hist_idx + 1) % RAW_AVG_SAMPLES;

    int32_t sum_x = 0, sum_y = 0, sum_z = 0;
    for (int i = 0; i < RAW_AVG_SAMPLES; i++) {
        sum_x += hist_x[i];
        sum_y += hist_y[i];
        sum_z += hist_z[i];
    }
    float avg_raw_x = sum_x / (float)RAW_AVG_SAMPLES;
    float avg_raw_y = sum_y / (float)RAW_AVG_SAMPLES;
    float avg_raw_z = sum_z / (float)RAW_AVG_SAMPLES;

    float ax = (avg_raw_x * ADXL_SCALE) - ax_offset;
    float ay = (avg_raw_y * ADXL_SCALE) - ay_offset;
    float az = avg_raw_z * ADXL_SCALE;

    float rad_x = atan2f(-ay, az);
    float rad_y = atan2f(-ax, ay * sinf(rad_x) + az * cosf(rad_x));

    float raw_angle_x = rad_x * (180.0f / M_PI);
    float raw_angle_y = rad_y * (180.0f / M_PI);

    drone_filter.filtered_x = (FILTER_ALPHA * raw_angle_x) + ((1.0f - FILTER_ALPHA) * drone_filter.filtered_x);
    drone_filter.filtered_y = (FILTER_ALPHA * raw_angle_y) + ((1.0f - FILTER_ALPHA) * drone_filter.filtered_y);

    angle_x = drone_filter.filtered_x;
    angle_y = drone_filter.filtered_y;
}