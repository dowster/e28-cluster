#include "include/canbus.h"
#include "include/simpbms_comms.h"

static const can_filter_config_t can_filter_config = CAN_FILTER_CONFIG_ACCEPT_ALL();
static const can_timing_config_t can_timing_config = CAN_TIMING_CONFIG_500KBITS();

void can_configure() {
    //Install and start CAN driver
    ESP_ERROR_CHECK(can_driver_install(&can_general_config, &can_timing_config, &can_filter_config));
    ESP_LOGI(CANBUS_LOG_TAG, "Driver installed");
    ESP_ERROR_CHECK(can_start());
    ESP_LOGI(CANBUS_LOG_TAG, "Driver started");
}

void can_receive_task(void *arg) {

    while(true) {
        can_message_t rx_msg;
        can_receive(&rx_msg, portMAX_DELAY);
        ESP_LOGI("CAN_MSG", "ID: %2x", rx_msg.identifier);
        switch(rx_msg.identifier) {
            case SIMPBMS_MSG_ID_LIMITS:
                simpbms_process_limits(&rx_msg);
                break;
            case SIMPBMS_MSG_ID_SOC:
                simpbms_process_soc(&rx_msg);
                break;
            case SIMPBMS_MSG_ID_STATUS:
                simpbms_process_status(&rx_msg);
                break;
            case SIMPBMS_MSG_ID_ALARMS_WARNINGS:
                simpbms_process_warnings(&rx_msg);
                break;
            default:
                break;
        }

        vTaskDelay(pdMS_TO_TICKS(100));
    }
}
