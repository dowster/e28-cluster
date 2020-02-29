#ifndef E28_CLUSTER_FUEL_GAUGE
#define E28_CLUSTER_FUEL_GAUGE

#include "esp_err.h"
#include "esp_log.h"

#include <driver/gpio.h>
#include <driver/dac.h>

/**
 * Setup the temperature gauge output. 
 * 
 * @param gauge dac output pin
 * @param low_fuel_indicator output pin
 */
void setup_fuel_gauge(dac_channel_t gauge, gpio_num_t low_fuel_indicator);

/** 
 * Set the position of the fuel gauge in terms of % full
 * 
 * @param percent_full for the gauge to point to
 */
void write_to_fuel_gauge(int percent_full);

/**
 * Turns the low fuel indicator light on if it's hooked up.
 */
void enable_low_fuel_indicator();

/**
 * Turns the low fuel indicator light off if it's hooked up.
 */
void disable_low_fuel_indicator();



#endif