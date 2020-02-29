/**
 * Communication file for the simpbms CAN messages. 
 * Will start reading from those messages and then include
 * data from the Volt/Ampera packs if I need more.
 */

#include "include/simpbms_comms.h"

/**
 * Discharge current limit in .1 A
 */
uint16_t simpbms_limit_discharge_current = 0;

/**
 * Discharge voltage limit in .1 V
 */
uint16_t simpbms_limit_discharge_voltage = 0;

/**
 * Charge current limit in .1 A
 */
uint16_t simpbms_limit_charge_current = 0;

/**
 * Charge voltage limit in .1 V
 */
uint16_t simpbms_limit_charge_voltage = 0;

/**
 * Battery SOC in 1 %
 */
uint16_t simpbms_battery_soc = 0;

/**
 * Battery SOH in 1 %
 */
uint16_t simpbms_battery_soh = 0;

/**
 * Battery SOC in 0.01 %
 */
uint16_t simpbms_battery_soc_granular = 0;


/**
 * Battery voltage in 0.01 V
 */
uint16_t simpbms_status_voltage = 0;

/**
 * Battery current in .1 A
 */
uint16_t simpbms_status_current = 0;

/**
 * Battery temp in 0.1 deg C
 */
uint16_t simpbms_status_temp = 0;

bool simpbms_warning_undervoltage = false;
bool simpbms_warning_overvoltage = false;
bool simpbms_warning_overtemp = false;
bool simpbms_warning_undertemp = false;

bool simpbms_alarm_undervoltage = false;
bool simpbms_alarm_overvoltage = false;
bool simpbms_alarm_overtemp = false;
bool simpbms_alarm_undertemp = false;

void simpbms_process_limits(can_message_t *message) {
    simpbms_limit_discharge_current = message->data[1] << 16 | message->data[0];
    simpbms_limit_discharge_voltage = message->data[3] << 16 | message->data[2];
    simpbms_limit_charge_current    = message->data[5] << 16 | message->data[4];
    simpbms_limit_charge_voltage    = message->data[7] << 16 | message->data[6];
}

void simpbms_process_soc(can_message_t *message) {
    simpbms_battery_soc             = message->data[1] << 16 | message->data[0];
    simpbms_battery_soh             = message->data[3] << 16 | message->data[2];
    simpbms_battery_soc_granular    = message->data[5] << 16 | message->data[4];
}

void simpbms_process_status(can_message_t *message) {
    simpbms_status_voltage = message->data[1] << 16 | message->data[0];
    simpbms_status_current = message->data[3] << 16 | message->data[2];
    simpbms_status_temp    = message->data[5] << 16 | message->data[4];
}

void simpbms_process_warnings(can_message_t *message) {
    simpbms_alarm_overvoltage    = message->data[0] & 0x04;
    simpbms_alarm_undervoltage   = message->data[0] & 0x10;
    simpbms_alarm_overtemp       = message->data[0] & 0x40;
    simpbms_alarm_undertemp      = message->data[1] & 0x01;

    simpbms_warning_overvoltage  = message->data[4] & 0x04;
    simpbms_warning_undervoltage = message->data[4] & 0x10;
    simpbms_warning_overtemp     = message->data[4] & 0x40;
    simpbms_warning_undertemp    = message->data[5] & 0x01;
}