## Generated SDC file "UART_cntrl.sdc"

## Copyright (C) 2019  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and any partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details, at
## https://fpgasoftware.intel.com/eula.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 18.1.1 Build 646 04/11/2019 SJ Lite Edition"

## DATE    "Mon Jul 05 17:21:05 2021"

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

create_clock -name {clk50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLK}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {clk50}] -rise_to [get_clocks {clk50}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {clk50}] -rise_to [get_clocks {clk50}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {clk50}] -fall_to [get_clocks {clk50}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {clk50}] -fall_to [get_clocks {clk50}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {clk50}] -rise_to [get_clocks {clk50}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {clk50}] -rise_to [get_clocks {clk50}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {clk50}] -fall_to [get_clocks {clk50}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {clk50}] -fall_to [get_clocks {clk50}] -hold 0.060  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {clk50}]  0.000 [get_ports {CLK}]
set_input_delay -add_delay  -clock [get_clocks {clk50}]  0.000 [get_ports {RESET_N}]
set_input_delay -add_delay  -clock [get_clocks {clk50}]  0.000 [get_ports {UART_RX}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {clk50}]  0.000 [get_ports {UART_TX}]


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

