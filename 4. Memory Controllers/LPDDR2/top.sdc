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

## DATE    "Mon Jun 14 18:28:40 2021"

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

create_clock -name {clk125} -period 8.000 -waveform { 0.000 4.000 } [get_ports {clk125}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll1~FRACTIONAL_PLL_O_VCOPH0} -source [get_pins {LPDDR2_inst|lpddr2_inst|pll0|pll1~FRACTIONAL_PLL|refclkin}] -duty_cycle 50/1 -multiply_by 128 -divide_by 10 -master_clock {clk125} [get_pins {LPDDR2_inst|lpddr2_inst|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] 
create_generated_clock -name {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk} -source [get_pins {LPDDR2_inst|lpddr2_inst|pll0|pll1~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 5 -master_clock {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll1~FRACTIONAL_PLL_O_VCOPH0} [get_pins {LPDDR2_inst|lpddr2_inst|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk} -source [get_pins {LPDDR2_inst|lpddr2_inst|pll0|pll6~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 25 -phase 221616/625 -master_clock {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll1~FRACTIONAL_PLL_O_VCOPH0} [get_pins {LPDDR2_inst|lpddr2_inst|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk} -source [get_pins {LPDDR2_inst|lpddr2_inst|pll0|pll7~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 75 -master_clock {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll1~FRACTIONAL_PLL_O_VCOPH0} [get_pins {LPDDR2_inst|lpddr2_inst|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk} -source [get_pins {LPDDR2_inst|lpddr2_inst|pll0|pll3~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 5 -phase 168696/625 -master_clock {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll1~FRACTIONAL_PLL_O_VCOPH0} [get_pins {LPDDR2_inst|lpddr2_inst|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk} -source [get_pins {LPDDR2_inst|lpddr2_inst|pll0|pll6_phy~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 25 -phase 221616/625 -master_clock {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll1~FRACTIONAL_PLL_O_VCOPH0} [get_pins {LPDDR2_inst|lpddr2_inst|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0} -source [get_pins {PLL_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|refclkin}] -duty_cycle 50/1 -multiply_by 64 -divide_by 25 -master_clock {clk125} [get_pins {PLL_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL|vcoph[0]}] 
create_generated_clock -name {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]} -source [get_pins {PLL_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 2 -master_clock {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0} [get_pins {PLL_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]} -source [get_pins {PLL_inst|pll_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -master_clock {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0} [get_pins {PLL_inst|pll_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER|divclk}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -rise_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -setup 0.220  
set_clock_uncertainty -rise_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -rise_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -fall_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -setup 0.220  
set_clock_uncertainty -rise_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -fall_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -rise_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -setup 0.220  
set_clock_uncertainty -fall_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -rise_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -fall_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -setup 0.220  
set_clock_uncertainty -fall_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -fall_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -setup 0.280  
set_clock_uncertainty -rise_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -hold 0.170  
set_clock_uncertainty -rise_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -setup 0.280  
set_clock_uncertainty -rise_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -hold 0.170  
set_clock_uncertainty -rise_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.350  
set_clock_uncertainty -rise_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.280  
set_clock_uncertainty -rise_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.350  
set_clock_uncertainty -rise_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.280  
set_clock_uncertainty -fall_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -setup 0.280  
set_clock_uncertainty -fall_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -hold 0.170  
set_clock_uncertainty -fall_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -setup 0.280  
set_clock_uncertainty -fall_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}] -hold 0.170  
set_clock_uncertainty -fall_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.350  
set_clock_uncertainty -fall_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -rise_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.280  
set_clock_uncertainty -fall_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -setup 0.350  
set_clock_uncertainty -fall_from [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -fall_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[0]}] -hold 0.280  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.140  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.140  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -setup 0.140  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -setup 0.140  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.140  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.140  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -setup 0.140  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -setup 0.140  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -setup 0.150  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -setup 0.150  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.150  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.150  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -setup 0.150  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -setup 0.150  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.150  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.150  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -setup 0.140  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -hold 0.050  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -setup 0.140  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -hold 0.050  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -setup 0.150  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -setup 0.150  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.150  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.150  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -setup 0.150  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -setup 0.150  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -setup 0.140  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -hold 0.050  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -setup 0.140  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -hold 0.050  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -setup 0.150  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -setup 0.150  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.150  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.150  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -setup 0.150  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -setup 0.150  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {clk125}] -rise_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}]  0.170  
set_clock_uncertainty -rise_from [get_clocks {clk125}] -fall_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}]  0.170  
set_clock_uncertainty -fall_from [get_clocks {clk125}] -rise_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}]  0.170  
set_clock_uncertainty -fall_from [get_clocks {clk125}] -fall_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}]  0.170  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}]  0.210  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}]  0.210  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -setup 0.140  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -hold 0.050  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -setup 0.140  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -hold 0.050  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk}] -setup 0.140  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk}] -hold 0.050  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk}] -setup 0.140  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk}] -hold 0.050  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.150  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.150  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -setup 0.150  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -setup 0.150  
set_clock_uncertainty -rise_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}]  0.210  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {PLL:PLL_inst|PLL_0002:pll_inst|altera_pll:altera_pll_i|outclk_wire[1]}]  0.210  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -setup 0.140  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -hold 0.050  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -setup 0.140  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_phy_clk}] -hold 0.050  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk}] -setup 0.140  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk}] -hold 0.050  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk}] -setup 0.140  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_write_clk}] -hold 0.050  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.150  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -setup 0.150  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -setup 0.150  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -rise_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -setup 0.150  
set_clock_uncertainty -fall_from [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -fall_to [get_clocks {LPDDR2:LPDDR2_inst|LPDDR2_0002:lpddr2_inst|LPDDR2_pll0:pll0|pll_afi_clk}] -hold 0.060  


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

