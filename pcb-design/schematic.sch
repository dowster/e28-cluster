EESchema Schematic File Version 4
LIBS:schematic-cache
EELAYER 26 0
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
P 9600 3300
F 0 "Q2" H 9791 3346 50  0000 L CNN
F 1 "2N2222" H 9791 3255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 9800 3400 50  0001 C CNN
F 3 "~" H 9600 3300 50  0001 C CNN
	1    9600 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 5D49723D
P 9300 3300
F 0 "R2" V 9095 3300 50  0000 C CNN
F 1 "220" V 9186 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9300 3300 50  0001 C CNN
F 3 "~" H 9300 3300 50  0001 C CNN
	1    9300 3300
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NPN_BCE Q1
U 1 1 5D49F77C
P 9600 2400
F 0 "Q1" H 9791 2446 50  0000 L CNN
F 1 "2N2222" H 9791 2355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 9800 2500 50  0001 C CNN
F 3 "~" H 9600 2400 50  0001 C CNN
	1    9600 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 5D49F782
P 9300 2400
F 0 "R1" V 9095 2400 50  0000 C CNN
F 1 "470" V 9186 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9300 2400 50  0001 C CNN
F 3 "~" H 9300 2400 50  0001 C CNN
	1    9300 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5D4A41B3
P 9700 2600
F 0 "#PWR0101" H 9700 2350 50  0001 C CNN
F 1 "GND" H 9705 2427 50  0000 C CNN
F 2 "" H 9700 2600 50  0001 C CNN
F 3 "" H 9700 2600 50  0001 C CNN
	1    9700 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5D4A53EC
P 9700 3500
F 0 "#PWR0102" H 9700 3250 50  0001 C CNN
F 1 "GND" H 9705 3327 50  0000 C CNN
F 2 "" H 9700 3500 50  0001 C CNN
F 3 "" H 9700 3500 50  0001 C CNN
	1    9700 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCE Q3
U 1 1 5DD62680
P 7250 2400
F 0 "Q3" H 7441 2446 50  0000 L CNN
F 1 "2N2222" H 7441 2355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 7450 2500 50  0001 C CNN
F 3 "~" H 7250 2400 50  0001 C CNN
	1    7250 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 5DD62687
P 6950 2400
F 0 "R3" V 6745 2400 50  0000 C CNN
F 1 "470" V 6836 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6950 2400 50  0001 C CNN
F 3 "~" H 6950 2400 50  0001 C CNN
	1    6950 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5DD62695
P 7350 2600
F 0 "#PWR0103" H 7350 2350 50  0001 C CNN
F 1 "GND" H 7355 2427 50  0000 C CNN
F 2 "" H 7350 2600 50  0001 C CNN
F 3 "" H 7350 2600 50  0001 C CNN
	1    7350 2600
	1    0    0    -1  
$EndComp
Text GLabel 6850 2400 0    50   Input ~ 0
SpeedometerSignal
Text GLabel 9200 2400 0    50   Input ~ 0
TemperatureOutput
Text GLabel 9200 3300 0    50   Input ~ 0
FuelOutput
$Comp
L Transistor_BJT:2N3906 Q8
U 1 1 5E6C45FE
P 8900 1200
AR Path="/5E6C45FE" Ref="Q8"  Part="1" 
AR Path="/5E6B979D/5E6C45FE" Ref="Q?"  Part="1" 
F 0 "Q8" H 9091 1154 50  0000 L CNN
F 1 "2N3906" H 9091 1245 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9100 1125 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 8900 1200 50  0001 L CNN
	1    8900 1200
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R10
U 1 1 5E6C4604
P 8600 1200
AR Path="/5E6C4604" Ref="R10"  Part="1" 
AR Path="/5E6B979D/5E6C4604" Ref="R?"  Part="1" 
F 0 "R10" V 8395 1200 50  0000 C CNN
F 1 "4700" V 8486 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8600 1200 50  0001 C CNN
F 3 "~" H 8600 1200 50  0001 C CNN
	1    8600 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 5E6C460A
P 8600 900
AR Path="/5E6C460A" Ref="R9"  Part="1" 
AR Path="/5E6B979D/5E6C460A" Ref="R?"  Part="1" 
F 0 "R9" V 8395 900 50  0000 C CNN
F 1 "22000" V 8486 900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8600 900 50  0001 C CNN
F 3 "~" H 8600 900 50  0001 C CNN
	1    8600 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 1200 8450 1200
Wire Wire Line
	8450 1200 8450 1250
Wire Wire Line
	9000 1000 9000 900 
Wire Wire Line
	9000 900  8700 900 
Wire Wire Line
	8500 900  8450 900 
Wire Wire Line
	8450 900  8450 1200
Connection ~ 8450 1200
$Comp
L Device:R_Small_US R7
U 1 1 5E6C4617
P 8050 1450
AR Path="/5E6C4617" Ref="R7"  Part="1" 
AR Path="/5E6B979D/5E6C4617" Ref="R?"  Part="1" 
F 0 "R7" V 7845 1450 50  0000 C CNN
F 1 "4700" V 7936 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8050 1450 50  0001 C CNN
F 3 "~" H 8050 1450 50  0001 C CNN
	1    8050 1450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5E6C461D
P 8450 1650
AR Path="/5E6C461D" Ref="#PWR0108"  Part="1" 
AR Path="/5E6B979D/5E6C461D" Ref="#PWR?"  Part="1" 
F 0 "#PWR0108" H 8450 1400 50  0001 C CNN
F 1 "GND" H 8455 1477 50  0000 C CNN
F 2 "" H 8450 1650 50  0001 C CNN
F 3 "" H 8450 1650 50  0001 C CNN
	1    8450 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0109
U 1 1 5E6C4623
P 9000 900
AR Path="/5E6C4623" Ref="#PWR0109"  Part="1" 
AR Path="/5E6B979D/5E6C4623" Ref="#PWR?"  Part="1" 
F 0 "#PWR0109" H 9000 750 50  0001 C CNN
F 1 "+12V" H 9015 1073 50  0000 C CNN
F 2 "" H 9000 900 50  0001 C CNN
F 3 "" H 9000 900 50  0001 C CNN
	1    9000 900 
	1    0    0    -1  
$EndComp
Connection ~ 9000 900 
Text GLabel 7800 1450 0    50   Input ~ 0
TachometerOutput
$Comp
L Device:Q_NPN_BCE Q6
U 1 1 5E6C4631
P 8350 1450
AR Path="/5E6C4631" Ref="Q6"  Part="1" 
AR Path="/5E6B979D/5E6C4631" Ref="Q?"  Part="1" 
F 0 "Q6" H 8541 1496 50  0000 L CNN
F 1 "2N2222" H 8541 1405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 8550 1550 50  0001 C CNN
F 3 "~" H 8350 1450 50  0001 C CNN
	1    8350 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1450 7950 1450
$Sheet
S 6100 3200 1400 1800
U 5E6C532A
F0 "Indicator_Lights" 50
F1 "Indicator_Lights.sch" 50
F2 "SDA" I L 6100 3300 50 
F3 "SCK" I L 6100 3400 50 
F4 "B4_SinkOutput" I R 7500 3700 50 
F5 "B0_SinkOutput" I R 7500 3300 50 
F6 "B1_SinkOutput" I R 7500 3400 50 
F7 "B2_SinkOutput" I R 7500 3500 50 
F8 "B3_SinkOutput" I R 7500 3600 50 
F9 "B5_SinkOutput" I R 7500 3800 50 
F10 "B6_SinkOutput" I R 7500 3900 50 
F11 "B7_SinkOutput" I R 7500 4000 50 
F12 "A0_SourceOutput" I R 7500 4150 50 
F13 "A1_SourceOutput" I R 7500 4250 50 
F14 "A2_SourceOutput" I R 7500 4350 50 
F15 "A3_SourceOutput" I R 7500 4450 50 
F16 "A4_SourceOutput" I R 7500 4550 50 
F17 "A5_SourceOutput" I R 7500 4650 50 
F18 "A6_SourceOutput" I R 7500 4750 50 
F19 "A7_SourceOutput" I R 7500 4850 50 
$EndSheet
Text GLabel 1600 2250 0    50   Input ~ 0
TachometerOutput
Text GLabel 1600 2450 0    50   Input ~ 0
SpeedometerSignal
Text GLabel 1600 2150 0    50   Input ~ 0
FuelOutput
Text GLabel 3200 2550 2    50   Input ~ 0
TemperatureOutput
$Comp
L Interface_CAN_LIN:MCP2562-E-P U3
U 1 1 5E7E1264
P 5250 1250
F 0 "U3" H 5250 1250 50  0000 C CNN
F 1 "MCP2562-E-P" H 4850 1750 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5250 750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25167A.pdf" H 5250 1250 50  0001 C CNN
	1    5250 1250
	1    0    0    -1  
$EndComp
Text GLabel 4750 1050 0    50   Input ~ 0
ESP_CAN0_TX
Text GLabel 4750 1150 0    50   Input ~ 0
ESP_CAN0_RX
Text GLabel 3200 1750 2    50   Input ~ 0
ESP_CAN0_RX
Text GLabel 3200 1850 2    50   Input ~ 0
ESP_CAN0_TX
$Comp
L power:GND #PWR0104
U 1 1 5E7E1B27
P 5250 1650
F 0 "#PWR0104" H 5250 1400 50  0001 C CNN
F 1 "GND" H 5255 1477 50  0000 C CNN
F 2 "" H 5250 1650 50  0001 C CNN
F 3 "" H 5250 1650 50  0001 C CNN
	1    5250 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5E7E1B7E
P 5250 850
F 0 "#PWR0105" H 5250 700 50  0001 C CNN
F 1 "+5V" H 5265 1023 50  0000 C CNN
F 2 "" H 5250 850 50  0001 C CNN
F 3 "" H 5250 850 50  0001 C CNN
	1    5250 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0111
U 1 1 5E6EF830
P 1600 1050
F 0 "#PWR0111" H 1600 900 50  0001 C CNN
F 1 "+3V3" H 1600 1200 50  0000 C CNN
F 2 "" H 1600 1050 50  0001 C CNN
F 3 "" H 1600 1050 50  0001 C CNN
	1    1600 1050
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0113
U 1 1 5E6EF880
P 4750 1350
F 0 "#PWR0113" H 4750 1200 50  0001 C CNN
F 1 "+3V3" V 4765 1478 50  0000 L CNN
F 2 "" H 4750 1350 50  0001 C CNN
F 3 "" H 4750 1350 50  0001 C CNN
	1    4750 1350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5E6EF961
P 4750 1450
F 0 "#PWR0115" H 4750 1200 50  0001 C CNN
F 1 "GND" H 4755 1277 50  0000 C CNN
F 2 "" H 4750 1450 50  0001 C CNN
F 3 "" H 4750 1450 50  0001 C CNN
	1    4750 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5E6EFE58
P 6000 1200
F 0 "J4" H 6080 1192 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 6080 1101 50  0000 L CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-2_1x02_P2.54mm_Horizontal" H 6000 1200 50  0001 C CNN
F 3 "~" H 6000 1200 50  0001 C CNN
	1    6000 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1150 5750 1200
Wire Wire Line
	5750 1200 5800 1200
Wire Wire Line
	5750 1350 5750 1300
Wire Wire Line
	5750 1300 5800 1300
Wire Notes Line
	4100 550  7000 550 
Wire Notes Line
	7000 550  7000 1950
Wire Notes Line
	7000 1950 4100 1950
Wire Notes Line
	4100 1950 4100 550 
Text Notes 6100 700  0    50   ~ 0
CANBus Transciever
Wire Notes Line
	10150 550  7050 550 
Text Notes 7200 900  0    50   ~ 0
Tachometer Output \nDarlington Transistor - +12v
Wire Notes Line
	7050 1950 10150 1950
Wire Notes Line
	10150 550  10150 1950
Wire Notes Line
	7050 550  7050 1950
Text GLabel 3200 1550 2    50   Input ~ 0
I2C0_SDA
Text GLabel 3200 1250 2    50   Input ~ 0
I2C0_SCK
Text GLabel 6100 3300 0    50   Input ~ 0
I2C0_SDA
Text GLabel 6100 3400 0    50   Input ~ 0
I2C0_SCK
$Comp
L Regulator_Linear:AP1117-33 U4
U 1 1 5EB86BA7
P 5050 2300
F 0 "U4" H 5050 2542 50  0000 C CNN
F 1 "AP1117-33" H 5050 2451 50  0000 C CNN
F 2 "Package_SIP:SIP3_11.6x8.5mm" H 5050 2500 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 5150 2050 50  0001 C CNN
	1    5050 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5EB8786C
P 3200 1050
F 0 "#PWR0106" H 3200 800 50  0001 C CNN
F 1 "GND" V 3205 922 50  0000 R CNN
F 2 "" H 3200 1050 50  0001 C CNN
F 3 "" H 3200 1050 50  0001 C CNN
	1    3200 1050
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0107
U 1 1 5EB8CE42
P 4750 2300
F 0 "#PWR0107" H 4750 2150 50  0001 C CNN
F 1 "+12V" V 4765 2428 50  0000 L CNN
F 2 "" H 4750 2300 50  0001 C CNN
F 3 "" H 4750 2300 50  0001 C CNN
	1    4750 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0117
U 1 1 5EB8D545
P 5350 2300
F 0 "#PWR0117" H 5350 2150 50  0001 C CNN
F 1 "+3V3" V 5365 2428 50  0000 L CNN
F 2 "" H 5350 2300 50  0001 C CNN
F 3 "" H 5350 2300 50  0001 C CNN
	1    5350 2300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5EB8DF3A
P 5050 2600
F 0 "#PWR0119" H 5050 2350 50  0001 C CNN
F 1 "GND" H 5055 2427 50  0000 C CNN
F 2 "" H 5050 2600 50  0001 C CNN
F 3 "" H 5050 2600 50  0001 C CNN
	1    5050 2600
	1    0    0    -1  
$EndComp
Wire Notes Line
	4100 2000 5700 2000
Wire Notes Line
	5700 2000 5700 2850
Wire Notes Line
	5700 2850 4100 2850
Wire Notes Line
	4100 2850 4100 2000
Text Notes 4150 2100 0    50   ~ 0
3.3v Power Supply\n
Wire Notes Line
	5750 2000 5750 2850
Wire Notes Line
	5750 2850 8300 2850
Wire Notes Line
	8300 2850 8300 2000
Wire Notes Line
	8300 2000 5750 2000
Text Notes 5800 2200 0    50   ~ 0
Speedometer Output\nTransistor
$Comp
L ESP32-DEVKITC-32D:ESP32-DEVKITC-32D U6
U 1 1 5EBA532F
P 2400 1950
F 0 "U6" H 2400 3117 50  0000 C CNN
F 1 "ESP32-DEVKITC-32D" H 2400 3026 50  0000 C CNN
F 2 "pcb-design:MODULE_ESP32-DEVKITC-32D" H 2400 1950 50  0001 L BNN
F 3 "Espressif Systems" H 2400 1950 50  0001 L BNN
F 4 "4" H 2400 1950 50  0001 L BNN "Field4"
	1    2400 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5EBABECC
P 3200 1650
F 0 "#PWR0121" H 3200 1400 50  0001 C CNN
F 1 "GND" V 3205 1522 50  0000 R CNN
F 2 "" H 3200 1650 50  0001 C CNN
F 3 "" H 3200 1650 50  0001 C CNN
	1    3200 1650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5EBACB7B
P 1600 2350
F 0 "#PWR0123" H 1600 2100 50  0001 C CNN
F 1 "GND" V 1605 2222 50  0000 R CNN
F 2 "" H 1600 2350 50  0001 C CNN
F 3 "" H 1600 2350 50  0001 C CNN
	1    1600 2350
	0    1    1    0   
$EndComp
Wire Notes Line
	4000 550  4000 3000
Text Notes 900  700  0    50   ~ 0
ESP32 MCU 
Wire Notes Line
	750  550  750  3000
Wire Notes Line
	4000 3000 750  3000
Wire Notes Line
	4000 550  750  550 
Text GLabel 7500 3300 2    50   Input ~ 0
B0_SinkOutput
Text GLabel 7500 3400 2    50   Input ~ 0
B1_SinkOutput
Text GLabel 7500 3500 2    50   Input ~ 0
B2_SinkOutput
Text GLabel 7500 3600 2    50   Input ~ 0
B3_SinkOutput
Text GLabel 7500 3700 2    50   Input ~ 0
B4_SinkOutput
Text GLabel 7500 3800 2    50   Input ~ 0
B5_SinkOutput
Text GLabel 7500 3900 2    50   Input ~ 0
B6_SinkOutput
Text GLabel 7500 4000 2    50   Input ~ 0
B7_SinkOutput
Text GLabel 7500 4150 2    50   Input ~ 0
A0_SourceOutput
Text GLabel 7500 4250 2    50   Input ~ 0
A1_SourceOutput
Text GLabel 7500 4350 2    50   Input ~ 0
A2_SourceOutput
Text GLabel 7500 4450 2    50   Input ~ 0
A3_SourceOutput
Text GLabel 7500 4550 2    50   Input ~ 0
A4_SourceOutput
Text GLabel 7500 4650 2    50   Input ~ 0
A5_SourceOutput
Text GLabel 7500 4750 2    50   Input ~ 0
A6_SourceOutput
Text GLabel 7500 4850 2    50   Input ~ 0
A7_SourceOutput
Text GLabel 9550 4900 2    50   Input ~ 0
A0_SourceOutput
Text GLabel 9550 4800 2    50   Input ~ 0
A1_SourceOutput
Text GLabel 9550 4700 2    50   Input ~ 0
A2_SourceOutput
Text GLabel 9550 4600 2    50   Input ~ 0
A3_SourceOutput
Text GLabel 9550 4500 2    50   Input ~ 0
A4_SourceOutput
Text GLabel 9550 4400 2    50   Input ~ 0
A5_SourceOutput
Text GLabel 9550 4300 2    50   Input ~ 0
A6_SourceOutput
Text GLabel 9550 4200 2    50   Input ~ 0
A7_SourceOutput
Text GLabel 9050 4200 0    50   Input ~ 0
B0_SinkOutput
Text GLabel 9050 4300 0    50   Input ~ 0
B1_SinkOutput
Text GLabel 9050 4400 0    50   Input ~ 0
B2_SinkOutput
Text GLabel 9050 4500 0    50   Input ~ 0
B3_SinkOutput
Text GLabel 9050 4600 0    50   Input ~ 0
B4_SinkOutput
Text GLabel 9050 4700 0    50   Input ~ 0
B5_SinkOutput
Text GLabel 9050 4800 0    50   Input ~ 0
B6_SinkOutput
Text GLabel 9050 4900 0    50   Input ~ 0
B7_SinkOutput
Wire Notes Line
	8350 2000 10400 2000
Wire Notes Line
	10400 2000 10400 2850
Wire Notes Line
	10400 2850 8350 2850
Wire Notes Line
	8350 2850 8350 2000
Text Notes 8400 2200 0    50   ~ 0
Termperature Gauge\nTransistor\n
Wire Notes Line
	8350 2900 10400 2900
Wire Notes Line
	10400 2900 10400 3750
Wire Notes Line
	10400 3750 8350 3750
Wire Notes Line
	8350 3750 8350 2900
Text Notes 8400 3100 0    50   ~ 0
Fuel Gauge \nTransistor\n
Text Notes 5700 3000 0    50   ~ 0
Indicator Light Subsystem
Text GLabel 9000 1400 2    50   Input ~ 0
Tachometer
Text GLabel 7350 2200 2    50   Input ~ 0
Speedometer
Text GLabel 9700 2200 2    50   Input ~ 0
TempGauge
Text GLabel 9700 3100 2    50   Input ~ 0
FuelGauge
Wire Notes Line
	5650 2900 8300 2900
Wire Notes Line
	8300 2900 8300 5100
Wire Notes Line
	8300 5100 5650 5100
Wire Notes Line
	5650 5100 5650 2900
$Comp
L Connector_Generic:Conn_02x13_Top_Bottom J6
U 1 1 5EDFE9EF
P 9250 4800
F 0 "J6" H 9300 5617 50  0000 C CNN
F 1 "Conn_02x13_Top_Bottom" H 9300 5526 50  0000 C CNN
F 2 "pcb-design:Connector_TE_827881-1" H 9250 4800 50  0001 C CNN
F 3 "~" H 9250 4800 50  0001 C CNN
	1    9250 4800
	1    0    0    -1  
$EndComp
Text GLabel 9550 5300 2    50   Input ~ 0
TempGauge
Text GLabel 9550 5100 2    50   Input ~ 0
FuelGauge
Text GLabel 9550 5200 2    50   Input ~ 0
Speedometer
Text GLabel 9550 5000 2    50   Input ~ 0
Tachometer
$Comp
L power:GND #PWR0125
U 1 1 5EE00694
P 9550 5400
F 0 "#PWR0125" H 9550 5150 50  0001 C CNN
F 1 "GND" V 9555 5272 50  0000 R CNN
F 2 "" H 9550 5400 50  0001 C CNN
F 3 "" H 9550 5400 50  0001 C CNN
	1    9550 5400
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0145
U 1 1 5EE006E4
P 9050 5400
F 0 "#PWR0145" H 9050 5250 50  0001 C CNN
F 1 "+12V" V 9065 5528 50  0000 L CNN
F 2 "" H 9050 5400 50  0001 C CNN
F 3 "" H 9050 5400 50  0001 C CNN
	1    9050 5400
	0    -1   -1   0   
$EndComp
Text GLabel 5750 1000 1    50   Input ~ 0
CAN0_H
Text GLabel 5750 1500 3    50   Input ~ 0
CAN0_L
Wire Wire Line
	5750 1150 5750 1000
Connection ~ 5750 1150
Wire Wire Line
	5750 1350 5750 1500
Connection ~ 5750 1350
Text GLabel 9050 5100 0    50   Input ~ 0
CAN0_H
Text GLabel 9050 5200 0    50   Input ~ 0
CAN0_L
Text Notes 8400 3900 0    50   ~ 0
Primary Connector\n
Wire Notes Line
	10250 5650 8350 5650
Wire Notes Line
	8350 5650 8350 3800
Wire Notes Line
	8350 3800 10250 3800
Wire Notes Line
	10250 3800 10250 5650
$Comp
L power:GND #PWR0146
U 1 1 5EE04E5E
P 9050 5300
F 0 "#PWR0146" H 9050 5050 50  0001 C CNN
F 1 "GND" V 9055 5172 50  0000 R CNN
F 2 "" H 9050 5300 50  0001 C CNN
F 3 "" H 9050 5300 50  0001 C CNN
	1    9050 5300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0147
U 1 1 5EE0634A
P 9050 5000
F 0 "#PWR0147" H 9050 4750 50  0001 C CNN
F 1 "GND" V 9055 4872 50  0000 R CNN
F 2 "" H 9050 5000 50  0001 C CNN
F 3 "" H 9050 5000 50  0001 C CNN
	1    9050 5000
	0    1    1    0   
$EndComp
$Comp
L Regulator_Linear:L7805 U7
U 1 1 5EE03F14
P 4850 3300
F 0 "U7" H 4850 3542 50  0000 C CNN
F 1 "L7805" H 4850 3451 50  0000 C CNN
F 2 "Package_SIP:SIP3_11.6x8.5mm" H 4875 3150 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 4850 3250 50  0001 C CNN
	1    4850 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0148
U 1 1 5EE0400D
P 4850 3600
F 0 "#PWR0148" H 4850 3350 50  0001 C CNN
F 1 "GND" H 4855 3427 50  0000 C CNN
F 2 "" H 4850 3600 50  0001 C CNN
F 3 "" H 4850 3600 50  0001 C CNN
	1    4850 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0149
U 1 1 5EE04058
P 4550 3300
F 0 "#PWR0149" H 4550 3150 50  0001 C CNN
F 1 "+12V" H 4565 3473 50  0000 C CNN
F 2 "" H 4550 3300 50  0001 C CNN
F 3 "" H 4550 3300 50  0001 C CNN
	1    4550 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0150
U 1 1 5EE040A3
P 5150 3300
F 0 "#PWR0150" H 5150 3150 50  0001 C CNN
F 1 "+5V" H 5165 3473 50  0000 C CNN
F 2 "" H 5150 3300 50  0001 C CNN
F 3 "" H 5150 3300 50  0001 C CNN
	1    5150 3300
	1    0    0    -1  
$EndComp
Text Notes 4150 3000 0    50   ~ 0
5v Power Supply
Wire Notes Line
	4100 2900 5600 2900
Wire Notes Line
	5600 2900 5600 3850
Wire Notes Line
	5600 3850 4100 3850
Wire Notes Line
	4100 3850 4100 2900
$EndSCHEMATC
