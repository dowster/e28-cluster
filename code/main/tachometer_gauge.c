#include "esp_err.h"
#include "esp_log.h"

#include <driver/gpio.h>
#include <driver/mcpwm.h>
#include <driver/sigmadelta.h>
#include <driver/ledc.h>

#define TACH_LS_TIMER          LEDC_TIMER_2
#define TACH_LS_MODE           LEDC_LOW_SPEED_MODE
#define TACH_LS_CH2_CHANNEL    LEDC_CHANNEL_2

/*
    * Prepare and set configuration of timers
    * that will be used by LED Controller
    */
ledc_timer_config_t tachometer_timer_config = {
    .duty_resolution = LEDC_TIMER_10_BIT, // resolution of PWM duty
    .freq_hz = 1,                      // frequency of PWM signal
    .speed_mode = TACH_LS_MODE,           // timer mode
    .timer_num = TACH_LS_TIMER,            // timer index
 //   .clk_cfg = LEDC_AUTO_CLK,              // Auto select the source clock
};

ledc_channel_config_t tachometer_ledc_channel = {
        .channel    = TACH_LS_CH2_CHANNEL,
        .duty       = 0,
        .gpio_num   = -1,
        .speed_mode = TACH_LS_MODE,
        .hpoint     = 0,
        .timer_sel  = TACH_LS_TIMER
    };

void setup_tachometer_gauge(gpio_num_t guage_output_pin) {
    tachometer_ledc_channel.gpio_num = guage_output_pin;

    ledc_timer_config(&tachometer_timer_config);
    ledc_channel_config(&tachometer_ledc_channel);
}

/**
 * Write to the tachometer in MPH
 */
void write_to_tachometer(uint32_t rpm) {
    ESP_LOGI("write_to_tachometer", "[%d rpm]", rpm);
    if(rpm == 0) {
        ledc_set_duty(TACH_LS_MODE, tachometer_ledc_channel.channel, 0);
        ledc_update_duty(TACH_LS_MODE, tachometer_ledc_channel.channel);
    } else {
        ledc_set_duty(TACH_LS_MODE, tachometer_ledc_channel.channel, 512);
        ledc_update_duty(TACH_LS_MODE, tachometer_ledc_channel.channel);
        esp_err_t error = ledc_set_freq(TACH_LS_MODE, TACH_LS_TIMER, rpm / 20);

        if(error != ESP_OK) {
            ESP_LOGE("write_to_tachometer", "Error setting rpm to: [%d rpm]", rpm);
        }
    }
}