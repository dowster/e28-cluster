/* Hello World Example

   This example code is in the Public Domain (or CC0 licensed, at your option.)

   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/
#include <stdio.h>
#include <driver/gpio.h>
#include <driver/dac.h>
#include <freertos/FreeRTOS.h>
#include <freertos/task.h>
#include <freertos/queue.h>
#include <freertos/semphr.h>
#include <esp_system.h>
#include <esp_spi_flash.h>
#include <esp_err.h>
#include <esp_log.h>
#include <driver/can.h>

#include "fuel_gauge.c"
#include "temp_gauge.c"
#include "speedometer_gauge.c"
#include "tachometer_gauge.c"
#include "simpbms_comms.c"
#include "indicator_lights.c"

/* --------------------- Definitions and static variables ------------------ */
//Example Configuration
#define NO_OF_ITERS                     3
#define RX_TASK_PRIO                    9
#define TX_GPIO_NUM                     18
#define RX_GPIO_NUM                     19
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
    setup_temp_gauge(DAC_CHANNEL_1);
    setup_fuel_gauge(DAC_CHANNEL_2, -1);
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

    //can_configure();

    output_configure();
    setup_speedometer_gauge(GPIO_NUM_4);
    setup_tachometer_gauge(GPIO_NUM_5);

    ESP_LOGI("INIT", "Initializing canbus");
    //xTaskCreate(can_receive_task, "CAN_rx", 4096, NULL, RX_TASK_PRIO, NULL);

    ESP_LOGI("INIT", "Initializing i2c");
    indicators_init();
    
    write_to_speedometer(3);

    bool on_or_off = true;
    uint8_t count = 0;


    for (uint32_t i = 120; i >= 1; i--) {
        printf("Restarting in %d seconds...\n", i);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
        
        write_to_fuel_gauge(i / 1.2);
        write_to_temp_gauge(i + 100);
        
        if(on_or_off)
        {
            indicator_activate(count);
        }
        else
        {
            indicator_deactivate(count);
        }

        count++;
        count = count % 13;

        // Switch the direction
        if(count == 0)
            on_or_off = !on_or_off;

        write_to_speedometer(i);
        write_to_tachometer(i * 40);
    }
    printf("Restarting now.\n");
    fflush(stdout);
    esp_restart();
}
