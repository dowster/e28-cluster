/**
 * Communication file for the simpbms CAN messages. 
 * Will start reading from those messages and then include
 * data from the Volt/Ampera packs if I need more.
 */

#include <freertos/FreeRTOS.h>
#include <freertos/task.h>
#include <esp_log.h>
#include <driver/can.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef E28_CLUSTER_SIMPBMS_COMMS
#define E28_CLUSTER_SIMPBMS_COMMS

#define SIMPBMS_MSG_ID_LIMITS          0x351
#define SIMPBMS_MSG_ID_SOC             0x355
#define SIMPBMS_MSG_ID_STATUS          0x356
#define SIMPBMS_MSG_ID_ALARMS_WARNINGS 0x35A

/**
 * Discharge current limit in .1 A
 */
extern uint16_t simpbms_limit_discharge_current;

/**
 * Discharge voltage limit in .1 V
 */
extern uint16_t simpbms_limit_discharge_voltage;

/**
 * Charge current limit in .1 A
 */
extern uint16_t simpbms_limit_charge_current;

/**
 * Charge voltage limit in .1 V
 */
extern uint16_t simpbms_limit_charge_voltage;

/**
 * Battery SOC in 1 %
 */
extern uint16_t simpbms_battery_soc;

/**
 * Battery SOH in 1 %
 */
extern uint16_t simpbms_battery_soh;

/**
 * Battery SOC in 0.01 %
 */
extern uint16_t simpbms_battery_soc_granular;


/**
 * Battery voltage in 0.01 V
 */
extern uint16_t simpbms_status_voltage;

/**
 * Battery current in .1 A
 */
extern uint16_t simpbms_status_current;

/**
 * Battery temp in 0.1 deg C
 */
extern uint16_t simpbms_status_temp;

extern bool simpbms_warning_undervoltage;
extern bool simpbms_warning_overvoltage;
extern bool simpbms_warning_overtemp;
extern bool simpbms_warning_undertemp;

extern bool simpbms_alarm_undervoltage;
extern bool simpbms_alarm_overvoltage;
extern bool simpbms_alarm_overtemp;
extern bool simpbms_alarm_undertemp;

/**
 * 
 */
void simpbms_process_limits(can_message_t *message);

/**
 * 
 */
void simpbms_process_soc(can_message_t *message);

/**
 * 
 */
void simpbms_process_status(can_message_t *message);

/**
 * 
 */
void simpbms_process_warnings(can_message_t *message);

#endif

#ifdef __cplusplus
}
#endif