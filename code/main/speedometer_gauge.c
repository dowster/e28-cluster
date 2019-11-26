#include "esp_err.h"
#include "esp_log.h"

#include <driver/gpio.h>
#include <driver/mcpwm.h>
#include <driver/sigmadelta.h>
#include <driver/ledc.h>

#define LEDC_LS_TIMER          LEDC_TIMER_1
#define LEDC_LS_MODE           LEDC_LOW_SPEED_MODE
#define LEDC_LS_CH2_CHANNEL    LEDC_CHANNEL_2

/*
    * Prepare and set configuration of timers
    * that will be used by LED Controller
    */
ledc_timer_config_t speedometer_timer_config = {
    .duty_resolution = LEDC_TIMER_10_BIT, // resolution of PWM duty
    .freq_hz = 2,                      // frequency of PWM signal
    .speed_mode = LEDC_LS_MODE,           // timer mode
    .timer_num = LEDC_LS_TIMER,            // timer index
    .clk_cfg = LEDC_AUTO_CLK,              // Auto select the source clock
};

ledc_channel_config_t ledc_channel = {
        .channel    = LEDC_LS_CH2_CHANNEL,
        .duty       = 0,
        .gpio_num   = -1,
        .speed_mode = LEDC_LS_MODE,
        .hpoint     = 0,
        .timer_sel  = LEDC_LS_TIMER
    };

void setup_speedometer_gauge(gpio_num_t guage_output_pin) {
    ledc_channel.gpio_num = guage_output_pin;

    ledc_timer_config(&speedometer_timer_config);
    ledc_channel_config(&ledc_channel);
}

/**
 * Write to the speedometer in MPH
 */
void write_to_speedometer(uint32_t speed) {
    ESP_LOGI("write_to_speedometer", "[%d mph]", speed);
    if(speed == 0) {
        ledc_set_duty(LEDC_LS_MODE, ledc_channel.channel, 0);
        ledc_update_duty(LEDC_LS_MODE, ledc_channel.channel);
    } else {
        ledc_set_duty(LEDC_LS_MODE, ledc_channel.channel, 512);
        ledc_update_duty(LEDC_LS_MODE, ledc_channel.channel);
        esp_err_t error = ledc_set_freq(LEDC_LS_MODE, LEDC_LS_TIMER, speed << 1);

        if(error != ESP_OK) {
            ESP_LOGE("write_to_speedometer", "Error setting speed to: [%d mph]", speed);
        }
    }
}