#pragma once

#include "esp_err.h"
#include "esp_log.h"

#include <driver/gpio.h>
#include <driver/mcpwm.h>
#include <driver/sigmadelta.h>
#include <driver/ledc.h>

#define SPEEDO_LS_TIMER          LEDC_TIMER_1
#define SPEEDO_LS_MODE           LEDC_LOW_SPEED_MODE
#define SPEEDO_LS_CH1_CHANNEL    LEDC_CHANNEL_1

/*
    * Prepare and set configuration of timers
    * that will be used by LED Controller
    */
ledc_timer_config_t speedometer_timer_config = {
    .duty_resolution = LEDC_TIMER_10_BIT, // resolution of PWM duty
    .freq_hz = 2,                      // frequency of PWM signal
    .speed_mode = SPEEDO_LS_MODE,           // timer mode
    .timer_num = SPEEDO_LS_TIMER,            // timer index
    .clk_cfg = LEDC_AUTO_CLK,              // Auto select the source clock
};

ledc_channel_config_t speedo_channel = {
        .channel    = SPEEDO_LS_CH1_CHANNEL,
        .duty       = 0,
        .gpio_num   = -1,
        .speed_mode = SPEEDO_LS_MODE,
        .hpoint     = 0,
        .timer_sel  = SPEEDO_LS_TIMER
    };

void setup_speedometer_gauge(gpio_num_t guage_output_pin) {
    speedo_channel.gpio_num = guage_output_pin;

    ledc_timer_config(&speedometer_timer_config);
    ledc_channel_config(&speedo_channel);
}

/**
 * Write to the speedometer in MPH
 */
void write_to_speedometer(uint32_t speed) {
    ESP_LOGI("write_to_speedometer", "[%d mph]", speed);
    if(speed == 0) {
        ledc_set_duty(SPEEDO_LS_MODE, speedo_channel.channel, 0);
        ledc_update_duty(SPEEDO_LS_MODE, speedo_channel.channel);
    } else {
        ledc_set_duty(SPEEDO_LS_MODE, speedo_channel.channel, 512);
        ledc_update_duty(SPEEDO_LS_MODE, speedo_channel.channel);
        esp_err_t error = ledc_set_freq(SPEEDO_LS_MODE, SPEEDO_LS_TIMER, speed << 1);

        if(error != ESP_OK) {
            ESP_LOGE("write_to_speedometer", "Error setting speed to: [%d mph]", speed);
        }
    }
}