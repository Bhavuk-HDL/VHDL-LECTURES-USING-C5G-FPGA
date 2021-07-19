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

## DATE    "Sun Jul 11 17:00:14 2021"

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

create_generated_clock -name {CHIP_CLK:XCLK|CHIP_CLK_0002:chip_clk_inst|altera_pll:altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0} -source [get_pins {XCLK|chip_clk_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|refclkin}] -duty_cycle 50/1 -multiply_by 519 -divide_by 64 -master_clock {clk50} [get_pins {XCLK|chip_clk_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] 
create_generated_clock -name {CHIP_CLK:XCLK|CHIP_CLK_0002:chip_clk_inst|altera_pll:altera_pll_i|outclk_wire[0]} -source [get_pins {XCLK|chip_clk_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 33 -master_clock {CHIP_CLK:XCLK|CHIP_CLK_0002:chip_clk_inst|altera_pll:altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0} [get_pins {XCLK|chip_clk_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {PLL_SYS:PLL40|PLL_SYS_0002:pll_sys_inst|altera_pll:altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0} -source [get_pins {PLL40|pll_sys_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|refclkin}] -duty_cycle 50/1 -multiply_by 32 -divide_by 5 -master_clock {clk50} [get_pins {PLL40|pll_sys_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] 
create_generated_clock -name {PLL_SYS:PLL40|PLL_SYS_0002:pll_sys_inst|altera_pll:altera_pll_i|outclk_wire[0]} -source [get_pins {PLL40|pll_sys_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 8 -master_clock {PLL_SYS:PLL40|PLL_SYS_0002:pll_sys_inst|altera_pll:altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0} [get_pins {PLL40|pll_sys_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {PLL_SYS:PLL40|PLL_SYS_0002:pll_sys_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {PLL_SYS:PLL40|PLL_SYS_0002:pll_sys_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {PLL_SYS:PLL40|PLL_SYS_0002:pll_sys_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {PLL_SYS:PLL40|PLL_SYS_0002:pll_sys_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {PLL_SYS:PLL40|PLL_SYS_0002:pll_sys_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {PLL_SYS:PLL40|PLL_SYS_0002:pll_sys_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {PLL_SYS:PLL40|PLL_SYS_0002:pll_sys_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {PLL_SYS:PLL40|PLL_SYS_0002:pll_sys_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {PLL_SYS:PLL40|PLL_SYS_0002:pll_sys_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {PLL_SYS:PLL40|PLL_SYS_0002:pll_sys_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {PLL_SYS:PLL40|PLL_SYS_0002:pll_sys_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {PLL_SYS:PLL40|PLL_SYS_0002:pll_sys_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {PLL_SYS:PLL40|PLL_SYS_0002:pll_sys_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {PLL_SYS:PLL40|PLL_SYS_0002:pll_sys_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {PLL_SYS:PLL40|PLL_SYS_0002:pll_sys_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {PLL_SYS:PLL40|PLL_SYS_0002:pll_sys_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.060  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



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

