## Generated SDC file "SRAM_test.sdc"

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

## DATE    "Wed Feb 17 16:55:28 2021"

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


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[3]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[4]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[5]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[6]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[7]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[8]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[9]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[10]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[11]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[12]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[13]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[14]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[15]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {rst_all}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {sw_addr}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {sw_data}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {sw_read}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {sw_snd}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {sw_write}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {UART_Rx}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {UART_Tx}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {adr[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {adr[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {adr[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {adr[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {adr[4]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {adr[5]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {adr[6]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {adr[7]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {adr[8]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {adr[9]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {adr[10]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {adr[11]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {adr[12]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {adr[13]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {adr[14]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {adr[15]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {adr[16]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {adr[17]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {ce}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[4]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[5]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[6]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[7]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[8]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[9]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[10]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[11]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[12]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[13]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[14]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {dq[15]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {lb}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {led_rst}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {led_adr[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {led_adr[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {led_adr[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {led_adr[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {led_adr[4]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {led_adr[5]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {led_adr[6]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {led_adr[7]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {led_rx[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {led_rx[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {led_rx[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {led_rx[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {led_rx[4]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {led_rx[5]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {led_rx[6]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {led_rx[7]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {oe}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {ub}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {we}]


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

