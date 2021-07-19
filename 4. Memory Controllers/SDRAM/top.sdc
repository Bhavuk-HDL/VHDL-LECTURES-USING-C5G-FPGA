## Generated SDC file "top.sdc"

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

## DATE    "Sat Mar 06 19:03:08 2021"

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

create_clock -name {clk0} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK_50_B5B}]
create_clock -name {clk1} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK_50_B6A}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll1~FRACTIONAL_PLL_O_VCOPH0} -source [get_pins {ram_init_inst|LPDDR2_inst|lpddr2_inst|pll0|pll1~FRACTIONAL_PLL|refclkin}] -duty_cycle 50/1 -multiply_by 66 -divide_by 5 -master_clock {clk0} [get_pins {ram_init_inst|LPDDR2_inst|lpddr2_inst|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] 
create_generated_clock -name {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk} -source [get_pins {ram_init_inst|LPDDR2_inst|lpddr2_inst|pll0|pll1~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 2 -master_clock {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll1~FRACTIONAL_PLL_O_VCOPH0} [get_pins {ram_init_inst|LPDDR2_inst|lpddr2_inst|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk} -source [get_pins {ram_init_inst|LPDDR2_inst|lpddr2_inst|pll0|pll6~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -phase 5386320/15151 -master_clock {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll1~FRACTIONAL_PLL_O_VCOPH0} [get_pins {ram_init_inst|LPDDR2_inst|lpddr2_inst|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk} -source [get_pins {ram_init_inst|LPDDR2_inst|lpddr2_inst|pll0|pll7~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 30 -master_clock {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll1~FRACTIONAL_PLL_O_VCOPH0} [get_pins {ram_init_inst|LPDDR2_inst|lpddr2_inst|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk} -source [get_pins {ram_init_inst|LPDDR2_inst|lpddr2_inst|pll0|pll3~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 2 -phase 27264/101 -master_clock {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll1~FRACTIONAL_PLL_O_VCOPH0} [get_pins {ram_init_inst|LPDDR2_inst|lpddr2_inst|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0} -source [get_pins {pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|refclkin}] -duty_cycle 50/1 -multiply_by 12 -divide_by 2 -master_clock {clk1} [get_pins {pll_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] 
create_generated_clock -name {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]} -source [get_pins {pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 6 -master_clock {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0} [get_pins {pll_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}]  0.150  
set_clock_uncertainty -rise_from [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}]  0.150  
set_clock_uncertainty -rise_from [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}]  0.150  
set_clock_uncertainty -rise_from [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}]  0.150  
set_clock_uncertainty -rise_from [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}]  0.150  
set_clock_uncertainty -rise_from [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}]  0.150  
set_clock_uncertainty -fall_from [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}]  0.150  
set_clock_uncertainty -fall_from [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}]  0.150  
set_clock_uncertainty -fall_from [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}]  0.150  
set_clock_uncertainty -fall_from [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}]  0.150  
set_clock_uncertainty -fall_from [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}]  0.150  
set_clock_uncertainty -fall_from [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}]  0.150  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk}] -rise_to [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.140  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk}] -fall_to [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.140  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk}] -rise_to [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.140  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk}] -fall_to [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.140  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -setup 0.130  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -setup 0.130  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.130  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.130  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -setup 0.130  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -setup 0.130  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.130  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.130  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -setup 0.130  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -setup 0.130  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.130  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.130  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -setup 0.130  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -setup 0.130  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -setup 0.130  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -setup 0.130  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.130  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.130  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -setup 0.130  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -setup 0.130  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.150  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.150  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk}] -setup 0.130  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk}] -hold 0.050  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk}] -setup 0.130  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk}] -hold 0.050  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.130  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.130  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -setup 0.130  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -setup 0.130  
set_clock_uncertainty -rise_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.150  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  0.150  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk}] -setup 0.130  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk}] -hold 0.050  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk}] -setup 0.130  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk}] -hold 0.050  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.130  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.130  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -setup 0.130  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -setup 0.130  
set_clock_uncertainty -fall_from [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {ram_init:ram_init_inst|LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -hold 0.060  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {CLOCK_50_B5B}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {CLOCK_50_B6A}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {CPU_RESET_n}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {KEY[0]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {KEY[1]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {KEY[2]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {KEY[3]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {KEY[4]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {SW[0]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {SW[1]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {SW[2]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {SW[3]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {SW[4]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {SW[5]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {SW[6]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {SW[7]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {SW[8]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {SW[9]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {altera_reserved_tck}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {altera_reserved_tdi}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {altera_reserved_tms}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[0]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[1]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[2]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[3]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[4]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[5]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[6]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[7]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[8]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[9]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[10]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[11]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[12]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[13]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[14]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[15]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[16]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[17]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[18]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[19]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[20]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[21]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[22]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[23]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[24]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[25]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[26]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[27]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[28]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[29]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[30]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[31]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dqs[0]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dqs[1]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dqs[2]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dqs[3]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dqs_n[0]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dqs_n[1]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dqs_n[2]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dqs_n[3]}]
set_input_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {oct_rzqin}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {LEDR[0]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {LEDR[1]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {LEDR[2]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {LEDR[3]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {LEDR[4]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {LEDR[5]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {LEDR[6]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {LEDR[7]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {LEDR[8]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {LEDR[9]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {altera_reserved_tdo}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_ca[0]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_ca[1]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_ca[2]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_ca[3]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_ca[4]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_ca[5]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_ca[6]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_ca[7]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_ca[8]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_ca[9]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_ck[0]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_ck_n[0]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_cke[0]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_cs_n[0]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dm[0]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dm[1]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dm[2]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dm[3]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[0]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[1]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[2]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[3]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[4]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[5]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[6]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[7]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[8]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[9]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[10]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[11]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[12]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[13]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[14]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[15]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[16]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[17]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[18]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[19]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[20]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[21]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[22]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[23]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[24]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[25]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[26]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[27]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[28]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[29]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[30]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dq[31]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dqs[0]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dqs[1]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dqs[2]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dqs[3]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dqs_n[0]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dqs_n[1]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dqs_n[2]}]
set_output_delay -add_delay  -clock [get_clocks {pll:pll_clk|pll_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}]  3.000 [get_ports {mem_dqs_n[3]}]


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

