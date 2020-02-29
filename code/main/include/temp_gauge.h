#ifndef E28_CLUSTER_TEMP_GAUGE
#define E28_CLUSTER_TEMP_GAUGE

#include "esp_err.h"
#include "esp_log.h"

#include <driver/gpio.h>
#include <driver/dac.h>

/**
 * Setup the temperature gauge output.
 *
 * @param channel that the temperature gauge is hooked up to.
 */
void setup_temp_gauge(dac_channel_t channel);

/** 
 * Set the temperature gauge position.
 *
 * @param position from bottom at 100 to top at 250
 *  250 - Top of Gauge
 *  200 - Middle of Gauge
 *  150 - Top of Blue
 *  100 - Bottom of Blue
 */
void write_to_temp_gauge(int position);

#endif