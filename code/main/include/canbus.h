#ifndef E28_CLUSTER_CANBUS_MODULE
#define E28_CLUSTER_CANBUS_MODULE

#include <esp_system.h>
#include <esp_err.h>
#include <esp_log.h>

#include <freertos/FreeRTOS.h>
#include <string.h> // Included for memset

#include <driver/can.h>

#include "config.h"

/** Check for required defines **/
#ifndef CAN_RX_TASK_PRIO
#error CAN_RX_TASK_PRIO needs to be defined! Example config block provided in canbus.h.
#endif

#ifndef CAN_TX_GPIO_NUM
#error CAN_TX_GPIO_NUM needs to be defined! Example config block provided in canbus.h.
#endif

#ifndef CAN_RX_GPIO_NUM
#error CAN_RX_GPIO_NUM needs to be defined! Example config block provided in canbus.h.
#endif

/** sample CAN bus config **/
/**
 * Priority of the FreeRTOS task which
 * checks for and handles messages
 * received on the CAN bus.
 */
//#define CAN_RX_TASK_PRIO 9

/**
 * GPIO pin for the CAN bus TX.
 */
//#define CAN_TX_GPIO_NUM  18

/**
 * GPIO pin for the CAN bus TX.
 */
//#define CAN_RX_GPIO_NUM  19
/** end of sample CAN bus config **/

/** end of required defines check **/

#define CANBUS_LOG_TAG      "CAN Listen Only"

//Set TX queue length to 0 due to listen only mode
static const can_general_config_t can_general_config = 
{
    .mode = CAN_MODE_NORMAL,
    .tx_io = CAN_TX_GPIO_NUM,
    .rx_io = CAN_RX_GPIO_NUM,
    .clkout_io = CAN_IO_UNUSED,
    .bus_off_io = CAN_IO_UNUSED,
    .tx_queue_len = 10,
    .rx_queue_len = 10,
    .alerts_enabled = CAN_ALERT_NONE,
    .clkout_divider = 0
};

/**
 * 
 */
void can_configure();

/**
 * 
 */
void can_receive_task(void *arg);

#endif