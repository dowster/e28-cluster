EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
L RF_Module:ESP32-WROOM-32 U1
U 1 1 5D490EE4
P 2500 2550
F 0 "U1" H 2500 4131 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 2500 4040 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 2500 1050 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 2200 2600 50  0001 C CNN
	1    2500 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCE Q2
U 1 1 5D493CD9
P 9600 4350
F 0 "Q2" H 9791 4396 50  0000 L CNN
F 1 "2N2222" H 9791 4305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 9800 4450 50  0001 C CNN
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
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9300 4350 50  0001 C CNN
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
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 9800 3550 50  0001 C CNN
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
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9300 3450 50  0001 C CNN
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
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 9900 3250 50  0001 C CNN
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
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 9900 4150 50  0001 C CNN
F 3 "~" H 9900 4150 50  0001 C CNN
	1    9900 4150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5D4A41B3
P 9700 3650
F 0 "#PWR0101" H 9700 3400 50  0001 C CNN
F 1 "GND" H 9705 3477 50  0000 C CNN
F 2 "" H 9700 3650 50  0001 C CNN
F 3 "" H 9700 3650 50  0001 C CNN
	1    9700 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5D4A53EC
P 9700 4550
F 0 "#PWR0102" H 9700 4300 50  0001 C CNN
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
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 9800 2800 50  0001 C CNN
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
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9300 2700 50  0001 C CNN
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
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 9900 2500 50  0001 C CNN
F 3 "~" H 9900 2500 50  0001 C CNN
	1    9900 2500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5DD62695
P 9700 2900
F 0 "#PWR0103" H 9700 2650 50  0001 C CNN
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
L Transistor_BJT:2N3906 Q9
U 1 1 5E6B5959
P 9600 5450
F 0 "Q9" H 9791 5404 50  0000 L CNN
F 1 "2N3906" H 9791 5495 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9800 5375 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 9600 5450 50  0001 L CNN
	1    9600 5450
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R12
U 1 1 5E6B595F
P 9300 5450
F 0 "R12" V 9095 5450 50  0000 C CNN
F 1 "4000" V 9186 5450 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9300 5450 50  0001 C CNN
F 3 "~" H 9300 5450 50  0001 C CNN
	1    9300 5450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R11
U 1 1 5E6B5965
P 9300 5150
F 0 "R11" V 9095 5150 50  0000 C CNN
F 1 "22000" V 9186 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9300 5150 50  0001 C CNN
F 3 "~" H 9300 5150 50  0001 C CNN
	1    9300 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 5450 9150 5450
Wire Wire Line
	9150 5450 9150 5500
Wire Wire Line
	9700 5250 9700 5150
Wire Wire Line
	9700 5150 9400 5150
Wire Wire Line
	9200 5150 9150 5150
Wire Wire Line
	9150 5150 9150 5450
Connection ~ 9150 5450
$Comp
L Device:R_Small_US R8
U 1 1 5E6B5972
P 8750 5700
F 0 "R8" V 8545 5700 50  0000 C CNN
F 1 "4000" V 8636 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8750 5700 50  0001 C CNN
F 3 "~" H 8750 5700 50  0001 C CNN
	1    8750 5700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5E6B5978
P 9150 5900
F 0 "#PWR0106" H 9150 5650 50  0001 C CNN
F 1 "GND" H 9155 5727 50  0000 C CNN
F 2 "" H 9150 5900 50  0001 C CNN
F 3 "" H 9150 5900 50  0001 C CNN
	1    9150 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0107
U 1 1 5E6B597E
P 9700 5150
F 0 "#PWR0107" H 9700 5000 50  0001 C CNN
F 1 "+12V" H 9715 5323 50  0000 C CNN
F 2 "" H 9700 5150 50  0001 C CNN
F 3 "" H 9700 5150 50  0001 C CNN
	1    9700 5150
	1    0    0    -1  
$EndComp
Connection ~ 9700 5150
Text GLabel 8650 5700 0    50   Input ~ 0
TachometerOutput
$Comp
L Connector:Conn_01x01_Male J6
U 1 1 5E6B5986
P 9900 5650
F 0 "J6" H 9872 5582 50  0000 R CNN
F 1 "SpeedInput_C2_P10-13" H 9900 5650 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 9900 5650 50  0001 C CNN
F 3 "~" H 9900 5650 50  0001 C CNN
	1    9900 5650
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q7
U 1 1 5E6B598C
P 9050 5700
F 0 "Q7" H 9241 5746 50  0000 L CNN
F 1 "2N2222" H 9241 5655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 9250 5800 50  0001 C CNN
F 3 "~" H 9050 5700 50  0001 C CNN
	1    9050 5700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3906 Q8
U 1 1 5E6C45FE
P 9600 1650
AR Path="/5E6C45FE" Ref="Q8"  Part="1" 
AR Path="/5E6B979D/5E6C45FE" Ref="Q?"  Part="1" 
F 0 "Q8" H 9791 1604 50  0000 L CNN
F 1 "2N3906" H 9791 1695 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9800 1575 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 9600 1650 50  0001 L CNN
	1    9600 1650
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R10
U 1 1 5E6C4604
P 9300 1650
AR Path="/5E6C4604" Ref="R10"  Part="1" 
AR Path="/5E6B979D/5E6C4604" Ref="R?"  Part="1" 
F 0 "R10" V 9095 1650 50  0000 C CNN
F 1 "4000" V 9186 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9300 1650 50  0001 C CNN
F 3 "~" H 9300 1650 50  0001 C CNN
	1    9300 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 5E6C460A
P 9300 1350
AR Path="/5E6C460A" Ref="R9"  Part="1" 
AR Path="/5E6B979D/5E6C460A" Ref="R?"  Part="1" 
F 0 "R9" V 9095 1350 50  0000 C CNN
F 1 "22000" V 9186 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9300 1350 50  0001 C CNN
F 3 "~" H 9300 1350 50  0001 C CNN
	1    9300 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 1650 9150 1650
Wire Wire Line
	9150 1650 9150 1700
Wire Wire Line
	9700 1450 9700 1350
Wire Wire Line
	9700 1350 9400 1350
Wire Wire Line
	9200 1350 9150 1350
Wire Wire Line
	9150 1350 9150 1650
Connection ~ 9150 1650
$Comp
L Device:R_Small_US R7
U 1 1 5E6C4617
P 8750 1900
AR Path="/5E6C4617" Ref="R7"  Part="1" 
AR Path="/5E6B979D/5E6C4617" Ref="R?"  Part="1" 
F 0 "R7" V 8545 1900 50  0000 C CNN
F 1 "4000" V 8636 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8750 1900 50  0001 C CNN
F 3 "~" H 8750 1900 50  0001 C CNN
	1    8750 1900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5E6C461D
P 9150 2100
AR Path="/5E6C461D" Ref="#PWR0108"  Part="1" 
AR Path="/5E6B979D/5E6C461D" Ref="#PWR?"  Part="1" 
F 0 "#PWR0108" H 9150 1850 50  0001 C CNN
F 1 "GND" H 9155 1927 50  0000 C CNN
F 2 "" H 9150 2100 50  0001 C CNN
F 3 "" H 9150 2100 50  0001 C CNN
	1    9150 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0109
U 1 1 5E6C4623
P 9700 1350
AR Path="/5E6C4623" Ref="#PWR0109"  Part="1" 
AR Path="/5E6B979D/5E6C4623" Ref="#PWR?"  Part="1" 
F 0 "#PWR0109" H 9700 1200 50  0001 C CNN
F 1 "+12V" H 9715 1523 50  0000 C CNN
F 2 "" H 9700 1350 50  0001 C CNN
F 3 "" H 9700 1350 50  0001 C CNN
	1    9700 1350
	1    0    0    -1  
$EndComp
Connection ~ 9700 1350
Text GLabel 8500 1900 0    50   Input ~ 0
TachometerOutput
$Comp
L Connector:Conn_01x01_Male J5
U 1 1 5E6C462B
P 9900 1850
AR Path="/5E6C462B" Ref="J5"  Part="1" 
AR Path="/5E6B979D/5E6C462B" Ref="J?"  Part="1" 
F 0 "J5" H 9872 1782 50  0000 R CNN
F 1 "SpeedInput_C2_P10-13" H 9900 1850 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 9900 1850 50  0001 C CNN
F 3 "~" H 9900 1850 50  0001 C CNN
	1    9900 1850
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q6
U 1 1 5E6C4631
P 9050 1900
AR Path="/5E6C4631" Ref="Q6"  Part="1" 
AR Path="/5E6B979D/5E6C4631" Ref="Q?"  Part="1" 
F 0 "Q6" H 9241 1946 50  0000 L CNN
F 1 "2N2222" H 9241 1855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 9250 2000 50  0001 C CNN
F 3 "~" H 9050 1900 50  0001 C CNN
	1    9050 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1900 8650 1900
$Sheet
S 1300 4500 2500 1300
U 5E6C532A
F0 "Indicator_Lights" 50
F1 "Indicator_Lights.sch" 50
F2 "SDA" I L 1300 4600 50 
F3 "SCK" I L 1300 4700 50 
$EndSheet
Wire Wire Line
	1300 4600 1150 4600
Wire Wire Line
	1150 4600 1150 4300
Wire Wire Line
	1150 4300 3400 4300
Wire Wire Line
	3400 4300 3400 2750
Wire Wire Line
	3400 2750 3100 2750
Wire Wire Line
	3100 2850 3300 2850
Wire Wire Line
	3300 2850 3300 4200
Wire Wire Line
	3300 4200 1050 4200
Wire Wire Line
	1050 4200 1050 4700
Wire Wire Line
	1050 4700 1300 4700
Wire Wire Line
	3100 1950 3600 1950
Text GLabel 3600 1950 2    50   Input ~ 0
TachometerOutput
Text GLabel 3600 2050 2    50   Input ~ 0
SpeedometerOutput
Text GLabel 3600 2150 2    50   Input ~ 0
FuelOutput
Text GLabel 3600 2250 2    50   Input ~ 0
TemperatureOutput
Wire Wire Line
	3600 2050 3100 2050
Wire Wire Line
	3100 2150 3600 2150
Wire Wire Line
	3100 2250 3600 2250
$EndSCHEMATC
