#ifndef E28_CLUSTER_SPEEDOMETER_GAUGE
#define E28_CLUSTER_SPEEDOMETER_GAUGE

#include "esp_err.h"
#include "esp_log.h"

#include <driver/gpio.h>
#include <driver/mcpwm.h>
#include <driver/sigmadelta.h>
#include <driver/ledc.h>

/** Speedometer Gauge Config **/ 
#define SPEEDO_LS_TIMER          LEDC_TIMER_1
#define SPEEDO_LS_MODE           LEDC_LOW_SPEED_MODE
#define SPEEDO_LS_CH1_CHANNEL    LEDC_CHANNEL_1


/**
 * 
 */
void setup_speedometer_gauge(gpio_num_t guage_output_pin);

/**
 * 
 */
void write_to_speedometer(uint32_t speed);

#endif