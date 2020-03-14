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
U 1 1 5E6E8D27
P 10200 2250
AR Path="/5E6E8D27" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E6E8D27" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E6E8D27" Ref="Q38"  Part="1" 
F 0 "Q38" H 10391 2204 50  0000 L CNN
F 1 "2N3906" H 10391 2295 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10400 2175 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 10200 2250 50  0001 L CNN
	1    10200 2250
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6E8D2D
P 9900 2250
AR Path="/5E6E8D2D" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E6E8D2D" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E6E8D2D" Ref="R54"  Part="1" 
F 0 "R54" V 9695 2250 50  0000 C CNN
F 1 "4000" V 9786 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9900 2250 50  0001 C CNN
F 3 "~" H 9900 2250 50  0001 C CNN
	1    9900 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6E8D33
P 9900 1950
AR Path="/5E6E8D33" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E6E8D33" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E6E8D33" Ref="R53"  Part="1" 
F 0 "R53" V 9695 1950 50  0000 C CNN
F 1 "22000" V 9786 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9900 1950 50  0001 C CNN
F 3 "~" H 9900 1950 50  0001 C CNN
	1    9900 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 2250 9750 2250
Wire Wire Line
	9750 2250 9750 2300
Wire Wire Line
	10300 2050 10300 1950
Wire Wire Line
	10300 1950 10000 1950
Wire Wire Line
	9800 1950 9750 1950
Wire Wire Line
	9750 1950 9750 2250
Connection ~ 9750 2250
$Comp
L Device:R_Small_US R?
U 1 1 5E6E8D40
P 9350 2500
AR Path="/5E6E8D40" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E6E8D40" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E6E8D40" Ref="R49"  Part="1" 
F 0 "R49" V 9145 2500 50  0000 C CNN
F 1 "4000" V 9236 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9350 2500 50  0001 C CNN
F 3 "~" H 9350 2500 50  0001 C CNN
	1    9350 2500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E6E8D46
P 9750 2700
AR Path="/5E6E8D46" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E6E8D46" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E6E8D46" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 9750 2450 50  0001 C CNN
F 1 "GND" H 9755 2527 50  0000 C CNN
F 2 "" H 9750 2700 50  0001 C CNN
F 3 "" H 9750 2700 50  0001 C CNN
	1    9750 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E6E8D4C
P 10300 1950
AR Path="/5E6E8D4C" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E6E8D4C" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E6E8D4C" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 10300 1800 50  0001 C CNN
F 1 "+12V" H 10315 2123 50  0000 C CNN
F 2 "" H 10300 1950 50  0001 C CNN
F 3 "" H 10300 1950 50  0001 C CNN
	1    10300 1950
	1    0    0    -1  
$EndComp
Connection ~ 10300 1950
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E6E8D53
P 10500 2600
AR Path="/5E6E8D53" Ref="J?"  Part="1" 
AR Path="/5E6B979D/5E6E8D53" Ref="J?"  Part="1" 
AR Path="/5E6C532A/5E6E8D53" Ref="J19"  Part="1" 
F 0 "J19" H 10472 2532 50  0000 R CNN
F 1 "B0" H 10450 2600 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 10500 2600 50  0001 C CNN
F 3 "~" H 10500 2600 50  0001 C CNN
	1    10500 2600
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E6E8D59
P 9650 2500
AR Path="/5E6E8D59" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E6E8D59" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E6E8D59" Ref="Q34"  Part="1" 
F 0 "Q34" H 9841 2546 50  0000 L CNN
F 1 "2N2222" H 9841 2455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 9850 2600 50  0001 C CNN
F 3 "~" H 9650 2500 50  0001 C CNN
	1    9650 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 2450 10300 2600
Entry Wire Line
	10350 3150 10450 3250
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E6EC1AF
P 10200 3450
AR Path="/5E6EC1AF" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E6EC1AF" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E6EC1AF" Ref="Q39"  Part="1" 
F 0 "Q39" H 10391 3404 50  0000 L CNN
F 1 "2N3906" H 10391 3495 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10400 3375 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 10200 3450 50  0001 L CNN
	1    10200 3450
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6EC1B5
P 9900 3450
AR Path="/5E6EC1B5" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E6EC1B5" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E6EC1B5" Ref="R56"  Part="1" 
F 0 "R56" V 9695 3450 50  0000 C CNN
F 1 "4000" V 9786 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9900 3450 50  0001 C CNN
F 3 "~" H 9900 3450 50  0001 C CNN
	1    9900 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6EC1BB
P 9900 3150
AR Path="/5E6EC1BB" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E6EC1BB" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E6EC1BB" Ref="R55"  Part="1" 
F 0 "R55" V 9695 3150 50  0000 C CNN
F 1 "22000" V 9786 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9900 3150 50  0001 C CNN
F 3 "~" H 9900 3150 50  0001 C CNN
	1    9900 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 3450 9750 3450
Wire Wire Line
	9750 3450 9750 3500
Wire Wire Line
	10300 3250 10300 3150
Wire Wire Line
	10300 3150 10000 3150
Wire Wire Line
	9800 3150 9750 3150
Wire Wire Line
	9750 3150 9750 3450
Connection ~ 9750 3450
$Comp
L Device:R_Small_US R?
U 1 1 5E6EC1C8
P 9350 3700
AR Path="/5E6EC1C8" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E6EC1C8" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E6EC1C8" Ref="R50"  Part="1" 
F 0 "R50" V 9145 3700 50  0000 C CNN
F 1 "4000" V 9236 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9350 3700 50  0001 C CNN
F 3 "~" H 9350 3700 50  0001 C CNN
	1    9350 3700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E6EC1CE
P 9750 3900
AR Path="/5E6EC1CE" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E6EC1CE" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E6EC1CE" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 9750 3650 50  0001 C CNN
F 1 "GND" H 9755 3727 50  0000 C CNN
F 2 "" H 9750 3900 50  0001 C CNN
F 3 "" H 9750 3900 50  0001 C CNN
	1    9750 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E6EC1D4
P 10300 3150
AR Path="/5E6EC1D4" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E6EC1D4" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E6EC1D4" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 10300 3000 50  0001 C CNN
F 1 "+12V" H 10315 3323 50  0000 C CNN
F 2 "" H 10300 3150 50  0001 C CNN
F 3 "" H 10300 3150 50  0001 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
Connection ~ 10300 3150
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E6EC1DB
P 10500 3800
AR Path="/5E6EC1DB" Ref="J?"  Part="1" 
AR Path="/5E6B979D/5E6EC1DB" Ref="J?"  Part="1" 
AR Path="/5E6C532A/5E6EC1DB" Ref="J20"  Part="1" 
F 0 "J20" H 10472 3732 50  0000 R CNN
F 1 "B1" H 10450 3800 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 10500 3800 50  0001 C CNN
F 3 "~" H 10500 3800 50  0001 C CNN
	1    10500 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E6EC1E1
P 9650 3700
AR Path="/5E6EC1E1" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E6EC1E1" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E6EC1E1" Ref="Q35"  Part="1" 
F 0 "Q35" H 9841 3746 50  0000 L CNN
F 1 "2N2222" H 9841 3655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 9850 3800 50  0001 C CNN
F 3 "~" H 9650 3700 50  0001 C CNN
	1    9650 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 3650 10300 3800
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E6F4605
P 10200 4650
AR Path="/5E6F4605" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E6F4605" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E6F4605" Ref="Q40"  Part="1" 
F 0 "Q40" H 10391 4604 50  0000 L CNN
F 1 "2N3906" H 10391 4695 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10400 4575 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 10200 4650 50  0001 L CNN
	1    10200 4650
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6F460B
P 9900 4650
AR Path="/5E6F460B" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E6F460B" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E6F460B" Ref="R58"  Part="1" 
F 0 "R58" V 9695 4650 50  0000 C CNN
F 1 "4000" V 9786 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9900 4650 50  0001 C CNN
F 3 "~" H 9900 4650 50  0001 C CNN
	1    9900 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6F4611
P 9900 4350
AR Path="/5E6F4611" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E6F4611" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E6F4611" Ref="R57"  Part="1" 
F 0 "R57" V 9695 4350 50  0000 C CNN
F 1 "22000" V 9786 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9900 4350 50  0001 C CNN
F 3 "~" H 9900 4350 50  0001 C CNN
	1    9900 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 4650 9750 4650
Wire Wire Line
	9750 4650 9750 4700
Wire Wire Line
	10300 4450 10300 4350
Wire Wire Line
	10300 4350 10000 4350
Wire Wire Line
	9800 4350 9750 4350
Wire Wire Line
	9750 4350 9750 4650
Connection ~ 9750 4650
$Comp
L Device:R_Small_US R?
U 1 1 5E6F461E
P 9350 4900
AR Path="/5E6F461E" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E6F461E" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E6F461E" Ref="R51"  Part="1" 
F 0 "R51" V 9145 4900 50  0000 C CNN
F 1 "4000" V 9236 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9350 4900 50  0001 C CNN
F 3 "~" H 9350 4900 50  0001 C CNN
	1    9350 4900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E6F4624
P 9750 5100
AR Path="/5E6F4624" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E6F4624" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E6F4624" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 9750 4850 50  0001 C CNN
F 1 "GND" H 9755 4927 50  0000 C CNN
F 2 "" H 9750 5100 50  0001 C CNN
F 3 "" H 9750 5100 50  0001 C CNN
	1    9750 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E6F462A
P 10300 4350
AR Path="/5E6F462A" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E6F462A" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E6F462A" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 10300 4200 50  0001 C CNN
F 1 "+12V" H 10315 4523 50  0000 C CNN
F 2 "" H 10300 4350 50  0001 C CNN
F 3 "" H 10300 4350 50  0001 C CNN
	1    10300 4350
	1    0    0    -1  
$EndComp
Connection ~ 10300 4350
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E6F4631
P 10500 5000
AR Path="/5E6F4631" Ref="J?"  Part="1" 
AR Path="/5E6B979D/5E6F4631" Ref="J?"  Part="1" 
AR Path="/5E6C532A/5E6F4631" Ref="J21"  Part="1" 
F 0 "J21" H 10472 4932 50  0000 R CNN
F 1 "B2" H 10450 5000 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 10500 5000 50  0001 C CNN
F 3 "~" H 10500 5000 50  0001 C CNN
	1    10500 5000
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E6F4637
P 9650 4900
AR Path="/5E6F4637" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E6F4637" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E6F4637" Ref="Q36"  Part="1" 
F 0 "Q36" H 9841 4946 50  0000 L CNN
F 1 "2N2222" H 9841 4855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 9850 5000 50  0001 C CNN
F 3 "~" H 9650 4900 50  0001 C CNN
	1    9650 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4850 10300 5000
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E6F6667
P 10200 5850
AR Path="/5E6F6667" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E6F6667" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E6F6667" Ref="Q41"  Part="1" 
F 0 "Q41" H 10391 5804 50  0000 L CNN
F 1 "2N3906" H 10391 5895 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10400 5775 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 10200 5850 50  0001 L CNN
	1    10200 5850
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6F666D
P 9900 5850
AR Path="/5E6F666D" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E6F666D" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E6F666D" Ref="R60"  Part="1" 
F 0 "R60" V 9695 5850 50  0000 C CNN
F 1 "4000" V 9786 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9900 5850 50  0001 C CNN
F 3 "~" H 9900 5850 50  0001 C CNN
	1    9900 5850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E6F6673
P 9900 5550
AR Path="/5E6F6673" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E6F6673" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E6F6673" Ref="R59"  Part="1" 
F 0 "R59" V 9695 5550 50  0000 C CNN
F 1 "22000" V 9786 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9900 5550 50  0001 C CNN
F 3 "~" H 9900 5550 50  0001 C CNN
	1    9900 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 5850 9750 5850
Wire Wire Line
	9750 5850 9750 5900
Wire Wire Line
	10300 5650 10300 5550
Wire Wire Line
	10300 5550 10000 5550
Wire Wire Line
	9800 5550 9750 5550
Wire Wire Line
	9750 5550 9750 5850
Connection ~ 9750 5850
$Comp
L Device:R_Small_US R?
U 1 1 5E6F6680
P 9350 6100
AR Path="/5E6F6680" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E6F6680" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E6F6680" Ref="R52"  Part="1" 
F 0 "R52" V 9145 6100 50  0000 C CNN
F 1 "4000" V 9236 6100 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9350 6100 50  0001 C CNN
F 3 "~" H 9350 6100 50  0001 C CNN
	1    9350 6100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E6F6686
P 9750 6300
AR Path="/5E6F6686" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E6F6686" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E6F6686" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 9750 6050 50  0001 C CNN
F 1 "GND" H 9755 6127 50  0000 C CNN
F 2 "" H 9750 6300 50  0001 C CNN
F 3 "" H 9750 6300 50  0001 C CNN
	1    9750 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E6F668C
P 10300 5550
AR Path="/5E6F668C" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E6F668C" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E6F668C" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 10300 5400 50  0001 C CNN
F 1 "+12V" H 10315 5723 50  0000 C CNN
F 2 "" H 10300 5550 50  0001 C CNN
F 3 "" H 10300 5550 50  0001 C CNN
	1    10300 5550
	1    0    0    -1  
$EndComp
Connection ~ 10300 5550
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E6F6693
P 10500 6200
AR Path="/5E6F6693" Ref="J?"  Part="1" 
AR Path="/5E6B979D/5E6F6693" Ref="J?"  Part="1" 
AR Path="/5E6C532A/5E6F6693" Ref="J22"  Part="1" 
F 0 "J22" H 10472 6132 50  0000 R CNN
F 1 "B3" H 10450 6200 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 10500 6200 50  0001 C CNN
F 3 "~" H 10500 6200 50  0001 C CNN
	1    10500 6200
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E6F6699
P 9650 6100
AR Path="/5E6F6699" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E6F6699" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E6F6699" Ref="Q37"  Part="1" 
F 0 "Q37" H 9841 6146 50  0000 L CNN
F 1 "2N2222" H 9841 6055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 9850 6200 50  0001 C CNN
F 3 "~" H 9650 6100 50  0001 C CNN
	1    9650 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 6050 10300 6200
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E75E1F5
P 7600 2250
AR Path="/5E75E1F5" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E75E1F5" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E75E1F5" Ref="Q30"  Part="1" 
F 0 "Q30" H 7791 2204 50  0000 L CNN
F 1 "2N3906" H 7791 2295 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7800 2175 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 7600 2250 50  0001 L CNN
	1    7600 2250
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E75E1FB
P 7300 2250
AR Path="/5E75E1FB" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E75E1FB" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E75E1FB" Ref="R42"  Part="1" 
F 0 "R42" V 7095 2250 50  0000 C CNN
F 1 "4000" V 7186 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7300 2250 50  0001 C CNN
F 3 "~" H 7300 2250 50  0001 C CNN
	1    7300 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E75E201
P 7300 1950
AR Path="/5E75E201" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E75E201" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E75E201" Ref="R41"  Part="1" 
F 0 "R41" V 7095 1950 50  0000 C CNN
F 1 "22000" V 7186 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7300 1950 50  0001 C CNN
F 3 "~" H 7300 1950 50  0001 C CNN
	1    7300 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 2250 7150 2250
Wire Wire Line
	7150 2250 7150 2300
Wire Wire Line
	7700 2050 7700 1950
Wire Wire Line
	7700 1950 7400 1950
Wire Wire Line
	7200 1950 7150 1950
Wire Wire Line
	7150 1950 7150 2250
Connection ~ 7150 2250
$Comp
L Device:R_Small_US R?
U 1 1 5E75E20E
P 6750 2500
AR Path="/5E75E20E" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E75E20E" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E75E20E" Ref="R37"  Part="1" 
F 0 "R37" V 6545 2500 50  0000 C CNN
F 1 "4000" V 6636 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6750 2500 50  0001 C CNN
F 3 "~" H 6750 2500 50  0001 C CNN
	1    6750 2500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E75E214
P 7150 2700
AR Path="/5E75E214" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E75E214" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E75E214" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 7150 2450 50  0001 C CNN
F 1 "GND" H 7155 2527 50  0000 C CNN
F 2 "" H 7150 2700 50  0001 C CNN
F 3 "" H 7150 2700 50  0001 C CNN
	1    7150 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E75E21A
P 7700 1950
AR Path="/5E75E21A" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E75E21A" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E75E21A" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 7700 1800 50  0001 C CNN
F 1 "+12V" H 7715 2123 50  0000 C CNN
F 2 "" H 7700 1950 50  0001 C CNN
F 3 "" H 7700 1950 50  0001 C CNN
	1    7700 1950
	1    0    0    -1  
$EndComp
Connection ~ 7700 1950
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E75E221
P 7900 2600
AR Path="/5E75E221" Ref="J?"  Part="1" 
AR Path="/5E6B979D/5E75E221" Ref="J?"  Part="1" 
AR Path="/5E6C532A/5E75E221" Ref="J15"  Part="1" 
F 0 "J15" H 7872 2532 50  0000 R CNN
F 1 "B4" H 7850 2600 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 7900 2600 50  0001 C CNN
F 3 "~" H 7900 2600 50  0001 C CNN
	1    7900 2600
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E75E227
P 7050 2500
AR Path="/5E75E227" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E75E227" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E75E227" Ref="Q26"  Part="1" 
F 0 "Q26" H 7241 2546 50  0000 L CNN
F 1 "2N2222" H 7241 2455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 7250 2600 50  0001 C CNN
F 3 "~" H 7050 2500 50  0001 C CNN
	1    7050 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2450 7700 2600
Entry Wire Line
	7750 3150 7850 3250
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E75E22F
P 7600 3450
AR Path="/5E75E22F" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E75E22F" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E75E22F" Ref="Q31"  Part="1" 
F 0 "Q31" H 7791 3404 50  0000 L CNN
F 1 "2N3906" H 7791 3495 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7800 3375 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 7600 3450 50  0001 L CNN
	1    7600 3450
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E75E235
P 7300 3450
AR Path="/5E75E235" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E75E235" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E75E235" Ref="R44"  Part="1" 
F 0 "R44" V 7095 3450 50  0000 C CNN
F 1 "4000" V 7186 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7300 3450 50  0001 C CNN
F 3 "~" H 7300 3450 50  0001 C CNN
	1    7300 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E75E23B
P 7300 3150
AR Path="/5E75E23B" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E75E23B" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E75E23B" Ref="R43"  Part="1" 
F 0 "R43" V 7095 3150 50  0000 C CNN
F 1 "22000" V 7186 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7300 3150 50  0001 C CNN
F 3 "~" H 7300 3150 50  0001 C CNN
	1    7300 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 3450 7150 3450
Wire Wire Line
	7150 3450 7150 3500
Wire Wire Line
	7700 3250 7700 3150
Wire Wire Line
	7700 3150 7400 3150
Wire Wire Line
	7200 3150 7150 3150
Wire Wire Line
	7150 3150 7150 3450
Connection ~ 7150 3450
$Comp
L Device:R_Small_US R?
U 1 1 5E75E248
P 6750 3700
AR Path="/5E75E248" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E75E248" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E75E248" Ref="R38"  Part="1" 
F 0 "R38" V 6545 3700 50  0000 C CNN
F 1 "4000" V 6636 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6750 3700 50  0001 C CNN
F 3 "~" H 6750 3700 50  0001 C CNN
	1    6750 3700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E75E24E
P 7150 3900
AR Path="/5E75E24E" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E75E24E" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E75E24E" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 7150 3650 50  0001 C CNN
F 1 "GND" H 7155 3727 50  0000 C CNN
F 2 "" H 7150 3900 50  0001 C CNN
F 3 "" H 7150 3900 50  0001 C CNN
	1    7150 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E75E254
P 7700 3150
AR Path="/5E75E254" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E75E254" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E75E254" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 7700 3000 50  0001 C CNN
F 1 "+12V" H 7715 3323 50  0000 C CNN
F 2 "" H 7700 3150 50  0001 C CNN
F 3 "" H 7700 3150 50  0001 C CNN
	1    7700 3150
	1    0    0    -1  
$EndComp
Connection ~ 7700 3150
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E75E25B
P 7900 3800
AR Path="/5E75E25B" Ref="J?"  Part="1" 
AR Path="/5E6B979D/5E75E25B" Ref="J?"  Part="1" 
AR Path="/5E6C532A/5E75E25B" Ref="J16"  Part="1" 
F 0 "J16" H 7872 3732 50  0000 R CNN
F 1 "B5" H 7850 3800 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 7900 3800 50  0001 C CNN
F 3 "~" H 7900 3800 50  0001 C CNN
	1    7900 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E75E261
P 7050 3700
AR Path="/5E75E261" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E75E261" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E75E261" Ref="Q27"  Part="1" 
F 0 "Q27" H 7241 3746 50  0000 L CNN
F 1 "2N2222" H 7241 3655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 7250 3800 50  0001 C CNN
F 3 "~" H 7050 3700 50  0001 C CNN
	1    7050 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3650 7700 3800
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E75E268
P 7600 4650
AR Path="/5E75E268" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E75E268" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E75E268" Ref="Q32"  Part="1" 
F 0 "Q32" H 7791 4604 50  0000 L CNN
F 1 "2N3906" H 7791 4695 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7800 4575 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 7600 4650 50  0001 L CNN
	1    7600 4650
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E75E26E
P 7300 4650
AR Path="/5E75E26E" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E75E26E" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E75E26E" Ref="R46"  Part="1" 
F 0 "R46" V 7095 4650 50  0000 C CNN
F 1 "4000" V 7186 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7300 4650 50  0001 C CNN
F 3 "~" H 7300 4650 50  0001 C CNN
	1    7300 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E75E274
P 7300 4350
AR Path="/5E75E274" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E75E274" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E75E274" Ref="R45"  Part="1" 
F 0 "R45" V 7095 4350 50  0000 C CNN
F 1 "22000" V 7186 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7300 4350 50  0001 C CNN
F 3 "~" H 7300 4350 50  0001 C CNN
	1    7300 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 4650 7150 4650
Wire Wire Line
	7150 4650 7150 4700
Wire Wire Line
	7700 4450 7700 4350
Wire Wire Line
	7700 4350 7400 4350
Wire Wire Line
	7200 4350 7150 4350
Wire Wire Line
	7150 4350 7150 4650
Connection ~ 7150 4650
$Comp
L Device:R_Small_US R?
U 1 1 5E75E281
P 6750 4900
AR Path="/5E75E281" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E75E281" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E75E281" Ref="R39"  Part="1" 
F 0 "R39" V 6545 4900 50  0000 C CNN
F 1 "4000" V 6636 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6750 4900 50  0001 C CNN
F 3 "~" H 6750 4900 50  0001 C CNN
	1    6750 4900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E75E287
P 7150 5100
AR Path="/5E75E287" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E75E287" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E75E287" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 7150 4850 50  0001 C CNN
F 1 "GND" H 7155 4927 50  0000 C CNN
F 2 "" H 7150 5100 50  0001 C CNN
F 3 "" H 7150 5100 50  0001 C CNN
	1    7150 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E75E28D
P 7700 4350
AR Path="/5E75E28D" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E75E28D" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E75E28D" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 7700 4200 50  0001 C CNN
F 1 "+12V" H 7715 4523 50  0000 C CNN
F 2 "" H 7700 4350 50  0001 C CNN
F 3 "" H 7700 4350 50  0001 C CNN
	1    7700 4350
	1    0    0    -1  
$EndComp
Connection ~ 7700 4350
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E75E294
P 7900 5000
AR Path="/5E75E294" Ref="J?"  Part="1" 
AR Path="/5E6B979D/5E75E294" Ref="J?"  Part="1" 
AR Path="/5E6C532A/5E75E294" Ref="J17"  Part="1" 
F 0 "J17" H 7872 4932 50  0000 R CNN
F 1 "B6" H 7850 5000 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 7900 5000 50  0001 C CNN
F 3 "~" H 7900 5000 50  0001 C CNN
	1    7900 5000
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E75E29A
P 7050 4900
AR Path="/5E75E29A" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E75E29A" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E75E29A" Ref="Q28"  Part="1" 
F 0 "Q28" H 7241 4946 50  0000 L CNN
F 1 "2N2222" H 7241 4855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 7250 5000 50  0001 C CNN
F 3 "~" H 7050 4900 50  0001 C CNN
	1    7050 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 4850 7700 5000
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E75E2A1
P 7600 5850
AR Path="/5E75E2A1" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E75E2A1" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E75E2A1" Ref="Q33"  Part="1" 
F 0 "Q33" H 7791 5804 50  0000 L CNN
F 1 "2N3906" H 7791 5895 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7800 5775 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 7600 5850 50  0001 L CNN
	1    7600 5850
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E75E2A7
P 7300 5850
AR Path="/5E75E2A7" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E75E2A7" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E75E2A7" Ref="R48"  Part="1" 
F 0 "R48" V 7095 5850 50  0000 C CNN
F 1 "4000" V 7186 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7300 5850 50  0001 C CNN
F 3 "~" H 7300 5850 50  0001 C CNN
	1    7300 5850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E75E2AD
P 7300 5550
AR Path="/5E75E2AD" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E75E2AD" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E75E2AD" Ref="R47"  Part="1" 
F 0 "R47" V 7095 5550 50  0000 C CNN
F 1 "22000" V 7186 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7300 5550 50  0001 C CNN
F 3 "~" H 7300 5550 50  0001 C CNN
	1    7300 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 5850 7150 5850
Wire Wire Line
	7150 5850 7150 5900
Wire Wire Line
	7700 5650 7700 5550
Wire Wire Line
	7700 5550 7400 5550
Wire Wire Line
	7200 5550 7150 5550
Wire Wire Line
	7150 5550 7150 5850
Connection ~ 7150 5850
$Comp
L Device:R_Small_US R?
U 1 1 5E75E2BA
P 6750 6100
AR Path="/5E75E2BA" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E75E2BA" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E75E2BA" Ref="R40"  Part="1" 
F 0 "R40" V 6545 6100 50  0000 C CNN
F 1 "4000" V 6636 6100 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6750 6100 50  0001 C CNN
F 3 "~" H 6750 6100 50  0001 C CNN
	1    6750 6100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E75E2C0
P 7150 6300
AR Path="/5E75E2C0" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E75E2C0" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E75E2C0" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 7150 6050 50  0001 C CNN
F 1 "GND" H 7155 6127 50  0000 C CNN
F 2 "" H 7150 6300 50  0001 C CNN
F 3 "" H 7150 6300 50  0001 C CNN
	1    7150 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E75E2C6
P 7700 5550
AR Path="/5E75E2C6" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E75E2C6" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E75E2C6" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 7700 5400 50  0001 C CNN
F 1 "+12V" H 7715 5723 50  0000 C CNN
F 2 "" H 7700 5550 50  0001 C CNN
F 3 "" H 7700 5550 50  0001 C CNN
	1    7700 5550
	1    0    0    -1  
$EndComp
Connection ~ 7700 5550
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E75E2CD
P 7900 6200
AR Path="/5E75E2CD" Ref="J?"  Part="1" 
AR Path="/5E6B979D/5E75E2CD" Ref="J?"  Part="1" 
AR Path="/5E6C532A/5E75E2CD" Ref="J18"  Part="1" 
F 0 "J18" H 7872 6132 50  0000 R CNN
F 1 "B7" H 7850 6200 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 7900 6200 50  0001 C CNN
F 3 "~" H 7900 6200 50  0001 C CNN
	1    7900 6200
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E75E2D3
P 7050 6100
AR Path="/5E75E2D3" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E75E2D3" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E75E2D3" Ref="Q29"  Part="1" 
F 0 "Q29" H 7241 6146 50  0000 L CNN
F 1 "2N2222" H 7241 6055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 7250 6200 50  0001 C CNN
F 3 "~" H 7050 6100 50  0001 C CNN
	1    7050 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 6050 7700 6200
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E7C0AFE
P 4700 2250
AR Path="/5E7C0AFE" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E7C0AFE" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E7C0AFE" Ref="Q21"  Part="1" 
F 0 "Q21" H 4891 2204 50  0000 L CNN
F 1 "2N3906" H 4891 2295 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4900 2175 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 4700 2250 50  0001 L CNN
	1    4700 2250
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E7C0B04
P 4400 2250
AR Path="/5E7C0B04" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7C0B04" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7C0B04" Ref="R28"  Part="1" 
F 0 "R28" V 4195 2250 50  0000 C CNN
F 1 "4000" V 4286 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4400 2250 50  0001 C CNN
F 3 "~" H 4400 2250 50  0001 C CNN
	1    4400 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E7C0B0A
P 4400 1950
AR Path="/5E7C0B0A" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7C0B0A" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7C0B0A" Ref="R27"  Part="1" 
F 0 "R27" V 4195 1950 50  0000 C CNN
F 1 "22000" V 4286 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4400 1950 50  0001 C CNN
F 3 "~" H 4400 1950 50  0001 C CNN
	1    4400 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 2250 4250 2250
Wire Wire Line
	4250 2250 4250 2300
Wire Wire Line
	4800 2050 4800 1950
Wire Wire Line
	4800 1950 4500 1950
Wire Wire Line
	4300 1950 4250 1950
Wire Wire Line
	4250 1950 4250 2250
Connection ~ 4250 2250
$Comp
L Device:R_Small_US R?
U 1 1 5E7C0B17
P 3850 2500
AR Path="/5E7C0B17" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7C0B17" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7C0B17" Ref="R22"  Part="1" 
F 0 "R22" V 3645 2500 50  0000 C CNN
F 1 "4000" V 3736 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3850 2500 50  0001 C CNN
F 3 "~" H 3850 2500 50  0001 C CNN
	1    3850 2500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E7C0B1D
P 4250 2700
AR Path="/5E7C0B1D" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E7C0B1D" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E7C0B1D" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 4250 2450 50  0001 C CNN
F 1 "GND" H 4255 2527 50  0000 C CNN
F 2 "" H 4250 2700 50  0001 C CNN
F 3 "" H 4250 2700 50  0001 C CNN
	1    4250 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E7C0B23
P 4800 1950
AR Path="/5E7C0B23" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E7C0B23" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E7C0B23" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 4800 1800 50  0001 C CNN
F 1 "+12V" H 4815 2123 50  0000 C CNN
F 2 "" H 4800 1950 50  0001 C CNN
F 3 "" H 4800 1950 50  0001 C CNN
	1    4800 1950
	1    0    0    -1  
$EndComp
Connection ~ 4800 1950
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E7C0B2A
P 5000 2600
AR Path="/5E7C0B2A" Ref="J?"  Part="1" 
AR Path="/5E6B979D/5E7C0B2A" Ref="J?"  Part="1" 
AR Path="/5E6C532A/5E7C0B2A" Ref="J10"  Part="1" 
F 0 "J10" H 4972 2532 50  0000 R CNN
F 1 "A0" H 4950 2600 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 5000 2600 50  0001 C CNN
F 3 "~" H 5000 2600 50  0001 C CNN
	1    5000 2600
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E7C0B30
P 4150 2500
AR Path="/5E7C0B30" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E7C0B30" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E7C0B30" Ref="Q16"  Part="1" 
F 0 "Q16" H 4341 2546 50  0000 L CNN
F 1 "2N2222" H 4341 2455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 4350 2600 50  0001 C CNN
F 3 "~" H 4150 2500 50  0001 C CNN
	1    4150 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2450 4800 2600
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E7C0B37
P 4700 3450
AR Path="/5E7C0B37" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E7C0B37" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E7C0B37" Ref="Q22"  Part="1" 
F 0 "Q22" H 4891 3404 50  0000 L CNN
F 1 "2N3906" H 4891 3495 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4900 3375 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 4700 3450 50  0001 L CNN
	1    4700 3450
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E7C0B3D
P 4400 3450
AR Path="/5E7C0B3D" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7C0B3D" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7C0B3D" Ref="R30"  Part="1" 
F 0 "R30" V 4195 3450 50  0000 C CNN
F 1 "4000" V 4286 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4400 3450 50  0001 C CNN
F 3 "~" H 4400 3450 50  0001 C CNN
	1    4400 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E7C0B43
P 4400 3150
AR Path="/5E7C0B43" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7C0B43" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7C0B43" Ref="R29"  Part="1" 
F 0 "R29" V 4195 3150 50  0000 C CNN
F 1 "22000" V 4286 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4400 3150 50  0001 C CNN
F 3 "~" H 4400 3150 50  0001 C CNN
	1    4400 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 3450 4250 3450
Wire Wire Line
	4250 3450 4250 3500
Wire Wire Line
	4800 3250 4800 3150
Wire Wire Line
	4800 3150 4500 3150
Wire Wire Line
	4300 3150 4250 3150
Wire Wire Line
	4250 3150 4250 3450
Connection ~ 4250 3450
$Comp
L Device:R_Small_US R?
U 1 1 5E7C0B50
P 3850 3700
AR Path="/5E7C0B50" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7C0B50" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7C0B50" Ref="R23"  Part="1" 
F 0 "R23" V 3645 3700 50  0000 C CNN
F 1 "4000" V 3736 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3850 3700 50  0001 C CNN
F 3 "~" H 3850 3700 50  0001 C CNN
	1    3850 3700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E7C0B56
P 4250 3900
AR Path="/5E7C0B56" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E7C0B56" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E7C0B56" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 4250 3650 50  0001 C CNN
F 1 "GND" H 4255 3727 50  0000 C CNN
F 2 "" H 4250 3900 50  0001 C CNN
F 3 "" H 4250 3900 50  0001 C CNN
	1    4250 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E7C0B5C
P 4800 3150
AR Path="/5E7C0B5C" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E7C0B5C" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E7C0B5C" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 4800 3000 50  0001 C CNN
F 1 "+12V" H 4815 3323 50  0000 C CNN
F 2 "" H 4800 3150 50  0001 C CNN
F 3 "" H 4800 3150 50  0001 C CNN
	1    4800 3150
	1    0    0    -1  
$EndComp
Connection ~ 4800 3150
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E7C0B63
P 5000 3800
AR Path="/5E7C0B63" Ref="J?"  Part="1" 
AR Path="/5E6B979D/5E7C0B63" Ref="J?"  Part="1" 
AR Path="/5E6C532A/5E7C0B63" Ref="J11"  Part="1" 
F 0 "J11" H 4972 3732 50  0000 R CNN
F 1 "A1" H 4950 3800 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 5000 3800 50  0001 C CNN
F 3 "~" H 5000 3800 50  0001 C CNN
	1    5000 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E7C0B69
P 4150 3700
AR Path="/5E7C0B69" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E7C0B69" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E7C0B69" Ref="Q17"  Part="1" 
F 0 "Q17" H 4341 3746 50  0000 L CNN
F 1 "2N2222" H 4341 3655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 4350 3800 50  0001 C CNN
F 3 "~" H 4150 3700 50  0001 C CNN
	1    4150 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3650 4800 3800
Entry Wire Line
	4850 4350 4950 4450
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E7C0B71
P 4700 4650
AR Path="/5E7C0B71" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E7C0B71" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E7C0B71" Ref="Q23"  Part="1" 
F 0 "Q23" H 4891 4604 50  0000 L CNN
F 1 "2N3906" H 4891 4695 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4900 4575 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 4700 4650 50  0001 L CNN
	1    4700 4650
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E7C0B77
P 4400 4650
AR Path="/5E7C0B77" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7C0B77" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7C0B77" Ref="R32"  Part="1" 
F 0 "R32" V 4195 4650 50  0000 C CNN
F 1 "4000" V 4286 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4400 4650 50  0001 C CNN
F 3 "~" H 4400 4650 50  0001 C CNN
	1    4400 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E7C0B7D
P 4400 4350
AR Path="/5E7C0B7D" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7C0B7D" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7C0B7D" Ref="R31"  Part="1" 
F 0 "R31" V 4195 4350 50  0000 C CNN
F 1 "22000" V 4286 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4400 4350 50  0001 C CNN
F 3 "~" H 4400 4350 50  0001 C CNN
	1    4400 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 4650 4250 4650
Wire Wire Line
	4250 4650 4250 4700
Wire Wire Line
	4800 4450 4800 4350
Wire Wire Line
	4800 4350 4500 4350
Wire Wire Line
	4300 4350 4250 4350
Wire Wire Line
	4250 4350 4250 4650
Connection ~ 4250 4650
$Comp
L Device:R_Small_US R?
U 1 1 5E7C0B8A
P 3850 4900
AR Path="/5E7C0B8A" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7C0B8A" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7C0B8A" Ref="R24"  Part="1" 
F 0 "R24" V 3645 4900 50  0000 C CNN
F 1 "4000" V 3736 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3850 4900 50  0001 C CNN
F 3 "~" H 3850 4900 50  0001 C CNN
	1    3850 4900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E7C0B90
P 4250 5100
AR Path="/5E7C0B90" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E7C0B90" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E7C0B90" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 4250 4850 50  0001 C CNN
F 1 "GND" H 4255 4927 50  0000 C CNN
F 2 "" H 4250 5100 50  0001 C CNN
F 3 "" H 4250 5100 50  0001 C CNN
	1    4250 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E7C0B96
P 4800 4350
AR Path="/5E7C0B96" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E7C0B96" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E7C0B96" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 4800 4200 50  0001 C CNN
F 1 "+12V" H 4815 4523 50  0000 C CNN
F 2 "" H 4800 4350 50  0001 C CNN
F 3 "" H 4800 4350 50  0001 C CNN
	1    4800 4350
	1    0    0    -1  
$EndComp
Connection ~ 4800 4350
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E7C0B9D
P 5000 5000
AR Path="/5E7C0B9D" Ref="J?"  Part="1" 
AR Path="/5E6B979D/5E7C0B9D" Ref="J?"  Part="1" 
AR Path="/5E6C532A/5E7C0B9D" Ref="J12"  Part="1" 
F 0 "J12" H 4972 4932 50  0000 R CNN
F 1 "A2" H 4950 5000 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 5000 5000 50  0001 C CNN
F 3 "~" H 5000 5000 50  0001 C CNN
	1    5000 5000
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E7C0BA3
P 4150 4900
AR Path="/5E7C0BA3" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E7C0BA3" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E7C0BA3" Ref="Q18"  Part="1" 
F 0 "Q18" H 4341 4946 50  0000 L CNN
F 1 "2N2222" H 4341 4855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 4350 5000 50  0001 C CNN
F 3 "~" H 4150 4900 50  0001 C CNN
	1    4150 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4850 4800 5000
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E7C0BAA
P 4700 5850
AR Path="/5E7C0BAA" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E7C0BAA" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E7C0BAA" Ref="Q24"  Part="1" 
F 0 "Q24" H 4891 5804 50  0000 L CNN
F 1 "2N3906" H 4891 5895 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4900 5775 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 4700 5850 50  0001 L CNN
	1    4700 5850
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E7C0BB0
P 4400 5850
AR Path="/5E7C0BB0" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7C0BB0" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7C0BB0" Ref="R34"  Part="1" 
F 0 "R34" V 4195 5850 50  0000 C CNN
F 1 "4000" V 4286 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4400 5850 50  0001 C CNN
F 3 "~" H 4400 5850 50  0001 C CNN
	1    4400 5850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E7C0BB6
P 4400 5550
AR Path="/5E7C0BB6" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7C0BB6" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7C0BB6" Ref="R33"  Part="1" 
F 0 "R33" V 4195 5550 50  0000 C CNN
F 1 "22000" V 4286 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4400 5550 50  0001 C CNN
F 3 "~" H 4400 5550 50  0001 C CNN
	1    4400 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 5850 4250 5850
Wire Wire Line
	4250 5850 4250 5900
Wire Wire Line
	4800 5650 4800 5550
Wire Wire Line
	4800 5550 4500 5550
Wire Wire Line
	4300 5550 4250 5550
Wire Wire Line
	4250 5550 4250 5850
Connection ~ 4250 5850
$Comp
L Device:R_Small_US R?
U 1 1 5E7C0BC3
P 3850 6100
AR Path="/5E7C0BC3" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7C0BC3" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7C0BC3" Ref="R25"  Part="1" 
F 0 "R25" V 3645 6100 50  0000 C CNN
F 1 "4000" V 3736 6100 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3850 6100 50  0001 C CNN
F 3 "~" H 3850 6100 50  0001 C CNN
	1    3850 6100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E7C0BC9
P 4250 6300
AR Path="/5E7C0BC9" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E7C0BC9" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E7C0BC9" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 4250 6050 50  0001 C CNN
F 1 "GND" H 4255 6127 50  0000 C CNN
F 2 "" H 4250 6300 50  0001 C CNN
F 3 "" H 4250 6300 50  0001 C CNN
	1    4250 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E7C0BCF
P 4800 5550
AR Path="/5E7C0BCF" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E7C0BCF" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E7C0BCF" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 4800 5400 50  0001 C CNN
F 1 "+12V" H 4815 5723 50  0000 C CNN
F 2 "" H 4800 5550 50  0001 C CNN
F 3 "" H 4800 5550 50  0001 C CNN
	1    4800 5550
	1    0    0    -1  
$EndComp
Connection ~ 4800 5550
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E7C0BD6
P 5000 6200
AR Path="/5E7C0BD6" Ref="J?"  Part="1" 
AR Path="/5E6B979D/5E7C0BD6" Ref="J?"  Part="1" 
AR Path="/5E6C532A/5E7C0BD6" Ref="J13"  Part="1" 
F 0 "J13" H 4972 6132 50  0000 R CNN
F 1 "A3" H 4950 6200 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 5000 6200 50  0001 C CNN
F 3 "~" H 5000 6200 50  0001 C CNN
	1    5000 6200
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E7C0BDC
P 4150 6100
AR Path="/5E7C0BDC" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E7C0BDC" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E7C0BDC" Ref="Q19"  Part="1" 
F 0 "Q19" H 4341 6146 50  0000 L CNN
F 1 "2N2222" H 4341 6055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 4350 6200 50  0001 C CNN
F 3 "~" H 4150 6100 50  0001 C CNN
	1    4150 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 6050 4800 6200
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E7C0BE3
P 4700 7050
AR Path="/5E7C0BE3" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E7C0BE3" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E7C0BE3" Ref="Q25"  Part="1" 
F 0 "Q25" H 4891 7004 50  0000 L CNN
F 1 "2N3906" H 4891 7095 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4900 6975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 4700 7050 50  0001 L CNN
	1    4700 7050
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E7C0BE9
P 4400 7050
AR Path="/5E7C0BE9" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7C0BE9" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7C0BE9" Ref="R36"  Part="1" 
F 0 "R36" V 4195 7050 50  0000 C CNN
F 1 "4000" V 4286 7050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4400 7050 50  0001 C CNN
F 3 "~" H 4400 7050 50  0001 C CNN
	1    4400 7050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E7C0BEF
P 4400 6750
AR Path="/5E7C0BEF" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7C0BEF" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7C0BEF" Ref="R35"  Part="1" 
F 0 "R35" V 4195 6750 50  0000 C CNN
F 1 "22000" V 4286 6750 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4400 6750 50  0001 C CNN
F 3 "~" H 4400 6750 50  0001 C CNN
	1    4400 6750
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 7050 4250 7050
Wire Wire Line
	4250 7050 4250 7100
Wire Wire Line
	4800 6850 4800 6750
Wire Wire Line
	4800 6750 4500 6750
Wire Wire Line
	4300 6750 4250 6750
Wire Wire Line
	4250 6750 4250 7050
Connection ~ 4250 7050
$Comp
L Device:R_Small_US R?
U 1 1 5E7C0BFC
P 3850 7300
AR Path="/5E7C0BFC" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7C0BFC" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7C0BFC" Ref="R26"  Part="1" 
F 0 "R26" V 3645 7300 50  0000 C CNN
F 1 "4000" V 3736 7300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3850 7300 50  0001 C CNN
F 3 "~" H 3850 7300 50  0001 C CNN
	1    3850 7300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E7C0C02
P 4250 7500
AR Path="/5E7C0C02" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E7C0C02" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E7C0C02" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 4250 7250 50  0001 C CNN
F 1 "GND" H 4255 7327 50  0000 C CNN
F 2 "" H 4250 7500 50  0001 C CNN
F 3 "" H 4250 7500 50  0001 C CNN
	1    4250 7500
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E7C0C08
P 4800 6750
AR Path="/5E7C0C08" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E7C0C08" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E7C0C08" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 4800 6600 50  0001 C CNN
F 1 "+12V" H 4815 6923 50  0000 C CNN
F 2 "" H 4800 6750 50  0001 C CNN
F 3 "" H 4800 6750 50  0001 C CNN
	1    4800 6750
	1    0    0    -1  
$EndComp
Connection ~ 4800 6750
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E7C0C0F
P 5000 7400
AR Path="/5E7C0C0F" Ref="J?"  Part="1" 
AR Path="/5E6B979D/5E7C0C0F" Ref="J?"  Part="1" 
AR Path="/5E6C532A/5E7C0C0F" Ref="J14"  Part="1" 
F 0 "J14" H 4972 7332 50  0000 R CNN
F 1 "A4" H 4950 7400 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 5000 7400 50  0001 C CNN
F 3 "~" H 5000 7400 50  0001 C CNN
	1    5000 7400
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E7C0C15
P 4150 7300
AR Path="/5E7C0C15" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E7C0C15" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E7C0C15" Ref="Q20"  Part="1" 
F 0 "Q20" H 4341 7346 50  0000 L CNN
F 1 "2N2222" H 4341 7255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 4350 7400 50  0001 C CNN
F 3 "~" H 4150 7300 50  0001 C CNN
	1    4150 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 7250 4800 7400
$Comp
L power:GND #PWR0136
U 1 1 5E7C4889
P 1700 2800
F 0 "#PWR0136" H 1700 2550 50  0001 C CNN
F 1 "GND" H 1705 2627 50  0000 C CNN
F 2 "" H 1700 2800 50  0001 C CNN
F 3 "" H 1700 2800 50  0001 C CNN
	1    1700 2800
	1    0    0    -1  
$EndComp
Entry Wire Line
	2350 4350 2450 4450
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E7DE03C
P 2200 4650
AR Path="/5E7DE03C" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E7DE03C" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E7DE03C" Ref="Q13"  Part="1" 
F 0 "Q13" H 2391 4604 50  0000 L CNN
F 1 "2N3906" H 2391 4695 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2400 4575 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 2200 4650 50  0001 L CNN
	1    2200 4650
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E7DE042
P 1900 4650
AR Path="/5E7DE042" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7DE042" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7DE042" Ref="R17"  Part="1" 
F 0 "R17" V 1695 4650 50  0000 C CNN
F 1 "4000" V 1786 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1900 4650 50  0001 C CNN
F 3 "~" H 1900 4650 50  0001 C CNN
	1    1900 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E7DE048
P 1900 4350
AR Path="/5E7DE048" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7DE048" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7DE048" Ref="R16"  Part="1" 
F 0 "R16" V 1695 4350 50  0000 C CNN
F 1 "22000" V 1786 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1900 4350 50  0001 C CNN
F 3 "~" H 1900 4350 50  0001 C CNN
	1    1900 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 4650 1750 4650
Wire Wire Line
	1750 4650 1750 4700
Wire Wire Line
	2300 4450 2300 4350
Wire Wire Line
	2300 4350 2000 4350
Wire Wire Line
	1800 4350 1750 4350
Wire Wire Line
	1750 4350 1750 4650
Connection ~ 1750 4650
$Comp
L Device:R_Small_US R?
U 1 1 5E7DE055
P 1350 4900
AR Path="/5E7DE055" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7DE055" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7DE055" Ref="R13"  Part="1" 
F 0 "R13" V 1145 4900 50  0000 C CNN
F 1 "4000" V 1236 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1350 4900 50  0001 C CNN
F 3 "~" H 1350 4900 50  0001 C CNN
	1    1350 4900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E7DE05B
P 1750 5100
AR Path="/5E7DE05B" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E7DE05B" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E7DE05B" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0137" H 1750 4850 50  0001 C CNN
F 1 "GND" H 1755 4927 50  0000 C CNN
F 2 "" H 1750 5100 50  0001 C CNN
F 3 "" H 1750 5100 50  0001 C CNN
	1    1750 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E7DE061
P 2300 4350
AR Path="/5E7DE061" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E7DE061" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E7DE061" Ref="#PWR0138"  Part="1" 
F 0 "#PWR0138" H 2300 4200 50  0001 C CNN
F 1 "+12V" H 2315 4523 50  0000 C CNN
F 2 "" H 2300 4350 50  0001 C CNN
F 3 "" H 2300 4350 50  0001 C CNN
	1    2300 4350
	1    0    0    -1  
$EndComp
Connection ~ 2300 4350
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E7DE068
P 2500 5000
AR Path="/5E7DE068" Ref="J?"  Part="1" 
AR Path="/5E6B979D/5E7DE068" Ref="J?"  Part="1" 
AR Path="/5E6C532A/5E7DE068" Ref="J7"  Part="1" 
F 0 "J7" H 2472 4932 50  0000 R CNN
F 1 "A5" H 2450 5000 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 2500 5000 50  0001 C CNN
F 3 "~" H 2500 5000 50  0001 C CNN
	1    2500 5000
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E7DE06E
P 1650 4900
AR Path="/5E7DE06E" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E7DE06E" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E7DE06E" Ref="Q10"  Part="1" 
F 0 "Q10" H 1841 4946 50  0000 L CNN
F 1 "2N2222" H 1841 4855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 1850 5000 50  0001 C CNN
F 3 "~" H 1650 4900 50  0001 C CNN
	1    1650 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4850 2300 5000
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E7DE075
P 2200 5850
AR Path="/5E7DE075" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E7DE075" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E7DE075" Ref="Q14"  Part="1" 
F 0 "Q14" H 2391 5804 50  0000 L CNN
F 1 "2N3906" H 2391 5895 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2400 5775 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 2200 5850 50  0001 L CNN
	1    2200 5850
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E7DE07B
P 1900 5850
AR Path="/5E7DE07B" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7DE07B" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7DE07B" Ref="R19"  Part="1" 
F 0 "R19" V 1695 5850 50  0000 C CNN
F 1 "4000" V 1786 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1900 5850 50  0001 C CNN
F 3 "~" H 1900 5850 50  0001 C CNN
	1    1900 5850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E7DE081
P 1900 5550
AR Path="/5E7DE081" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7DE081" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7DE081" Ref="R18"  Part="1" 
F 0 "R18" V 1695 5550 50  0000 C CNN
F 1 "22000" V 1786 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1900 5550 50  0001 C CNN
F 3 "~" H 1900 5550 50  0001 C CNN
	1    1900 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 5850 1750 5850
Wire Wire Line
	1750 5850 1750 5900
Wire Wire Line
	2300 5650 2300 5550
Wire Wire Line
	2300 5550 2000 5550
Wire Wire Line
	1800 5550 1750 5550
Wire Wire Line
	1750 5550 1750 5850
Connection ~ 1750 5850
$Comp
L Device:R_Small_US R?
U 1 1 5E7DE08E
P 1350 6100
AR Path="/5E7DE08E" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7DE08E" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7DE08E" Ref="R14"  Part="1" 
F 0 "R14" V 1145 6100 50  0000 C CNN
F 1 "4000" V 1236 6100 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1350 6100 50  0001 C CNN
F 3 "~" H 1350 6100 50  0001 C CNN
	1    1350 6100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E7DE094
P 1750 6300
AR Path="/5E7DE094" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E7DE094" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E7DE094" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0139" H 1750 6050 50  0001 C CNN
F 1 "GND" H 1755 6127 50  0000 C CNN
F 2 "" H 1750 6300 50  0001 C CNN
F 3 "" H 1750 6300 50  0001 C CNN
	1    1750 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E7DE09A
P 2300 5550
AR Path="/5E7DE09A" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E7DE09A" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E7DE09A" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 2300 5400 50  0001 C CNN
F 1 "+12V" H 2315 5723 50  0000 C CNN
F 2 "" H 2300 5550 50  0001 C CNN
F 3 "" H 2300 5550 50  0001 C CNN
	1    2300 5550
	1    0    0    -1  
$EndComp
Connection ~ 2300 5550
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E7DE0A1
P 2500 6200
AR Path="/5E7DE0A1" Ref="J?"  Part="1" 
AR Path="/5E6B979D/5E7DE0A1" Ref="J?"  Part="1" 
AR Path="/5E6C532A/5E7DE0A1" Ref="J8"  Part="1" 
F 0 "J8" H 2472 6132 50  0000 R CNN
F 1 "A6" H 2450 6200 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 2500 6200 50  0001 C CNN
F 3 "~" H 2500 6200 50  0001 C CNN
	1    2500 6200
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E7DE0A7
P 1650 6100
AR Path="/5E7DE0A7" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E7DE0A7" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E7DE0A7" Ref="Q11"  Part="1" 
F 0 "Q11" H 1841 6146 50  0000 L CNN
F 1 "2N2222" H 1841 6055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 1850 6200 50  0001 C CNN
F 3 "~" H 1650 6100 50  0001 C CNN
	1    1650 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 6050 2300 6200
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 5E7DE0AE
P 2200 7050
AR Path="/5E7DE0AE" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E7DE0AE" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E7DE0AE" Ref="Q15"  Part="1" 
F 0 "Q15" H 2391 7004 50  0000 L CNN
F 1 "2N3906" H 2391 7095 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2400 6975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 2200 7050 50  0001 L CNN
	1    2200 7050
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E7DE0B4
P 1900 7050
AR Path="/5E7DE0B4" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7DE0B4" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7DE0B4" Ref="R21"  Part="1" 
F 0 "R21" V 1695 7050 50  0000 C CNN
F 1 "4000" V 1786 7050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1900 7050 50  0001 C CNN
F 3 "~" H 1900 7050 50  0001 C CNN
	1    1900 7050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E7DE0BA
P 1900 6750
AR Path="/5E7DE0BA" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7DE0BA" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7DE0BA" Ref="R20"  Part="1" 
F 0 "R20" V 1695 6750 50  0000 C CNN
F 1 "22000" V 1786 6750 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1900 6750 50  0001 C CNN
F 3 "~" H 1900 6750 50  0001 C CNN
	1    1900 6750
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 7050 1750 7050
Wire Wire Line
	1750 7050 1750 7100
Wire Wire Line
	2300 6850 2300 6750
Wire Wire Line
	2300 6750 2000 6750
Wire Wire Line
	1800 6750 1750 6750
Wire Wire Line
	1750 6750 1750 7050
Connection ~ 1750 7050
$Comp
L Device:R_Small_US R?
U 1 1 5E7DE0C7
P 1350 7300
AR Path="/5E7DE0C7" Ref="R?"  Part="1" 
AR Path="/5E6B979D/5E7DE0C7" Ref="R?"  Part="1" 
AR Path="/5E6C532A/5E7DE0C7" Ref="R15"  Part="1" 
F 0 "R15" V 1145 7300 50  0000 C CNN
F 1 "4000" V 1236 7300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1350 7300 50  0001 C CNN
F 3 "~" H 1350 7300 50  0001 C CNN
	1    1350 7300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E7DE0CD
P 1750 7500
AR Path="/5E7DE0CD" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E7DE0CD" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E7DE0CD" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 1750 7250 50  0001 C CNN
F 1 "GND" H 1755 7327 50  0000 C CNN
F 2 "" H 1750 7500 50  0001 C CNN
F 3 "" H 1750 7500 50  0001 C CNN
	1    1750 7500
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E7DE0D3
P 2300 6750
AR Path="/5E7DE0D3" Ref="#PWR?"  Part="1" 
AR Path="/5E6B979D/5E7DE0D3" Ref="#PWR?"  Part="1" 
AR Path="/5E6C532A/5E7DE0D3" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 2300 6600 50  0001 C CNN
F 1 "+12V" H 2315 6923 50  0000 C CNN
F 2 "" H 2300 6750 50  0001 C CNN
F 3 "" H 2300 6750 50  0001 C CNN
	1    2300 6750
	1    0    0    -1  
$EndComp
Connection ~ 2300 6750
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 5E7DE0DA
P 2500 7400
AR Path="/5E7DE0DA" Ref="J?"  Part="1" 
AR Path="/5E6B979D/5E7DE0DA" Ref="J?"  Part="1" 
AR Path="/5E6C532A/5E7DE0DA" Ref="J9"  Part="1" 
F 0 "J9" H 2472 7332 50  0000 R CNN
F 1 "A7" H 2450 7400 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 2500 7400 50  0001 C CNN
F 3 "~" H 2500 7400 50  0001 C CNN
	1    2500 7400
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5E7DE0E0
P 1650 7300
AR Path="/5E7DE0E0" Ref="Q?"  Part="1" 
AR Path="/5E6B979D/5E7DE0E0" Ref="Q?"  Part="1" 
AR Path="/5E6C532A/5E7DE0E0" Ref="Q12"  Part="1" 
F 0 "Q12" H 1841 7346 50  0000 L CNN
F 1 "2N2222" H 1841 7255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H 1850 7400 50  0001 C CNN
F 3 "~" H 1650 7300 50  0001 C CNN
	1    1650 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 7250 2300 7400
Wire Wire Line
	2500 3500 950  3500
Wire Wire Line
	950  3500 950  7300
Wire Wire Line
	950  7300 1250 7300
Wire Wire Line
	1250 6100 1050 6100
Wire Wire Line
	1050 6100 1050 3600
Wire Wire Line
	1050 3600 2600 3600
Wire Wire Line
	2700 3700 1150 3700
Wire Wire Line
	1150 3700 1150 4900
Wire Wire Line
	1150 4900 1250 4900
Wire Wire Line
	3650 2500 3750 2500
Wire Wire Line
	3550 3700 3750 3700
Wire Wire Line
	3450 4900 3750 4900
Wire Wire Line
	3350 6100 3750 6100
Wire Wire Line
	3250 7300 3750 7300
Wire Wire Line
	2500 2500 2400 2500
Wire Wire Line
	2500 2500 2500 3500
Wire Wire Line
	2600 2400 2400 2400
Wire Wire Line
	2600 2400 2600 3600
Wire Wire Line
	2700 3700 2700 2300
Wire Wire Line
	2700 2300 2400 2300
Wire Wire Line
	3250 2200 2400 2200
Wire Wire Line
	3250 2200 3250 7300
Wire Wire Line
	3350 2100 2400 2100
Wire Wire Line
	3350 2100 3350 6100
Wire Wire Line
	3450 2000 2400 2000
Wire Wire Line
	3450 2000 3450 4900
Wire Wire Line
	3550 1900 2400 1900
Wire Wire Line
	3550 1900 3550 3700
Wire Wire Line
	3650 1800 2400 1800
Wire Wire Line
	3650 1800 3650 2500
Wire Wire Line
	6650 2500 6550 2500
Wire Wire Line
	6550 2500 6550 1300
Wire Wire Line
	6550 1300 2400 1300
Wire Wire Line
	2400 1400 6450 1400
Wire Wire Line
	6450 1400 6450 3700
Wire Wire Line
	6450 3700 6650 3700
Wire Wire Line
	6650 4900 6350 4900
Wire Wire Line
	6350 4900 6350 1500
Wire Wire Line
	6350 1500 2400 1500
Wire Wire Line
	2400 1600 6250 1600
Wire Wire Line
	6250 1600 6250 6100
Wire Wire Line
	6250 6100 6650 6100
Wire Wire Line
	9250 2500 9150 2500
Wire Wire Line
	9150 2500 9150 900 
Wire Wire Line
	9150 900  2400 900 
Wire Wire Line
	9250 3700 9050 3700
Wire Wire Line
	9050 3700 9050 1000
Wire Wire Line
	9050 1000 2400 1000
Wire Wire Line
	9250 4900 8950 4900
Wire Wire Line
	8950 4900 8950 1100
Wire Wire Line
	8950 1100 2400 1100
Wire Wire Line
	9250 6100 8850 6100
Wire Wire Line
	8850 6100 8850 1200
Wire Wire Line
	8850 1200 2400 1200
Wire Wire Line
	1000 2300 950  2300
Wire Wire Line
	950  2300 950  2400
Wire Wire Line
	950  2400 1000 2400
Wire Wire Line
	950  2400 950  2500
Wire Wire Line
	950  2500 1000 2500
Connection ~ 950  2400
$Comp
L power:GND #PWR0143
U 1 1 5E8F4C22
P 950 2800
F 0 "#PWR0143" H 950 2550 50  0001 C CNN
F 1 "GND" H 955 2627 50  0000 C CNN
F 2 "" H 950 2800 50  0001 C CNN
F 3 "" H 950 2800 50  0001 C CNN
	1    950  2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2500 950  2800
Connection ~ 950  2500
Text HLabel 1000 900  0    50   Input ~ 0
SDA
Text HLabel 1000 1000 0    50   Input ~ 0
SCK
$Comp
L power:+3.3V #PWR0144
U 1 1 5E9342B8
P 1700 600
F 0 "#PWR0144" H 1700 450 50  0001 C CNN
F 1 "+3.3V" H 1715 773 50  0000 C CNN
F 2 "" H 1700 600 50  0001 C CNN
F 3 "" H 1700 600 50  0001 C CNN
	1    1700 600 
	1    0    0    -1  
$EndComp
$Comp
L Interface_Expansion:MCP23017_SP U2
U 1 1 5E6C5DBA
P 1700 1700
F 0 "U2" H 1800 2700 50  0000 C CNN
F 1 "MCP23017_SP" H 1350 2700 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 1900 700 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 1900 600 50  0001 L CNN
	1    1700 1700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
