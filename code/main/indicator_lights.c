#include <driver/gpio.h>
#include <driver/i2c.h>
#include <esp_log.h>

#include "mcp23017.h"

#define CLUSTER_TYPE_E30
#ifdef CLUSTER_TYPE_E30

#define INSPECTION_RESET        0
#define INDICATOR_LOW_FUEL      1
#define INDICATOR_LOW_BEAM      2
#define INDICATOR_HIGH_BEAM     3
#define INDICATOR_BLANK_ORANGE  4
#define INDICATOR_PARK_BRAKE    5
#define INDICATOR_BRAKE_LINING  6
#define INDICATOR_BRAKE         7
#define INDICATOR_ANTI_LOCK     8
#define INDICATOR_BATTERY       9
#define INDICATOR_OIL_PRESSURE  10
#define INDICATOR_LEFT_TURN     11
#define INDICATOR_RIGHT_TURN    12
#define INDICATOR_CHECK         13

#endif

#define EXPANDER_I2C_ADDRESS 0x20
#define EXPANDER_WRITE_BIT   0x01
#define EXPANDER_READ_BIT    0x00

static gpio_num_t i2c_gpio_sda = 21;
static gpio_num_t i2c_gpio_scl = 22;
static uint32_t i2c_frequency = 100000;
static i2c_port_t i2c_port = I2C_NUM_1;


#define I2C_MASTER_TX_BUF_DISABLE 0 /*!< I2C master doesn't need buffer */
#define I2C_MASTER_RX_BUF_DISABLE 0 /*!< I2C master doesn't need buffer */

#define I2C_ACK_ENABLE 0x1

uint16_t INDICATOR_OUTPUT_STATUS = 0x0000;

static const char* TAG = "INDICATOR_LIGHTS";

void indicators_init() {

    i2c_config_t conf;
    conf.mode = I2C_MODE_MASTER;
    conf.sda_io_num = i2c_gpio_sda;
    conf.scl_io_num = i2c_gpio_scl;
    conf.sda_pullup_en = GPIO_PULLUP_DISABLE;
    conf.scl_pullup_en = GPIO_PULLUP_DISABLE;
    conf.master.clk_speed = i2c_frequency;

    ESP_LOGI("I2C", "Initializing i2c port");
    i2c_param_config(i2c_port, &conf);
    i2c_driver_install(i2c_port, I2C_MODE_MASTER, 20, 20, 0);

    // Setup the i2c connection and configure the IO expander gpio
    // to all outputs. 
    
    ESP_LOGI("I2C", "Initializing i2c gpio expander");
    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, (EXPANDER_I2C_ADDRESS << 1) | EXPANDER_WRITE_BIT, I2C_ACK_ENABLE);
    i2c_master_write_byte(cmd, MCP23017_IODIRA, I2C_ACK_ENABLE);
    i2c_master_write_byte(cmd, 0x00, I2C_ACK_ENABLE); // Set IODIR of register A to output
    esp_err_t ret = i2c_master_cmd_begin(i2c_port, cmd, 10000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);

    if (ret == ESP_OK) {
        ESP_LOGI(TAG, "Write OK");
    } else if (ret == ESP_ERR_TIMEOUT) {
        ESP_LOGW(TAG, "Bus is busy");
    } else {
        ESP_LOGW(TAG, "Write Failed");
    }
    
    ESP_LOGI("I2C", "Initializing i2c gpio expander");
    cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, (EXPANDER_I2C_ADDRESS << 1) | EXPANDER_WRITE_BIT, I2C_ACK_ENABLE);
    i2c_master_write_byte(cmd, MCP23017_IODIRA, I2C_ACK_ENABLE);
    i2c_master_write_byte(cmd, 0x00, I2C_ACK_ENABLE); // Set IODIR of register A to output
    ret = i2c_master_cmd_begin(i2c_port, cmd, 10000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);

    if (ret == ESP_OK) {
        ESP_LOGI(TAG, "Write OK");
    } else if (ret == ESP_ERR_TIMEOUT) {
        ESP_LOGW(TAG, "Bus is busy");
    } else {
        ESP_LOGW(TAG, "Write Failed");
    }

    cmd = i2c_cmd_link_create();
    
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, (EXPANDER_I2C_ADDRESS << 1) | EXPANDER_WRITE_BIT, I2C_ACK_ENABLE);
    i2c_master_write_byte(cmd, MCP23017_IODIRB, I2C_ACK_ENABLE);
    i2c_master_write_byte(cmd, 0x00, I2C_ACK_ENABLE); // Set IODIR of register B to output
    esp_err_t ret1 = i2c_master_cmd_begin(i2c_port, cmd, 10000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);

    if (ret1 == ESP_OK) {
        ESP_LOGI(TAG, "Write OK");
    } else if (ret1 == ESP_ERR_TIMEOUT) {
        ESP_LOGW(TAG, "Bus is busy");
    } else {
        ESP_LOGW(TAG, "Write Failed");
    }
}

void indicator_write_status() {
    // Setup the i2c connection and configure the IO expander gpio
    // to all outputs. 
    ESP_LOGI("I2C", "write status of %d", INDICATOR_OUTPUT_STATUS);

    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, (EXPANDER_I2C_ADDRESS << 1) | EXPANDER_WRITE_BIT, I2C_ACK_ENABLE);
    i2c_master_write_byte(cmd, MCP23017_GPIOA, I2C_ACK_ENABLE);
    // Write the least significant byte of the INDICATOR_OUTPUT_STATUS
    // to port A
    
    ESP_LOGI("I2C", "GPIOA VAL = %d", INDICATOR_OUTPUT_STATUS & 0xFF);
    i2c_master_write_byte(cmd, 0xFF, I2C_ACK_ENABLE);
    esp_err_t ret = i2c_master_cmd_begin(i2c_port, cmd, 10000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);

    if (ret == ESP_OK) {
        ESP_LOGI(TAG, "Write OK");
    } else if (ret == ESP_ERR_TIMEOUT) {
        ESP_LOGW(TAG, "Bus is busy");
    } else {
        ESP_LOGW(TAG, "Write Failed");
    }

    cmd = i2c_cmd_link_create();
    
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, (EXPANDER_I2C_ADDRESS << 1) | EXPANDER_WRITE_BIT, I2C_ACK_ENABLE);
    i2c_master_write_byte(cmd, MCP23017_GPIOB, I2C_ACK_ENABLE);
    // Write the most significant byte of the INDICATOR_OUTPUT_STATUS
    // to port B
    ESP_LOGI("I2C", "GPIOB VAL = %d", (INDICATOR_OUTPUT_STATUS >> 7) & 0xFF);
    i2c_master_write_byte(cmd, 0xFF, I2C_ACK_ENABLE);
    esp_err_t ret1 = i2c_master_cmd_begin(i2c_port, cmd, 10000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);

    if (ret1 == ESP_OK) {
        ESP_LOGI(TAG, "Write OK");
    } else if (ret1 == ESP_ERR_TIMEOUT) {
        ESP_LOGW(TAG, "Bus is busy");
    } else {
        ESP_LOGW(TAG, "Write Failed");
    }
}

void indicators_reset_all() {
    INDICATOR_OUTPUT_STATUS = 0x0000;
    indicator_write_status();
}

void indicator_activate(uint8_t pin) {
    if(pin > 15) 
        return;

    INDICATOR_OUTPUT_STATUS |= ( 1 << pin );
    indicator_write_status();
}

void indicator_activate_all() {
    INDICATOR_OUTPUT_STATUS = 0xFFFF;
    indicator_write_status();
}

void indicator_deactivate(uint8_t pin) {
    if(pin > 15) 
        return;

    INDICATOR_OUTPUT_STATUS &= ~( 1 << pin );
    indicator_write_status();
}

void indicator_deactivate_all() {
    INDICATOR_OUTPUT_STATUS = 0x0000;
    indicator_write_status();
}

bool indicator_is_activated(uint8_t pin) {
    return INDICATOR_OUTPUT_STATUS & ( 1 << pin );
}