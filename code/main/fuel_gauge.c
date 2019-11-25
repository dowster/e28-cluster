#include "esp_err.h"
#include "esp_log.h"

#include <driver/gpio.h>
#include <driver/dac.h>

/** 
 * 
 */
static void write_to_fuel_gauge(int percent_full) {
    int voltage = 70 + ((percent_full * 80) / 100);
    voltage &= 255;
            ESP_LOGI("FUEL VOLTAGE", "[V: %d, F: %d]", 
                voltage, percent_full);
    dac_output_voltage(DAC_CHANNEL_2, voltage);
}