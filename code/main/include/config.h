/** i2c config **/
#define I2C_FREQ_HZ 100000
#define SDA_GPIO 21
#define SCL_GPIO 22

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
#define CAN_TX_GPIO_NUM  18

/**
 * GPIO pin for the CAN bus TX.
 */
#define CAN_RX_GPIO_NUM  19