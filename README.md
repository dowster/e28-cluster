# E28 Cluster Driver

E28 Cluster Driver is (going to be...) an ESP32 based driver board which allows the E28, and possibly E21/E30, cluster to be controlled via custom inputs. For the first version custom input will be done solely via CAN Bus. There won't be any hardcoded message spec, that will be configurable by the user after firmware has been flashed. 

# Build Status
[![Build Status](https://travis-ci.org/dowster/e28-cluster.svg?branch=master)](https://travis-ci.org/dowster/e28-cluster)

# E28 Cluster Driver Inputs

Input to the E28 cluster driver shall be done via CAN Bus and possibly with a web based interface for diagnostics, calibration, and configuration. The CAN input shall be configurable so that any value on a can message may be mapped to any of the outputs, allowing the potential for configuring the driver with custom cluster gauge faces. IE: using the econometer to show watts / mile. 

# Instrument Cluster Outputs

## Speedometer Output

The speedometer of the E28 cluster is pulse driven. Approximately 2Hz for every MPH. IE: 50hz -> 25mph, 280hz -> 140mph. Driving the speedometer will advance the odometer automatically. It will also generate a pulse signal that is output to the SI board and the cruise control hardware. 

The speedometer operates on a [UAF 2115 IC](https://darisusgmbh.de/darisus/Elektonikshop/Datenblaetter/ITT/UAF2115.pdf). This IC is a general purpose speedoemter and mileage indidactor IC by ITT Semiconductors. It provides a constant current source to the output pin(s) 10-13 on the E28 cluster plug C2 (white), these four pins are all bridged together, shorting these to ground will provide a pulse to the speedometer. The UAF 2115 also provides an open collector NPN pulse output to drive things such as cruise control. In order to trigger a pulse the speed sensor in the differential would short to ground as each tooth of the gear passed by, these pulses must be atleast 50 microseconds in duration, the max frequency is 10Khz. On the E28 Pin 11 of UAF 2115 is connected to ground, so the division factor is 2^6, I think this is to configure how the odometer tracks distance. 

## Temperature Gauge Output

The temperature guage output will be an open collector NPN output from the E28 cluster driver. The temperature gauge is controlled by varying the current output of pin 12 on connector C1 of the E28 instrument cluster. To control this I'll either use the DAC on the ESP32 or use PWM. I have had some issues with "buzzing" when using PWM but I may just need a higher frequency. 

## Fuel Gauge Output

This is pretty much the same as the temperature gauge but with a different calibration. I'll be using a lower value resistor on the gate of this transistor since the fuel gauge requires more current. This signal is also output to the onboard computer by default. See [OBC Outputs](#OBC-Outputs) for information on how I plan to control the OBC.

## Tachometer Output

The tachometer is controleld by a simple voltage input. I'm thinking a PNP driver for this with PWM control should be fine. 

## Econometer Output

No clue how to do this one yet, haven't really looked into it. 

## Warning Indicators (On PCB)

The warning lights will be controlled via simple solid state relay circuits. Either PNP or NPN transistors controleld via shift registers to save up some pins on the ESP32, if needed. Some of the warning indicators are built onto the instrument cluster's PCB, others are controlled via lights have external wiring. 

### Charge Indicator

Could have many different functions, possibly solid when charging the pack or when the pre-charge resistor is engaged and flashing when a pack error is detected.

### Brake Warning Indicator

TODO

### High Beam Indicator

TODO

### Fog Light Indicator

TODO

### LH Turn Indicator

TODO

### RH Turn Indicator

TODO

### Low Fuel Warning Indicator 

TODO

### "Check" Active Check Control Alarm Indicator

TODO

### Oil Pressure Warning Indicator

This is probably not needed with an EV so that could be modified to be _something else_.

### "Park Brake" Indicator

TODO

### Brake Lining indicator

Haven't seen how this wires up yet, It's on the PCB.

## Warning Indicators (External Wiring)

### Left and Right turn arrows

Probably used to be used on cars where there was only one lamp to tell you that the turn indicators were on. Could be repurposed with a different logo. Background is green.

### Solid Yellow

There's no graphic on this lamp, it's in the 3rd position from left and just has a yellow or orange color filter. 

### EML

Not wired up, says "EML" in black letters with a yellow or orange color filter. 4th position from left

### Solid Green

No graphic on this indiactor, just a solid green. 6th position from left.

### ABS

If the stock ABS is kept this can stay here. Not sure if ABS is used on many swaps but I think that if it is this light may want to be used as a way to kill regen and let the motor coast while ABS figures out what to do. 

## Gearshift Indicators

Seems like even the manual clusters include this plate, or my car has been swapped with an automatic cluster. 

### Transmission Warning Indicator

Shows as a gear with an exclamation mark in the center

### P, R, N, D

Pretty self explanatory

### 3, 2, 1

Show up as individual lamps, for indicating if you've manually selected one of these gears I presume. 

### 1-2-3

This is on single indicator, I presume that it indicates you've disabled overdrive. 

# OBC Outputs

The method for driving the OBC hasn't been determined yet, two options are to just plug the OBC into the instrument cluster and let it run business as usual. The more involved, and possibly better method is to map out the pins on the OBC and manipulate that with the  E28 cluster driver. The main feature I'd like to see out of this is an accuruate range estimate based on pack state of charge and average watts/mile. 
