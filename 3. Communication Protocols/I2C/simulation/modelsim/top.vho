-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.2 Build 203 01/18/2017 SJ Lite Edition"

-- DATE "03/23/2021 23:43:47"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	scl : BUFFER std_logic;
	sda : BUFFER std_logic
	);
END top;

-- Design Ports Information
-- scl	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- sda	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- clk	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_scl : std_logic;
SIGNAL ww_sda : std_logic;
SIGNAL \sda~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \I2C_inst|Add0~97_sumout\ : std_logic;
SIGNAL \I2C_inst|Selector47~0_combout\ : std_logic;
SIGNAL \I2C_inst|I2C_state.idle~q\ : std_logic;
SIGNAL \I2C_inst|Selector7~0_combout\ : std_logic;
SIGNAL \I2C_inst|I2C_state.start0~q\ : std_logic;
SIGNAL \I2C_inst|I2C_state.start1~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|I2C_state.stop0~q\ : std_logic;
SIGNAL \I2C_inst|Selector0~0_combout\ : std_logic;
SIGNAL \I2C_inst|I2C_state.send0~q\ : std_logic;
SIGNAL \I2C_inst|ack~0_combout\ : std_logic;
SIGNAL \I2C_inst|Selector10~0_combout\ : std_logic;
SIGNAL \I2C_inst|I2C_state.ack0~q\ : std_logic;
SIGNAL \I2C_inst|I2C_state.stop1~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|I2C_state.send2~q\ : std_logic;
SIGNAL \I2C_inst|Selector13~0_combout\ : std_logic;
SIGNAL \I2C_inst|I2C_state.send2~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|Selector4~1_combout\ : std_logic;
SIGNAL \I2C_inst|Selector4~0_combout\ : std_logic;
SIGNAL \I2C_inst|Selector4~2_combout\ : std_logic;
SIGNAL \I2C_inst|Selector3~0_combout\ : std_logic;
SIGNAL \I2C_inst|ack~q\ : std_logic;
SIGNAL \I2C_inst|Selector11~0_combout\ : std_logic;
SIGNAL \I2C_inst|I2C_state.send1~q\ : std_logic;
SIGNAL \I2C_inst|Selector12~0_combout\ : std_logic;
SIGNAL \I2C_inst|I2C_state.ack1~q\ : std_logic;
SIGNAL \I2C_inst|I2C_state.ack0~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|Selector2~1_combout\ : std_logic;
SIGNAL \I2C_inst|Selector2~2_combout\ : std_logic;
SIGNAL \I2C_inst|flip~q\ : std_logic;
SIGNAL \I2C_inst|Selector2~3_combout\ : std_logic;
SIGNAL \I2C_inst|flip~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|Selector4~3_combout\ : std_logic;
SIGNAL \I2C_inst|ack_check~q\ : std_logic;
SIGNAL \I2C_inst|reg_index~0_combout\ : std_logic;
SIGNAL \I2C_inst|Selector9~0_combout\ : std_logic;
SIGNAL \I2C_inst|I2C_state.start1~q\ : std_logic;
SIGNAL \I2C_inst|Selector9~1_combout\ : std_logic;
SIGNAL \I2C_inst|I2C_state.send0~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|Selector2~0_combout\ : std_logic;
SIGNAL \I2C_inst|reg_index~2_combout\ : std_logic;
SIGNAL \I2C_inst|Selector48~2_combout\ : std_logic;
SIGNAL \I2C_inst|reg_index~1_combout\ : std_logic;
SIGNAL \I2C_inst|reg_index[31]~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|reg_index[0]~3_combout\ : std_logic;
SIGNAL \I2C_inst|Add1~17_sumout\ : std_logic;
SIGNAL \I2C_inst|Selector79~0_combout\ : std_logic;
SIGNAL \I2C_inst|reg_index[0]~4_combout\ : std_logic;
SIGNAL \I2C_inst|reg_index[0]~5_combout\ : std_logic;
SIGNAL \I2C_inst|Add1~18\ : std_logic;
SIGNAL \I2C_inst|Add1~13_sumout\ : std_logic;
SIGNAL \I2C_inst|Selector78~0_combout\ : std_logic;
SIGNAL \I2C_inst|Add1~14\ : std_logic;
SIGNAL \I2C_inst|Add1~9_sumout\ : std_logic;
SIGNAL \I2C_inst|Selector77~0_combout\ : std_logic;
SIGNAL \I2C_inst|Add1~10\ : std_logic;
SIGNAL \I2C_inst|Add1~125_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~126\ : std_logic;
SIGNAL \I2C_inst|Add1~121_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~122\ : std_logic;
SIGNAL \I2C_inst|Add1~117_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~118\ : std_logic;
SIGNAL \I2C_inst|Add1~113_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~114\ : std_logic;
SIGNAL \I2C_inst|Add1~109_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~110\ : std_logic;
SIGNAL \I2C_inst|Add1~105_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~106\ : std_logic;
SIGNAL \I2C_inst|Add1~101_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~102\ : std_logic;
SIGNAL \I2C_inst|Add1~97_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~98\ : std_logic;
SIGNAL \I2C_inst|Add1~93_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~94\ : std_logic;
SIGNAL \I2C_inst|Add1~89_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~90\ : std_logic;
SIGNAL \I2C_inst|Add1~85_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~86\ : std_logic;
SIGNAL \I2C_inst|Add1~81_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~82\ : std_logic;
SIGNAL \I2C_inst|Add1~77_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~78\ : std_logic;
SIGNAL \I2C_inst|Add1~73_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~74\ : std_logic;
SIGNAL \I2C_inst|Add1~69_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~70\ : std_logic;
SIGNAL \I2C_inst|Add1~65_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~66\ : std_logic;
SIGNAL \I2C_inst|Add1~61_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~62\ : std_logic;
SIGNAL \I2C_inst|Add1~57_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~58\ : std_logic;
SIGNAL \I2C_inst|Add1~53_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~54\ : std_logic;
SIGNAL \I2C_inst|Add1~49_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~50\ : std_logic;
SIGNAL \I2C_inst|Add1~45_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~46\ : std_logic;
SIGNAL \I2C_inst|Add1~41_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~42\ : std_logic;
SIGNAL \I2C_inst|Add1~37_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~38\ : std_logic;
SIGNAL \I2C_inst|Add1~33_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~34\ : std_logic;
SIGNAL \I2C_inst|Add1~29_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~30\ : std_logic;
SIGNAL \I2C_inst|Add1~25_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~26\ : std_logic;
SIGNAL \I2C_inst|Add1~21_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~22\ : std_logic;
SIGNAL \I2C_inst|Add1~5_sumout\ : std_logic;
SIGNAL \I2C_inst|Add1~6\ : std_logic;
SIGNAL \I2C_inst|Add1~1_sumout\ : std_logic;
SIGNAL \I2C_inst|Selector48~0_combout\ : std_logic;
SIGNAL \I2C_inst|Selector48~1_combout\ : std_logic;
SIGNAL \I2C_inst|Selector48~3_combout\ : std_logic;
SIGNAL \I2C_inst|Selector14~0_combout\ : std_logic;
SIGNAL \I2C_inst|I2C_state.stop0~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|I2C_state.stop1~q\ : std_logic;
SIGNAL \I2C_inst|Selector6~0_combout\ : std_logic;
SIGNAL \I2C_inst|I2C_state.idle~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|clk_count[7]~0_combout\ : std_logic;
SIGNAL \I2C_inst|Add0~98\ : std_logic;
SIGNAL \I2C_inst|Add0~121_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~122\ : std_logic;
SIGNAL \I2C_inst|Add0~125_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~126\ : std_logic;
SIGNAL \I2C_inst|Add0~57_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~58\ : std_logic;
SIGNAL \I2C_inst|Add0~61_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~62\ : std_logic;
SIGNAL \I2C_inst|Add0~93_sumout\ : std_logic;
SIGNAL \I2C_inst|Selector42~0_combout\ : std_logic;
SIGNAL \I2C_inst|Add0~94\ : std_logic;
SIGNAL \I2C_inst|Add0~89_sumout\ : std_logic;
SIGNAL \I2C_inst|Selector41~0_combout\ : std_logic;
SIGNAL \I2C_inst|Add0~90\ : std_logic;
SIGNAL \I2C_inst|Add0~85_sumout\ : std_logic;
SIGNAL \I2C_inst|Selector40~0_combout\ : std_logic;
SIGNAL \I2C_inst|Add0~86\ : std_logic;
SIGNAL \I2C_inst|Add0~117_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~118\ : std_logic;
SIGNAL \I2C_inst|Add0~113_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~114\ : std_logic;
SIGNAL \I2C_inst|Add0~81_sumout\ : std_logic;
SIGNAL \I2C_inst|Selector37~0_combout\ : std_logic;
SIGNAL \I2C_inst|Add0~82\ : std_logic;
SIGNAL \I2C_inst|Add0~109_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~110\ : std_logic;
SIGNAL \I2C_inst|Add0~105_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~106\ : std_logic;
SIGNAL \I2C_inst|Add0~5_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~6\ : std_logic;
SIGNAL \I2C_inst|Add0~29_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~30\ : std_logic;
SIGNAL \I2C_inst|Add0~25_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~26\ : std_logic;
SIGNAL \I2C_inst|Add0~21_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~22\ : std_logic;
SIGNAL \I2C_inst|Add0~17_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~18\ : std_logic;
SIGNAL \I2C_inst|Add0~13_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~14\ : std_logic;
SIGNAL \I2C_inst|Add0~9_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~10\ : std_logic;
SIGNAL \I2C_inst|Add0~53_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~54\ : std_logic;
SIGNAL \I2C_inst|Add0~49_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~50\ : std_logic;
SIGNAL \I2C_inst|Add0~45_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~46\ : std_logic;
SIGNAL \I2C_inst|Add0~41_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~42\ : std_logic;
SIGNAL \I2C_inst|Add0~101_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~102\ : std_logic;
SIGNAL \I2C_inst|Add0~37_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~38\ : std_logic;
SIGNAL \I2C_inst|Add0~33_sumout\ : std_logic;
SIGNAL \I2C_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \I2C_inst|clk_count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \I2C_inst|clk_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|clk_count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|clk_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|clk_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|clk_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \I2C_inst|Add0~34\ : std_logic;
SIGNAL \I2C_inst|Add0~77_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~78\ : std_logic;
SIGNAL \I2C_inst|Add0~73_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~74\ : std_logic;
SIGNAL \I2C_inst|Add0~69_sumout\ : std_logic;
SIGNAL \I2C_inst|Add0~70\ : std_logic;
SIGNAL \I2C_inst|Add0~65_sumout\ : std_logic;
SIGNAL \I2C_inst|clk_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \I2C_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \I2C_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \I2C_inst|LessThan0~6_combout\ : std_logic;
SIGNAL \I2C_inst|Add0~66\ : std_logic;
SIGNAL \I2C_inst|Add0~1_sumout\ : std_logic;
SIGNAL \I2C_inst|clk_count[31]~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|Selector1~0_combout\ : std_logic;
SIGNAL \I2C_inst|Mux0~0_combout\ : std_logic;
SIGNAL \I2C_inst|Selector1~3_combout\ : std_logic;
SIGNAL \I2C_inst|sda~0_combout\ : std_logic;
SIGNAL \I2C_inst|I2C_state.ack1~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|Selector1~6_combout\ : std_logic;
SIGNAL \I2C_inst|Selector1~7_combout\ : std_logic;
SIGNAL \I2C_inst|Selector1~4_combout\ : std_logic;
SIGNAL \I2C_inst|Selector1~5_combout\ : std_logic;
SIGNAL \I2C_inst|Mux2~0_combout\ : std_logic;
SIGNAL \I2C_inst|Selector1~1_combout\ : std_logic;
SIGNAL \I2C_inst|Mux1~0_combout\ : std_logic;
SIGNAL \I2C_inst|Selector1~2_combout\ : std_logic;
SIGNAL \I2C_inst|Selector1~8_combout\ : std_logic;
SIGNAL \I2C_inst|sda~reg0_Duplicate_1_q\ : std_logic;
SIGNAL \I2C_inst|sda~reg0SLOAD_MUX_combout\ : std_logic;
SIGNAL \I2C_inst|sda~reg0_q\ : std_logic;
SIGNAL \I2C_inst|scl~_Duplicate_1_q\ : std_logic;
SIGNAL \I2C_inst|Selector0~1_combout\ : std_logic;
SIGNAL \I2C_inst|scl~q\ : std_logic;
SIGNAL \I2C_inst|clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \I2C_inst|reg_index\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \I2C_inst|ALT_INV_reg_index[31]~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_I2C_state.idle~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_I2C_state.stop1~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_I2C_state.stop0~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_flip~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_I2C_state.ack1~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_I2C_state.ack0~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_I2C_state.send0~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_I2C_state.send2~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_I2C_state.start1~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_clk_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_clk_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_clk_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_clk_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_clk_count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_clk_count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_clk_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_reg_index[0]~4_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_reg_index[0]~3_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Selector1~8_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Selector1~7_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Selector1~6_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_sda~0_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Selector1~5_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Selector1~4_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Selector1~3_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Selector1~2_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_reg_index\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \I2C_inst|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Selector4~2_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Selector4~1_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Selector48~2_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Selector48~1_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Selector48~0_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_reg_index~2_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_reg_index~1_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_reg_index~0_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_ack_check~q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_ack~q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_ack~0_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_I2C_state.idle~q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_I2C_state.stop1~q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_I2C_state.stop0~q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_I2C_state.start0~q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_flip~q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Selector2~2_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_I2C_state.ack1~q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_I2C_state.ack0~q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_I2C_state.send1~q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_I2C_state.send0~q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_I2C_state.send2~q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_I2C_state.start1~q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \I2C_inst|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_scl~_Duplicate_1_q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_sda~reg0_Duplicate_1_q\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \I2C_inst|ALT_INV_Add0~81_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
scl <= ww_scl;
sda <= ww_sda;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\I2C_inst|ALT_INV_reg_index[31]~DUPLICATE_q\ <= NOT \I2C_inst|reg_index[31]~DUPLICATE_q\;
\I2C_inst|ALT_INV_I2C_state.idle~DUPLICATE_q\ <= NOT \I2C_inst|I2C_state.idle~DUPLICATE_q\;
\I2C_inst|ALT_INV_I2C_state.stop1~DUPLICATE_q\ <= NOT \I2C_inst|I2C_state.stop1~DUPLICATE_q\;
\I2C_inst|ALT_INV_I2C_state.stop0~DUPLICATE_q\ <= NOT \I2C_inst|I2C_state.stop0~DUPLICATE_q\;
\I2C_inst|ALT_INV_flip~DUPLICATE_q\ <= NOT \I2C_inst|flip~DUPLICATE_q\;
\I2C_inst|ALT_INV_I2C_state.ack1~DUPLICATE_q\ <= NOT \I2C_inst|I2C_state.ack1~DUPLICATE_q\;
\I2C_inst|ALT_INV_I2C_state.ack0~DUPLICATE_q\ <= NOT \I2C_inst|I2C_state.ack0~DUPLICATE_q\;
\I2C_inst|ALT_INV_I2C_state.send0~DUPLICATE_q\ <= NOT \I2C_inst|I2C_state.send0~DUPLICATE_q\;
\I2C_inst|ALT_INV_I2C_state.send2~DUPLICATE_q\ <= NOT \I2C_inst|I2C_state.send2~DUPLICATE_q\;
\I2C_inst|ALT_INV_I2C_state.start1~DUPLICATE_q\ <= NOT \I2C_inst|I2C_state.start1~DUPLICATE_q\;
\I2C_inst|ALT_INV_clk_count[0]~DUPLICATE_q\ <= NOT \I2C_inst|clk_count[0]~DUPLICATE_q\;
\I2C_inst|ALT_INV_clk_count[5]~DUPLICATE_q\ <= NOT \I2C_inst|clk_count[5]~DUPLICATE_q\;
\I2C_inst|ALT_INV_clk_count[6]~DUPLICATE_q\ <= NOT \I2C_inst|clk_count[6]~DUPLICATE_q\;
\I2C_inst|ALT_INV_clk_count[7]~DUPLICATE_q\ <= NOT \I2C_inst|clk_count[7]~DUPLICATE_q\;
\I2C_inst|ALT_INV_clk_count[10]~DUPLICATE_q\ <= NOT \I2C_inst|clk_count[10]~DUPLICATE_q\;
\I2C_inst|ALT_INV_clk_count[11]~DUPLICATE_q\ <= NOT \I2C_inst|clk_count[11]~DUPLICATE_q\;
\I2C_inst|ALT_INV_clk_count[3]~DUPLICATE_q\ <= NOT \I2C_inst|clk_count[3]~DUPLICATE_q\;
\I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\ <= NOT \I2C_inst|clk_count[31]~DUPLICATE_q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\I2C_inst|ALT_INV_reg_index[0]~4_combout\ <= NOT \I2C_inst|reg_index[0]~4_combout\;
\I2C_inst|ALT_INV_reg_index[0]~3_combout\ <= NOT \I2C_inst|reg_index[0]~3_combout\;
\I2C_inst|ALT_INV_Selector1~8_combout\ <= NOT \I2C_inst|Selector1~8_combout\;
\I2C_inst|ALT_INV_Selector1~7_combout\ <= NOT \I2C_inst|Selector1~7_combout\;
\I2C_inst|ALT_INV_Selector1~6_combout\ <= NOT \I2C_inst|Selector1~6_combout\;
\I2C_inst|ALT_INV_sda~0_combout\ <= NOT \I2C_inst|sda~0_combout\;
\I2C_inst|ALT_INV_Selector1~5_combout\ <= NOT \I2C_inst|Selector1~5_combout\;
\I2C_inst|ALT_INV_Selector1~4_combout\ <= NOT \I2C_inst|Selector1~4_combout\;
\I2C_inst|ALT_INV_Selector1~3_combout\ <= NOT \I2C_inst|Selector1~3_combout\;
\I2C_inst|ALT_INV_Mux0~0_combout\ <= NOT \I2C_inst|Mux0~0_combout\;
\I2C_inst|ALT_INV_Selector1~2_combout\ <= NOT \I2C_inst|Selector1~2_combout\;
\I2C_inst|ALT_INV_Mux1~0_combout\ <= NOT \I2C_inst|Mux1~0_combout\;
\I2C_inst|ALT_INV_Selector1~1_combout\ <= NOT \I2C_inst|Selector1~1_combout\;
\I2C_inst|ALT_INV_Mux2~0_combout\ <= NOT \I2C_inst|Mux2~0_combout\;
\I2C_inst|ALT_INV_reg_index\(0) <= NOT \I2C_inst|reg_index\(0);
\I2C_inst|ALT_INV_reg_index\(1) <= NOT \I2C_inst|reg_index\(1);
\I2C_inst|ALT_INV_reg_index\(2) <= NOT \I2C_inst|reg_index\(2);
\I2C_inst|ALT_INV_Selector1~0_combout\ <= NOT \I2C_inst|Selector1~0_combout\;
\I2C_inst|ALT_INV_Selector4~2_combout\ <= NOT \I2C_inst|Selector4~2_combout\;
\I2C_inst|ALT_INV_Selector4~1_combout\ <= NOT \I2C_inst|Selector4~1_combout\;
\I2C_inst|ALT_INV_Selector4~0_combout\ <= NOT \I2C_inst|Selector4~0_combout\;
\I2C_inst|ALT_INV_Selector48~2_combout\ <= NOT \I2C_inst|Selector48~2_combout\;
\I2C_inst|ALT_INV_Selector48~1_combout\ <= NOT \I2C_inst|Selector48~1_combout\;
\I2C_inst|ALT_INV_Selector48~0_combout\ <= NOT \I2C_inst|Selector48~0_combout\;
\I2C_inst|ALT_INV_reg_index~2_combout\ <= NOT \I2C_inst|reg_index~2_combout\;
\I2C_inst|ALT_INV_reg_index~1_combout\ <= NOT \I2C_inst|reg_index~1_combout\;
\I2C_inst|ALT_INV_Selector9~0_combout\ <= NOT \I2C_inst|Selector9~0_combout\;
\I2C_inst|ALT_INV_reg_index~0_combout\ <= NOT \I2C_inst|reg_index~0_combout\;
\I2C_inst|ALT_INV_ack_check~q\ <= NOT \I2C_inst|ack_check~q\;
\I2C_inst|ALT_INV_ack~q\ <= NOT \I2C_inst|ack~q\;
\I2C_inst|ALT_INV_ack~0_combout\ <= NOT \I2C_inst|ack~0_combout\;
\I2C_inst|ALT_INV_reg_index\(31) <= NOT \I2C_inst|reg_index\(31);
\I2C_inst|ALT_INV_I2C_state.idle~q\ <= NOT \I2C_inst|I2C_state.idle~q\;
\I2C_inst|ALT_INV_Selector0~0_combout\ <= NOT \I2C_inst|Selector0~0_combout\;
\I2C_inst|ALT_INV_I2C_state.stop1~q\ <= NOT \I2C_inst|I2C_state.stop1~q\;
\I2C_inst|ALT_INV_I2C_state.stop0~q\ <= NOT \I2C_inst|I2C_state.stop0~q\;
\I2C_inst|ALT_INV_I2C_state.start0~q\ <= NOT \I2C_inst|I2C_state.start0~q\;
\I2C_inst|ALT_INV_flip~q\ <= NOT \I2C_inst|flip~q\;
\I2C_inst|ALT_INV_Selector2~2_combout\ <= NOT \I2C_inst|Selector2~2_combout\;
\I2C_inst|ALT_INV_Selector2~1_combout\ <= NOT \I2C_inst|Selector2~1_combout\;
\I2C_inst|ALT_INV_I2C_state.ack1~q\ <= NOT \I2C_inst|I2C_state.ack1~q\;
\I2C_inst|ALT_INV_I2C_state.ack0~q\ <= NOT \I2C_inst|I2C_state.ack0~q\;
\I2C_inst|ALT_INV_Selector2~0_combout\ <= NOT \I2C_inst|Selector2~0_combout\;
\I2C_inst|ALT_INV_I2C_state.send1~q\ <= NOT \I2C_inst|I2C_state.send1~q\;
\I2C_inst|ALT_INV_I2C_state.send0~q\ <= NOT \I2C_inst|I2C_state.send0~q\;
\I2C_inst|ALT_INV_I2C_state.send2~q\ <= NOT \I2C_inst|I2C_state.send2~q\;
\I2C_inst|ALT_INV_I2C_state.start1~q\ <= NOT \I2C_inst|I2C_state.start1~q\;
\I2C_inst|ALT_INV_LessThan0~6_combout\ <= NOT \I2C_inst|LessThan0~6_combout\;
\I2C_inst|ALT_INV_LessThan0~5_combout\ <= NOT \I2C_inst|LessThan0~5_combout\;
\I2C_inst|ALT_INV_LessThan0~4_combout\ <= NOT \I2C_inst|LessThan0~4_combout\;
\I2C_inst|ALT_INV_LessThan0~3_combout\ <= NOT \I2C_inst|LessThan0~3_combout\;
\I2C_inst|ALT_INV_clk_count\(0) <= NOT \I2C_inst|clk_count\(0);
\I2C_inst|ALT_INV_clk_count\(5) <= NOT \I2C_inst|clk_count\(5);
\I2C_inst|ALT_INV_clk_count\(6) <= NOT \I2C_inst|clk_count\(6);
\I2C_inst|ALT_INV_clk_count\(7) <= NOT \I2C_inst|clk_count\(7);
\I2C_inst|ALT_INV_clk_count\(10) <= NOT \I2C_inst|clk_count\(10);
\I2C_inst|ALT_INV_LessThan0~2_combout\ <= NOT \I2C_inst|LessThan0~2_combout\;
\I2C_inst|ALT_INV_LessThan0~1_combout\ <= NOT \I2C_inst|LessThan0~1_combout\;
\I2C_inst|ALT_INV_LessThan0~0_combout\ <= NOT \I2C_inst|LessThan0~0_combout\;
\I2C_inst|ALT_INV_scl~_Duplicate_1_q\ <= NOT \I2C_inst|scl~_Duplicate_1_q\;
\I2C_inst|ALT_INV_reg_index\(3) <= NOT \I2C_inst|reg_index\(3);
\I2C_inst|ALT_INV_reg_index\(4) <= NOT \I2C_inst|reg_index\(4);
\I2C_inst|ALT_INV_reg_index\(5) <= NOT \I2C_inst|reg_index\(5);
\I2C_inst|ALT_INV_reg_index\(6) <= NOT \I2C_inst|reg_index\(6);
\I2C_inst|ALT_INV_reg_index\(7) <= NOT \I2C_inst|reg_index\(7);
\I2C_inst|ALT_INV_reg_index\(8) <= NOT \I2C_inst|reg_index\(8);
\I2C_inst|ALT_INV_reg_index\(9) <= NOT \I2C_inst|reg_index\(9);
\I2C_inst|ALT_INV_reg_index\(10) <= NOT \I2C_inst|reg_index\(10);
\I2C_inst|ALT_INV_reg_index\(11) <= NOT \I2C_inst|reg_index\(11);
\I2C_inst|ALT_INV_reg_index\(12) <= NOT \I2C_inst|reg_index\(12);
\I2C_inst|ALT_INV_reg_index\(13) <= NOT \I2C_inst|reg_index\(13);
\I2C_inst|ALT_INV_reg_index\(14) <= NOT \I2C_inst|reg_index\(14);
\I2C_inst|ALT_INV_reg_index\(15) <= NOT \I2C_inst|reg_index\(15);
\I2C_inst|ALT_INV_reg_index\(16) <= NOT \I2C_inst|reg_index\(16);
\I2C_inst|ALT_INV_reg_index\(17) <= NOT \I2C_inst|reg_index\(17);
\I2C_inst|ALT_INV_reg_index\(18) <= NOT \I2C_inst|reg_index\(18);
\I2C_inst|ALT_INV_reg_index\(19) <= NOT \I2C_inst|reg_index\(19);
\I2C_inst|ALT_INV_reg_index\(20) <= NOT \I2C_inst|reg_index\(20);
\I2C_inst|ALT_INV_reg_index\(21) <= NOT \I2C_inst|reg_index\(21);
\I2C_inst|ALT_INV_reg_index\(22) <= NOT \I2C_inst|reg_index\(22);
\I2C_inst|ALT_INV_reg_index\(23) <= NOT \I2C_inst|reg_index\(23);
\I2C_inst|ALT_INV_reg_index\(24) <= NOT \I2C_inst|reg_index\(24);
\I2C_inst|ALT_INV_reg_index\(25) <= NOT \I2C_inst|reg_index\(25);
\I2C_inst|ALT_INV_reg_index\(26) <= NOT \I2C_inst|reg_index\(26);
\I2C_inst|ALT_INV_reg_index\(27) <= NOT \I2C_inst|reg_index\(27);
\I2C_inst|ALT_INV_reg_index\(28) <= NOT \I2C_inst|reg_index\(28);
\I2C_inst|ALT_INV_reg_index\(29) <= NOT \I2C_inst|reg_index\(29);
\I2C_inst|ALT_INV_reg_index\(30) <= NOT \I2C_inst|reg_index\(30);
\I2C_inst|ALT_INV_Add1~17_sumout\ <= NOT \I2C_inst|Add1~17_sumout\;
\I2C_inst|ALT_INV_Add1~13_sumout\ <= NOT \I2C_inst|Add1~13_sumout\;
\I2C_inst|ALT_INV_Add1~9_sumout\ <= NOT \I2C_inst|Add1~9_sumout\;
\I2C_inst|ALT_INV_Add1~1_sumout\ <= NOT \I2C_inst|Add1~1_sumout\;
\I2C_inst|ALT_INV_sda~reg0_Duplicate_1_q\ <= NOT \I2C_inst|sda~reg0_Duplicate_1_q\;
\I2C_inst|ALT_INV_Add0~97_sumout\ <= NOT \I2C_inst|Add0~97_sumout\;
\I2C_inst|ALT_INV_Add0~93_sumout\ <= NOT \I2C_inst|Add0~93_sumout\;
\I2C_inst|ALT_INV_Add0~89_sumout\ <= NOT \I2C_inst|Add0~89_sumout\;
\I2C_inst|ALT_INV_Add0~85_sumout\ <= NOT \I2C_inst|Add0~85_sumout\;
\I2C_inst|ALT_INV_Add0~81_sumout\ <= NOT \I2C_inst|Add0~81_sumout\;
\I2C_inst|ALT_INV_clk_count\(2) <= NOT \I2C_inst|clk_count\(2);
\I2C_inst|ALT_INV_clk_count\(1) <= NOT \I2C_inst|clk_count\(1);
\I2C_inst|ALT_INV_clk_count\(8) <= NOT \I2C_inst|clk_count\(8);
\I2C_inst|ALT_INV_clk_count\(9) <= NOT \I2C_inst|clk_count\(9);
\I2C_inst|ALT_INV_clk_count\(11) <= NOT \I2C_inst|clk_count\(11);
\I2C_inst|ALT_INV_clk_count\(12) <= NOT \I2C_inst|clk_count\(12);
\I2C_inst|ALT_INV_clk_count\(24) <= NOT \I2C_inst|clk_count\(24);
\I2C_inst|ALT_INV_clk_count\(27) <= NOT \I2C_inst|clk_count\(27);
\I2C_inst|ALT_INV_clk_count\(28) <= NOT \I2C_inst|clk_count\(28);
\I2C_inst|ALT_INV_clk_count\(29) <= NOT \I2C_inst|clk_count\(29);
\I2C_inst|ALT_INV_clk_count\(30) <= NOT \I2C_inst|clk_count\(30);
\I2C_inst|ALT_INV_clk_count\(4) <= NOT \I2C_inst|clk_count\(4);
\I2C_inst|ALT_INV_clk_count\(3) <= NOT \I2C_inst|clk_count\(3);
\I2C_inst|ALT_INV_clk_count\(20) <= NOT \I2C_inst|clk_count\(20);
\I2C_inst|ALT_INV_clk_count\(21) <= NOT \I2C_inst|clk_count\(21);
\I2C_inst|ALT_INV_clk_count\(22) <= NOT \I2C_inst|clk_count\(22);
\I2C_inst|ALT_INV_clk_count\(23) <= NOT \I2C_inst|clk_count\(23);
\I2C_inst|ALT_INV_clk_count\(25) <= NOT \I2C_inst|clk_count\(25);
\I2C_inst|ALT_INV_clk_count\(26) <= NOT \I2C_inst|clk_count\(26);
\I2C_inst|ALT_INV_clk_count\(14) <= NOT \I2C_inst|clk_count\(14);
\I2C_inst|ALT_INV_clk_count\(15) <= NOT \I2C_inst|clk_count\(15);
\I2C_inst|ALT_INV_clk_count\(16) <= NOT \I2C_inst|clk_count\(16);
\I2C_inst|ALT_INV_clk_count\(17) <= NOT \I2C_inst|clk_count\(17);
\I2C_inst|ALT_INV_clk_count\(18) <= NOT \I2C_inst|clk_count\(18);
\I2C_inst|ALT_INV_clk_count\(19) <= NOT \I2C_inst|clk_count\(19);
\I2C_inst|ALT_INV_clk_count\(13) <= NOT \I2C_inst|clk_count\(13);
\I2C_inst|ALT_INV_clk_count\(31) <= NOT \I2C_inst|clk_count\(31);

-- Location: IOOBUF_X68_Y14_N45
\scl~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I2C_inst|scl~q\,
	devoe => ww_devoe,
	o => ww_scl);

-- Location: IOOBUF_X68_Y37_N39
\sda~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I2C_inst|sda~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_sda);

-- Location: IOIBUF_X38_Y61_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G12
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X68_Y12_N55
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X65_Y16_N0
\I2C_inst|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~97_sumout\ = SUM(( !\I2C_inst|clk_count\(0) ) + ( VCC ) + ( !VCC ))
-- \I2C_inst|Add0~98\ = CARRY(( !\I2C_inst|clk_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_clk_count\(0),
	cin => GND,
	sumout => \I2C_inst|Add0~97_sumout\,
	cout => \I2C_inst|Add0~98\);

-- Location: LABCELL_X64_Y16_N54
\I2C_inst|Selector47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector47~0_combout\ = ( !\I2C_inst|LessThan0~5_combout\ & ( (!\I2C_inst|clk_count[31]~DUPLICATE_q\ & !\I2C_inst|Add0~97_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\,
	datac => \I2C_inst|ALT_INV_Add0~97_sumout\,
	dataf => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	combout => \I2C_inst|Selector47~0_combout\);

-- Location: FF_X67_Y16_N11
\I2C_inst|I2C_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector6~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|I2C_state.idle~q\);

-- Location: LABCELL_X67_Y16_N30
\I2C_inst|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector7~0_combout\ = ( \I2C_inst|I2C_state.idle~q\ & ( (!\I2C_inst|LessThan0~5_combout\ & (!\I2C_inst|clk_count[31]~DUPLICATE_q\ & \I2C_inst|I2C_state.start0~q\)) ) ) # ( !\I2C_inst|I2C_state.idle~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	datac => \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\,
	datad => \I2C_inst|ALT_INV_I2C_state.start0~q\,
	dataf => \I2C_inst|ALT_INV_I2C_state.idle~q\,
	combout => \I2C_inst|Selector7~0_combout\);

-- Location: FF_X67_Y16_N31
\I2C_inst|I2C_state.start0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector7~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|I2C_state.start0~q\);

-- Location: FF_X63_Y15_N40
\I2C_inst|I2C_state.start1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \I2C_inst|I2C_state.start0~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \I2C_inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|I2C_state.start1~DUPLICATE_q\);

-- Location: FF_X63_Y15_N19
\I2C_inst|I2C_state.stop0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector14~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|I2C_state.stop0~q\);

-- Location: LABCELL_X67_Y16_N33
\I2C_inst|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector0~0_combout\ = ( !\I2C_inst|I2C_state.start0~q\ & ( (!\I2C_inst|I2C_state.stop0~q\ & !\I2C_inst|I2C_state.stop1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_I2C_state.stop0~q\,
	datac => \I2C_inst|ALT_INV_I2C_state.stop1~q\,
	dataf => \I2C_inst|ALT_INV_I2C_state.start0~q\,
	combout => \I2C_inst|Selector0~0_combout\);

-- Location: FF_X64_Y15_N7
\I2C_inst|I2C_state.send0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector9~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|I2C_state.send0~q\);

-- Location: LABCELL_X64_Y15_N39
\I2C_inst|ack~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|ack~0_combout\ = ( \I2C_inst|clk_count[31]~DUPLICATE_q\ & ( (\I2C_inst|reg_index\(31) & \I2C_inst|flip~DUPLICATE_q\) ) ) # ( !\I2C_inst|clk_count[31]~DUPLICATE_q\ & ( (\I2C_inst|LessThan0~5_combout\ & (\I2C_inst|reg_index\(31) & 
-- \I2C_inst|flip~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	datac => \I2C_inst|ALT_INV_reg_index\(31),
	datad => \I2C_inst|ALT_INV_flip~DUPLICATE_q\,
	dataf => \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\,
	combout => \I2C_inst|ack~0_combout\);

-- Location: LABCELL_X64_Y15_N24
\I2C_inst|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector10~0_combout\ = ( \I2C_inst|ack~0_combout\ & ( ((!\I2C_inst|reg_index~0_combout\ & \I2C_inst|I2C_state.ack0~q\)) # (\I2C_inst|I2C_state.send0~q\) ) ) # ( !\I2C_inst|ack~0_combout\ & ( (!\I2C_inst|reg_index~0_combout\ & 
-- \I2C_inst|I2C_state.ack0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_I2C_state.send0~q\,
	datac => \I2C_inst|ALT_INV_reg_index~0_combout\,
	datad => \I2C_inst|ALT_INV_I2C_state.ack0~q\,
	dataf => \I2C_inst|ALT_INV_ack~0_combout\,
	combout => \I2C_inst|Selector10~0_combout\);

-- Location: FF_X64_Y15_N26
\I2C_inst|I2C_state.ack0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector10~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|I2C_state.ack0~q\);

-- Location: FF_X63_Y15_N59
\I2C_inst|I2C_state.stop1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \I2C_inst|I2C_state.stop0~DUPLICATE_q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \I2C_inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|I2C_state.stop1~DUPLICATE_q\);

-- Location: FF_X64_Y15_N5
\I2C_inst|I2C_state.send2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector13~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|I2C_state.send2~q\);

-- Location: LABCELL_X64_Y15_N3
\I2C_inst|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector13~0_combout\ = ( \I2C_inst|ack~0_combout\ & ( (\I2C_inst|reg_index~0_combout\ & (\I2C_inst|I2C_state.ack1~q\ & \I2C_inst|ack~q\)) ) ) # ( !\I2C_inst|ack~0_combout\ & ( ((\I2C_inst|reg_index~0_combout\ & (\I2C_inst|I2C_state.ack1~q\ & 
-- \I2C_inst|ack~q\))) # (\I2C_inst|I2C_state.send2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111000000011111111100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_reg_index~0_combout\,
	datab => \I2C_inst|ALT_INV_I2C_state.ack1~q\,
	datac => \I2C_inst|ALT_INV_ack~q\,
	datad => \I2C_inst|ALT_INV_I2C_state.send2~q\,
	dataf => \I2C_inst|ALT_INV_ack~0_combout\,
	combout => \I2C_inst|Selector13~0_combout\);

-- Location: FF_X64_Y15_N4
\I2C_inst|I2C_state.send2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector13~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|I2C_state.send2~DUPLICATE_q\);

-- Location: LABCELL_X63_Y15_N6
\I2C_inst|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector4~1_combout\ = ( !\I2C_inst|I2C_state.send2~DUPLICATE_q\ & ( (!\I2C_inst|I2C_state.stop0~DUPLICATE_q\ & (!\I2C_inst|I2C_state.start1~DUPLICATE_q\ & (!\I2C_inst|I2C_state.start0~q\ & !\I2C_inst|I2C_state.stop1~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_I2C_state.stop0~DUPLICATE_q\,
	datab => \I2C_inst|ALT_INV_I2C_state.start1~DUPLICATE_q\,
	datac => \I2C_inst|ALT_INV_I2C_state.start0~q\,
	datad => \I2C_inst|ALT_INV_I2C_state.stop1~DUPLICATE_q\,
	dataf => \I2C_inst|ALT_INV_I2C_state.send2~DUPLICATE_q\,
	combout => \I2C_inst|Selector4~1_combout\);

-- Location: LABCELL_X63_Y15_N45
\I2C_inst|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector4~0_combout\ = (!\I2C_inst|I2C_state.send1~q\ & !\I2C_inst|I2C_state.send0~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_I2C_state.send1~q\,
	datad => \I2C_inst|ALT_INV_I2C_state.send0~DUPLICATE_q\,
	combout => \I2C_inst|Selector4~0_combout\);

-- Location: LABCELL_X63_Y15_N12
\I2C_inst|Selector4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector4~2_combout\ = ( \I2C_inst|Selector4~0_combout\ & ( \I2C_inst|clk_count[31]~DUPLICATE_q\ & ( \I2C_inst|Selector4~1_combout\ ) ) ) # ( !\I2C_inst|Selector4~0_combout\ & ( \I2C_inst|clk_count[31]~DUPLICATE_q\ & ( 
-- (\I2C_inst|flip~DUPLICATE_q\ & (\I2C_inst|reg_index\(31) & \I2C_inst|Selector4~1_combout\)) ) ) ) # ( \I2C_inst|Selector4~0_combout\ & ( !\I2C_inst|clk_count[31]~DUPLICATE_q\ & ( \I2C_inst|Selector4~1_combout\ ) ) ) # ( !\I2C_inst|Selector4~0_combout\ & ( 
-- !\I2C_inst|clk_count[31]~DUPLICATE_q\ & ( (\I2C_inst|flip~DUPLICATE_q\ & (\I2C_inst|LessThan0~5_combout\ & (\I2C_inst|reg_index\(31) & \I2C_inst|Selector4~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000001111111100000000000001010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_flip~DUPLICATE_q\,
	datab => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	datac => \I2C_inst|ALT_INV_reg_index\(31),
	datad => \I2C_inst|ALT_INV_Selector4~1_combout\,
	datae => \I2C_inst|ALT_INV_Selector4~0_combout\,
	dataf => \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\,
	combout => \I2C_inst|Selector4~2_combout\);

-- Location: LABCELL_X65_Y15_N48
\I2C_inst|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector3~0_combout\ = ( \I2C_inst|ack~q\ & ( \I2C_inst|LessThan0~6_combout\ & ( (!\I2C_inst|Selector4~2_combout\) # ((!\I2C_inst|Selector2~1_combout\ & ((!\I2C_inst|sda~reg0_Duplicate_1_q\) # (!\I2C_inst|flip~DUPLICATE_q\)))) ) ) ) # ( 
-- !\I2C_inst|ack~q\ & ( \I2C_inst|LessThan0~6_combout\ & ( (!\I2C_inst|sda~reg0_Duplicate_1_q\ & (\I2C_inst|flip~DUPLICATE_q\ & !\I2C_inst|Selector2~1_combout\)) ) ) ) # ( \I2C_inst|ack~q\ & ( !\I2C_inst|LessThan0~6_combout\ & ( 
-- (!\I2C_inst|Selector4~2_combout\) # (!\I2C_inst|Selector2~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000001100000000001111111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_Selector4~2_combout\,
	datab => \I2C_inst|ALT_INV_sda~reg0_Duplicate_1_q\,
	datac => \I2C_inst|ALT_INV_flip~DUPLICATE_q\,
	datad => \I2C_inst|ALT_INV_Selector2~1_combout\,
	datae => \I2C_inst|ALT_INV_ack~q\,
	dataf => \I2C_inst|ALT_INV_LessThan0~6_combout\,
	combout => \I2C_inst|Selector3~0_combout\);

-- Location: FF_X65_Y15_N49
\I2C_inst|ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector3~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|ack~q\);

-- Location: LABCELL_X64_Y15_N12
\I2C_inst|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector11~0_combout\ = ( \I2C_inst|I2C_state.send1~q\ & ( \I2C_inst|ack~0_combout\ & ( (\I2C_inst|reg_index~0_combout\ & ((!\I2C_inst|ack~q\ & ((\I2C_inst|I2C_state.ack1~q\))) # (\I2C_inst|ack~q\ & (\I2C_inst|I2C_state.ack0~q\)))) ) ) ) # ( 
-- !\I2C_inst|I2C_state.send1~q\ & ( \I2C_inst|ack~0_combout\ & ( (\I2C_inst|reg_index~0_combout\ & ((!\I2C_inst|ack~q\ & ((\I2C_inst|I2C_state.ack1~q\))) # (\I2C_inst|ack~q\ & (\I2C_inst|I2C_state.ack0~q\)))) ) ) ) # ( \I2C_inst|I2C_state.send1~q\ & ( 
-- !\I2C_inst|ack~0_combout\ ) ) # ( !\I2C_inst|I2C_state.send1~q\ & ( !\I2C_inst|ack~0_combout\ & ( (\I2C_inst|reg_index~0_combout\ & ((!\I2C_inst|ack~q\ & ((\I2C_inst|I2C_state.ack1~q\))) # (\I2C_inst|ack~q\ & (\I2C_inst|I2C_state.ack0~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101111111111111111100000011000001010000001100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_I2C_state.ack0~q\,
	datab => \I2C_inst|ALT_INV_I2C_state.ack1~q\,
	datac => \I2C_inst|ALT_INV_reg_index~0_combout\,
	datad => \I2C_inst|ALT_INV_ack~q\,
	datae => \I2C_inst|ALT_INV_I2C_state.send1~q\,
	dataf => \I2C_inst|ALT_INV_ack~0_combout\,
	combout => \I2C_inst|Selector11~0_combout\);

-- Location: FF_X64_Y15_N13
\I2C_inst|I2C_state.send1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector11~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|I2C_state.send1~q\);

-- Location: LABCELL_X63_Y15_N42
\I2C_inst|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector12~0_combout\ = ( \I2C_inst|ack~0_combout\ & ( ((!\I2C_inst|reg_index~0_combout\ & \I2C_inst|I2C_state.ack1~q\)) # (\I2C_inst|I2C_state.send1~q\) ) ) # ( !\I2C_inst|ack~0_combout\ & ( (!\I2C_inst|reg_index~0_combout\ & 
-- \I2C_inst|I2C_state.ack1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_I2C_state.send1~q\,
	datac => \I2C_inst|ALT_INV_reg_index~0_combout\,
	datad => \I2C_inst|ALT_INV_I2C_state.ack1~q\,
	dataf => \I2C_inst|ALT_INV_ack~0_combout\,
	combout => \I2C_inst|Selector12~0_combout\);

-- Location: FF_X63_Y15_N43
\I2C_inst|I2C_state.ack1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector12~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|I2C_state.ack1~q\);

-- Location: FF_X64_Y15_N25
\I2C_inst|I2C_state.ack0~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector10~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|I2C_state.ack0~DUPLICATE_q\);

-- Location: LABCELL_X64_Y15_N0
\I2C_inst|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector2~1_combout\ = ( !\I2C_inst|I2C_state.ack0~DUPLICATE_q\ & ( !\I2C_inst|I2C_state.ack1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_I2C_state.ack1~q\,
	dataf => \I2C_inst|ALT_INV_I2C_state.ack0~DUPLICATE_q\,
	combout => \I2C_inst|Selector2~1_combout\);

-- Location: LABCELL_X64_Y15_N51
\I2C_inst|Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector2~2_combout\ = ( \I2C_inst|Selector2~0_combout\ & ( \I2C_inst|Selector2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_Selector2~1_combout\,
	dataf => \I2C_inst|ALT_INV_Selector2~0_combout\,
	combout => \I2C_inst|Selector2~2_combout\);

-- Location: FF_X64_Y16_N20
\I2C_inst|flip\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector2~3_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|flip~q\);

-- Location: LABCELL_X64_Y16_N18
\I2C_inst|Selector2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector2~3_combout\ = ( \I2C_inst|flip~q\ & ( \I2C_inst|LessThan0~5_combout\ & ( (!\I2C_inst|Selector0~0_combout\) # (\I2C_inst|I2C_state.start1~DUPLICATE_q\) ) ) ) # ( !\I2C_inst|flip~q\ & ( \I2C_inst|LessThan0~5_combout\ & ( 
-- (!\I2C_inst|Selector2~2_combout\) # (\I2C_inst|I2C_state.start1~DUPLICATE_q\) ) ) ) # ( \I2C_inst|flip~q\ & ( !\I2C_inst|LessThan0~5_combout\ & ( ((!\I2C_inst|Selector0~0_combout\) # ((!\I2C_inst|clk_count[31]~DUPLICATE_q\ & 
-- !\I2C_inst|Selector2~2_combout\))) # (\I2C_inst|I2C_state.start1~DUPLICATE_q\) ) ) ) # ( !\I2C_inst|flip~q\ & ( !\I2C_inst|LessThan0~5_combout\ & ( (\I2C_inst|clk_count[31]~DUPLICATE_q\ & ((!\I2C_inst|Selector2~2_combout\) # 
-- (\I2C_inst|I2C_state.start1~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010001111110111111001111111111001100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\,
	datab => \I2C_inst|ALT_INV_I2C_state.start1~DUPLICATE_q\,
	datac => \I2C_inst|ALT_INV_Selector0~0_combout\,
	datad => \I2C_inst|ALT_INV_Selector2~2_combout\,
	datae => \I2C_inst|ALT_INV_flip~q\,
	dataf => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	combout => \I2C_inst|Selector2~3_combout\);

-- Location: FF_X64_Y16_N19
\I2C_inst|flip~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector2~3_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|flip~DUPLICATE_q\);

-- Location: LABCELL_X65_Y15_N54
\I2C_inst|Selector4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector4~3_combout\ = ( \I2C_inst|LessThan0~6_combout\ & ( (!\I2C_inst|Selector2~1_combout\ & (((\I2C_inst|ack_check~q\)) # (\I2C_inst|flip~DUPLICATE_q\))) # (\I2C_inst|Selector2~1_combout\ & (((!\I2C_inst|Selector4~2_combout\ & 
-- \I2C_inst|ack_check~q\)))) ) ) # ( !\I2C_inst|LessThan0~6_combout\ & ( (\I2C_inst|ack_check~q\ & ((!\I2C_inst|Selector2~1_combout\) # (!\I2C_inst|Selector4~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110001000100111111000100010011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_flip~DUPLICATE_q\,
	datab => \I2C_inst|ALT_INV_Selector2~1_combout\,
	datac => \I2C_inst|ALT_INV_Selector4~2_combout\,
	datad => \I2C_inst|ALT_INV_ack_check~q\,
	dataf => \I2C_inst|ALT_INV_LessThan0~6_combout\,
	combout => \I2C_inst|Selector4~3_combout\);

-- Location: FF_X65_Y15_N56
\I2C_inst|ack_check\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector4~3_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|ack_check~q\);

-- Location: LABCELL_X65_Y15_N57
\I2C_inst|reg_index~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|reg_index~0_combout\ = ( \I2C_inst|clk_count\(31) & ( (!\I2C_inst|flip~DUPLICATE_q\ & \I2C_inst|ack_check~q\) ) ) # ( !\I2C_inst|clk_count\(31) & ( (!\I2C_inst|flip~DUPLICATE_q\ & (\I2C_inst|LessThan0~5_combout\ & \I2C_inst|ack_check~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_flip~DUPLICATE_q\,
	datac => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	datad => \I2C_inst|ALT_INV_ack_check~q\,
	dataf => \I2C_inst|ALT_INV_clk_count\(31),
	combout => \I2C_inst|reg_index~0_combout\);

-- Location: LABCELL_X64_Y15_N36
\I2C_inst|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector9~0_combout\ = ( !\I2C_inst|ack~q\ & ( \I2C_inst|I2C_state.ack0~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_I2C_state.ack0~DUPLICATE_q\,
	dataf => \I2C_inst|ALT_INV_ack~q\,
	combout => \I2C_inst|Selector9~0_combout\);

-- Location: FF_X63_Y15_N41
\I2C_inst|I2C_state.start1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \I2C_inst|I2C_state.start0~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \I2C_inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|I2C_state.start1~q\);

-- Location: LABCELL_X64_Y15_N6
\I2C_inst|Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector9~1_combout\ = ( \I2C_inst|I2C_state.send0~q\ & ( \I2C_inst|ack~0_combout\ & ( (!\I2C_inst|LessThan0~6_combout\ & (\I2C_inst|reg_index~0_combout\ & (\I2C_inst|Selector9~0_combout\))) # (\I2C_inst|LessThan0~6_combout\ & 
-- (((\I2C_inst|reg_index~0_combout\ & \I2C_inst|Selector9~0_combout\)) # (\I2C_inst|I2C_state.start1~q\))) ) ) ) # ( !\I2C_inst|I2C_state.send0~q\ & ( \I2C_inst|ack~0_combout\ & ( (!\I2C_inst|LessThan0~6_combout\ & (\I2C_inst|reg_index~0_combout\ & 
-- (\I2C_inst|Selector9~0_combout\))) # (\I2C_inst|LessThan0~6_combout\ & (((\I2C_inst|reg_index~0_combout\ & \I2C_inst|Selector9~0_combout\)) # (\I2C_inst|I2C_state.start1~q\))) ) ) ) # ( \I2C_inst|I2C_state.send0~q\ & ( !\I2C_inst|ack~0_combout\ ) ) # ( 
-- !\I2C_inst|I2C_state.send0~q\ & ( !\I2C_inst|ack~0_combout\ & ( (!\I2C_inst|LessThan0~6_combout\ & (\I2C_inst|reg_index~0_combout\ & (\I2C_inst|Selector9~0_combout\))) # (\I2C_inst|LessThan0~6_combout\ & (((\I2C_inst|reg_index~0_combout\ & 
-- \I2C_inst|Selector9~0_combout\)) # (\I2C_inst|I2C_state.start1~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111111111111111111100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_LessThan0~6_combout\,
	datab => \I2C_inst|ALT_INV_reg_index~0_combout\,
	datac => \I2C_inst|ALT_INV_Selector9~0_combout\,
	datad => \I2C_inst|ALT_INV_I2C_state.start1~q\,
	datae => \I2C_inst|ALT_INV_I2C_state.send0~q\,
	dataf => \I2C_inst|ALT_INV_ack~0_combout\,
	combout => \I2C_inst|Selector9~1_combout\);

-- Location: FF_X64_Y15_N8
\I2C_inst|I2C_state.send0~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector9~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|I2C_state.send0~DUPLICATE_q\);

-- Location: LABCELL_X64_Y15_N48
\I2C_inst|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector2~0_combout\ = ( !\I2C_inst|I2C_state.send1~q\ & ( (!\I2C_inst|I2C_state.send0~DUPLICATE_q\ & !\I2C_inst|I2C_state.send2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_I2C_state.send0~DUPLICATE_q\,
	datac => \I2C_inst|ALT_INV_I2C_state.send2~q\,
	dataf => \I2C_inst|ALT_INV_I2C_state.send1~q\,
	combout => \I2C_inst|Selector2~0_combout\);

-- Location: LABCELL_X64_Y15_N42
\I2C_inst|reg_index~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|reg_index~2_combout\ = ( !\I2C_inst|clk_count[31]~DUPLICATE_q\ & ( (\I2C_inst|reg_index\(31) & !\I2C_inst|LessThan0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_reg_index\(31),
	datac => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	dataf => \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\,
	combout => \I2C_inst|reg_index~2_combout\);

-- Location: LABCELL_X64_Y15_N18
\I2C_inst|Selector48~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector48~2_combout\ = ( \I2C_inst|flip~DUPLICATE_q\ & ( \I2C_inst|clk_count[31]~DUPLICATE_q\ & ( \I2C_inst|I2C_state.start1~q\ ) ) ) # ( !\I2C_inst|flip~DUPLICATE_q\ & ( \I2C_inst|clk_count[31]~DUPLICATE_q\ & ( ((\I2C_inst|ack_check~q\ & 
-- !\I2C_inst|Selector2~1_combout\)) # (\I2C_inst|I2C_state.start1~q\) ) ) ) # ( \I2C_inst|flip~DUPLICATE_q\ & ( !\I2C_inst|clk_count[31]~DUPLICATE_q\ & ( (\I2C_inst|LessThan0~5_combout\ & \I2C_inst|I2C_state.start1~q\) ) ) ) # ( !\I2C_inst|flip~DUPLICATE_q\ 
-- & ( !\I2C_inst|clk_count[31]~DUPLICATE_q\ & ( (\I2C_inst|LessThan0~5_combout\ & (((\I2C_inst|ack_check~q\ & !\I2C_inst|Selector2~1_combout\)) # (\I2C_inst|I2C_state.start1~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010101000000000101010100110000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	datab => \I2C_inst|ALT_INV_ack_check~q\,
	datac => \I2C_inst|ALT_INV_Selector2~1_combout\,
	datad => \I2C_inst|ALT_INV_I2C_state.start1~q\,
	datae => \I2C_inst|ALT_INV_flip~DUPLICATE_q\,
	dataf => \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\,
	combout => \I2C_inst|Selector48~2_combout\);

-- Location: LABCELL_X63_Y15_N3
\I2C_inst|reg_index~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|reg_index~1_combout\ = ( \I2C_inst|clk_count[31]~DUPLICATE_q\ & ( !\I2C_inst|flip~DUPLICATE_q\ ) ) # ( !\I2C_inst|clk_count[31]~DUPLICATE_q\ & ( (!\I2C_inst|flip~DUPLICATE_q\ & \I2C_inst|LessThan0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_flip~DUPLICATE_q\,
	datab => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	dataf => \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\,
	combout => \I2C_inst|reg_index~1_combout\);

-- Location: FF_X64_Y15_N31
\I2C_inst|reg_index[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector48~3_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index[31]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y15_N57
\I2C_inst|reg_index[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|reg_index[0]~3_combout\ = ( \I2C_inst|flip~DUPLICATE_q\ & ( !\I2C_inst|Selector2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_Selector2~0_combout\,
	datae => \I2C_inst|ALT_INV_flip~DUPLICATE_q\,
	combout => \I2C_inst|reg_index[0]~3_combout\);

-- Location: MLABCELL_X60_Y15_N0
\I2C_inst|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~17_sumout\ = SUM(( !\I2C_inst|reg_index\(0) ) + ( VCC ) + ( !VCC ))
-- \I2C_inst|Add1~18\ = CARRY(( !\I2C_inst|reg_index\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_reg_index\(0),
	cin => GND,
	sumout => \I2C_inst|Add1~17_sumout\,
	cout => \I2C_inst|Add1~18\);

-- Location: LABCELL_X61_Y15_N9
\I2C_inst|Selector79~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector79~0_combout\ = (!\I2C_inst|Add1~17_sumout\ & !\I2C_inst|reg_index[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_Add1~17_sumout\,
	datad => \I2C_inst|ALT_INV_reg_index[0]~3_combout\,
	combout => \I2C_inst|Selector79~0_combout\);

-- Location: LABCELL_X64_Y15_N27
\I2C_inst|reg_index[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|reg_index[0]~4_combout\ = ( \I2C_inst|I2C_state.send1~q\ & ( (!\I2C_inst|reg_index[31]~DUPLICATE_q\ & \I2C_inst|flip~DUPLICATE_q\) ) ) # ( !\I2C_inst|I2C_state.send1~q\ & ( (!\I2C_inst|reg_index[31]~DUPLICATE_q\ & 
-- (((!\I2C_inst|I2C_state.send0~q\ & !\I2C_inst|I2C_state.send2~DUPLICATE_q\)) # (\I2C_inst|flip~DUPLICATE_q\))) # (\I2C_inst|reg_index[31]~DUPLICATE_q\ & (!\I2C_inst|I2C_state.send0~q\ & (!\I2C_inst|I2C_state.send2~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011101010110000001110101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_reg_index[31]~DUPLICATE_q\,
	datab => \I2C_inst|ALT_INV_I2C_state.send0~q\,
	datac => \I2C_inst|ALT_INV_I2C_state.send2~DUPLICATE_q\,
	datad => \I2C_inst|ALT_INV_flip~DUPLICATE_q\,
	dataf => \I2C_inst|ALT_INV_I2C_state.send1~q\,
	combout => \I2C_inst|reg_index[0]~4_combout\);

-- Location: LABCELL_X64_Y15_N54
\I2C_inst|reg_index[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|reg_index[0]~5_combout\ = ( \I2C_inst|reg_index[0]~4_combout\ & ( \I2C_inst|I2C_state.start1~q\ & ( (\I2C_inst|LessThan0~6_combout\ & \reset~input_o\) ) ) ) # ( !\I2C_inst|reg_index[0]~4_combout\ & ( \I2C_inst|I2C_state.start1~q\ & ( 
-- (\I2C_inst|LessThan0~6_combout\ & \reset~input_o\) ) ) ) # ( \I2C_inst|reg_index[0]~4_combout\ & ( !\I2C_inst|I2C_state.start1~q\ & ( (!\I2C_inst|Selector2~1_combout\ & (\I2C_inst|reg_index~0_combout\ & \reset~input_o\)) ) ) ) # ( 
-- !\I2C_inst|reg_index[0]~4_combout\ & ( !\I2C_inst|I2C_state.start1~q\ & ( (\reset~input_o\ & (((!\I2C_inst|Selector2~1_combout\ & \I2C_inst|reg_index~0_combout\)) # (\I2C_inst|LessThan0~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101111000000000010001000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_Selector2~1_combout\,
	datab => \I2C_inst|ALT_INV_reg_index~0_combout\,
	datac => \I2C_inst|ALT_INV_LessThan0~6_combout\,
	datad => \ALT_INV_reset~input_o\,
	datae => \I2C_inst|ALT_INV_reg_index[0]~4_combout\,
	dataf => \I2C_inst|ALT_INV_I2C_state.start1~q\,
	combout => \I2C_inst|reg_index[0]~5_combout\);

-- Location: FF_X61_Y15_N11
\I2C_inst|reg_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector79~0_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(0));

-- Location: MLABCELL_X60_Y15_N3
\I2C_inst|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~13_sumout\ = SUM(( !\I2C_inst|reg_index\(1) ) + ( VCC ) + ( \I2C_inst|Add1~18\ ))
-- \I2C_inst|Add1~14\ = CARRY(( !\I2C_inst|reg_index\(1) ) + ( VCC ) + ( \I2C_inst|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_reg_index\(1),
	cin => \I2C_inst|Add1~18\,
	sumout => \I2C_inst|Add1~13_sumout\,
	cout => \I2C_inst|Add1~14\);

-- Location: LABCELL_X61_Y15_N0
\I2C_inst|Selector78~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector78~0_combout\ = ( !\I2C_inst|Add1~13_sumout\ & ( !\I2C_inst|reg_index[0]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_reg_index[0]~3_combout\,
	dataf => \I2C_inst|ALT_INV_Add1~13_sumout\,
	combout => \I2C_inst|Selector78~0_combout\);

-- Location: FF_X61_Y15_N2
\I2C_inst|reg_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector78~0_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(1));

-- Location: MLABCELL_X60_Y15_N6
\I2C_inst|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~9_sumout\ = SUM(( !\I2C_inst|reg_index\(2) ) + ( VCC ) + ( \I2C_inst|Add1~14\ ))
-- \I2C_inst|Add1~10\ = CARRY(( !\I2C_inst|reg_index\(2) ) + ( VCC ) + ( \I2C_inst|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_reg_index\(2),
	cin => \I2C_inst|Add1~14\,
	sumout => \I2C_inst|Add1~9_sumout\,
	cout => \I2C_inst|Add1~10\);

-- Location: LABCELL_X61_Y15_N3
\I2C_inst|Selector77~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector77~0_combout\ = (!\I2C_inst|reg_index[0]~3_combout\ & !\I2C_inst|Add1~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_reg_index[0]~3_combout\,
	datad => \I2C_inst|ALT_INV_Add1~9_sumout\,
	combout => \I2C_inst|Selector77~0_combout\);

-- Location: FF_X61_Y15_N5
\I2C_inst|reg_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector77~0_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(2));

-- Location: MLABCELL_X60_Y15_N9
\I2C_inst|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~125_sumout\ = SUM(( \I2C_inst|reg_index\(3) ) + ( VCC ) + ( \I2C_inst|Add1~10\ ))
-- \I2C_inst|Add1~126\ = CARRY(( \I2C_inst|reg_index\(3) ) + ( VCC ) + ( \I2C_inst|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_reg_index\(3),
	cin => \I2C_inst|Add1~10\,
	sumout => \I2C_inst|Add1~125_sumout\,
	cout => \I2C_inst|Add1~126\);

-- Location: FF_X60_Y15_N11
\I2C_inst|reg_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~125_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(3));

-- Location: MLABCELL_X60_Y15_N12
\I2C_inst|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~121_sumout\ = SUM(( \I2C_inst|reg_index\(4) ) + ( VCC ) + ( \I2C_inst|Add1~126\ ))
-- \I2C_inst|Add1~122\ = CARRY(( \I2C_inst|reg_index\(4) ) + ( VCC ) + ( \I2C_inst|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_reg_index\(4),
	cin => \I2C_inst|Add1~126\,
	sumout => \I2C_inst|Add1~121_sumout\,
	cout => \I2C_inst|Add1~122\);

-- Location: FF_X60_Y15_N14
\I2C_inst|reg_index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~121_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(4));

-- Location: MLABCELL_X60_Y15_N15
\I2C_inst|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~117_sumout\ = SUM(( \I2C_inst|reg_index\(5) ) + ( VCC ) + ( \I2C_inst|Add1~122\ ))
-- \I2C_inst|Add1~118\ = CARRY(( \I2C_inst|reg_index\(5) ) + ( VCC ) + ( \I2C_inst|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_reg_index\(5),
	cin => \I2C_inst|Add1~122\,
	sumout => \I2C_inst|Add1~117_sumout\,
	cout => \I2C_inst|Add1~118\);

-- Location: FF_X60_Y15_N17
\I2C_inst|reg_index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~117_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(5));

-- Location: MLABCELL_X60_Y15_N18
\I2C_inst|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~113_sumout\ = SUM(( \I2C_inst|reg_index\(6) ) + ( VCC ) + ( \I2C_inst|Add1~118\ ))
-- \I2C_inst|Add1~114\ = CARRY(( \I2C_inst|reg_index\(6) ) + ( VCC ) + ( \I2C_inst|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_reg_index\(6),
	cin => \I2C_inst|Add1~118\,
	sumout => \I2C_inst|Add1~113_sumout\,
	cout => \I2C_inst|Add1~114\);

-- Location: FF_X60_Y15_N20
\I2C_inst|reg_index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~113_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(6));

-- Location: MLABCELL_X60_Y15_N21
\I2C_inst|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~109_sumout\ = SUM(( \I2C_inst|reg_index\(7) ) + ( VCC ) + ( \I2C_inst|Add1~114\ ))
-- \I2C_inst|Add1~110\ = CARRY(( \I2C_inst|reg_index\(7) ) + ( VCC ) + ( \I2C_inst|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_reg_index\(7),
	cin => \I2C_inst|Add1~114\,
	sumout => \I2C_inst|Add1~109_sumout\,
	cout => \I2C_inst|Add1~110\);

-- Location: FF_X60_Y15_N23
\I2C_inst|reg_index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~109_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(7));

-- Location: MLABCELL_X60_Y15_N24
\I2C_inst|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~105_sumout\ = SUM(( \I2C_inst|reg_index\(8) ) + ( VCC ) + ( \I2C_inst|Add1~110\ ))
-- \I2C_inst|Add1~106\ = CARRY(( \I2C_inst|reg_index\(8) ) + ( VCC ) + ( \I2C_inst|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_reg_index\(8),
	cin => \I2C_inst|Add1~110\,
	sumout => \I2C_inst|Add1~105_sumout\,
	cout => \I2C_inst|Add1~106\);

-- Location: FF_X60_Y15_N26
\I2C_inst|reg_index[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~105_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(8));

-- Location: MLABCELL_X60_Y15_N27
\I2C_inst|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~101_sumout\ = SUM(( \I2C_inst|reg_index\(9) ) + ( VCC ) + ( \I2C_inst|Add1~106\ ))
-- \I2C_inst|Add1~102\ = CARRY(( \I2C_inst|reg_index\(9) ) + ( VCC ) + ( \I2C_inst|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_reg_index\(9),
	cin => \I2C_inst|Add1~106\,
	sumout => \I2C_inst|Add1~101_sumout\,
	cout => \I2C_inst|Add1~102\);

-- Location: FF_X60_Y15_N29
\I2C_inst|reg_index[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~101_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(9));

-- Location: MLABCELL_X60_Y15_N30
\I2C_inst|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~97_sumout\ = SUM(( \I2C_inst|reg_index\(10) ) + ( VCC ) + ( \I2C_inst|Add1~102\ ))
-- \I2C_inst|Add1~98\ = CARRY(( \I2C_inst|reg_index\(10) ) + ( VCC ) + ( \I2C_inst|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_reg_index\(10),
	cin => \I2C_inst|Add1~102\,
	sumout => \I2C_inst|Add1~97_sumout\,
	cout => \I2C_inst|Add1~98\);

-- Location: FF_X60_Y15_N31
\I2C_inst|reg_index[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~97_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(10));

-- Location: MLABCELL_X60_Y15_N33
\I2C_inst|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~93_sumout\ = SUM(( \I2C_inst|reg_index\(11) ) + ( VCC ) + ( \I2C_inst|Add1~98\ ))
-- \I2C_inst|Add1~94\ = CARRY(( \I2C_inst|reg_index\(11) ) + ( VCC ) + ( \I2C_inst|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_reg_index\(11),
	cin => \I2C_inst|Add1~98\,
	sumout => \I2C_inst|Add1~93_sumout\,
	cout => \I2C_inst|Add1~94\);

-- Location: FF_X60_Y15_N35
\I2C_inst|reg_index[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~93_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(11));

-- Location: MLABCELL_X60_Y15_N36
\I2C_inst|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~89_sumout\ = SUM(( \I2C_inst|reg_index\(12) ) + ( VCC ) + ( \I2C_inst|Add1~94\ ))
-- \I2C_inst|Add1~90\ = CARRY(( \I2C_inst|reg_index\(12) ) + ( VCC ) + ( \I2C_inst|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_reg_index\(12),
	cin => \I2C_inst|Add1~94\,
	sumout => \I2C_inst|Add1~89_sumout\,
	cout => \I2C_inst|Add1~90\);

-- Location: FF_X60_Y15_N38
\I2C_inst|reg_index[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~89_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(12));

-- Location: MLABCELL_X60_Y15_N39
\I2C_inst|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~85_sumout\ = SUM(( \I2C_inst|reg_index\(13) ) + ( VCC ) + ( \I2C_inst|Add1~90\ ))
-- \I2C_inst|Add1~86\ = CARRY(( \I2C_inst|reg_index\(13) ) + ( VCC ) + ( \I2C_inst|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_reg_index\(13),
	cin => \I2C_inst|Add1~90\,
	sumout => \I2C_inst|Add1~85_sumout\,
	cout => \I2C_inst|Add1~86\);

-- Location: FF_X60_Y15_N41
\I2C_inst|reg_index[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~85_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(13));

-- Location: MLABCELL_X60_Y15_N42
\I2C_inst|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~81_sumout\ = SUM(( \I2C_inst|reg_index\(14) ) + ( VCC ) + ( \I2C_inst|Add1~86\ ))
-- \I2C_inst|Add1~82\ = CARRY(( \I2C_inst|reg_index\(14) ) + ( VCC ) + ( \I2C_inst|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_reg_index\(14),
	cin => \I2C_inst|Add1~86\,
	sumout => \I2C_inst|Add1~81_sumout\,
	cout => \I2C_inst|Add1~82\);

-- Location: FF_X60_Y15_N43
\I2C_inst|reg_index[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~81_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(14));

-- Location: MLABCELL_X60_Y15_N45
\I2C_inst|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~77_sumout\ = SUM(( \I2C_inst|reg_index\(15) ) + ( VCC ) + ( \I2C_inst|Add1~82\ ))
-- \I2C_inst|Add1~78\ = CARRY(( \I2C_inst|reg_index\(15) ) + ( VCC ) + ( \I2C_inst|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_reg_index\(15),
	cin => \I2C_inst|Add1~82\,
	sumout => \I2C_inst|Add1~77_sumout\,
	cout => \I2C_inst|Add1~78\);

-- Location: FF_X60_Y15_N47
\I2C_inst|reg_index[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~77_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(15));

-- Location: MLABCELL_X60_Y15_N48
\I2C_inst|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~73_sumout\ = SUM(( \I2C_inst|reg_index\(16) ) + ( VCC ) + ( \I2C_inst|Add1~78\ ))
-- \I2C_inst|Add1~74\ = CARRY(( \I2C_inst|reg_index\(16) ) + ( VCC ) + ( \I2C_inst|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_reg_index\(16),
	cin => \I2C_inst|Add1~78\,
	sumout => \I2C_inst|Add1~73_sumout\,
	cout => \I2C_inst|Add1~74\);

-- Location: FF_X60_Y15_N50
\I2C_inst|reg_index[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~73_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(16));

-- Location: MLABCELL_X60_Y15_N51
\I2C_inst|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~69_sumout\ = SUM(( \I2C_inst|reg_index\(17) ) + ( VCC ) + ( \I2C_inst|Add1~74\ ))
-- \I2C_inst|Add1~70\ = CARRY(( \I2C_inst|reg_index\(17) ) + ( VCC ) + ( \I2C_inst|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_reg_index\(17),
	cin => \I2C_inst|Add1~74\,
	sumout => \I2C_inst|Add1~69_sumout\,
	cout => \I2C_inst|Add1~70\);

-- Location: FF_X60_Y15_N52
\I2C_inst|reg_index[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~69_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(17));

-- Location: MLABCELL_X60_Y15_N54
\I2C_inst|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~65_sumout\ = SUM(( \I2C_inst|reg_index\(18) ) + ( VCC ) + ( \I2C_inst|Add1~70\ ))
-- \I2C_inst|Add1~66\ = CARRY(( \I2C_inst|reg_index\(18) ) + ( VCC ) + ( \I2C_inst|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_reg_index\(18),
	cin => \I2C_inst|Add1~70\,
	sumout => \I2C_inst|Add1~65_sumout\,
	cout => \I2C_inst|Add1~66\);

-- Location: FF_X60_Y15_N56
\I2C_inst|reg_index[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~65_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(18));

-- Location: MLABCELL_X60_Y15_N57
\I2C_inst|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~61_sumout\ = SUM(( \I2C_inst|reg_index\(19) ) + ( VCC ) + ( \I2C_inst|Add1~66\ ))
-- \I2C_inst|Add1~62\ = CARRY(( \I2C_inst|reg_index\(19) ) + ( VCC ) + ( \I2C_inst|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_reg_index\(19),
	cin => \I2C_inst|Add1~66\,
	sumout => \I2C_inst|Add1~61_sumout\,
	cout => \I2C_inst|Add1~62\);

-- Location: FF_X60_Y15_N59
\I2C_inst|reg_index[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~61_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(19));

-- Location: MLABCELL_X60_Y14_N0
\I2C_inst|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~57_sumout\ = SUM(( \I2C_inst|reg_index\(20) ) + ( VCC ) + ( \I2C_inst|Add1~62\ ))
-- \I2C_inst|Add1~58\ = CARRY(( \I2C_inst|reg_index\(20) ) + ( VCC ) + ( \I2C_inst|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_reg_index\(20),
	cin => \I2C_inst|Add1~62\,
	sumout => \I2C_inst|Add1~57_sumout\,
	cout => \I2C_inst|Add1~58\);

-- Location: FF_X60_Y14_N2
\I2C_inst|reg_index[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~57_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(20));

-- Location: MLABCELL_X60_Y14_N3
\I2C_inst|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~53_sumout\ = SUM(( \I2C_inst|reg_index\(21) ) + ( VCC ) + ( \I2C_inst|Add1~58\ ))
-- \I2C_inst|Add1~54\ = CARRY(( \I2C_inst|reg_index\(21) ) + ( VCC ) + ( \I2C_inst|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_reg_index\(21),
	cin => \I2C_inst|Add1~58\,
	sumout => \I2C_inst|Add1~53_sumout\,
	cout => \I2C_inst|Add1~54\);

-- Location: FF_X60_Y14_N5
\I2C_inst|reg_index[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~53_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(21));

-- Location: MLABCELL_X60_Y14_N6
\I2C_inst|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~49_sumout\ = SUM(( \I2C_inst|reg_index\(22) ) + ( VCC ) + ( \I2C_inst|Add1~54\ ))
-- \I2C_inst|Add1~50\ = CARRY(( \I2C_inst|reg_index\(22) ) + ( VCC ) + ( \I2C_inst|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_reg_index\(22),
	cin => \I2C_inst|Add1~54\,
	sumout => \I2C_inst|Add1~49_sumout\,
	cout => \I2C_inst|Add1~50\);

-- Location: FF_X60_Y14_N7
\I2C_inst|reg_index[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~49_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(22));

-- Location: MLABCELL_X60_Y14_N9
\I2C_inst|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~45_sumout\ = SUM(( \I2C_inst|reg_index\(23) ) + ( VCC ) + ( \I2C_inst|Add1~50\ ))
-- \I2C_inst|Add1~46\ = CARRY(( \I2C_inst|reg_index\(23) ) + ( VCC ) + ( \I2C_inst|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_reg_index\(23),
	cin => \I2C_inst|Add1~50\,
	sumout => \I2C_inst|Add1~45_sumout\,
	cout => \I2C_inst|Add1~46\);

-- Location: FF_X60_Y14_N11
\I2C_inst|reg_index[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~45_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(23));

-- Location: MLABCELL_X60_Y14_N12
\I2C_inst|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~41_sumout\ = SUM(( \I2C_inst|reg_index\(24) ) + ( VCC ) + ( \I2C_inst|Add1~46\ ))
-- \I2C_inst|Add1~42\ = CARRY(( \I2C_inst|reg_index\(24) ) + ( VCC ) + ( \I2C_inst|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_reg_index\(24),
	cin => \I2C_inst|Add1~46\,
	sumout => \I2C_inst|Add1~41_sumout\,
	cout => \I2C_inst|Add1~42\);

-- Location: FF_X60_Y14_N14
\I2C_inst|reg_index[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~41_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(24));

-- Location: MLABCELL_X60_Y14_N15
\I2C_inst|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~37_sumout\ = SUM(( \I2C_inst|reg_index\(25) ) + ( VCC ) + ( \I2C_inst|Add1~42\ ))
-- \I2C_inst|Add1~38\ = CARRY(( \I2C_inst|reg_index\(25) ) + ( VCC ) + ( \I2C_inst|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_reg_index\(25),
	cin => \I2C_inst|Add1~42\,
	sumout => \I2C_inst|Add1~37_sumout\,
	cout => \I2C_inst|Add1~38\);

-- Location: FF_X60_Y14_N17
\I2C_inst|reg_index[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~37_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(25));

-- Location: MLABCELL_X60_Y14_N18
\I2C_inst|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~33_sumout\ = SUM(( \I2C_inst|reg_index\(26) ) + ( VCC ) + ( \I2C_inst|Add1~38\ ))
-- \I2C_inst|Add1~34\ = CARRY(( \I2C_inst|reg_index\(26) ) + ( VCC ) + ( \I2C_inst|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_reg_index\(26),
	cin => \I2C_inst|Add1~38\,
	sumout => \I2C_inst|Add1~33_sumout\,
	cout => \I2C_inst|Add1~34\);

-- Location: FF_X60_Y14_N20
\I2C_inst|reg_index[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~33_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(26));

-- Location: MLABCELL_X60_Y14_N21
\I2C_inst|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~29_sumout\ = SUM(( \I2C_inst|reg_index\(27) ) + ( VCC ) + ( \I2C_inst|Add1~34\ ))
-- \I2C_inst|Add1~30\ = CARRY(( \I2C_inst|reg_index\(27) ) + ( VCC ) + ( \I2C_inst|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_reg_index\(27),
	cin => \I2C_inst|Add1~34\,
	sumout => \I2C_inst|Add1~29_sumout\,
	cout => \I2C_inst|Add1~30\);

-- Location: FF_X60_Y14_N23
\I2C_inst|reg_index[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~29_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(27));

-- Location: MLABCELL_X60_Y14_N24
\I2C_inst|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~25_sumout\ = SUM(( \I2C_inst|reg_index\(28) ) + ( VCC ) + ( \I2C_inst|Add1~30\ ))
-- \I2C_inst|Add1~26\ = CARRY(( \I2C_inst|reg_index\(28) ) + ( VCC ) + ( \I2C_inst|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_reg_index\(28),
	cin => \I2C_inst|Add1~30\,
	sumout => \I2C_inst|Add1~25_sumout\,
	cout => \I2C_inst|Add1~26\);

-- Location: FF_X60_Y14_N26
\I2C_inst|reg_index[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~25_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(28));

-- Location: MLABCELL_X60_Y14_N27
\I2C_inst|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~21_sumout\ = SUM(( \I2C_inst|reg_index\(29) ) + ( VCC ) + ( \I2C_inst|Add1~26\ ))
-- \I2C_inst|Add1~22\ = CARRY(( \I2C_inst|reg_index\(29) ) + ( VCC ) + ( \I2C_inst|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_reg_index\(29),
	cin => \I2C_inst|Add1~26\,
	sumout => \I2C_inst|Add1~21_sumout\,
	cout => \I2C_inst|Add1~22\);

-- Location: FF_X60_Y14_N29
\I2C_inst|reg_index[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~21_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(29));

-- Location: MLABCELL_X60_Y14_N30
\I2C_inst|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~5_sumout\ = SUM(( \I2C_inst|reg_index\(30) ) + ( VCC ) + ( \I2C_inst|Add1~22\ ))
-- \I2C_inst|Add1~6\ = CARRY(( \I2C_inst|reg_index\(30) ) + ( VCC ) + ( \I2C_inst|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_reg_index\(30),
	cin => \I2C_inst|Add1~22\,
	sumout => \I2C_inst|Add1~5_sumout\,
	cout => \I2C_inst|Add1~6\);

-- Location: FF_X60_Y14_N32
\I2C_inst|reg_index[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add1~5_sumout\,
	sclr => \I2C_inst|reg_index[0]~3_combout\,
	ena => \I2C_inst|reg_index[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(30));

-- Location: MLABCELL_X60_Y14_N33
\I2C_inst|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add1~1_sumout\ = SUM(( \I2C_inst|reg_index[31]~DUPLICATE_q\ ) + ( VCC ) + ( \I2C_inst|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_reg_index[31]~DUPLICATE_q\,
	cin => \I2C_inst|Add1~6\,
	sumout => \I2C_inst|Add1~1_sumout\);

-- Location: LABCELL_X64_Y16_N27
\I2C_inst|Selector48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector48~0_combout\ = ( \I2C_inst|Selector0~0_combout\ & ( (\I2C_inst|I2C_state.idle~DUPLICATE_q\ & (((!\I2C_inst|I2C_state.start1~DUPLICATE_q\) # (\I2C_inst|LessThan0~5_combout\)) # (\I2C_inst|clk_count[31]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000100110011001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\,
	datab => \I2C_inst|ALT_INV_I2C_state.idle~DUPLICATE_q\,
	datac => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	datad => \I2C_inst|ALT_INV_I2C_state.start1~DUPLICATE_q\,
	dataf => \I2C_inst|ALT_INV_Selector0~0_combout\,
	combout => \I2C_inst|Selector48~0_combout\);

-- Location: LABCELL_X64_Y15_N45
\I2C_inst|Selector48~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector48~1_combout\ = ( \I2C_inst|Selector48~0_combout\ & ( (\I2C_inst|reg_index\(31) & (!\I2C_inst|reg_index~0_combout\ & !\I2C_inst|Selector2~1_combout\)) ) ) # ( !\I2C_inst|Selector48~0_combout\ & ( \I2C_inst|reg_index\(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_reg_index\(31),
	datac => \I2C_inst|ALT_INV_reg_index~0_combout\,
	datad => \I2C_inst|ALT_INV_Selector2~1_combout\,
	dataf => \I2C_inst|ALT_INV_Selector48~0_combout\,
	combout => \I2C_inst|Selector48~1_combout\);

-- Location: LABCELL_X64_Y15_N30
\I2C_inst|Selector48~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector48~3_combout\ = ( \I2C_inst|Add1~1_sumout\ & ( \I2C_inst|Selector48~1_combout\ ) ) # ( !\I2C_inst|Add1~1_sumout\ & ( \I2C_inst|Selector48~1_combout\ ) ) # ( \I2C_inst|Add1~1_sumout\ & ( !\I2C_inst|Selector48~1_combout\ & ( 
-- ((!\I2C_inst|Selector2~0_combout\ & ((\I2C_inst|reg_index~1_combout\) # (\I2C_inst|reg_index~2_combout\)))) # (\I2C_inst|Selector48~2_combout\) ) ) ) # ( !\I2C_inst|Add1~1_sumout\ & ( !\I2C_inst|Selector48~1_combout\ & ( (!\I2C_inst|Selector2~0_combout\ & 
-- \I2C_inst|reg_index~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001011111010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_Selector2~0_combout\,
	datab => \I2C_inst|ALT_INV_reg_index~2_combout\,
	datac => \I2C_inst|ALT_INV_Selector48~2_combout\,
	datad => \I2C_inst|ALT_INV_reg_index~1_combout\,
	datae => \I2C_inst|ALT_INV_Add1~1_sumout\,
	dataf => \I2C_inst|ALT_INV_Selector48~1_combout\,
	combout => \I2C_inst|Selector48~3_combout\);

-- Location: FF_X64_Y15_N32
\I2C_inst|reg_index[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector48~3_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|reg_index\(31));

-- Location: LABCELL_X63_Y15_N18
\I2C_inst|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector14~0_combout\ = ( \I2C_inst|I2C_state.stop0~q\ & ( \I2C_inst|I2C_state.send2~DUPLICATE_q\ & ( (!\I2C_inst|reg_index\(31) & (!\I2C_inst|LessThan0~5_combout\ & (!\I2C_inst|clk_count[31]~DUPLICATE_q\))) # (\I2C_inst|reg_index\(31) & 
-- (((!\I2C_inst|LessThan0~5_combout\ & !\I2C_inst|clk_count[31]~DUPLICATE_q\)) # (\I2C_inst|flip~DUPLICATE_q\))) ) ) ) # ( !\I2C_inst|I2C_state.stop0~q\ & ( \I2C_inst|I2C_state.send2~DUPLICATE_q\ & ( (\I2C_inst|reg_index\(31) & (\I2C_inst|flip~DUPLICATE_q\ 
-- & ((\I2C_inst|clk_count[31]~DUPLICATE_q\) # (\I2C_inst|LessThan0~5_combout\)))) ) ) ) # ( \I2C_inst|I2C_state.stop0~q\ & ( !\I2C_inst|I2C_state.send2~DUPLICATE_q\ & ( (!\I2C_inst|LessThan0~5_combout\ & !\I2C_inst|clk_count[31]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000000000000101011100000011010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_reg_index\(31),
	datab => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	datac => \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\,
	datad => \I2C_inst|ALT_INV_flip~DUPLICATE_q\,
	datae => \I2C_inst|ALT_INV_I2C_state.stop0~q\,
	dataf => \I2C_inst|ALT_INV_I2C_state.send2~DUPLICATE_q\,
	combout => \I2C_inst|Selector14~0_combout\);

-- Location: FF_X63_Y15_N20
\I2C_inst|I2C_state.stop0~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector14~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|I2C_state.stop0~DUPLICATE_q\);

-- Location: FF_X63_Y15_N58
\I2C_inst|I2C_state.stop1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \I2C_inst|I2C_state.stop0~DUPLICATE_q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \I2C_inst|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|I2C_state.stop1~q\);

-- Location: LABCELL_X67_Y16_N9
\I2C_inst|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector6~0_combout\ = ( \I2C_inst|clk_count[31]~DUPLICATE_q\ & ( !\I2C_inst|I2C_state.stop1~q\ ) ) # ( !\I2C_inst|clk_count[31]~DUPLICATE_q\ & ( (!\I2C_inst|LessThan0~5_combout\) # (!\I2C_inst|I2C_state.stop1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	datac => \I2C_inst|ALT_INV_I2C_state.stop1~q\,
	dataf => \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\,
	combout => \I2C_inst|Selector6~0_combout\);

-- Location: FF_X67_Y16_N10
\I2C_inst|I2C_state.idle~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector6~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|I2C_state.idle~DUPLICATE_q\);

-- Location: LABCELL_X64_Y16_N24
\I2C_inst|clk_count[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|clk_count[7]~0_combout\ = ( \reset~input_o\ & ( \I2C_inst|I2C_state.idle~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_I2C_state.idle~DUPLICATE_q\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \I2C_inst|clk_count[7]~0_combout\);

-- Location: FF_X64_Y16_N55
\I2C_inst|clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector47~0_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(0));

-- Location: LABCELL_X65_Y16_N3
\I2C_inst|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~121_sumout\ = SUM(( \I2C_inst|clk_count\(1) ) + ( VCC ) + ( \I2C_inst|Add0~98\ ))
-- \I2C_inst|Add0~122\ = CARRY(( \I2C_inst|clk_count\(1) ) + ( VCC ) + ( \I2C_inst|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count\(1),
	cin => \I2C_inst|Add0~98\,
	sumout => \I2C_inst|Add0~121_sumout\,
	cout => \I2C_inst|Add0~122\);

-- Location: FF_X65_Y16_N4
\I2C_inst|clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~121_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(1));

-- Location: LABCELL_X65_Y16_N6
\I2C_inst|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~125_sumout\ = SUM(( \I2C_inst|clk_count\(2) ) + ( VCC ) + ( \I2C_inst|Add0~122\ ))
-- \I2C_inst|Add0~126\ = CARRY(( \I2C_inst|clk_count\(2) ) + ( VCC ) + ( \I2C_inst|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_clk_count\(2),
	cin => \I2C_inst|Add0~122\,
	sumout => \I2C_inst|Add0~125_sumout\,
	cout => \I2C_inst|Add0~126\);

-- Location: FF_X65_Y16_N7
\I2C_inst|clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~125_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(2));

-- Location: LABCELL_X65_Y16_N9
\I2C_inst|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~57_sumout\ = SUM(( \I2C_inst|clk_count\(3) ) + ( VCC ) + ( \I2C_inst|Add0~126\ ))
-- \I2C_inst|Add0~58\ = CARRY(( \I2C_inst|clk_count\(3) ) + ( VCC ) + ( \I2C_inst|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_clk_count\(3),
	cin => \I2C_inst|Add0~126\,
	sumout => \I2C_inst|Add0~57_sumout\,
	cout => \I2C_inst|Add0~58\);

-- Location: FF_X65_Y16_N11
\I2C_inst|clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~57_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(3));

-- Location: LABCELL_X65_Y16_N12
\I2C_inst|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~61_sumout\ = SUM(( \I2C_inst|clk_count\(4) ) + ( VCC ) + ( \I2C_inst|Add0~58\ ))
-- \I2C_inst|Add0~62\ = CARRY(( \I2C_inst|clk_count\(4) ) + ( VCC ) + ( \I2C_inst|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_clk_count\(4),
	cin => \I2C_inst|Add0~58\,
	sumout => \I2C_inst|Add0~61_sumout\,
	cout => \I2C_inst|Add0~62\);

-- Location: FF_X65_Y16_N13
\I2C_inst|clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~61_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(4));

-- Location: LABCELL_X65_Y16_N15
\I2C_inst|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~93_sumout\ = SUM(( !\I2C_inst|clk_count\(5) ) + ( VCC ) + ( \I2C_inst|Add0~62\ ))
-- \I2C_inst|Add0~94\ = CARRY(( !\I2C_inst|clk_count\(5) ) + ( VCC ) + ( \I2C_inst|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count\(5),
	cin => \I2C_inst|Add0~62\,
	sumout => \I2C_inst|Add0~93_sumout\,
	cout => \I2C_inst|Add0~94\);

-- Location: LABCELL_X64_Y16_N51
\I2C_inst|Selector42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector42~0_combout\ = ( !\I2C_inst|LessThan0~5_combout\ & ( (!\I2C_inst|clk_count[31]~DUPLICATE_q\ & !\I2C_inst|Add0~93_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\,
	datad => \I2C_inst|ALT_INV_Add0~93_sumout\,
	dataf => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	combout => \I2C_inst|Selector42~0_combout\);

-- Location: FF_X64_Y16_N52
\I2C_inst|clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector42~0_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(5));

-- Location: LABCELL_X65_Y16_N18
\I2C_inst|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~89_sumout\ = SUM(( !\I2C_inst|clk_count\(6) ) + ( VCC ) + ( \I2C_inst|Add0~94\ ))
-- \I2C_inst|Add0~90\ = CARRY(( !\I2C_inst|clk_count\(6) ) + ( VCC ) + ( \I2C_inst|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_clk_count\(6),
	cin => \I2C_inst|Add0~94\,
	sumout => \I2C_inst|Add0~89_sumout\,
	cout => \I2C_inst|Add0~90\);

-- Location: LABCELL_X64_Y16_N48
\I2C_inst|Selector41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector41~0_combout\ = ( !\I2C_inst|LessThan0~5_combout\ & ( (!\I2C_inst|clk_count[31]~DUPLICATE_q\ & !\I2C_inst|Add0~89_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\,
	datac => \I2C_inst|ALT_INV_Add0~89_sumout\,
	dataf => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	combout => \I2C_inst|Selector41~0_combout\);

-- Location: FF_X64_Y16_N49
\I2C_inst|clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector41~0_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(6));

-- Location: LABCELL_X65_Y16_N21
\I2C_inst|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~85_sumout\ = SUM(( !\I2C_inst|clk_count\(7) ) + ( VCC ) + ( \I2C_inst|Add0~90\ ))
-- \I2C_inst|Add0~86\ = CARRY(( !\I2C_inst|clk_count\(7) ) + ( VCC ) + ( \I2C_inst|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count\(7),
	cin => \I2C_inst|Add0~90\,
	sumout => \I2C_inst|Add0~85_sumout\,
	cout => \I2C_inst|Add0~86\);

-- Location: LABCELL_X64_Y16_N45
\I2C_inst|Selector40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector40~0_combout\ = ( !\I2C_inst|LessThan0~5_combout\ & ( (!\I2C_inst|clk_count[31]~DUPLICATE_q\ & !\I2C_inst|Add0~85_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\,
	datad => \I2C_inst|ALT_INV_Add0~85_sumout\,
	dataf => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	combout => \I2C_inst|Selector40~0_combout\);

-- Location: FF_X64_Y16_N46
\I2C_inst|clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector40~0_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(7));

-- Location: LABCELL_X65_Y16_N24
\I2C_inst|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~117_sumout\ = SUM(( \I2C_inst|clk_count\(8) ) + ( VCC ) + ( \I2C_inst|Add0~86\ ))
-- \I2C_inst|Add0~118\ = CARRY(( \I2C_inst|clk_count\(8) ) + ( VCC ) + ( \I2C_inst|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_clk_count\(8),
	cin => \I2C_inst|Add0~86\,
	sumout => \I2C_inst|Add0~117_sumout\,
	cout => \I2C_inst|Add0~118\);

-- Location: FF_X65_Y16_N25
\I2C_inst|clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~117_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(8));

-- Location: LABCELL_X65_Y16_N27
\I2C_inst|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~113_sumout\ = SUM(( \I2C_inst|clk_count\(9) ) + ( VCC ) + ( \I2C_inst|Add0~118\ ))
-- \I2C_inst|Add0~114\ = CARRY(( \I2C_inst|clk_count\(9) ) + ( VCC ) + ( \I2C_inst|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_clk_count\(9),
	cin => \I2C_inst|Add0~118\,
	sumout => \I2C_inst|Add0~113_sumout\,
	cout => \I2C_inst|Add0~114\);

-- Location: FF_X65_Y16_N28
\I2C_inst|clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~113_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(9));

-- Location: LABCELL_X65_Y16_N30
\I2C_inst|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~81_sumout\ = SUM(( !\I2C_inst|clk_count\(10) ) + ( VCC ) + ( \I2C_inst|Add0~114\ ))
-- \I2C_inst|Add0~82\ = CARRY(( !\I2C_inst|clk_count\(10) ) + ( VCC ) + ( \I2C_inst|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_clk_count\(10),
	cin => \I2C_inst|Add0~114\,
	sumout => \I2C_inst|Add0~81_sumout\,
	cout => \I2C_inst|Add0~82\);

-- Location: LABCELL_X64_Y16_N42
\I2C_inst|Selector37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector37~0_combout\ = ( !\I2C_inst|LessThan0~5_combout\ & ( (!\I2C_inst|clk_count[31]~DUPLICATE_q\ & !\I2C_inst|Add0~81_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\,
	datad => \I2C_inst|ALT_INV_Add0~81_sumout\,
	dataf => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	combout => \I2C_inst|Selector37~0_combout\);

-- Location: FF_X64_Y16_N43
\I2C_inst|clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector37~0_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(10));

-- Location: LABCELL_X65_Y16_N33
\I2C_inst|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~109_sumout\ = SUM(( \I2C_inst|clk_count\(11) ) + ( VCC ) + ( \I2C_inst|Add0~82\ ))
-- \I2C_inst|Add0~110\ = CARRY(( \I2C_inst|clk_count\(11) ) + ( VCC ) + ( \I2C_inst|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count\(11),
	cin => \I2C_inst|Add0~82\,
	sumout => \I2C_inst|Add0~109_sumout\,
	cout => \I2C_inst|Add0~110\);

-- Location: FF_X65_Y16_N35
\I2C_inst|clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~109_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(11));

-- Location: LABCELL_X65_Y16_N36
\I2C_inst|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~105_sumout\ = SUM(( \I2C_inst|clk_count\(12) ) + ( VCC ) + ( \I2C_inst|Add0~110\ ))
-- \I2C_inst|Add0~106\ = CARRY(( \I2C_inst|clk_count\(12) ) + ( VCC ) + ( \I2C_inst|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_clk_count\(12),
	cin => \I2C_inst|Add0~110\,
	sumout => \I2C_inst|Add0~105_sumout\,
	cout => \I2C_inst|Add0~106\);

-- Location: FF_X65_Y16_N38
\I2C_inst|clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~105_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(12));

-- Location: LABCELL_X65_Y16_N39
\I2C_inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~5_sumout\ = SUM(( \I2C_inst|clk_count\(13) ) + ( VCC ) + ( \I2C_inst|Add0~106\ ))
-- \I2C_inst|Add0~6\ = CARRY(( \I2C_inst|clk_count\(13) ) + ( VCC ) + ( \I2C_inst|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_clk_count\(13),
	cin => \I2C_inst|Add0~106\,
	sumout => \I2C_inst|Add0~5_sumout\,
	cout => \I2C_inst|Add0~6\);

-- Location: FF_X65_Y16_N40
\I2C_inst|clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~5_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(13));

-- Location: LABCELL_X65_Y16_N42
\I2C_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~29_sumout\ = SUM(( \I2C_inst|clk_count\(14) ) + ( VCC ) + ( \I2C_inst|Add0~6\ ))
-- \I2C_inst|Add0~30\ = CARRY(( \I2C_inst|clk_count\(14) ) + ( VCC ) + ( \I2C_inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_clk_count\(14),
	cin => \I2C_inst|Add0~6\,
	sumout => \I2C_inst|Add0~29_sumout\,
	cout => \I2C_inst|Add0~30\);

-- Location: FF_X65_Y16_N43
\I2C_inst|clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~29_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(14));

-- Location: LABCELL_X65_Y16_N45
\I2C_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~25_sumout\ = SUM(( \I2C_inst|clk_count\(15) ) + ( VCC ) + ( \I2C_inst|Add0~30\ ))
-- \I2C_inst|Add0~26\ = CARRY(( \I2C_inst|clk_count\(15) ) + ( VCC ) + ( \I2C_inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_clk_count\(15),
	cin => \I2C_inst|Add0~30\,
	sumout => \I2C_inst|Add0~25_sumout\,
	cout => \I2C_inst|Add0~26\);

-- Location: FF_X65_Y16_N47
\I2C_inst|clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~25_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(15));

-- Location: LABCELL_X65_Y16_N48
\I2C_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~21_sumout\ = SUM(( \I2C_inst|clk_count\(16) ) + ( VCC ) + ( \I2C_inst|Add0~26\ ))
-- \I2C_inst|Add0~22\ = CARRY(( \I2C_inst|clk_count\(16) ) + ( VCC ) + ( \I2C_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_clk_count\(16),
	cin => \I2C_inst|Add0~26\,
	sumout => \I2C_inst|Add0~21_sumout\,
	cout => \I2C_inst|Add0~22\);

-- Location: FF_X65_Y16_N50
\I2C_inst|clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~21_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(16));

-- Location: LABCELL_X65_Y16_N51
\I2C_inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~17_sumout\ = SUM(( \I2C_inst|clk_count\(17) ) + ( VCC ) + ( \I2C_inst|Add0~22\ ))
-- \I2C_inst|Add0~18\ = CARRY(( \I2C_inst|clk_count\(17) ) + ( VCC ) + ( \I2C_inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count\(17),
	cin => \I2C_inst|Add0~22\,
	sumout => \I2C_inst|Add0~17_sumout\,
	cout => \I2C_inst|Add0~18\);

-- Location: FF_X65_Y16_N53
\I2C_inst|clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~17_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(17));

-- Location: LABCELL_X65_Y16_N54
\I2C_inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~13_sumout\ = SUM(( \I2C_inst|clk_count\(18) ) + ( VCC ) + ( \I2C_inst|Add0~18\ ))
-- \I2C_inst|Add0~14\ = CARRY(( \I2C_inst|clk_count\(18) ) + ( VCC ) + ( \I2C_inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_clk_count\(18),
	cin => \I2C_inst|Add0~18\,
	sumout => \I2C_inst|Add0~13_sumout\,
	cout => \I2C_inst|Add0~14\);

-- Location: FF_X65_Y16_N55
\I2C_inst|clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~13_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(18));

-- Location: LABCELL_X65_Y16_N57
\I2C_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~9_sumout\ = SUM(( \I2C_inst|clk_count\(19) ) + ( VCC ) + ( \I2C_inst|Add0~14\ ))
-- \I2C_inst|Add0~10\ = CARRY(( \I2C_inst|clk_count\(19) ) + ( VCC ) + ( \I2C_inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_clk_count\(19),
	cin => \I2C_inst|Add0~14\,
	sumout => \I2C_inst|Add0~9_sumout\,
	cout => \I2C_inst|Add0~10\);

-- Location: FF_X65_Y16_N59
\I2C_inst|clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~9_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(19));

-- Location: LABCELL_X65_Y15_N0
\I2C_inst|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~53_sumout\ = SUM(( \I2C_inst|clk_count\(20) ) + ( VCC ) + ( \I2C_inst|Add0~10\ ))
-- \I2C_inst|Add0~54\ = CARRY(( \I2C_inst|clk_count\(20) ) + ( VCC ) + ( \I2C_inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_clk_count\(20),
	cin => \I2C_inst|Add0~10\,
	sumout => \I2C_inst|Add0~53_sumout\,
	cout => \I2C_inst|Add0~54\);

-- Location: FF_X65_Y15_N2
\I2C_inst|clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~53_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(20));

-- Location: LABCELL_X65_Y15_N3
\I2C_inst|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~49_sumout\ = SUM(( \I2C_inst|clk_count\(21) ) + ( VCC ) + ( \I2C_inst|Add0~54\ ))
-- \I2C_inst|Add0~50\ = CARRY(( \I2C_inst|clk_count\(21) ) + ( VCC ) + ( \I2C_inst|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count\(21),
	cin => \I2C_inst|Add0~54\,
	sumout => \I2C_inst|Add0~49_sumout\,
	cout => \I2C_inst|Add0~50\);

-- Location: FF_X65_Y15_N5
\I2C_inst|clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~49_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(21));

-- Location: LABCELL_X65_Y15_N6
\I2C_inst|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~45_sumout\ = SUM(( \I2C_inst|clk_count\(22) ) + ( VCC ) + ( \I2C_inst|Add0~50\ ))
-- \I2C_inst|Add0~46\ = CARRY(( \I2C_inst|clk_count\(22) ) + ( VCC ) + ( \I2C_inst|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_clk_count\(22),
	cin => \I2C_inst|Add0~50\,
	sumout => \I2C_inst|Add0~45_sumout\,
	cout => \I2C_inst|Add0~46\);

-- Location: FF_X65_Y15_N7
\I2C_inst|clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~45_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(22));

-- Location: LABCELL_X65_Y15_N9
\I2C_inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~41_sumout\ = SUM(( \I2C_inst|clk_count\(23) ) + ( VCC ) + ( \I2C_inst|Add0~46\ ))
-- \I2C_inst|Add0~42\ = CARRY(( \I2C_inst|clk_count\(23) ) + ( VCC ) + ( \I2C_inst|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_clk_count\(23),
	cin => \I2C_inst|Add0~46\,
	sumout => \I2C_inst|Add0~41_sumout\,
	cout => \I2C_inst|Add0~42\);

-- Location: FF_X65_Y15_N11
\I2C_inst|clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~41_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(23));

-- Location: LABCELL_X65_Y15_N12
\I2C_inst|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~101_sumout\ = SUM(( \I2C_inst|clk_count\(24) ) + ( VCC ) + ( \I2C_inst|Add0~42\ ))
-- \I2C_inst|Add0~102\ = CARRY(( \I2C_inst|clk_count\(24) ) + ( VCC ) + ( \I2C_inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_clk_count\(24),
	cin => \I2C_inst|Add0~42\,
	sumout => \I2C_inst|Add0~101_sumout\,
	cout => \I2C_inst|Add0~102\);

-- Location: FF_X65_Y15_N13
\I2C_inst|clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~101_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(24));

-- Location: LABCELL_X65_Y15_N15
\I2C_inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~37_sumout\ = SUM(( \I2C_inst|clk_count\(25) ) + ( VCC ) + ( \I2C_inst|Add0~102\ ))
-- \I2C_inst|Add0~38\ = CARRY(( \I2C_inst|clk_count\(25) ) + ( VCC ) + ( \I2C_inst|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_clk_count\(25),
	cin => \I2C_inst|Add0~102\,
	sumout => \I2C_inst|Add0~37_sumout\,
	cout => \I2C_inst|Add0~38\);

-- Location: FF_X65_Y15_N17
\I2C_inst|clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~37_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(25));

-- Location: LABCELL_X65_Y15_N18
\I2C_inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~33_sumout\ = SUM(( \I2C_inst|clk_count\(26) ) + ( VCC ) + ( \I2C_inst|Add0~38\ ))
-- \I2C_inst|Add0~34\ = CARRY(( \I2C_inst|clk_count\(26) ) + ( VCC ) + ( \I2C_inst|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_clk_count\(26),
	cin => \I2C_inst|Add0~38\,
	sumout => \I2C_inst|Add0~33_sumout\,
	cout => \I2C_inst|Add0~34\);

-- Location: FF_X65_Y15_N19
\I2C_inst|clk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~33_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(26));

-- Location: LABCELL_X65_Y15_N36
\I2C_inst|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|LessThan0~1_combout\ = ( !\I2C_inst|clk_count\(20) & ( !\I2C_inst|clk_count\(25) & ( (!\I2C_inst|clk_count\(21) & (!\I2C_inst|clk_count\(26) & (!\I2C_inst|clk_count\(22) & !\I2C_inst|clk_count\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count\(21),
	datab => \I2C_inst|ALT_INV_clk_count\(26),
	datac => \I2C_inst|ALT_INV_clk_count\(22),
	datad => \I2C_inst|ALT_INV_clk_count\(23),
	datae => \I2C_inst|ALT_INV_clk_count\(20),
	dataf => \I2C_inst|ALT_INV_clk_count\(25),
	combout => \I2C_inst|LessThan0~1_combout\);

-- Location: FF_X65_Y16_N34
\I2C_inst|clk_count[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~109_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count[11]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y16_N36
\I2C_inst|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|LessThan0~4_combout\ = ( !\I2C_inst|clk_count\(12) & ( !\I2C_inst|clk_count\(1) & ( (!\I2C_inst|clk_count\(8) & (!\I2C_inst|clk_count\(9) & (!\I2C_inst|clk_count[11]~DUPLICATE_q\ & !\I2C_inst|clk_count\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count\(8),
	datab => \I2C_inst|ALT_INV_clk_count\(9),
	datac => \I2C_inst|ALT_INV_clk_count[11]~DUPLICATE_q\,
	datad => \I2C_inst|ALT_INV_clk_count\(2),
	datae => \I2C_inst|ALT_INV_clk_count\(12),
	dataf => \I2C_inst|ALT_INV_clk_count\(1),
	combout => \I2C_inst|LessThan0~4_combout\);

-- Location: FF_X64_Y16_N53
\I2C_inst|clk_count[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector42~0_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count[5]~DUPLICATE_q\);

-- Location: FF_X64_Y16_N44
\I2C_inst|clk_count[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector37~0_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count[10]~DUPLICATE_q\);

-- Location: FF_X64_Y16_N50
\I2C_inst|clk_count[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector41~0_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count[6]~DUPLICATE_q\);

-- Location: FF_X64_Y16_N47
\I2C_inst|clk_count[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector40~0_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count[7]~DUPLICATE_q\);

-- Location: FF_X64_Y16_N56
\I2C_inst|clk_count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector47~0_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count[0]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y16_N0
\I2C_inst|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|LessThan0~3_combout\ = ( \I2C_inst|clk_count[0]~DUPLICATE_q\ & ( !\I2C_inst|clk_count\(24) & ( (\I2C_inst|clk_count[5]~DUPLICATE_q\ & (\I2C_inst|clk_count[10]~DUPLICATE_q\ & (\I2C_inst|clk_count[6]~DUPLICATE_q\ & 
-- \I2C_inst|clk_count[7]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count[5]~DUPLICATE_q\,
	datab => \I2C_inst|ALT_INV_clk_count[10]~DUPLICATE_q\,
	datac => \I2C_inst|ALT_INV_clk_count[6]~DUPLICATE_q\,
	datad => \I2C_inst|ALT_INV_clk_count[7]~DUPLICATE_q\,
	datae => \I2C_inst|ALT_INV_clk_count[0]~DUPLICATE_q\,
	dataf => \I2C_inst|ALT_INV_clk_count\(24),
	combout => \I2C_inst|LessThan0~3_combout\);

-- Location: LABCELL_X65_Y15_N21
\I2C_inst|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~77_sumout\ = SUM(( \I2C_inst|clk_count\(27) ) + ( VCC ) + ( \I2C_inst|Add0~34\ ))
-- \I2C_inst|Add0~78\ = CARRY(( \I2C_inst|clk_count\(27) ) + ( VCC ) + ( \I2C_inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count\(27),
	cin => \I2C_inst|Add0~34\,
	sumout => \I2C_inst|Add0~77_sumout\,
	cout => \I2C_inst|Add0~78\);

-- Location: FF_X65_Y15_N23
\I2C_inst|clk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~77_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(27));

-- Location: LABCELL_X65_Y15_N24
\I2C_inst|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~73_sumout\ = SUM(( \I2C_inst|clk_count\(28) ) + ( VCC ) + ( \I2C_inst|Add0~78\ ))
-- \I2C_inst|Add0~74\ = CARRY(( \I2C_inst|clk_count\(28) ) + ( VCC ) + ( \I2C_inst|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_clk_count\(28),
	cin => \I2C_inst|Add0~78\,
	sumout => \I2C_inst|Add0~73_sumout\,
	cout => \I2C_inst|Add0~74\);

-- Location: FF_X65_Y15_N25
\I2C_inst|clk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~73_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(28));

-- Location: LABCELL_X65_Y15_N27
\I2C_inst|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~69_sumout\ = SUM(( \I2C_inst|clk_count\(29) ) + ( VCC ) + ( \I2C_inst|Add0~74\ ))
-- \I2C_inst|Add0~70\ = CARRY(( \I2C_inst|clk_count\(29) ) + ( VCC ) + ( \I2C_inst|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count\(29),
	cin => \I2C_inst|Add0~74\,
	sumout => \I2C_inst|Add0~69_sumout\,
	cout => \I2C_inst|Add0~70\);

-- Location: FF_X65_Y15_N29
\I2C_inst|clk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~69_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(29));

-- Location: LABCELL_X65_Y15_N30
\I2C_inst|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~65_sumout\ = SUM(( \I2C_inst|clk_count\(30) ) + ( VCC ) + ( \I2C_inst|Add0~70\ ))
-- \I2C_inst|Add0~66\ = CARRY(( \I2C_inst|clk_count\(30) ) + ( VCC ) + ( \I2C_inst|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C_inst|ALT_INV_clk_count\(30),
	cin => \I2C_inst|Add0~70\,
	sumout => \I2C_inst|Add0~65_sumout\,
	cout => \I2C_inst|Add0~66\);

-- Location: FF_X65_Y15_N31
\I2C_inst|clk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~65_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(30));

-- Location: FF_X65_Y16_N10
\I2C_inst|clk_count[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~57_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count[3]~DUPLICATE_q\);

-- Location: LABCELL_X65_Y15_N42
\I2C_inst|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|LessThan0~2_combout\ = ( !\I2C_inst|clk_count\(29) & ( !\I2C_inst|clk_count[3]~DUPLICATE_q\ & ( (!\I2C_inst|clk_count\(30) & (!\I2C_inst|clk_count\(28) & (!\I2C_inst|clk_count\(27) & !\I2C_inst|clk_count\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count\(30),
	datab => \I2C_inst|ALT_INV_clk_count\(28),
	datac => \I2C_inst|ALT_INV_clk_count\(27),
	datad => \I2C_inst|ALT_INV_clk_count\(4),
	datae => \I2C_inst|ALT_INV_clk_count\(29),
	dataf => \I2C_inst|ALT_INV_clk_count[3]~DUPLICATE_q\,
	combout => \I2C_inst|LessThan0~2_combout\);

-- Location: LABCELL_X64_Y16_N6
\I2C_inst|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|LessThan0~0_combout\ = ( !\I2C_inst|clk_count\(16) & ( !\I2C_inst|clk_count\(14) & ( (!\I2C_inst|clk_count\(17) & (!\I2C_inst|clk_count\(19) & (!\I2C_inst|clk_count\(15) & !\I2C_inst|clk_count\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count\(17),
	datab => \I2C_inst|ALT_INV_clk_count\(19),
	datac => \I2C_inst|ALT_INV_clk_count\(15),
	datad => \I2C_inst|ALT_INV_clk_count\(18),
	datae => \I2C_inst|ALT_INV_clk_count\(16),
	dataf => \I2C_inst|ALT_INV_clk_count\(14),
	combout => \I2C_inst|LessThan0~0_combout\);

-- Location: LABCELL_X64_Y16_N12
\I2C_inst|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|LessThan0~5_combout\ = ( !\I2C_inst|clk_count\(13) & ( \I2C_inst|LessThan0~0_combout\ & ( (\I2C_inst|LessThan0~1_combout\ & (\I2C_inst|LessThan0~4_combout\ & (\I2C_inst|LessThan0~3_combout\ & \I2C_inst|LessThan0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_LessThan0~1_combout\,
	datab => \I2C_inst|ALT_INV_LessThan0~4_combout\,
	datac => \I2C_inst|ALT_INV_LessThan0~3_combout\,
	datad => \I2C_inst|ALT_INV_LessThan0~2_combout\,
	datae => \I2C_inst|ALT_INV_clk_count\(13),
	dataf => \I2C_inst|ALT_INV_LessThan0~0_combout\,
	combout => \I2C_inst|LessThan0~5_combout\);

-- Location: LABCELL_X64_Y16_N57
\I2C_inst|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|LessThan0~6_combout\ = (\I2C_inst|LessThan0~5_combout\) # (\I2C_inst|clk_count[31]~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\,
	datab => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	combout => \I2C_inst|LessThan0~6_combout\);

-- Location: FF_X65_Y15_N35
\I2C_inst|clk_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~1_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count\(31));

-- Location: LABCELL_X65_Y15_N33
\I2C_inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Add0~1_sumout\ = SUM(( \I2C_inst|clk_count\(31) ) + ( VCC ) + ( \I2C_inst|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count\(31),
	cin => \I2C_inst|Add0~66\,
	sumout => \I2C_inst|Add0~1_sumout\);

-- Location: FF_X65_Y15_N34
\I2C_inst|clk_count[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Add0~1_sumout\,
	sclr => \I2C_inst|LessThan0~6_combout\,
	ena => \I2C_inst|clk_count[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|clk_count[31]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y15_N48
\I2C_inst|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector1~0_combout\ = ( \I2C_inst|LessThan0~5_combout\ & ( (\I2C_inst|sda~reg0_Duplicate_1_q\ & \I2C_inst|flip~DUPLICATE_q\) ) ) # ( !\I2C_inst|LessThan0~5_combout\ & ( (\I2C_inst|sda~reg0_Duplicate_1_q\ & 
-- ((!\I2C_inst|clk_count[31]~DUPLICATE_q\) # (\I2C_inst|flip~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001111000010100000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\,
	datac => \I2C_inst|ALT_INV_sda~reg0_Duplicate_1_q\,
	datad => \I2C_inst|ALT_INV_flip~DUPLICATE_q\,
	dataf => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	combout => \I2C_inst|Selector1~0_combout\);

-- Location: LABCELL_X61_Y15_N42
\I2C_inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Mux0~0_combout\ = !\I2C_inst|reg_index\(0) $ (((!\I2C_inst|reg_index\(2)) # (!\I2C_inst|reg_index\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110000110011001111000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_reg_index\(0),
	datac => \I2C_inst|ALT_INV_reg_index\(2),
	datad => \I2C_inst|ALT_INV_reg_index\(1),
	combout => \I2C_inst|Mux0~0_combout\);

-- Location: LABCELL_X63_Y15_N24
\I2C_inst|Selector1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector1~3_combout\ = ( \I2C_inst|flip~DUPLICATE_q\ & ( \I2C_inst|I2C_state.send0~DUPLICATE_q\ ) ) # ( !\I2C_inst|flip~DUPLICATE_q\ & ( (\I2C_inst|I2C_state.send0~DUPLICATE_q\ & ((!\I2C_inst|Mux0~0_combout\) # 
-- ((!\I2C_inst|clk_count[31]~DUPLICATE_q\ & !\I2C_inst|LessThan0~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111000000000001111100000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\,
	datab => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	datac => \I2C_inst|ALT_INV_Mux0~0_combout\,
	datad => \I2C_inst|ALT_INV_I2C_state.send0~DUPLICATE_q\,
	dataf => \I2C_inst|ALT_INV_flip~DUPLICATE_q\,
	combout => \I2C_inst|Selector1~3_combout\);

-- Location: LABCELL_X61_Y15_N51
\I2C_inst|sda~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|sda~0_combout\ = ( \I2C_inst|ack~q\ & ( !\I2C_inst|reg_index\(0) $ (((!\I2C_inst|reg_index\(2) & \I2C_inst|reg_index\(1)))) ) ) # ( !\I2C_inst|ack~q\ & ( !\I2C_inst|reg_index\(0) $ (((!\I2C_inst|reg_index\(2)) # (!\I2C_inst|reg_index\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101100110001100110110011011001100011001101100110001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_reg_index\(2),
	datab => \I2C_inst|ALT_INV_reg_index\(0),
	datad => \I2C_inst|ALT_INV_reg_index\(1),
	dataf => \I2C_inst|ALT_INV_ack~q\,
	combout => \I2C_inst|sda~0_combout\);

-- Location: FF_X63_Y15_N44
\I2C_inst|I2C_state.ack1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector12~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|I2C_state.ack1~DUPLICATE_q\);

-- Location: LABCELL_X61_Y15_N6
\I2C_inst|Selector1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector1~6_combout\ = ( \I2C_inst|ack~q\ & ( (!\I2C_inst|reg_index\(2) & ((!\I2C_inst|reg_index\(1)))) # (\I2C_inst|reg_index\(2) & (!\I2C_inst|reg_index\(0) & \I2C_inst|reg_index\(1))) ) ) # ( !\I2C_inst|ack~q\ & ( !\I2C_inst|reg_index\(0) $ 
-- (((!\I2C_inst|reg_index\(2) & \I2C_inst|reg_index\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100011011000110110001101100011010100100101001001010010010100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_reg_index\(2),
	datab => \I2C_inst|ALT_INV_reg_index\(0),
	datac => \I2C_inst|ALT_INV_reg_index\(1),
	dataf => \I2C_inst|ALT_INV_ack~q\,
	combout => \I2C_inst|Selector1~6_combout\);

-- Location: LABCELL_X63_Y15_N36
\I2C_inst|Selector1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector1~7_combout\ = ( \I2C_inst|Selector1~6_combout\ & ( \I2C_inst|reg_index~0_combout\ & ( (!\I2C_inst|sda~0_combout\ & \I2C_inst|I2C_state.ack0~DUPLICATE_q\) ) ) ) # ( !\I2C_inst|Selector1~6_combout\ & ( \I2C_inst|reg_index~0_combout\ & ( 
-- ((!\I2C_inst|sda~0_combout\ & \I2C_inst|I2C_state.ack0~DUPLICATE_q\)) # (\I2C_inst|I2C_state.ack1~DUPLICATE_q\) ) ) ) # ( \I2C_inst|Selector1~6_combout\ & ( !\I2C_inst|reg_index~0_combout\ & ( (!\I2C_inst|sda~reg0_Duplicate_1_q\ & 
-- ((\I2C_inst|I2C_state.ack1~DUPLICATE_q\) # (\I2C_inst|I2C_state.ack0~DUPLICATE_q\))) ) ) ) # ( !\I2C_inst|Selector1~6_combout\ & ( !\I2C_inst|reg_index~0_combout\ & ( (!\I2C_inst|sda~reg0_Duplicate_1_q\ & ((\I2C_inst|I2C_state.ack1~DUPLICATE_q\) # 
-- (\I2C_inst|I2C_state.ack0~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101000001100111111110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_sda~reg0_Duplicate_1_q\,
	datab => \I2C_inst|ALT_INV_sda~0_combout\,
	datac => \I2C_inst|ALT_INV_I2C_state.ack0~DUPLICATE_q\,
	datad => \I2C_inst|ALT_INV_I2C_state.ack1~DUPLICATE_q\,
	datae => \I2C_inst|ALT_INV_Selector1~6_combout\,
	dataf => \I2C_inst|ALT_INV_reg_index~0_combout\,
	combout => \I2C_inst|Selector1~7_combout\);

-- Location: LABCELL_X63_Y15_N0
\I2C_inst|Selector1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector1~4_combout\ = ( \I2C_inst|clk_count[31]~DUPLICATE_q\ & ( (!\I2C_inst|Mux0~0_combout\ & \I2C_inst|I2C_state.start1~DUPLICATE_q\) ) ) # ( !\I2C_inst|clk_count[31]~DUPLICATE_q\ & ( (\I2C_inst|I2C_state.start1~DUPLICATE_q\ & 
-- ((!\I2C_inst|LessThan0~5_combout\) # (!\I2C_inst|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	datac => \I2C_inst|ALT_INV_Mux0~0_combout\,
	datad => \I2C_inst|ALT_INV_I2C_state.start1~DUPLICATE_q\,
	dataf => \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\,
	combout => \I2C_inst|Selector1~4_combout\);

-- Location: LABCELL_X63_Y15_N54
\I2C_inst|Selector1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector1~5_combout\ = ( !\I2C_inst|LessThan0~6_combout\ & ( \I2C_inst|I2C_state.stop0~DUPLICATE_q\ & ( \I2C_inst|sda~reg0_Duplicate_1_q\ ) ) ) # ( \I2C_inst|LessThan0~6_combout\ & ( !\I2C_inst|I2C_state.stop0~DUPLICATE_q\ & ( 
-- (!\I2C_inst|Selector1~4_combout\ & !\I2C_inst|I2C_state.start0~q\) ) ) ) # ( !\I2C_inst|LessThan0~6_combout\ & ( !\I2C_inst|I2C_state.stop0~DUPLICATE_q\ & ( ((!\I2C_inst|Selector1~4_combout\ & (!\I2C_inst|I2C_state.stop1~DUPLICATE_q\ & 
-- !\I2C_inst|I2C_state.start0~q\))) # (\I2C_inst|sda~reg0_Duplicate_1_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111100001111101010100000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_Selector1~4_combout\,
	datab => \I2C_inst|ALT_INV_I2C_state.stop1~DUPLICATE_q\,
	datac => \I2C_inst|ALT_INV_sda~reg0_Duplicate_1_q\,
	datad => \I2C_inst|ALT_INV_I2C_state.start0~q\,
	datae => \I2C_inst|ALT_INV_LessThan0~6_combout\,
	dataf => \I2C_inst|ALT_INV_I2C_state.stop0~DUPLICATE_q\,
	combout => \I2C_inst|Selector1~5_combout\);

-- Location: LABCELL_X61_Y15_N45
\I2C_inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Mux2~0_combout\ = (!\I2C_inst|reg_index\(2) & ((!\I2C_inst|reg_index\(1)))) # (\I2C_inst|reg_index\(2) & (!\I2C_inst|reg_index\(0) & \I2C_inst|reg_index\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001000100101010100100010010101010010001001010101001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_reg_index\(2),
	datab => \I2C_inst|ALT_INV_reg_index\(0),
	datad => \I2C_inst|ALT_INV_reg_index\(1),
	combout => \I2C_inst|Mux2~0_combout\);

-- Location: LABCELL_X63_Y15_N27
\I2C_inst|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector1~1_combout\ = ( \I2C_inst|I2C_state.send2~DUPLICATE_q\ & ( (!\I2C_inst|Mux2~0_combout\) # (((!\I2C_inst|clk_count[31]~DUPLICATE_q\ & !\I2C_inst|LessThan0~5_combout\)) # (\I2C_inst|flip~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111000111111111111100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\,
	datab => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	datac => \I2C_inst|ALT_INV_Mux2~0_combout\,
	datad => \I2C_inst|ALT_INV_flip~DUPLICATE_q\,
	dataf => \I2C_inst|ALT_INV_I2C_state.send2~DUPLICATE_q\,
	combout => \I2C_inst|Selector1~1_combout\);

-- Location: LABCELL_X61_Y15_N48
\I2C_inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Mux1~0_combout\ = !\I2C_inst|reg_index\(0) $ (((!\I2C_inst|reg_index\(2) & \I2C_inst|reg_index\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100011011000110110001101100011011000110110001101100011011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_reg_index\(2),
	datab => \I2C_inst|ALT_INV_reg_index\(0),
	datac => \I2C_inst|ALT_INV_reg_index\(1),
	combout => \I2C_inst|Mux1~0_combout\);

-- Location: LABCELL_X63_Y15_N51
\I2C_inst|Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector1~2_combout\ = ( \I2C_inst|Mux1~0_combout\ & ( (\I2C_inst|I2C_state.send1~q\ & (((!\I2C_inst|clk_count[31]~DUPLICATE_q\ & !\I2C_inst|LessThan0~5_combout\)) # (\I2C_inst|flip~DUPLICATE_q\))) ) ) # ( !\I2C_inst|Mux1~0_combout\ & ( 
-- \I2C_inst|I2C_state.send1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001000000011110000100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_clk_count[31]~DUPLICATE_q\,
	datab => \I2C_inst|ALT_INV_LessThan0~5_combout\,
	datac => \I2C_inst|ALT_INV_I2C_state.send1~q\,
	datad => \I2C_inst|ALT_INV_flip~DUPLICATE_q\,
	dataf => \I2C_inst|ALT_INV_Mux1~0_combout\,
	combout => \I2C_inst|Selector1~2_combout\);

-- Location: LABCELL_X63_Y15_N30
\I2C_inst|Selector1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector1~8_combout\ = ( \I2C_inst|Selector1~1_combout\ & ( \I2C_inst|Selector1~2_combout\ & ( (\I2C_inst|Selector1~0_combout\ & (!\I2C_inst|Selector1~7_combout\ & \I2C_inst|Selector1~5_combout\)) ) ) ) # ( !\I2C_inst|Selector1~1_combout\ & ( 
-- \I2C_inst|Selector1~2_combout\ & ( (\I2C_inst|Selector1~0_combout\ & (!\I2C_inst|Selector1~7_combout\ & \I2C_inst|Selector1~5_combout\)) ) ) ) # ( \I2C_inst|Selector1~1_combout\ & ( !\I2C_inst|Selector1~2_combout\ & ( (\I2C_inst|Selector1~0_combout\ & 
-- (!\I2C_inst|Selector1~7_combout\ & \I2C_inst|Selector1~5_combout\)) ) ) ) # ( !\I2C_inst|Selector1~1_combout\ & ( !\I2C_inst|Selector1~2_combout\ & ( (!\I2C_inst|Selector1~7_combout\ & (\I2C_inst|Selector1~5_combout\ & ((!\I2C_inst|Selector1~3_combout\) # 
-- (\I2C_inst|Selector1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011010000000000000101000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_Selector1~0_combout\,
	datab => \I2C_inst|ALT_INV_Selector1~3_combout\,
	datac => \I2C_inst|ALT_INV_Selector1~7_combout\,
	datad => \I2C_inst|ALT_INV_Selector1~5_combout\,
	datae => \I2C_inst|ALT_INV_Selector1~1_combout\,
	dataf => \I2C_inst|ALT_INV_Selector1~2_combout\,
	combout => \I2C_inst|Selector1~8_combout\);

-- Location: FF_X63_Y15_N32
\I2C_inst|sda~reg0_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector1~8_combout\,
	asdata => \I2C_inst|sda~reg0_Duplicate_1_q\,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|sda~reg0_Duplicate_1_q\);

-- Location: LABCELL_X63_Y15_N9
\I2C_inst|sda~reg0SLOAD_MUX\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|sda~reg0SLOAD_MUX_combout\ = ( \I2C_inst|Selector1~8_combout\ & ( (\I2C_inst|sda~reg0_Duplicate_1_q\) # (\reset~input_o\) ) ) # ( !\I2C_inst|Selector1~8_combout\ & ( (!\reset~input_o\ & \I2C_inst|sda~reg0_Duplicate_1_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \I2C_inst|ALT_INV_sda~reg0_Duplicate_1_q\,
	dataf => \I2C_inst|ALT_INV_Selector1~8_combout\,
	combout => \I2C_inst|sda~reg0SLOAD_MUX_combout\);

-- Location: DDIOOUTCELL_X68_Y37_N47
\I2C_inst|sda~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|sda~reg0SLOAD_MUX_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|sda~reg0_q\);

-- Location: FF_X64_Y16_N32
\I2C_inst|scl~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector0~1_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|scl~_Duplicate_1_q\);

-- Location: LABCELL_X64_Y16_N30
\I2C_inst|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C_inst|Selector0~1_combout\ = ( \I2C_inst|scl~_Duplicate_1_q\ & ( \I2C_inst|Selector0~0_combout\ & ( (!\I2C_inst|LessThan0~6_combout\) # ((!\I2C_inst|I2C_state.start1~DUPLICATE_q\ & ((\I2C_inst|Selector2~2_combout\) # (\I2C_inst|flip~q\)))) ) ) ) # ( 
-- !\I2C_inst|scl~_Duplicate_1_q\ & ( \I2C_inst|Selector0~0_combout\ & ( (!\I2C_inst|I2C_state.start1~DUPLICATE_q\ & (((\I2C_inst|flip~q\ & \I2C_inst|LessThan0~6_combout\)) # (\I2C_inst|Selector2~2_combout\))) ) ) ) # ( \I2C_inst|scl~_Duplicate_1_q\ & ( 
-- !\I2C_inst|Selector0~0_combout\ & ( (!\I2C_inst|LessThan0~6_combout\) # ((!\I2C_inst|I2C_state.start1~DUPLICATE_q\ & ((\I2C_inst|Selector2~2_combout\) # (\I2C_inst|flip~q\)))) ) ) ) # ( !\I2C_inst|scl~_Duplicate_1_q\ & ( !\I2C_inst|Selector0~0_combout\ & 
-- ( (!\I2C_inst|I2C_state.start1~DUPLICATE_q\ & (\I2C_inst|LessThan0~6_combout\ & ((\I2C_inst|Selector2~2_combout\) # (\I2C_inst|flip~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001100111101001111110000000100110011001111010011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C_inst|ALT_INV_flip~q\,
	datab => \I2C_inst|ALT_INV_I2C_state.start1~DUPLICATE_q\,
	datac => \I2C_inst|ALT_INV_LessThan0~6_combout\,
	datad => \I2C_inst|ALT_INV_Selector2~2_combout\,
	datae => \I2C_inst|ALT_INV_scl~_Duplicate_1_q\,
	dataf => \I2C_inst|ALT_INV_Selector0~0_combout\,
	combout => \I2C_inst|Selector0~1_combout\);

-- Location: DDIOOUTCELL_X68_Y14_N53
\I2C_inst|scl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \I2C_inst|Selector0~1_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C_inst|scl~q\);

-- Location: IOIBUF_X68_Y37_N38
\sda~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sda,
	o => \sda~input_o\);

-- Location: LABCELL_X2_Y32_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


