#include <esp_system.h>
#include <esp_err.h>
#include <esp_log.h>

#include <freertos/FreeRTOS.h>
#include <string.h> // Included for memset

#ifdef __cplusplus
extern "C" {
#endif

#ifndef E28_CLUSTER_INDICATOR_LIGHTS
#define E28_CLUSTER_INDICATOR_LIGHTS

#include <mcp23x17.h>
#include "config.h"

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

struct indicator_light {
    int mcp23017_pin;
    char name[25];
};

extern struct indicator_light e30_indicators[];

/**
 *
 */
void indicators_init(uint8_t i2c_expander_addr);

/**
 *
 */
void indicator_lights(void *pvParameters);

/**
 *
 */
void indicator_activate(uint8_t pin);

/**
 *
 */
bool indicator_get_state(uint8_t pin);

/**
 *
 */
void indicator_activate_all();

/**
 *
 */
void indicator_deactivate(uint8_t pin);

/**
 *
 */
void indicator_deactivate_all();

#endif

#ifdef __cplusplus
}
#endif
