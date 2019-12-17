EESchema Schematic File Version 4
LIBS:schematic-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Module:ESP32-WROOM-32 U?
U 1 1 5D490EE4
P 2450 2800
F 0 "U?" H 2450 4381 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 2450 4290 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 2450 1300 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 2150 2850 50  0001 C CNN
	1    2450 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCE Q2
U 1 1 5D493CD9
P 9600 4350
F 0 "Q2" H 9791 4396 50  0000 L CNN
F 1 "2N2222" H 9791 4305 50  0000 L CNN
F 2 "" H 9800 4450 50  0001 C CNN
F 3 "~" H 9600 4350 50  0001 C CNN
	1    9600 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 5D49723D
P 9300 4350
F 0 "R2" V 9095 4350 50  0000 C CNN
F 1 "220" V 9186 4350 50  0000 C CNN
F 2 "" H 9300 4350 50  0001 C CNN
F 3 "~" H 9300 4350 50  0001 C CNN
	1    9300 4350
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NPN_BCE Q1
U 1 1 5D49F77C
P 9600 3450
F 0 "Q1" H 9791 3496 50  0000 L CNN
F 1 "2N2222" H 9791 3405 50  0000 L CNN
F 2 "" H 9800 3550 50  0001 C CNN
F 3 "~" H 9600 3450 50  0001 C CNN
	1    9600 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 5D49F782
P 9300 3450
F 0 "R1" V 9095 3450 50  0000 C CNN
F 1 "470" V 9186 3450 50  0000 C CNN
F 2 "" H 9300 3450 50  0001 C CNN
F 3 "~" H 9300 3450 50  0001 C CNN
	1    9300 3450
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J1
U 1 1 5D4A2526
P 9900 3250
F 0 "J1" H 9872 3182 50  0000 R CNN
F 1 "TempGauge" H 9872 3273 50  0000 R CNN
F 2 "" H 9900 3250 50  0001 C CNN
F 3 "~" H 9900 3250 50  0001 C CNN
	1    9900 3250
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J2
U 1 1 5D4A3714
P 9900 4150
F 0 "J2" H 9872 4082 50  0000 R CNN
F 1 "FuelGauge" H 9872 4173 50  0000 R CNN
F 2 "" H 9900 4150 50  0001 C CNN
F 3 "~" H 9900 4150 50  0001 C CNN
	1    9900 4150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D4A41B3
P 9700 3650
F 0 "#PWR?" H 9700 3400 50  0001 C CNN
F 1 "GND" H 9705 3477 50  0000 C CNN
F 2 "" H 9700 3650 50  0001 C CNN
F 3 "" H 9700 3650 50  0001 C CNN
	1    9700 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D4A53EC
P 9700 4550
F 0 "#PWR?" H 9700 4300 50  0001 C CNN
F 1 "GND" H 9705 4377 50  0000 C CNN
F 2 "" H 9700 4550 50  0001 C CNN
F 3 "" H 9700 4550 50  0001 C CNN
	1    9700 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCE Q3
U 1 1 5DD62680
P 9600 2700
F 0 "Q3" H 9791 2746 50  0000 L CNN
F 1 "2N2222" H 9791 2655 50  0000 L CNN
F 2 "" H 9800 2800 50  0001 C CNN
F 3 "~" H 9600 2700 50  0001 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 5DD62687
P 9300 2700
F 0 "R3" V 9095 2700 50  0000 C CNN
F 1 "470" V 9186 2700 50  0000 C CNN
F 2 "" H 9300 2700 50  0001 C CNN
F 3 "~" H 9300 2700 50  0001 C CNN
	1    9300 2700
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J3
U 1 1 5DD6268E
P 9900 2500
F 0 "J3" H 9872 2432 50  0000 R CNN
F 1 "SpeedInput_C2_P10-13" H 9900 2500 50  0000 R CNN
F 2 "" H 9900 2500 50  0001 C CNN
F 3 "~" H 9900 2500 50  0001 C CNN
	1    9900 2500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD62695
P 9700 2900
F 0 "#PWR?" H 9700 2650 50  0001 C CNN
F 1 "GND" H 9705 2727 50  0000 C CNN
F 2 "" H 9700 2900 50  0001 C CNN
F 3 "" H 9700 2900 50  0001 C CNN
	1    9700 2900
	1    0    0    -1  
$EndComp
Text GLabel 9200 2700 0    50   Input ~ 0
SpeedometerOutput
Text GLabel 9200 3450 0    50   Input ~ 0
TemperatureOutput
Text GLabel 9200 4350 0    50   Input ~ 0
FuelOutput
$Comp
L Transistor_BJT:2N3906 Q4
U 1 1 5DDF4E90
P 9600 1200
F 0 "Q4" H 9791 1154 50  0000 L CNN
F 1 "2N3906" H 9791 1245 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9800 1125 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 9600 1200 50  0001 L CNN
	1    9600 1200
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 5DDF52DA
P 9300 1200
F 0 "R4" V 9095 1200 50  0000 C CNN
F 1 "4000" V 9186 1200 50  0000 C CNN
F 2 "" H 9300 1200 50  0001 C CNN
F 3 "~" H 9300 1200 50  0001 C CNN
	1    9300 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 5DDF54A7
P 9300 900
F 0 "R5" V 9095 900 50  0000 C CNN
F 1 "22000" V 9186 900 50  0000 C CNN
F 2 "" H 9300 900 50  0001 C CNN
F 3 "~" H 9300 900 50  0001 C CNN
	1    9300 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 1200 9150 1200
Wire Wire Line
	9150 1200 9150 1250
Wire Wire Line
	9700 1000 9700 900 
Wire Wire Line
	9700 900  9400 900 
Wire Wire Line
	9200 900  9150 900 
Wire Wire Line
	9150 900  9150 1200
Connection ~ 9150 1200
$Comp
L Device:R_Small_US R6
U 1 1 5DDF56FD
P 8750 1450
F 0 "R6" V 8545 1450 50  0000 C CNN
F 1 "4000" V 8636 1450 50  0000 C CNN
F 2 "" H 8750 1450 50  0001 C CNN
F 3 "~" H 8750 1450 50  0001 C CNN
	1    8750 1450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DDF5843
P 9150 1650
F 0 "#PWR?" H 9150 1400 50  0001 C CNN
F 1 "GND" H 9155 1477 50  0000 C CNN
F 2 "" H 9150 1650 50  0001 C CNN
F 3 "" H 9150 1650 50  0001 C CNN
	1    9150 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5DDF5F07
P 9700 900
F 0 "#PWR?" H 9700 750 50  0001 C CNN
F 1 "+12V" H 9715 1073 50  0000 C CNN
F 2 "" H 9700 900 50  0001 C CNN
F 3 "" H 9700 900 50  0001 C CNN
	1    9700 900 
	1    0    0    -1  
$EndComp
Connection ~ 9700 900 
Text GLabel 8650 1450 0    50   Input ~ 0
TachometerOutput
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5DDF676D
P 9900 1400
F 0 "J?" H 9872 1332 50  0000 R CNN
F 1 "SpeedInput_C2_P10-13" H 9900 1400 50  0000 R CNN
F 2 "" H 9900 1400 50  0001 C CNN
F 3 "~" H 9900 1400 50  0001 C CNN
	1    9900 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q5
U 1 1 5DDF6B21
P 9050 1450
F 0 "Q5" H 9241 1496 50  0000 L CNN
F 1 "2N2222" H 9241 1405 50  0000 L CNN
F 2 "" H 9250 1550 50  0001 C CNN
F 3 "~" H 9050 1450 50  0001 C CNN
	1    9050 1450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
