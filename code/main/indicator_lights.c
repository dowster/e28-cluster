
#include <esp_system.h>
#include <esp_err.h>
#include <esp_log.h>

#include <freertos/FreeRTOS.h>
#include <string.h> // Included for memset

#include <mcp23x17.h>

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

#define I2C_FREQ_HZ 100000
#define SDA_GPIO 21
#define SCL_GPIO 22

static const char* TAG = "INDICATOR_LIGHTS";

mcp23x17_t indicator_lights_expander;

void indicators_init() {

    ESP_LOGI("I2C", "Initializing i2c port");
    
    ESP_ERROR_CHECK(i2cdev_init());
    
    // Make sure that the indicator_lights_expander var is zeroed out
    // this prevents any stray bits from making their way into our config
    memset(&indicator_lights_expander, 0, sizeof(mcp23x17_t));

    // This is probably redundant since we just zeroed everything out
    indicator_lights_expander.cfg.scl_pullup_en = GPIO_PULLUP_DISABLE;
    indicator_lights_expander.cfg.sda_pullup_en = GPIO_PULLUP_DISABLE;

    ESP_ERROR_CHECK(mcp23x17_init_desc(&indicator_lights_expander, 0, MCP23X17_ADDR_BASE, SDA_GPIO, SCL_GPIO));

    // set the entire device to output
    // send this message twice since sometimes the first message is lost
    mcp23x17_port_set_mode(&indicator_lights_expander, 0x00);
    mcp23x17_port_set_mode(&indicator_lights_expander, 0x00);
}

/**
 * Turn on an indicator light.
 */
void indicator_activate(uint8_t pin) {
    if(pin > 15) 
        return;

    mcp23x17_set_level(&indicator_lights_expander, pin, 1);
}

/**
 * Turn on all indicator lights.
 */
void indicator_activate_all() {
    mcp23x17_port_write(&indicator_lights_expander, 0xFF);
}

/**
 * Turn off an indicator light.
 */
void indicator_deactivate(uint8_t pin) {
    if(pin > 15) 
        return;

    mcp23x17_set_level(&indicator_lights_expander, pin, 0);
}

/**
 * Turn off all indicator lights.
 */
void indicator_deactivate_all() {
    mcp23x17_port_write(&indicator_lights_expander, 0x00);
}