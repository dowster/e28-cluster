EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
U 1 1 5E6B24DC
P 5000 4300
AR Path="/5E6B24DC" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E6B24DC" Ref="Q?"  Part="1" 
F 0 "Q?" H 5191 4254 50  0000 L CNN
F 1 "2N3906" H 5191 4345 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5200 4225 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 5000 4300 50  0001 L CNN
	1    5000 4300
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6B24E2
P 4700 4300
AR Path="/5E6B24E2" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E6B24E2" Ref="R?"  Part="1" 
F 0 "R?" V 4495 4300 50  0000 C CNN
F 1 "4000" V 4586 4300 50  0000 C CNN
F 2 "" H 4700 4300 50  0001 C CNN
F 3 "~" H 4700 4300 50  0001 C CNN
	1    4700 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6B24E8
P 4700 4000
AR Path="/5E6B24E8" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E6B24E8" Ref="R?"  Part="1" 
F 0 "R?" V 4495 4000 50  0000 C CNN
F 1 "22000" V 4586 4000 50  0000 C CNN
F 2 "" H 4700 4000 50  0001 C CNN
F 3 "~" H 4700 4000 50  0001 C CNN
	1    4700 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 4300 4550 4300
Wire Wire Line
	4550 4300 4550 4350
Wire Wire Line
	5100 4100 5100 4000
Wire Wire Line
	5100 4000 4800 4000
Wire Wire Line
	4600 4000 4550 4000
Wire Wire Line
	4550 4000 4550 4300
Connection ~ 4550 4300
$Comp
L Device:R_Small_US R?
U 1 1 5E6B24F5
P 4150 4550
AR Path="/5E6B24F5" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E6B24F5" Ref="R?"  Part="1" 
F 0 "R?" V 3945 4550 50  0000 C CNN
F 1 "4000" V 4036 4550 50  0000 C CNN
F 2 "" H 4150 4550 50  0001 C CNN
F 3 "~" H 4150 4550 50  0001 C CNN
	1    4150 4550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E6B24FB
P 4550 4750
AR Path="/5E6B24FB" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E6B24FB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4550 4500 50  0001 C CNN
F 1 "GND" H 4555 4577 50  0000 C CNN
F 2 "" H 4550 4750 50  0001 C CNN
F 3 "" H 4550 4750 50  0001 C CNN
	1    4550 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E6B2501
P 5100 4000
AR Path="/5E6B2501" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E6B2501" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5100 3850 50  0001 C CNN
F 1 "+12V" H 5115 4173 50  0000 C CNN
F 2 "" H 5100 4000 50  0001 C CNN
F 3 "" H 5100 4000 50  0001 C CNN
	1    5100 4000
	1    0    0    -1  
$EndComp
Connection ~ 5100 4000
Text GLabel 3900 4550 0    50   Input ~ 0
TachometerOutput
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E6B2509
P 5300 4500
AR Path="/5E6B2509" Ref="J?"  Part="1" 
AR Path="/5E6B979D/5E6B2509" Ref="J?"  Part="1" 
F 0 "J?" H 5272 4432 50  0000 R CNN
F 1 "SpeedInput_C2_P10-13" H 5300 4500 50  0000 R CNN
F 2 "" H 5300 4500 50  0001 C CNN
F 3 "~" H 5300 4500 50  0001 C CNN
	1    5300 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E6B250F
P 4450 4550
AR Path="/5E6B250F" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E6B250F" Ref="Q?"  Part="1" 
F 0 "Q?" H 4641 4596 50  0000 L CNN
F 1 "2N2222" H 4641 4505 50  0000 L CNN
F 2 "" H 4650 4650 50  0001 C CNN
F 3 "~" H 4450 4550 50  0001 C CNN
	1    4450 4550
	1    0    0    -1  
$EndComp
Text HLabel 3900 3950 0    50   Input ~ 0
TachometerOutput
Wire Wire Line
	3900 3950 3950 3950
Wire Wire Line
	3950 3950 3950 4550
Wire Wire Line
	3950 4550 4050 4550
Wire Wire Line
	3900 4550 3950 4550
Connection ~ 3950 4550
$EndSCHEMATC
