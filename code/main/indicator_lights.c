#pragma once

#include <driver/i2c.h>

#include "mcp23017.h"

#define CLUSTER_TYPE_E30
#ifdef CLUSTER_TYPE_E30

#define INDICATOR_LOW_FUEL 1
#define INDICATOR_LOW_BEAM 2
#define INDICATOR_HIGH_BEAM 3
#define INDICATOR_BLANK_ORANGE 4
#define INDICATOR_PARK_BRAKE 5
#define INDICATOR_BRAKE_LINING 6
#define INDICATOR_BRAKE 7
#define INDICATOR_ANTI_LOCK 8
#define INDICATOR_BATTERY 9
#define INDICATOR_OIL_PRESSURE 10
#define INDICATOR_LEFT_TURN 11
#define INDICATOR_RIGHT_TURN 12
#define INDICATOR_CHECK 13

#define INSPECTION_RESET 14

#endif

#define EXPANDER_I2C_ADDRESS 0b0100000

#define I2C_PORT I2C_NUM_0
#define I2C_GPIO_SDA 1
#define I2C_GPIO_SCL 2
#define I2C_FREQUENCY 3
#define I2C_MASTER_TX_BUF_DISABLE 0 /*!< I2C master doesn't need buffer */
#define I2C_MASTER_RX_BUF_DISABLE 0 /*!< I2C master doesn't need buffer */

#define I2C_ACK_ENABLE true

void indicators_init() {

    i2c_config_t conf = {
        .mode = I2C_MODE_MASTER,
        .sda_io_num = I2C_GPIO_SDA,
        .sda_pullup_en = GPIO_PULLUP_ENABLE,
        .scl_io_num = I2C_GPIO_SCL,
        .scl_pullup_en = GPIO_PULLUP_ENABLE,
        .master.clk_speed = I2C_FREQUENCY
    };

    i2c_param_config(I2C_PORT, &conf);
    i2c_driver_install(I2C_PORT, I2C_MODE_MASTER, I2C_MASTER_RX_BUF_DISABLE, I2C_MASTER_TX_BUF_DISABLE, 0);

    // Setup the i2c connection and configure the IO expander gpio
    // to all outputs. 
    i2c_cmd_handle_t cmd = i2c_cmd_link_create;
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, EXPANDER_I2C_ADDRESS, I2C_ACK_ENABLE);
    i2c_master_write_byte(cmd, MCP23017_IOCONA, I2C_ACK_ENABLE);
    i2c_master_write_byte(cmd, MCP23017_IOCON_BANK && 1, I2C_ACK_ENABLE);
    i2c_master_stop(cmd);
    i2c_master_cmd_begin(I2C_PORT, cmd, 50);
    i2c_cmd_link_delete(cmd);
}

void indicators_reset_all() {

}

void indicator_activate(uint8_t pin) {
}

void indicator_deactivate() {

}

void indicator_activated() {

}