#include "include/indicator_lights.h"

static const char* INDICATOR_LIGHTS_LOG_TAG = "INDICATOR_LIGHTS";

mcp23x17_t indicator_lights_expander;

void indicators_init(uint8_t i2c_expander_addr) {

    ESP_LOGI(INDICATOR_LIGHTS_LOG_TAG, "Initializing i2c port");
    
    ESP_ERROR_CHECK(i2cdev_init());
    
    // Make sure that the indicator_lights_expander var is zeroed out
    // this prevents any stray bits from making their way into our config
    memset(&indicator_lights_expander, 0, sizeof(mcp23x17_t));

    // This is probably redundant since we just zeroed everything out
    indicator_lights_expander.cfg.scl_pullup_en = GPIO_PULLUP_DISABLE;
    indicator_lights_expander.cfg.sda_pullup_en = GPIO_PULLUP_DISABLE;

    ESP_ERROR_CHECK(mcp23x17_init_desc(&indicator_lights_expander, 0, i2c_expander_addr, SDA_GPIO, SCL_GPIO));

    // set the entire device to output
    // send this message twice since sometimes the first message is lost
    mcp23x17_port_set_mode(&indicator_lights_expander, 0x00);
    mcp23x17_port_set_mode(&indicator_lights_expander, 0x00);
}

void indicator_lights(void *pvParameters)
{
    while(true) 
    {
        for( uint8_t loops = 10; loops > 0; loops--) 
        {
            indicator_activate_all();
            vTaskDelay(500 / portTICK_PERIOD_MS);
            indicator_deactivate_all();
            vTaskDelay(500 / portTICK_PERIOD_MS);
        }
        uint8_t pin = 0;

        for(; pin <= INDICATOR_CHECK; pin++)
        {
            if(pin > 0) 
            {
                indicator_deactivate(pin - 1);
            }
            indicator_activate(pin);
            vTaskDelay(500 / portTICK_PERIOD_MS);
        }

        for(pin--; pin < INDICATOR_CHECK + 20; pin--)
        {
            indicator_deactivate(pin + 1);
            indicator_activate(pin);
            vTaskDelay(500 / portTICK_PERIOD_MS);
        }

        indicator_deactivate(INDICATOR_CHECK);
    }
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
    mcp23x17_port_write(&indicator_lights_expander, 0xFFFF);
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