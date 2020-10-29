#include <driver/gpio.h>

/** i2c config **/
#define I2C_FREQ_HZ 100000
#define SDA_GPIO GPIO_NUM_21
#define SCL_GPIO GPIO_NUM_22

/** CAN bus config **/
/**
 * Priority of the FreeRTOS task which
 * checks for and handles messages
 * received on the CAN bus.
 */
#define CAN_RX_TASK_PRIO 9

/**
 * GPIO pin for the CAN bus TX.
 */
#define CAN_TX_GPIO_NUM  GPIO_NUM_18

/**
 * GPIO pin for the CAN bus TX.
 */
#define CAN_RX_GPIO_NUM  GPIO_NUM_19