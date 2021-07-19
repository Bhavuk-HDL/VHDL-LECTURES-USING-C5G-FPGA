## Generated SDC file "ADC_test.sdc"

## Copyright (C) 2017  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Intel and sold by Intel or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 16.1.2 Build 203 01/18/2017 SJ Lite Edition"

## DATE    "Fri Feb 26 16:45:40 2021"

##
## DEVICE  "5CGXFC5C6F27C7"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clk} -period 20.000 -waveform { 0.000 10.000 } [get_ports {clock}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0} -source [get_pins {C2|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|refclkin}] -duty_cycle 50/1 -multiply_by 32 -divide_by 5 -master_clock {clk} [get_pins {C2|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] 
create_generated_clock -name {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]} -source [get_pins {C2|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 8 -master_clock {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0} [get_pins {C2|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}] -setup 0.280  
set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}] -hold 0.270  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {clk}] -setup 0.280  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {clk}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {clk}] -setup 0.280  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {clk}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {clk}] -setup 0.280  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {clk}] -hold 0.270  
set_clock_uncertainty -rise_from [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.120  
set_clock_uncertainty -rise_from [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.070  
set_clock_uncertainty -rise_from [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.120  
set_clock_uncertainty -rise_from [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.070  
set_clock_uncertainty -rise_from [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {clk}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {clk}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.120  
set_clock_uncertainty -fall_from [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.070  
set_clock_uncertainty -fall_from [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.120  
set_clock_uncertainty -fall_from [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.070  
set_clock_uncertainty -fall_from [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {clk}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {clk}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.120  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {SDO}]
set_input_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {reset_all}]
set_input_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {start}]
set_input_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {UART_Rx}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {CONVST}]
set_output_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {SCK}]
set_output_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {SDI}]
set_output_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {UART_Tx}]
set_output_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {led_data[0]}]
set_output_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {led_data[1]}]
set_output_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {led_data[2]}]
set_output_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {led_data[3]}]
set_output_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {led_data[4]}]
set_output_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {led_data[5]}]
set_output_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {led_data[6]}]
set_output_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {led_data[7]}]
set_output_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {led_data[8]}]
set_output_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {led_data[9]}]
set_output_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {led_data[10]}]
set_output_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {led_data[11]}]
set_output_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {led_nthing}]
set_output_delay -add_delay  -clock [get_clocks {pll:C2|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {led_rx_pulse}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

