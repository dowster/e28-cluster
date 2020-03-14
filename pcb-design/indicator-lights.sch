EESchema Schematic File Version 4
EELAYER 30 0
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
L Transistor_BJT:2N3906 Q?
U 1 1 5E6BC4FE
P 2400 1300
F 0 "Q?" H 2591 1254 50  0000 L CNN
F 1 "2N3906" H 2591 1345 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2600 1225 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 2400 1300 50  0001 L CNN
	1    2400 1300
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6BC504
P 2100 1300
F 0 "R?" V 1895 1300 50  0000 C CNN
F 1 "4000" V 1986 1300 50  0000 C CNN
F 2 "" H 2100 1300 50  0001 C CNN
F 3 "~" H 2100 1300 50  0001 C CNN
	1    2100 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6BC50A
P 2100 1000
F 0 "R?" V 1895 1000 50  0000 C CNN
F 1 "22000" V 1986 1000 50  0000 C CNN
F 2 "" H 2100 1000 50  0001 C CNN
F 3 "~" H 2100 1000 50  0001 C CNN
	1    2100 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 1300 1950 1300
Wire Wire Line
	1950 1300 1950 1350
Wire Wire Line
	2500 1100 2500 1000
Wire Wire Line
	2500 1000 2200 1000
Wire Wire Line
	2000 1000 1950 1000
Wire Wire Line
	1950 1000 1950 1300
Connection ~ 1950 1300
$Comp
L Device:R_Small_US R?
U 1 1 5E6BC517
P 1550 1550
F 0 "R?" V 1345 1550 50  0000 C CNN
F 1 "4000" V 1436 1550 50  0000 C CNN
F 2 "" H 1550 1550 50  0001 C CNN
F 3 "~" H 1550 1550 50  0001 C CNN
	1    1550 1550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E6BC51D
P 1950 1750
F 0 "#PWR?" H 1950 1500 50  0001 C CNN
F 1 "GND" H 1955 1577 50  0000 C CNN
F 2 "" H 1950 1750 50  0001 C CNN
F 3 "" H 1950 1750 50  0001 C CNN
	1    1950 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E6BC523
P 2500 1000
F 0 "#PWR?" H 2500 850 50  0001 C CNN
F 1 "+12V" H 2515 1173 50  0000 C CNN
F 2 "" H 2500 1000 50  0001 C CNN
F 3 "" H 2500 1000 50  0001 C CNN
	1    2500 1000
	1    0    0    -1  
$EndComp
Connection ~ 2500 1000
Text GLabel 1450 1550 0    50   Input ~ 0
TachometerOutput
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E6BC52B
P 2700 1500
F 0 "J?" H 2672 1432 50  0000 R CNN
F 1 "SpeedInput_C2_P10-13" H 2700 1500 50  0000 R CNN
F 2 "" H 2700 1500 50  0001 C CNN
F 3 "~" H 2700 1500 50  0001 C CNN
	1    2700 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E6BC531
P 1850 1550
F 0 "Q?" H 2041 1596 50  0000 L CNN
F 1 "2N2222" H 2041 1505 50  0000 L CNN
F 2 "" H 2050 1650 50  0001 C CNN
F 3 "~" H 1850 1550 50  0001 C CNN
	1    1850 1550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E6D12D8
P 2400 2800
F 0 "Q?" H 2591 2754 50  0000 L CNN
F 1 "2N3906" H 2591 2845 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2600 2725 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 2400 2800 50  0001 L CNN
	1    2400 2800
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6D12DE
P 2100 2800
F 0 "R?" V 1895 2800 50  0000 C CNN
F 1 "4000" V 1986 2800 50  0000 C CNN
F 2 "" H 2100 2800 50  0001 C CNN
F 3 "~" H 2100 2800 50  0001 C CNN
	1    2100 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6D12E4
P 2100 2500
F 0 "R?" V 1895 2500 50  0000 C CNN
F 1 "22000" V 1986 2500 50  0000 C CNN
F 2 "" H 2100 2500 50  0001 C CNN
F 3 "~" H 2100 2500 50  0001 C CNN
	1    2100 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 2800 1950 2800
Wire Wire Line
	1950 2800 1950 2850
Wire Wire Line
	2500 2600 2500 2500
Wire Wire Line
	2500 2500 2200 2500
Wire Wire Line
	2000 2500 1950 2500
Wire Wire Line
	1950 2500 1950 2800
Connection ~ 1950 2800
$Comp
L Device:R_Small_US R?
U 1 1 5E6D12F1
P 1550 3050
F 0 "R?" V 1345 3050 50  0000 C CNN
F 1 "4000" V 1436 3050 50  0000 C CNN
F 2 "" H 1550 3050 50  0001 C CNN
F 3 "~" H 1550 3050 50  0001 C CNN
	1    1550 3050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E6D12F7
P 1950 3250
F 0 "#PWR?" H 1950 3000 50  0001 C CNN
F 1 "GND" H 1955 3077 50  0000 C CNN
F 2 "" H 1950 3250 50  0001 C CNN
F 3 "" H 1950 3250 50  0001 C CNN
	1    1950 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E6D12FD
P 2500 2500
F 0 "#PWR?" H 2500 2350 50  0001 C CNN
F 1 "+12V" H 2515 2673 50  0000 C CNN
F 2 "" H 2500 2500 50  0001 C CNN
F 3 "" H 2500 2500 50  0001 C CNN
	1    2500 2500
	1    0    0    -1  
$EndComp
Connection ~ 2500 2500
Text GLabel 1450 3050 0    50   Input ~ 0
TachometerOutput
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E6D1305
P 2700 3000
F 0 "J?" H 2672 2932 50  0000 R CNN
F 1 "SpeedInput_C2_P10-13" H 2700 3000 50  0000 R CNN
F 2 "" H 2700 3000 50  0001 C CNN
F 3 "~" H 2700 3000 50  0001 C CNN
	1    2700 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E6D130B
P 1850 3050
F 0 "Q?" H 2041 3096 50  0000 L CNN
F 1 "2N2222" H 2041 3005 50  0000 L CNN
F 2 "" H 2050 3150 50  0001 C CNN
F 3 "~" H 1850 3050 50  0001 C CNN
	1    1850 3050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E6D64F7
P 2400 4300
F 0 "Q?" H 2591 4254 50  0000 L CNN
F 1 "2N3906" H 2591 4345 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2600 4225 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 2400 4300 50  0001 L CNN
	1    2400 4300
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6D64FD
P 2100 4300
F 0 "R?" V 1895 4300 50  0000 C CNN
F 1 "4000" V 1986 4300 50  0000 C CNN
F 2 "" H 2100 4300 50  0001 C CNN
F 3 "~" H 2100 4300 50  0001 C CNN
	1    2100 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6D6503
P 2100 4000
F 0 "R?" V 1895 4000 50  0000 C CNN
F 1 "22000" V 1986 4000 50  0000 C CNN
F 2 "" H 2100 4000 50  0001 C CNN
F 3 "~" H 2100 4000 50  0001 C CNN
	1    2100 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 4300 1950 4300
Wire Wire Line
	1950 4300 1950 4350
Wire Wire Line
	2500 4100 2500 4000
Wire Wire Line
	2500 4000 2200 4000
Wire Wire Line
	2000 4000 1950 4000
Wire Wire Line
	1950 4000 1950 4300
Connection ~ 1950 4300
$Comp
L Device:R_Small_US R?
U 1 1 5E6D6510
P 1550 4550
F 0 "R?" V 1345 4550 50  0000 C CNN
F 1 "4000" V 1436 4550 50  0000 C CNN
F 2 "" H 1550 4550 50  0001 C CNN
F 3 "~" H 1550 4550 50  0001 C CNN
	1    1550 4550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E6D6516
P 1950 4750
F 0 "#PWR?" H 1950 4500 50  0001 C CNN
F 1 "GND" H 1955 4577 50  0000 C CNN
F 2 "" H 1950 4750 50  0001 C CNN
F 3 "" H 1950 4750 50  0001 C CNN
	1    1950 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E6D651C
P 2500 4000
F 0 "#PWR?" H 2500 3850 50  0001 C CNN
F 1 "+12V" H 2515 4173 50  0000 C CNN
F 2 "" H 2500 4000 50  0001 C CNN
F 3 "" H 2500 4000 50  0001 C CNN
	1    2500 4000
	1    0    0    -1  
$EndComp
Connection ~ 2500 4000
Text GLabel 1450 4550 0    50   Input ~ 0
TachometerOutput
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E6D6524
P 2700 4500
F 0 "J?" H 2672 4432 50  0000 R CNN
F 1 "SpeedInput_C2_P10-13" H 2700 4500 50  0000 R CNN
F 2 "" H 2700 4500 50  0001 C CNN
F 3 "~" H 2700 4500 50  0001 C CNN
	1    2700 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E6D652A
P 1850 4550
F 0 "Q?" H 2041 4596 50  0000 L CNN
F 1 "2N2222" H 2041 4505 50  0000 L CNN
F 2 "" H 2050 4650 50  0001 C CNN
F 3 "~" H 1850 4550 50  0001 C CNN
	1    1850 4550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E6D9DD5
P 2400 5800
F 0 "Q?" H 2591 5754 50  0000 L CNN
F 1 "2N3906" H 2591 5845 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2600 5725 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 2400 5800 50  0001 L CNN
	1    2400 5800
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6D9DDB
P 2100 5800
F 0 "R?" V 1895 5800 50  0000 C CNN
F 1 "4000" V 1986 5800 50  0000 C CNN
F 2 "" H 2100 5800 50  0001 C CNN
F 3 "~" H 2100 5800 50  0001 C CNN
	1    2100 5800
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6D9DE1
P 2100 5500
F 0 "R?" V 1895 5500 50  0000 C CNN
F 1 "22000" V 1986 5500 50  0000 C CNN
F 2 "" H 2100 5500 50  0001 C CNN
F 3 "~" H 2100 5500 50  0001 C CNN
	1    2100 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 5800 1950 5800
Wire Wire Line
	1950 5800 1950 5850
Wire Wire Line
	2500 5600 2500 5500
Wire Wire Line
	2500 5500 2200 5500
Wire Wire Line
	2000 5500 1950 5500
Wire Wire Line
	1950 5500 1950 5800
Connection ~ 1950 5800
$Comp
L Device:R_Small_US R?
U 1 1 5E6D9DEE
P 1550 6050
F 0 "R?" V 1345 6050 50  0000 C CNN
F 1 "4000" V 1436 6050 50  0000 C CNN
F 2 "" H 1550 6050 50  0001 C CNN
F 3 "~" H 1550 6050 50  0001 C CNN
	1    1550 6050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E6D9DF4
P 1950 6250
F 0 "#PWR?" H 1950 6000 50  0001 C CNN
F 1 "GND" H 1955 6077 50  0000 C CNN
F 2 "" H 1950 6250 50  0001 C CNN
F 3 "" H 1950 6250 50  0001 C CNN
	1    1950 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E6D9DFA
P 2500 5500
F 0 "#PWR?" H 2500 5350 50  0001 C CNN
F 1 "+12V" H 2515 5673 50  0000 C CNN
F 2 "" H 2500 5500 50  0001 C CNN
F 3 "" H 2500 5500 50  0001 C CNN
	1    2500 5500
	1    0    0    -1  
$EndComp
Connection ~ 2500 5500
Text GLabel 1450 6050 0    50   Input ~ 0
TachometerOutput
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E6D9E02
P 2700 6000
F 0 "J?" H 2672 5932 50  0000 R CNN
F 1 "SpeedInput_C2_P10-13" H 2700 6000 50  0000 R CNN
F 2 "" H 2700 6000 50  0001 C CNN
F 3 "~" H 2700 6000 50  0001 C CNN
	1    2700 6000
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E6D9E08
P 1850 6050
F 0 "Q?" H 2041 6096 50  0000 L CNN
F 1 "2N2222" H 2041 6005 50  0000 L CNN
F 2 "" H 2050 6150 50  0001 C CNN
F 3 "~" H 1850 6050 50  0001 C CNN
	1    1850 6050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E6E5A24
P 5400 1300
F 0 "Q?" H 5591 1254 50  0000 L CNN
F 1 "2N3906" H 5591 1345 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5600 1225 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 5400 1300 50  0001 L CNN
	1    5400 1300
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6E5A2A
P 5100 1300
F 0 "R?" V 4895 1300 50  0000 C CNN
F 1 "4000" V 4986 1300 50  0000 C CNN
F 2 "" H 5100 1300 50  0001 C CNN
F 3 "~" H 5100 1300 50  0001 C CNN
	1    5100 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6E5A30
P 5100 1000
F 0 "R?" V 4895 1000 50  0000 C CNN
F 1 "22000" V 4986 1000 50  0000 C CNN
F 2 "" H 5100 1000 50  0001 C CNN
F 3 "~" H 5100 1000 50  0001 C CNN
	1    5100 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 1300 4950 1300
Wire Wire Line
	4950 1300 4950 1350
Wire Wire Line
	5500 1100 5500 1000
Wire Wire Line
	5500 1000 5200 1000
Wire Wire Line
	5000 1000 4950 1000
Wire Wire Line
	4950 1000 4950 1300
Connection ~ 4950 1300
$Comp
L Device:R_Small_US R?
U 1 1 5E6E5A3D
P 4550 1550
F 0 "R?" V 4345 1550 50  0000 C CNN
F 1 "4000" V 4436 1550 50  0000 C CNN
F 2 "" H 4550 1550 50  0001 C CNN
F 3 "~" H 4550 1550 50  0001 C CNN
	1    4550 1550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E6E5A43
P 4950 1750
F 0 "#PWR?" H 4950 1500 50  0001 C CNN
F 1 "GND" H 4955 1577 50  0000 C CNN
F 2 "" H 4950 1750 50  0001 C CNN
F 3 "" H 4950 1750 50  0001 C CNN
	1    4950 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E6E5A49
P 5500 1000
F 0 "#PWR?" H 5500 850 50  0001 C CNN
F 1 "+12V" H 5515 1173 50  0000 C CNN
F 2 "" H 5500 1000 50  0001 C CNN
F 3 "" H 5500 1000 50  0001 C CNN
	1    5500 1000
	1    0    0    -1  
$EndComp
Connection ~ 5500 1000
Text GLabel 4450 1550 0    50   Input ~ 0
TachometerOutput
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E6E5A51
P 5700 1500
F 0 "J?" H 5672 1432 50  0000 R CNN
F 1 "SpeedInput_C2_P10-13" H 5700 1500 50  0000 R CNN
F 2 "" H 5700 1500 50  0001 C CNN
F 3 "~" H 5700 1500 50  0001 C CNN
	1    5700 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E6E5A57
P 4850 1550
F 0 "Q?" H 5041 1596 50  0000 L CNN
F 1 "2N2222" H 5041 1505 50  0000 L CNN
F 2 "" H 5050 1650 50  0001 C CNN
F 3 "~" H 4850 1550 50  0001 C CNN
	1    4850 1550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E6E842F
P 5400 2800
F 0 "Q?" H 5591 2754 50  0000 L CNN
F 1 "2N3906" H 5591 2845 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5600 2725 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 5400 2800 50  0001 L CNN
	1    5400 2800
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6E8435
P 5100 2800
F 0 "R?" V 4895 2800 50  0000 C CNN
F 1 "4000" V 4986 2800 50  0000 C CNN
F 2 "" H 5100 2800 50  0001 C CNN
F 3 "~" H 5100 2800 50  0001 C CNN
	1    5100 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6E843B
P 5100 2500
F 0 "R?" V 4895 2500 50  0000 C CNN
F 1 "22000" V 4986 2500 50  0000 C CNN
F 2 "" H 5100 2500 50  0001 C CNN
F 3 "~" H 5100 2500 50  0001 C CNN
	1    5100 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 2800 4950 2800
Wire Wire Line
	4950 2800 4950 2850
Wire Wire Line
	5500 2600 5500 2500
Wire Wire Line
	5500 2500 5200 2500
Wire Wire Line
	5000 2500 4950 2500
Wire Wire Line
	4950 2500 4950 2800
Connection ~ 4950 2800
$Comp
L Device:R_Small_US R?
U 1 1 5E6E8448
P 4550 3050
F 0 "R?" V 4345 3050 50  0000 C CNN
F 1 "4000" V 4436 3050 50  0000 C CNN
F 2 "" H 4550 3050 50  0001 C CNN
F 3 "~" H 4550 3050 50  0001 C CNN
	1    4550 3050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E6E844E
P 4950 3250
F 0 "#PWR?" H 4950 3000 50  0001 C CNN
F 1 "GND" H 4955 3077 50  0000 C CNN
F 2 "" H 4950 3250 50  0001 C CNN
F 3 "" H 4950 3250 50  0001 C CNN
	1    4950 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E6E8454
P 5500 2500
F 0 "#PWR?" H 5500 2350 50  0001 C CNN
F 1 "+12V" H 5515 2673 50  0000 C CNN
F 2 "" H 5500 2500 50  0001 C CNN
F 3 "" H 5500 2500 50  0001 C CNN
	1    5500 2500
	1    0    0    -1  
$EndComp
Connection ~ 5500 2500
Text GLabel 4450 3050 0    50   Input ~ 0
TachometerOutput
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E6E845C
P 5700 3000
F 0 "J?" H 5672 2932 50  0000 R CNN
F 1 "SpeedInput_C2_P10-13" H 5700 3000 50  0000 R CNN
F 2 "" H 5700 3000 50  0001 C CNN
F 3 "~" H 5700 3000 50  0001 C CNN
	1    5700 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E6E8462
P 4850 3050
F 0 "Q?" H 5041 3096 50  0000 L CNN
F 1 "2N2222" H 5041 3005 50  0000 L CNN
F 2 "" H 5050 3150 50  0001 C CNN
F 3 "~" H 4850 3050 50  0001 C CNN
	1    4850 3050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E6E9AB9
P 5400 4300
F 0 "Q?" H 5591 4254 50  0000 L CNN
F 1 "2N3906" H 5591 4345 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5600 4225 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 5400 4300 50  0001 L CNN
	1    5400 4300
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6E9ABF
P 5100 4300
F 0 "R?" V 4895 4300 50  0000 C CNN
F 1 "4000" V 4986 4300 50  0000 C CNN
F 2 "" H 5100 4300 50  0001 C CNN
F 3 "~" H 5100 4300 50  0001 C CNN
	1    5100 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6E9AC5
P 5100 4000
F 0 "R?" V 4895 4000 50  0000 C CNN
F 1 "22000" V 4986 4000 50  0000 C CNN
F 2 "" H 5100 4000 50  0001 C CNN
F 3 "~" H 5100 4000 50  0001 C CNN
	1    5100 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 4300 4950 4300
Wire Wire Line
	4950 4300 4950 4350
Wire Wire Line
	5500 4100 5500 4000
Wire Wire Line
	5500 4000 5200 4000
Wire Wire Line
	5000 4000 4950 4000
Wire Wire Line
	4950 4000 4950 4300
Connection ~ 4950 4300
$Comp
L Device:R_Small_US R?
U 1 1 5E6E9AD2
P 4550 4550
F 0 "R?" V 4345 4550 50  0000 C CNN
F 1 "4000" V 4436 4550 50  0000 C CNN
F 2 "" H 4550 4550 50  0001 C CNN
F 3 "~" H 4550 4550 50  0001 C CNN
	1    4550 4550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E6E9AD8
P 4950 4750
F 0 "#PWR?" H 4950 4500 50  0001 C CNN
F 1 "GND" H 4955 4577 50  0000 C CNN
F 2 "" H 4950 4750 50  0001 C CNN
F 3 "" H 4950 4750 50  0001 C CNN
	1    4950 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E6E9ADE
P 5500 4000
F 0 "#PWR?" H 5500 3850 50  0001 C CNN
F 1 "+12V" H 5515 4173 50  0000 C CNN
F 2 "" H 5500 4000 50  0001 C CNN
F 3 "" H 5500 4000 50  0001 C CNN
	1    5500 4000
	1    0    0    -1  
$EndComp
Connection ~ 5500 4000
Text GLabel 4450 4550 0    50   Input ~ 0
TachometerOutput
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E6E9AE6
P 5700 4500
F 0 "J?" H 5672 4432 50  0000 R CNN
F 1 "SpeedInput_C2_P10-13" H 5700 4500 50  0000 R CNN
F 2 "" H 5700 4500 50  0001 C CNN
F 3 "~" H 5700 4500 50  0001 C CNN
	1    5700 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E6E9AEC
P 4850 4550
F 0 "Q?" H 5041 4596 50  0000 L CNN
F 1 "2N2222" H 5041 4505 50  0000 L CNN
F 2 "" H 5050 4650 50  0001 C CNN
F 3 "~" H 4850 4550 50  0001 C CNN
	1    4850 4550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E6EAD69
P 5400 5800
F 0 "Q?" H 5591 5754 50  0000 L CNN
F 1 "2N3906" H 5591 5845 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5600 5725 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 5400 5800 50  0001 L CNN
	1    5400 5800
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6EAD6F
P 5100 5800
F 0 "R?" V 4895 5800 50  0000 C CNN
F 1 "4000" V 4986 5800 50  0000 C CNN
F 2 "" H 5100 5800 50  0001 C CNN
F 3 "~" H 5100 5800 50  0001 C CNN
	1    5100 5800
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6EAD75
P 5100 5500
F 0 "R?" V 4895 5500 50  0000 C CNN
F 1 "22000" V 4986 5500 50  0000 C CNN
F 2 "" H 5100 5500 50  0001 C CNN
F 3 "~" H 5100 5500 50  0001 C CNN
	1    5100 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 5800 4950 5800
Wire Wire Line
	4950 5800 4950 5850
Wire Wire Line
	5500 5600 5500 5500
Wire Wire Line
	5500 5500 5200 5500
Wire Wire Line
	5000 5500 4950 5500
Wire Wire Line
	4950 5500 4950 5800
Connection ~ 4950 5800
$Comp
L Device:R_Small_US R?
U 1 1 5E6EAD82
P 4550 6050
F 0 "R?" V 4345 6050 50  0000 C CNN
F 1 "4000" V 4436 6050 50  0000 C CNN
F 2 "" H 4550 6050 50  0001 C CNN
F 3 "~" H 4550 6050 50  0001 C CNN
	1    4550 6050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E6EAD88
P 4950 6250
F 0 "#PWR?" H 4950 6000 50  0001 C CNN
F 1 "GND" H 4955 6077 50  0000 C CNN
F 2 "" H 4950 6250 50  0001 C CNN
F 3 "" H 4950 6250 50  0001 C CNN
	1    4950 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E6EAD8E
P 5500 5500
F 0 "#PWR?" H 5500 5350 50  0001 C CNN
F 1 "+12V" H 5515 5673 50  0000 C CNN
F 2 "" H 5500 5500 50  0001 C CNN
F 3 "" H 5500 5500 50  0001 C CNN
	1    5500 5500
	1    0    0    -1  
$EndComp
Connection ~ 5500 5500
Text GLabel 4450 6050 0    50   Input ~ 0
TachometerOutput
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E6EAD96
P 5700 6000
F 0 "J?" H 5672 5932 50  0000 R CNN
F 1 "SpeedInput_C2_P10-13" H 5700 6000 50  0000 R CNN
F 2 "" H 5700 6000 50  0001 C CNN
F 3 "~" H 5700 6000 50  0001 C CNN
	1    5700 6000
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E6EAD9C
P 4850 6050
F 0 "Q?" H 5041 6096 50  0000 L CNN
F 1 "2N2222" H 5041 6005 50  0000 L CNN
F 2 "" H 5050 6150 50  0001 C CNN
F 3 "~" H 4850 6050 50  0001 C CNN
	1    4850 6050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
