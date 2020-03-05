/* Hello World Example

   This example code is in the Public Domain (or CC0 licensed, at your option.)

   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/

#include <stdio.h>
#include <string.h>

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

#include "include/fuel_gauge.h"
#include "include/speedometer_gauge.h"
#include "include/tachometer_gauge.h"
#include "include/simpbms_comms.h"
#include "include/indicator_lights.h"
#include "include/canbus.h"

#include "include/temp_gauge.h"

#define ID_ENGINE_SPEED_TEMP      0x35B
#define ID_VEHICLE_SPEED          0x29B
#define INDICATOR_LIGHTS_EXPANDER 0x20
#define GPIO_OUTPUT_IO_0          18

extern "C" {
    void app_main(void);
}

TempGauge tempGauge;

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

    tempGauge = TempGauge(DAC_CHANNEL_1);
    setup_fuel_gauge(DAC_CHANNEL_2, GPIO_NUM_NC);

    setup_speedometer_gauge(GPIO_NUM_4);
    setup_tachometer_gauge(GPIO_NUM_5);

    ESP_LOGI("INIT", "Initializing canbus");
    can_configure();
    xTaskCreate(can_receive_task, "CAN_rx", 4096, NULL, CAN_RX_TASK_PRIO, NULL);

    indicators_init(INDICATOR_LIGHTS_EXPANDER);
    xTaskCreate(indicator_lights, "Indicator Lamp Update", configMINIMAL_STACK_SIZE * 6, NULL, 5, NULL);
    
    //write_to_speedometer(3);

    for (uint32_t i = 120; i >= 1; i--) {
        printf("Restarting in %d seconds...\n", i);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
        
        write_to_fuel_gauge(i / 1.2);
        tempGauge.write_to_temp_gauge(i + 100);

        write_to_speedometer(i);
        write_to_tachometer(i * 40);
    }
    printf("Restarting now.\n");
    fflush(stdout);
    esp_restart();
}
