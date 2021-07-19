## Generated SDC file "top.sdc"

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

## DATE    "Sun Jul 11 22:21:47 2021"

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

create_clock -name {clk50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLK1}]
create_clock -name {clkhdmi50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLK}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0} -source [get_pins {hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|refclkin}] -duty_cycle 50/1 -multiply_by 4563 -divide_by 512 -master_clock {clkhdmi50} [get_pins {hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] 
create_generated_clock -name {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]} -source [get_pins {hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 3 -master_clock {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0} [get_pins {hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0} -source [get_pins {pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|refclkin}] -duty_cycle 50/1 -multiply_by 32 -divide_by 5 -master_clock {clk50} [get_pins {pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] 
create_generated_clock -name {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]} -source [get_pins {pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 8 -master_clock {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0} [get_pins {pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.160  
set_clock_uncertainty -rise_from [get_clocks {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.160  
set_clock_uncertainty -fall_from [get_clocks {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.160  
set_clock_uncertainty -fall_from [get_clocks {pll:pll_inst|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.160  
set_clock_uncertainty -rise_from [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.130  
set_clock_uncertainty -rise_from [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.130  
set_clock_uncertainty -rise_from [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.130  
set_clock_uncertainty -fall_from [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.130  
set_clock_uncertainty -fall_from [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.060  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {DATAENABLE}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMICLK}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[0]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[1]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[2]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[3]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[4]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[5]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[6]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[7]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[8]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[9]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[10]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[11]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[12]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[13]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[14]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[15]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[16]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[17]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[18]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[19]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[20]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[21]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[22]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HDMIDATA[23]}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {HSYNC}]
set_output_delay -add_delay  -clock [get_clocks {pllhdmi:hdmipll|pllhdmi_0002:pllhdmi_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.000 [get_ports {VSYNC}]


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

