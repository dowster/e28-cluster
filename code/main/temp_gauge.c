#include "esp_err.h"
#include "esp_log.h"

#include <driver/gpio.h>
#include <driver/dac.h>

static dac_channel_t temp_gauge_channel = -1;

/**
 * Setup the temperature gauge output. 
 * 
 * @param channel that the temperature gauge is hooked up to.
 */
void setup_temp_gauge(dac_channel_t channel) {
    temp_gauge_channel = channel;
    dac_output_enable(temp_gauge_channel);
}

/** 
 * Set the temperature gauge position.
 * 
 * @param position from bottom at 100 to top at 250
 *  250 - Top of Gauge
 *  200 - Middle of Gauge
 *  150 - Top of Blue
 *  100 - Bottom of Blue
 */
void write_to_temp_gauge(int position) {
    ESP_LOGI("TEMP", "[T: %d]", position);
    dac_output_voltage(temp_gauge_channel, position);
}