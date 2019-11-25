/* Hello World Example

   This example code is in the Public Domain (or CC0 licensed, at your option.)

   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/
#include <stdio.h>
#include <driver/gpio.h>
#include <driver/dac.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"
#include "freertos/semphr.h"
#include "esp_system.h"
#include "esp_spi_flash.h"
#include "esp_err.h"
#include "esp_log.h"
#include "driver/can.h"

#include "fuel_gauge.c"

/* --------------------- Definitions and static variables ------------------ */
//Example Configuration
#define NO_OF_ITERS                     3
#define RX_TASK_PRIO                    9
#define TX_GPIO_NUM                     21
#define RX_GPIO_NUM                     22
#define EXAMPLE_TAG                     "CAN Listen Only"

#define ID_ENGINE_SPEED_TEMP            0x35B
#define ID_VEHICLE_SPEED                0x29B

#define GPIO_OUTPUT_IO_0                18

static const can_filter_config_t can_filter_config = CAN_FILTER_CONFIG_ACCEPT_ALL();
static const can_timing_config_t can_timing_config = CAN_TIMING_CONFIG_500KBITS();
//Set TX queue length to 0 due to listen only mode
static const can_general_config_t can_general_config = {.mode = CAN_MODE_NORMAL,
                                              .tx_io = TX_GPIO_NUM, .rx_io = RX_GPIO_NUM,
                                              .clkout_io = CAN_IO_UNUSED, .bus_off_io = CAN_IO_UNUSED,
                                              .tx_queue_len = 10, .rx_queue_len = 10,
                                              .alerts_enabled = CAN_ALERT_NONE,
                                              .clkout_divider = 0};

static void can_configure() {
    //Install and start CAN driver
    ESP_ERROR_CHECK(can_driver_install(&can_general_config, &can_timing_config, &can_filter_config));
    ESP_LOGI(EXAMPLE_TAG, "Driver installed");
    ESP_ERROR_CHECK(can_start());
    ESP_LOGI(EXAMPLE_TAG, "Driver started");
}

static void output_configure() {
    dac_output_enable(DAC_CHANNEL_1);
    dac_output_enable(DAC_CHANNEL_2);
}


static void can_receive_task(void *arg) {

    while(true) {
        can_message_t rx_msg;
        can_receive(&rx_msg, portMAX_DELAY);
        ESP_LOGI("CAN_MSG", "ID: %2x", rx_msg.identifier);
        if (rx_msg.identifier == ID_ENGINE_SPEED_TEMP) {
            //int rpm = ((rx_msg.data[0] / 255) * 100) + ((rx_msg.data[1] / 16) * 1000);
            //int temp = rx_msg.data[2];
            ESP_LOGI("CAN_0x35B", "[%2x, %2x, %2x, %2x, %2x, %2x, %2x, %2x]", 
                rx_msg.data[7], rx_msg.data[6], rx_msg.data[5], rx_msg.data[4], 
                rx_msg.data[3], rx_msg.data[2], rx_msg.data[1], rx_msg.data[0]);
            ESP_LOGI(EXAMPLE_TAG, "Received master ping");
            write_to_fuel_gauge(rx_msg.data[0]);
        }
        
        if (rx_msg.identifier == ID_VEHICLE_SPEED) {
            ESP_LOGI("CAN_0x29B", "[%2x, %2x, %2x, %2x, %2x, %2x, %2x, %2x]", 
                rx_msg.data[7], rx_msg.data[6], rx_msg.data[5], rx_msg.data[4], 
                rx_msg.data[3], rx_msg.data[2], rx_msg.data[1], rx_msg.data[0]);
            ESP_LOGI(EXAMPLE_TAG, "Received slave ping response");
        } 

        vTaskDelay(pdMS_TO_TICKS(100));
    }

}
static int coefficient = 1;
static void flip_flap(void *arg) {

    gpio_set_direction(GPIO_NUM_2, GPIO_MODE_OUTPUT);
    gpio_set_pull_mode(GPIO_NUM_2, GPIO_PULLDOWN_ONLY);

    bool flip = true;
    while(true) {
        if(flip) {
            gpio_set_level(GPIO_NUM_2, 1);
            ESP_LOGI("FLIP_FLAP", "FLIPPED - C=%d", coefficient);
        } else {
            gpio_set_level(GPIO_NUM_2, 0);
            ESP_LOGI("FLIP_FLAP", "FLAPPED - C=%d", coefficient);

        }
        flip = !flip;

        vTaskDelay(pdMS_TO_TICKS(10 * coefficient));
    }

}

/** 
 * 
 * Key Points: 
 *  250 - Top of Gauge
 *  200 - Middle of Gauge
 *  150 - Top of Blue
 *  100 - Bottom of Blue
 * 250 - 200 is the top half of the gauge
 * 200 - 100 is the bottom half of the gauge
 */
static void write_to_temp_gauge(int temp) {
    int voltage = temp;
            ESP_LOGI("TEMP", "[V: %d, T: %d]", 
                voltage, temp);
    dac_output_voltage(DAC_CHANNEL_1, voltage);
}

void app_main(void)
{
    printf("Hello world!\n");

    /* Print chip information */
    esp_chip_info_t chip_info;
    esp_chip_info(&chip_info);
    printf("This is ESP32 chip with %d CPU cores, WiFi%s%s, ",
            chip_info.cores,
            (chip_info.features & CHIP_FEATURE_BT) ? "/BT" : "",
            (chip_info.features & CHIP_FEATURE_BLE) ? "/BLE" : "");

    printf("silicon revision %d, ", chip_info.revision);

    printf("%dMB %s flash\n", spi_flash_get_chip_size() / (1024 * 1024),
            (chip_info.features & CHIP_FEATURE_EMB_FLASH) ? "embedded" : "external");

    can_configure();
    output_configure();

    xTaskCreate(can_receive_task, "CAN_rx", 4096, NULL, RX_TASK_PRIO, NULL);

    for (int i = 120; i >= 0; i--) {
        printf("Restarting in %d seconds...\n", i);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
    printf("Restarting now.\n");
    fflush(stdout);
    esp_restart();
}
