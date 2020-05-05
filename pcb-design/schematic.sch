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
P 7950 2400
F 0 "Q3" H 8141 2446 50  0000 L CNN
F 1 "2N2222" H 8141 2355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 8150 2500 50  0001 C CNN
F 3 "~" H 7950 2400 50  0001 C CNN
	1    7950 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 5DD62687
P 7650 2400
F 0 "R3" V 7445 2400 50  0000 C CNN
F 1 "470" V 7536 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7650 2400 50  0001 C CNN
F 3 "~" H 7650 2400 50  0001 C CNN
	1    7650 2400
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J3
U 1 1 5DD6268E
P 8250 2200
F 0 "J3" H 8222 2132 50  0000 R CNN
F 1 "SpeedometerOutput" H 8250 2200 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 8250 2200 50  0001 C CNN
F 3 "~" H 8250 2200 50  0001 C CNN
	1    8250 2200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5DD62695
P 8050 2600
F 0 "#PWR0103" H 8050 2350 50  0001 C CNN
F 1 "GND" H 8055 2427 50  0000 C CNN
F 2 "" H 8050 2600 50  0001 C CNN
F 3 "" H 8050 2600 50  0001 C CNN
	1    8050 2600
	1    0    0    -1  
$EndComp
Text GLabel 7550 2400 0    50   Input ~ 0
SpeedometerSignal
Text GLabel 9200 3450 0    50   Input ~ 0
TemperatureOutput
Text GLabel 9200 4350 0    50   Input ~ 0
FuelOutput
$Comp
L Transistor_BJT:2N3906 Q8
U 1 1 5E6C45FE
P 9600 1200
AR Path="/5E6C45FE" Ref="Q8"  Part="1" 
AR Path="/5E6B979D/5E6C45FE" Ref="Q?"  Part="1" 
F 0 "Q8" H 9791 1154 50  0000 L CNN
F 1 "2N3906" H 9791 1245 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9800 1125 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 9600 1200 50  0001 L CNN
	1    9600 1200
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R10
U 1 1 5E6C4604
P 9300 1200
AR Path="/5E6C4604" Ref="R10"  Part="1" 
AR Path="/5E6B979D/5E6C4604" Ref="R?"  Part="1" 
F 0 "R10" V 9095 1200 50  0000 C CNN
F 1 "4000" V 9186 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9300 1200 50  0001 C CNN
F 3 "~" H 9300 1200 50  0001 C CNN
	1    9300 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 5E6C460A
P 9300 900
AR Path="/5E6C460A" Ref="R9"  Part="1" 
AR Path="/5E6B979D/5E6C460A" Ref="R?"  Part="1" 
F 0 "R9" V 9095 900 50  0000 C CNN
F 1 "22000" V 9186 900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9300 900 50  0001 C CNN
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
L Device:R_Small_US R7
U 1 1 5E6C4617
P 8750 1450
AR Path="/5E6C4617" Ref="R7"  Part="1" 
AR Path="/5E6B979D/5E6C4617" Ref="R?"  Part="1" 
F 0 "R7" V 8545 1450 50  0000 C CNN
F 1 "4000" V 8636 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8750 1450 50  0001 C CNN
F 3 "~" H 8750 1450 50  0001 C CNN
	1    8750 1450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5E6C461D
P 9150 1650
AR Path="/5E6C461D" Ref="#PWR0108"  Part="1" 
AR Path="/5E6B979D/5E6C461D" Ref="#PWR?"  Part="1" 
F 0 "#PWR0108" H 9150 1400 50  0001 C CNN
F 1 "GND" H 9155 1477 50  0000 C CNN
F 2 "" H 9150 1650 50  0001 C CNN
F 3 "" H 9150 1650 50  0001 C CNN
	1    9150 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0109
U 1 1 5E6C4623
P 9700 900
AR Path="/5E6C4623" Ref="#PWR0109"  Part="1" 
AR Path="/5E6B979D/5E6C4623" Ref="#PWR?"  Part="1" 
F 0 "#PWR0109" H 9700 750 50  0001 C CNN
F 1 "+12V" H 9715 1073 50  0000 C CNN
F 2 "" H 9700 900 50  0001 C CNN
F 3 "" H 9700 900 50  0001 C CNN
	1    9700 900 
	1    0    0    -1  
$EndComp
Connection ~ 9700 900 
Text GLabel 8500 1450 0    50   Input ~ 0
TachometerOutput
$Comp
L Connector:Conn_01x01_Male J5
U 1 1 5E6C462B
P 9900 1400
AR Path="/5E6C462B" Ref="J5"  Part="1" 
AR Path="/5E6B979D/5E6C462B" Ref="J?"  Part="1" 
F 0 "J5" H 9872 1332 50  0000 R CNN
F 1 "TachometerOutput" H 9900 1400 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 9900 1400 50  0001 C CNN
F 3 "~" H 9900 1400 50  0001 C CNN
	1    9900 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q6
U 1 1 5E6C4631
P 9050 1450
AR Path="/5E6C4631" Ref="Q6"  Part="1" 
AR Path="/5E6B979D/5E6C4631" Ref="Q?"  Part="1" 
F 0 "Q6" H 9241 1496 50  0000 L CNN
F 1 "2N2222" H 9241 1405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 9250 1550 50  0001 C CNN
F 3 "~" H 9050 1450 50  0001 C CNN
	1    9050 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1450 8650 1450
$Sheet
S 5200 3100 1400 1800
U 5E6C532A
F0 "Indicator_Lights" 50
F1 "Indicator_Lights.sch" 50
F2 "SDA" I L 5200 3200 50 
F3 "SCK" I L 5200 3300 50 
F4 "B4_SinkOutput" I R 6600 3600 50 
F5 "B0_SinkOutput" I R 6600 3200 50 
F6 "B1_SinkOutput" I R 6600 3300 50 
F7 "B2_SinkOutput" I R 6600 3400 50 
F8 "B3_SinkOutput" I R 6600 3500 50 
F9 "B5_SinkOutput" I R 6600 3700 50 
F10 "B6_SinkOutput" I R 6600 3800 50 
F11 "B7_SinkOutput" I R 6600 3900 50 
F12 "A0_SourceOutput" I R 6600 4050 50 
F13 "A1_SourceOutput" I R 6600 4150 50 
F14 "A2_SourceOutput" I R 6600 4250 50 
F15 "A3_SourceOutput" I R 6600 4350 50 
F16 "A4_SourceOutput" I R 6600 4450 50 
F17 "A5_SourceOutput" I R 6600 4550 50 
F18 "A6_SourceOutput" I R 6600 4650 50 
F19 "A7_SourceOutput" I R 6600 4750 50 
$EndSheet
Text GLabel 2350 2250 0    50   Input ~ 0
TachometerOutput
Text GLabel 2350 2450 0    50   Input ~ 0
SpeedometerSignal
Text GLabel 2350 2150 0    50   Input ~ 0
FuelOutput
Text GLabel 3950 2550 2    50   Input ~ 0
TemperatureOutput
$Comp
L Interface_CAN_LIN:MCP2562-E-P U3
U 1 1 5E7E1264
P 5950 1250
F 0 "U3" H 5950 1250 50  0000 C CNN
F 1 "MCP2562-E-P" H 5550 1750 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5950 750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25167A.pdf" H 5950 1250 50  0001 C CNN
	1    5950 1250
	1    0    0    -1  
$EndComp
Text GLabel 5450 1050 0    50   Input ~ 0
ESP_CAN0_TX
Text GLabel 5450 1150 0    50   Input ~ 0
ESP_CAN0_RX
Text GLabel 3950 1750 2    50   Input ~ 0
ESP_CAN0_RX
Text GLabel 3950 1850 2    50   Input ~ 0
ESP_CAN0_TX
$Comp
L power:GND #PWR0104
U 1 1 5E7E1B27
P 5950 1650
F 0 "#PWR0104" H 5950 1400 50  0001 C CNN
F 1 "GND" H 5955 1477 50  0000 C CNN
F 2 "" H 5950 1650 50  0001 C CNN
F 3 "" H 5950 1650 50  0001 C CNN
	1    5950 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5E7E1B7E
P 5950 850
F 0 "#PWR0105" H 5950 700 50  0001 C CNN
F 1 "+5V" H 5965 1023 50  0000 C CNN
F 2 "" H 5950 850 50  0001 C CNN
F 3 "" H 5950 850 50  0001 C CNN
	1    5950 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0111
U 1 1 5E6EF830
P 2350 1050
F 0 "#PWR0111" H 2350 900 50  0001 C CNN
F 1 "+3V3" H 2350 1200 50  0000 C CNN
F 2 "" H 2350 1050 50  0001 C CNN
F 3 "" H 2350 1050 50  0001 C CNN
	1    2350 1050
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0113
U 1 1 5E6EF880
P 5450 1350
F 0 "#PWR0113" H 5450 1200 50  0001 C CNN
F 1 "+3V3" V 5465 1478 50  0000 L CNN
F 2 "" H 5450 1350 50  0001 C CNN
F 3 "" H 5450 1350 50  0001 C CNN
	1    5450 1350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5E6EF961
P 5450 1450
F 0 "#PWR0115" H 5450 1200 50  0001 C CNN
F 1 "GND" H 5455 1277 50  0000 C CNN
F 2 "" H 5450 1450 50  0001 C CNN
F 3 "" H 5450 1450 50  0001 C CNN
	1    5450 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5E6EFE58
P 6700 1200
F 0 "J4" H 6780 1192 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 6780 1101 50  0000 L CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-2_1x02_P2.54mm_Horizontal" H 6700 1200 50  0001 C CNN
F 3 "~" H 6700 1200 50  0001 C CNN
	1    6700 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1150 6450 1200
Wire Wire Line
	6450 1200 6500 1200
Wire Wire Line
	6450 1350 6450 1300
Wire Wire Line
	6450 1300 6500 1300
Wire Notes Line
	4800 550  7700 550 
Wire Notes Line
	7700 550  7700 1950
Wire Notes Line
	7700 1950 4800 1950
Wire Notes Line
	4800 1950 4800 550 
Text Notes 6800 700  0    50   ~ 0
CANBus Transciever
Wire Notes Line
	10850 550  7750 550 
Text Notes 7900 900  0    50   ~ 0
Tachometer Output \nDarlington Transistor - +12v
Wire Notes Line
	7750 1950 10850 1950
Wire Notes Line
	10850 550  10850 1950
Wire Notes Line
	7750 550  7750 1950
Text GLabel 3950 1550 2    50   Input ~ 0
I2C0_SDA
Text GLabel 3950 1250 2    50   Input ~ 0
I2C0_SCK
Text GLabel 5200 3200 0    50   Input ~ 0
I2C0_SDA
Text GLabel 5200 3300 0    50   Input ~ 0
I2C0_SCK
$Comp
L Regulator_Linear:AP1117-33 U4
U 1 1 5EB86BA7
P 5750 2300
F 0 "U4" H 5750 2542 50  0000 C CNN
F 1 "AP1117-33" H 5750 2451 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5750 2500 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 5850 2050 50  0001 C CNN
	1    5750 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5EB8786C
P 3950 1050
F 0 "#PWR0106" H 3950 800 50  0001 C CNN
F 1 "GND" V 3955 922 50  0000 R CNN
F 2 "" H 3950 1050 50  0001 C CNN
F 3 "" H 3950 1050 50  0001 C CNN
	1    3950 1050
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0107
U 1 1 5EB8CE42
P 5450 2300
F 0 "#PWR0107" H 5450 2150 50  0001 C CNN
F 1 "+12V" V 5465 2428 50  0000 L CNN
F 2 "" H 5450 2300 50  0001 C CNN
F 3 "" H 5450 2300 50  0001 C CNN
	1    5450 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0117
U 1 1 5EB8D545
P 6050 2300
F 0 "#PWR0117" H 6050 2150 50  0001 C CNN
F 1 "+3V3" V 6065 2428 50  0000 L CNN
F 2 "" H 6050 2300 50  0001 C CNN
F 3 "" H 6050 2300 50  0001 C CNN
	1    6050 2300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5EB8DF3A
P 5750 2600
F 0 "#PWR0119" H 5750 2350 50  0001 C CNN
F 1 "GND" H 5755 2427 50  0000 C CNN
F 2 "" H 5750 2600 50  0001 C CNN
F 3 "" H 5750 2600 50  0001 C CNN
	1    5750 2600
	1    0    0    -1  
$EndComp
Wire Notes Line
	4800 2000 6400 2000
Wire Notes Line
	6400 2000 6400 2850
Wire Notes Line
	6400 2850 4800 2850
Wire Notes Line
	4800 2850 4800 2000
Text Notes 4850 2100 0    50   ~ 0
3.3v Power Supply\n
Wire Notes Line
	6450 2000 6450 2850
Wire Notes Line
	6450 2850 9000 2850
Wire Notes Line
	9000 2850 9000 2000
Wire Notes Line
	9000 2000 6450 2000
Text Notes 6500 2200 0    50   ~ 0
Speedometer Output\nTransistor
$Comp
L ESP32-DEVKITC-32D:ESP32-DEVKITC-32D U6
U 1 1 5EBA532F
P 3150 1950
F 0 "U6" H 3150 3117 50  0000 C CNN
F 1 "ESP32-DEVKITC-32D" H 3150 3026 50  0000 C CNN
F 2 "MODULE_ESP32-DEVKITC-32D" H 3150 1950 50  0001 L BNN
F 3 "Espressif Systems" H 3150 1950 50  0001 L BNN
F 4 "4" H 3150 1950 50  0001 L BNN "Field4"
	1    3150 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5EBABECC
P 3950 1650
F 0 "#PWR0121" H 3950 1400 50  0001 C CNN
F 1 "GND" V 3955 1522 50  0000 R CNN
F 2 "" H 3950 1650 50  0001 C CNN
F 3 "" H 3950 1650 50  0001 C CNN
	1    3950 1650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5EBACB7B
P 2350 2350
F 0 "#PWR0123" H 2350 2100 50  0001 C CNN
F 1 "GND" V 2355 2222 50  0000 R CNN
F 2 "" H 2350 2350 50  0001 C CNN
F 3 "" H 2350 2350 50  0001 C CNN
	1    2350 2350
	0    1    1    0   
$EndComp
Wire Notes Line
	4750 550  4750 3000
Text Notes 1650 700  0    50   ~ 0
ESP32 MCU 
Wire Notes Line
	1500 550  1500 3000
Wire Notes Line
	4750 3000 1500 3000
Wire Notes Line
	4750 550  1500 550 
$EndSCHEMATC
