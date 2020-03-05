#include "esp_err.h"
#include "esp_log.h"

#include <driver/gpio.h>
#include <driver/mcpwm.h>
#include <driver/sigmadelta.h>
#include <driver/ledc.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef E28_CLUSTER_TACHOMETER_GAUGE
#define E28_CLUSTER_TACHOMETER_GAUGE

#define TACH_LS_TIMER          LEDC_TIMER_2
#define TACH_LS_MODE           LEDC_LOW_SPEED_MODE
#define TACH_LS_CH2_CHANNEL    LEDC_CHANNEL_2

void setup_tachometer_gauge(gpio_num_t guage_output_pin);
void write_to_tachometer(uint32_t rpm);

#endif

#ifdef __cplusplus
}
#endif
