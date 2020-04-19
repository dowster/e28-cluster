#include "include/indicator_lights.h"

static const char* INDICATOR_LIGHTS_LOG_TAG = "INDICATOR_LIGHTS";

struct indicator_light e30_indicators[]={
    {  0, "INSPECTION_RESET" },
    {  1, "INDICATOR_LOW_FUEL" },
    {  2, "INDICATOR_LOW_BEAM" },
    {  3, "INDICATOR_HIGH_BEAM" },
    {  4, "INDICATOR_BLANK_ORANGE" },
    {  5, "INDICATOR_PARK_BRAKE" },
    {  6, "INDICATOR_BRAKE_LINING" },
    {  7, "INDICATOR_BRAKE" },
    {  8, "INDICATOR_ANTI_LOCK" },
    {  9, "INDICATOR_BATTERY" },
    { 10, "INDICATOR_OIL_PRESSURE" },
    { 11, "INDICATOR_LEFT_TURN" },
    { 12, "INDICATOR_RIGHT_TURN" },
    { 13, "INDICATOR_CHECK" }
};

bool indicator_lights_initialized = false;
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

    ESP_LOGI(INDICATOR_LIGHTS_LOG_TAG, "Initializing MCP23017 IC");
    ESP_ERROR_CHECK(mcp23x17_init_desc(&indicator_lights_expander, 0, i2c_expander_addr, SDA_GPIO, SCL_GPIO));

    // set the entire device to output
    // send this message twice since sometimes the first message is lost
    ESP_LOGI(INDICATOR_LIGHTS_LOG_TAG, "Setting port mode to clear bus");
    esp_err_t res1 = mcp23x17_port_set_mode(&indicator_lights_expander, 0x00);
    ESP_LOGI(INDICATOR_LIGHTS_LOG_TAG, "Setting port mode to configure MCP23017");
    esp_err_t res2 = mcp23x17_port_set_mode(&indicator_lights_expander, 0x00);

    indicator_lights_initialized = res1 == ESP_OK || res2 == ESP_OK;

    if(indicator_lights_initialized) 
    {
        ESP_LOGI(INDICATOR_LIGHTS_LOG_TAG, "Initialization Complete.");
    } else {
        ESP_LOGI(INDICATOR_LIGHTS_LOG_TAG, "Initialization failed, could not write to MCP23017 to set the mode.");
    }
}

void indicator_lights(void *pvParameters)
{
    if(!indicator_lights_initialized)
    {
        ESP_LOGE(INDICATOR_LIGHTS_LOG_TAG, "Attempted to start indicator lights task but indicator lights has not been initialized");
        vTaskDelete(NULL);
    }

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
    
    if(!indicator_lights_initialized)
    {
        ESP_LOGE(INDICATOR_LIGHTS_LOG_TAG, "indicator_activate called but indicator lights are not initialized");
        return;
    }

    if(pin > 15)
        return;

    mcp23x17_set_level(&indicator_lights_expander, pin, 1);
}

/**
 * Turn on an indicator light.
 */
bool indicator_get_state(uint8_t pin) {
    
    if(!indicator_lights_initialized)
    {
        ESP_LOGE(INDICATOR_LIGHTS_LOG_TAG, "indicator_get_state called but indicator lights are not initialized");
        return false;
    }

    if(pin > 15)
        return false;

    bool level = false;
    mcp23x17_get_level(&indicator_lights_expander, pin, &level);
    return level;
}

/**
 * Turn on all indicator lights.
 */
void indicator_activate_all() {
    
    if(!indicator_lights_initialized)
    {
        ESP_LOGE(INDICATOR_LIGHTS_LOG_TAG, "indicator_activate_all called but indicator lights are not initialized");
        return;
    }

    mcp23x17_port_write(&indicator_lights_expander, 0xFF);
}

/**
 * Turn off an indicator light.
 */
void indicator_deactivate(uint8_t pin) {
    
    if(!indicator_lights_initialized)
    {
        ESP_LOGE(INDICATOR_LIGHTS_LOG_TAG, "indicator_deactivate called but indicator lights are not initialized");
        return;
    }

    if(pin > 15) 
        return;

    mcp23x17_set_level(&indicator_lights_expander, pin, 0);
}

/**
 * Turn off all indicator lights.
 */
void indicator_deactivate_all() {
    
    if(!indicator_lights_initialized)
    {
        ESP_LOGE(INDICATOR_LIGHTS_LOG_TAG, "indicator_deactivate_all called but indicator lights are not initialized");
        return;
    }

    mcp23x17_port_write(&indicator_lights_expander, 0x00);
}