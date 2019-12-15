#include "esp_err.h"
#include "esp_log.h"

#include <driver/gpio.h>
#include <driver/dac.h>

static dac_channel_t fuel_gauge_channel = -1;
static gpio_num_t low_fuel_indicator_pin = -1;

/**
 * Setup the temperature gauge output. 
 * 
 * @param gauge dac output pin
 * @param low_fuel_indicator output pin
 */
void setup_fuel_gauge(dac_channel_t gauge, gpio_num_t low_fuel_indicator) {
    if(gauge != -1) {
        esp_err_t error = dac_output_enable(gauge);
        if(error == ESP_OK) {
            fuel_gauge_channel = gauge;
        }
    }

    if(low_fuel_indicator != -1 &&
        (
            low_fuel_indicator < GPIO_NUM_34 || // pins 34 - 39 on esp32 are
            low_fuel_indicator > GPIO_NUM_39    // input only
        )) {
        gpio_config_t config = {
            .pin_bit_mask = low_fuel_indicator,
            .mode = GPIO_MODE_OUTPUT,
            .pull_up_en = GPIO_PULLUP_DISABLE,
            .pull_down_en = GPIO_PULLDOWN_ENABLE,
            .intr_type = GPIO_INTR_DISABLE
        };
        esp_err_t error = gpio_config(&config);
        if(error == ESP_OK) {
            low_fuel_indicator_pin = low_fuel_indicator;
        }

    }
}

/** 
 * Set the position of the fuel gauge in terms of % full
 * 
 * @param percent_full for the gauge to point to
 */
void write_to_fuel_gauge(int percent_full) {
    if(fuel_gauge_channel == -1) {
        ESP_LOGE("write_to_fuel_gauge", "Fuel gauge not yet initialized, please call setup_fuel_gauge first.");
    } else {
        int voltage = 70 + ((percent_full * 80) / 100);
        voltage &= 255;
        ESP_LOGI("FUEL VOLTAGE", "[V: %d, %% Full: %d]", voltage, percent_full);
        dac_output_voltage(fuel_gauge_channel, voltage);
    }
}

/**
 * Turns the low fuel indicator light on if it's hooked up.
 */
void enable_low_fuel_indicator() {
    if(low_fuel_indicator_pin == -1) {
        ESP_LOGE("enable_low_fuel_indicator", "low fuel indicator not yet initialized, please call setup_fuel_gauge first.");
    } else {
        gpio_set_level(low_fuel_indicator_pin, 1);
    }
}

/**
 * Turns the low fuel indicator light off if it's hooked up.
 */
void disable_low_fuel_indicator() {
    if(low_fuel_indicator_pin == -1) {
        ESP_LOGE("enable_low_fuel_indicator", "low fuel indicator not yet initialized, please call setup_fuel_gauge first.");
    } else {
        gpio_set_level(low_fuel_indicator_pin, 0);
    }
}