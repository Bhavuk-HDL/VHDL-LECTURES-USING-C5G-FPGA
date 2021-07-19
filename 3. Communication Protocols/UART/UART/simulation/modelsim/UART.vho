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

-- DATE "05/23/2021 02:55:33"

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

ENTITY 	UART IS
    PORT (
	clock_50 : IN std_logic;
	sw : IN std_logic_vector(7 DOWNTO 0);
	ledr : BUFFER std_logic_vector(7 DOWNTO 0);
	ledg : BUFFER std_logic_vector(7 DOWNTO 0);
	key : IN std_logic;
	UART_TXD : BUFFER std_logic;
	UART_RXD : IN std_logic
	);
END UART;

-- Design Ports Information
-- ledr[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[4]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[6]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg[7]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UART_TXD	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key	=>  Location: PIN_P11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AC9,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AE10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AD13,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AC8,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_W11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AB10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_V10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AC10,	 I/O Standard: 1.2 V,	 Current Strength: Default


ARCHITECTURE structure OF UART IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ledg : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_key : std_logic;
SIGNAL ww_UART_TXD : std_logic;
SIGNAL ww_UART_RXD : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \C2|Add0~13_sumout\ : std_logic;
SIGNAL \C2|LessThan0~2_combout\ : std_logic;
SIGNAL \C2|LessThan0~0_combout\ : std_logic;
SIGNAL \C2|LessThan0~1_combout\ : std_logic;
SIGNAL \C2|Add0~50\ : std_logic;
SIGNAL \C2|Add0~9_sumout\ : std_logic;
SIGNAL \C2|LessThan0~3_combout\ : std_logic;
SIGNAL \C2|Add0~14\ : std_logic;
SIGNAL \C2|Add0~17_sumout\ : std_logic;
SIGNAL \C2|Add0~18\ : std_logic;
SIGNAL \C2|Add0~21_sumout\ : std_logic;
SIGNAL \C2|prscl[2]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|Add0~22\ : std_logic;
SIGNAL \C2|Add0~1_sumout\ : std_logic;
SIGNAL \C2|Add0~2\ : std_logic;
SIGNAL \C2|Add0~25_sumout\ : std_logic;
SIGNAL \C2|Add0~26\ : std_logic;
SIGNAL \C2|Add0~5_sumout\ : std_logic;
SIGNAL \C2|Add0~6\ : std_logic;
SIGNAL \C2|Add0~29_sumout\ : std_logic;
SIGNAL \C2|Add0~30\ : std_logic;
SIGNAL \C2|Add0~33_sumout\ : std_logic;
SIGNAL \C2|Add0~34\ : std_logic;
SIGNAL \C2|Add0~37_sumout\ : std_logic;
SIGNAL \C2|Add0~38\ : std_logic;
SIGNAL \C2|Add0~41_sumout\ : std_logic;
SIGNAL \C2|Add0~42\ : std_logic;
SIGNAL \C2|Add0~45_sumout\ : std_logic;
SIGNAL \C2|Add0~46\ : std_logic;
SIGNAL \C2|Add0~49_sumout\ : std_logic;
SIGNAL \C2|Equal0~2_combout\ : std_logic;
SIGNAL \C2|Equal0~1_combout\ : std_logic;
SIGNAL \C2|Equal0~0_combout\ : std_logic;
SIGNAL \C2|Equal0~3_combout\ : std_logic;
SIGNAL \C2|rx_flag~0_combout\ : std_logic;
SIGNAL \UART_RXD~input_o\ : std_logic;
SIGNAL \C2|Add1~1_combout\ : std_logic;
SIGNAL \C2|index[2]~3_combout\ : std_logic;
SIGNAL \C2|index[2]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|Add1~0_combout\ : std_logic;
SIGNAL \C2|index[3]~0_combout\ : std_logic;
SIGNAL \C2|index[3]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|LessThan1~0_combout\ : std_logic;
SIGNAL \C2|busy~0_combout\ : std_logic;
SIGNAL \C2|rx_flag~q\ : std_logic;
SIGNAL \C2|index[0]~1_combout\ : std_logic;
SIGNAL \C2|index[0]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|index[1]~2_combout\ : std_logic;
SIGNAL \C2|index[1]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|data[2]~0_combout\ : std_logic;
SIGNAL \C2|busy~1_combout\ : std_logic;
SIGNAL \C2|busy~q\ : std_logic;
SIGNAL \C2|datafll[1]~0_combout\ : std_logic;
SIGNAL \C2|data[0]~feeder_combout\ : std_logic;
SIGNAL \C2|datafll[9]~2_combout\ : std_logic;
SIGNAL \C2|datafll[0]~1_combout\ : std_logic;
SIGNAL \C2|process_0~0_combout\ : std_logic;
SIGNAL \ledr[0]~reg0feeder_combout\ : std_logic;
SIGNAL \ledr[0]~reg0_q\ : std_logic;
SIGNAL \C2|datafll[2]~3_combout\ : std_logic;
SIGNAL \C2|data[1]~feeder_combout\ : std_logic;
SIGNAL \ledr[1]~reg0feeder_combout\ : std_logic;
SIGNAL \ledr[1]~reg0_q\ : std_logic;
SIGNAL \C2|datafll[3]~4_combout\ : std_logic;
SIGNAL \ledr[2]~reg0_q\ : std_logic;
SIGNAL \C2|datafll[4]~5_combout\ : std_logic;
SIGNAL \ledr[3]~reg0feeder_combout\ : std_logic;
SIGNAL \ledr[3]~reg0_q\ : std_logic;
SIGNAL \C2|datafll[5]~6_combout\ : std_logic;
SIGNAL \ledr[4]~reg0feeder_combout\ : std_logic;
SIGNAL \ledr[4]~reg0_q\ : std_logic;
SIGNAL \C2|datafll[6]~7_combout\ : std_logic;
SIGNAL \ledr[5]~reg0feeder_combout\ : std_logic;
SIGNAL \ledr[5]~reg0_q\ : std_logic;
SIGNAL \C2|datafll[7]~8_combout\ : std_logic;
SIGNAL \ledr[6]~reg0feeder_combout\ : std_logic;
SIGNAL \ledr[6]~reg0_q\ : std_logic;
SIGNAL \C2|datafll[8]~9_combout\ : std_logic;
SIGNAL \ledr[7]~reg0_q\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \Tx_data[0]~feeder_combout\ : std_logic;
SIGNAL \C1|Add0~5_sumout\ : std_logic;
SIGNAL \C1|Add0~2\ : std_logic;
SIGNAL \C1|Add0~49_sumout\ : std_logic;
SIGNAL \C1|Add0~50\ : std_logic;
SIGNAL \C1|Add0~45_sumout\ : std_logic;
SIGNAL \C1|Add0~46\ : std_logic;
SIGNAL \C1|Add0~21_sumout\ : std_logic;
SIGNAL \C1|Add0~22\ : std_logic;
SIGNAL \C1|Add0~17_sumout\ : std_logic;
SIGNAL \C1|Add0~18\ : std_logic;
SIGNAL \C1|Add0~37_sumout\ : std_logic;
SIGNAL \C1|Add0~38\ : std_logic;
SIGNAL \C1|Add0~41_sumout\ : std_logic;
SIGNAL \C1|LessThan0~2_combout\ : std_logic;
SIGNAL \C1|Equal0~0_combout\ : std_logic;
SIGNAL \C1|LessThan0~0_combout\ : std_logic;
SIGNAL \C1|LessThan0~1_combout\ : std_logic;
SIGNAL \C1|LessThan0~3_combout\ : std_logic;
SIGNAL \C1|Add0~6\ : std_logic;
SIGNAL \C1|Add0~9_sumout\ : std_logic;
SIGNAL \C1|Add0~10\ : std_logic;
SIGNAL \C1|Add0~13_sumout\ : std_logic;
SIGNAL \C1|Add0~14\ : std_logic;
SIGNAL \C1|Add0~25_sumout\ : std_logic;
SIGNAL \C1|Add0~26\ : std_logic;
SIGNAL \C1|Add0~29_sumout\ : std_logic;
SIGNAL \C1|Add0~30\ : std_logic;
SIGNAL \C1|Add0~33_sumout\ : std_logic;
SIGNAL \C1|Add0~34\ : std_logic;
SIGNAL \C1|Add0~1_sumout\ : std_logic;
SIGNAL \C1|Equal0~2_combout\ : std_logic;
SIGNAL \C1|Equal0~1_combout\ : std_logic;
SIGNAL \C1|Equal0~3_combout\ : std_logic;
SIGNAL \C1|index~3_combout\ : std_logic;
SIGNAL \C1|index[0]~0_combout\ : std_logic;
SIGNAL \C1|index~2_combout\ : std_logic;
SIGNAL \C1|index~4_combout\ : std_logic;
SIGNAL \C1|index~1_combout\ : std_logic;
SIGNAL \C1|busy~0_combout\ : std_logic;
SIGNAL \Tx_start~q\ : std_logic;
SIGNAL \C1|busy~q\ : std_logic;
SIGNAL \key~input_o\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \ledg[0]~reg0_q\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \Tx_data[1]~feeder_combout\ : std_logic;
SIGNAL \ledg[1]~reg0_q\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \Tx_data[2]~feeder_combout\ : std_logic;
SIGNAL \ledg[2]~reg0_q\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \Tx_data[3]~feeder_combout\ : std_logic;
SIGNAL \ledg[3]~reg0_q\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \ledg[4]~reg0_q\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \ledg[5]~reg0_q\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \Tx_data[6]~feeder_combout\ : std_logic;
SIGNAL \ledg[6]~reg0_q\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \Tx_data[7]~feeder_combout\ : std_logic;
SIGNAL \ledg[7]~reg0_q\ : std_logic;
SIGNAL \C1|process_0~0_combout\ : std_logic;
SIGNAL \C1|Mux0~0_combout\ : std_logic;
SIGNAL \C1|Mux0~1_combout\ : std_logic;
SIGNAL \C1|datafll[3]~feeder_combout\ : std_logic;
SIGNAL \C1|Mux0~2_combout\ : std_logic;
SIGNAL \C1|Mux0~3_combout\ : std_logic;
SIGNAL \C1|Tx_line~q\ : std_logic;
SIGNAL \C1|index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C2|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C2|datafll\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C1|prscl\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \C2|prscl\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \C2|index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL Tx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \C1|datafll\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C2|ALT_INV_index[2]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|ALT_INV_index[1]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|ALT_INV_index[0]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|ALT_INV_index[3]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|ALT_INV_prscl[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sw[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_UART_RXD~input_o\ : std_logic;
SIGNAL \ALT_INV_key~input_o\ : std_logic;
SIGNAL \C2|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \C2|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \C2|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \C2|ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \C2|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \C1|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \C1|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \C1|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Tx_start~q\ : std_logic;
SIGNAL \C1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \C2|ALT_INV_datafll\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C2|ALT_INV_rx_flag~q\ : std_logic;
SIGNAL \C2|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \C2|ALT_INV_data[2]~0_combout\ : std_logic;
SIGNAL \C2|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \C2|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \C2|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \C2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \C2|ALT_INV_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \C1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \C1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \C1|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \C1|ALT_INV_datafll\ : std_logic_vector(8 DOWNTO 1);
SIGNAL \C1|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \C1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \C1|ALT_INV_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_Tx_data : std_logic_vector(2 DOWNTO 2);
SIGNAL \C2|ALT_INV_busy~q\ : std_logic;
SIGNAL \C2|ALT_INV_prscl\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \C1|ALT_INV_prscl\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \C1|ALT_INV_busy~q\ : std_logic;
SIGNAL \C2|ALT_INV_data\ : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_clock_50 <= clock_50;
ww_sw <= sw;
ledr <= ww_ledr;
ledg <= ww_ledg;
ww_key <= key;
UART_TXD <= ww_UART_TXD;
ww_UART_RXD <= UART_RXD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\C2|ALT_INV_index[2]~DUPLICATE_q\ <= NOT \C2|index[2]~DUPLICATE_q\;
\C2|ALT_INV_index[1]~DUPLICATE_q\ <= NOT \C2|index[1]~DUPLICATE_q\;
\C2|ALT_INV_index[0]~DUPLICATE_q\ <= NOT \C2|index[0]~DUPLICATE_q\;
\C2|ALT_INV_index[3]~DUPLICATE_q\ <= NOT \C2|index[3]~DUPLICATE_q\;
\C2|ALT_INV_prscl[2]~DUPLICATE_q\ <= NOT \C2|prscl[2]~DUPLICATE_q\;
\ALT_INV_sw[7]~input_o\ <= NOT \sw[7]~input_o\;
\ALT_INV_sw[6]~input_o\ <= NOT \sw[6]~input_o\;
\ALT_INV_sw[3]~input_o\ <= NOT \sw[3]~input_o\;
\ALT_INV_sw[2]~input_o\ <= NOT \sw[2]~input_o\;
\ALT_INV_sw[1]~input_o\ <= NOT \sw[1]~input_o\;
\ALT_INV_sw[0]~input_o\ <= NOT \sw[0]~input_o\;
\ALT_INV_UART_RXD~input_o\ <= NOT \UART_RXD~input_o\;
\ALT_INV_key~input_o\ <= NOT \key~input_o\;
\C2|ALT_INV_LessThan0~2_combout\ <= NOT \C2|LessThan0~2_combout\;
\C2|ALT_INV_LessThan0~1_combout\ <= NOT \C2|LessThan0~1_combout\;
\C2|ALT_INV_LessThan0~0_combout\ <= NOT \C2|LessThan0~0_combout\;
\C2|ALT_INV_Add1~1_combout\ <= NOT \C2|Add1~1_combout\;
\C2|ALT_INV_Add1~0_combout\ <= NOT \C2|Add1~0_combout\;
\C1|ALT_INV_LessThan0~2_combout\ <= NOT \C1|LessThan0~2_combout\;
\C1|ALT_INV_LessThan0~1_combout\ <= NOT \C1|LessThan0~1_combout\;
\C1|ALT_INV_LessThan0~0_combout\ <= NOT \C1|LessThan0~0_combout\;
\ALT_INV_Tx_start~q\ <= NOT \Tx_start~q\;
\C1|ALT_INV_Equal0~3_combout\ <= NOT \C1|Equal0~3_combout\;
\C2|ALT_INV_datafll\(8) <= NOT \C2|datafll\(8);
\C2|ALT_INV_datafll\(7) <= NOT \C2|datafll\(7);
\C2|ALT_INV_datafll\(6) <= NOT \C2|datafll\(6);
\C2|ALT_INV_datafll\(5) <= NOT \C2|datafll\(5);
\C2|ALT_INV_datafll\(4) <= NOT \C2|datafll\(4);
\C2|ALT_INV_datafll\(3) <= NOT \C2|datafll\(3);
\C2|ALT_INV_datafll\(2) <= NOT \C2|datafll\(2);
\C2|ALT_INV_rx_flag~q\ <= NOT \C2|rx_flag~q\;
\C2|ALT_INV_LessThan1~0_combout\ <= NOT \C2|LessThan1~0_combout\;
\C2|ALT_INV_data[2]~0_combout\ <= NOT \C2|data[2]~0_combout\;
\C2|ALT_INV_Equal0~3_combout\ <= NOT \C2|Equal0~3_combout\;
\C2|ALT_INV_Equal0~2_combout\ <= NOT \C2|Equal0~2_combout\;
\C2|ALT_INV_Equal0~1_combout\ <= NOT \C2|Equal0~1_combout\;
\C2|ALT_INV_Equal0~0_combout\ <= NOT \C2|Equal0~0_combout\;
\C2|ALT_INV_index\(2) <= NOT \C2|index\(2);
\C2|ALT_INV_index\(1) <= NOT \C2|index\(1);
\C2|ALT_INV_index\(0) <= NOT \C2|index\(0);
\C2|ALT_INV_index\(3) <= NOT \C2|index\(3);
\C2|ALT_INV_datafll\(9) <= NOT \C2|datafll\(9);
\C2|ALT_INV_datafll\(0) <= NOT \C2|datafll\(0);
\C2|ALT_INV_datafll\(1) <= NOT \C2|datafll\(1);
\C1|ALT_INV_Equal0~2_combout\ <= NOT \C1|Equal0~2_combout\;
\C1|ALT_INV_Equal0~1_combout\ <= NOT \C1|Equal0~1_combout\;
\C1|ALT_INV_Equal0~0_combout\ <= NOT \C1|Equal0~0_combout\;
\C1|ALT_INV_Mux0~2_combout\ <= NOT \C1|Mux0~2_combout\;
\C1|ALT_INV_datafll\(3) <= NOT \C1|datafll\(3);
\C1|ALT_INV_datafll\(2) <= NOT \C1|datafll\(2);
\C1|ALT_INV_Mux0~1_combout\ <= NOT \C1|Mux0~1_combout\;
\C1|ALT_INV_datafll\(8) <= NOT \C1|datafll\(8);
\C1|ALT_INV_datafll\(1) <= NOT \C1|datafll\(1);
\C1|ALT_INV_Mux0~0_combout\ <= NOT \C1|Mux0~0_combout\;
\C1|ALT_INV_index\(0) <= NOT \C1|index\(0);
\C1|ALT_INV_datafll\(7) <= NOT \C1|datafll\(7);
\C1|ALT_INV_datafll\(6) <= NOT \C1|datafll\(6);
\C1|ALT_INV_datafll\(5) <= NOT \C1|datafll\(5);
\C1|ALT_INV_datafll\(4) <= NOT \C1|datafll\(4);
\C1|ALT_INV_index\(1) <= NOT \C1|index\(1);
\C1|ALT_INV_index\(3) <= NOT \C1|index\(3);
\C1|ALT_INV_index\(2) <= NOT \C1|index\(2);
ALT_INV_Tx_data(2) <= NOT Tx_data(2);
\C2|ALT_INV_busy~q\ <= NOT \C2|busy~q\;
\C2|ALT_INV_prscl\(11) <= NOT \C2|prscl\(11);
\C2|ALT_INV_prscl\(10) <= NOT \C2|prscl\(10);
\C2|ALT_INV_prscl\(9) <= NOT \C2|prscl\(9);
\C2|ALT_INV_prscl\(8) <= NOT \C2|prscl\(8);
\C2|ALT_INV_prscl\(7) <= NOT \C2|prscl\(7);
\C2|ALT_INV_prscl\(6) <= NOT \C2|prscl\(6);
\C2|ALT_INV_prscl\(4) <= NOT \C2|prscl\(4);
\C2|ALT_INV_prscl\(2) <= NOT \C2|prscl\(2);
\C2|ALT_INV_prscl\(1) <= NOT \C2|prscl\(1);
\C2|ALT_INV_prscl\(0) <= NOT \C2|prscl\(0);
\C2|ALT_INV_prscl\(12) <= NOT \C2|prscl\(12);
\C2|ALT_INV_prscl\(5) <= NOT \C2|prscl\(5);
\C2|ALT_INV_prscl\(3) <= NOT \C2|prscl\(3);
\C1|ALT_INV_prscl\(7) <= NOT \C1|prscl\(7);
\C1|ALT_INV_prscl\(8) <= NOT \C1|prscl\(8);
\C1|ALT_INV_prscl\(12) <= NOT \C1|prscl\(12);
\C1|ALT_INV_prscl\(11) <= NOT \C1|prscl\(11);
\C1|ALT_INV_prscl\(5) <= NOT \C1|prscl\(5);
\C1|ALT_INV_prscl\(4) <= NOT \C1|prscl\(4);
\C1|ALT_INV_prscl\(3) <= NOT \C1|prscl\(3);
\C1|ALT_INV_prscl\(9) <= NOT \C1|prscl\(9);
\C1|ALT_INV_prscl\(10) <= NOT \C1|prscl\(10);
\C1|ALT_INV_prscl\(2) <= NOT \C1|prscl\(2);
\C1|ALT_INV_prscl\(1) <= NOT \C1|prscl\(1);
\C1|ALT_INV_prscl\(0) <= NOT \C1|prscl\(0);
\C1|ALT_INV_prscl\(6) <= NOT \C1|prscl\(6);
\C1|ALT_INV_busy~q\ <= NOT \C1|busy~q\;
\C2|ALT_INV_data\(6) <= NOT \C2|data\(6);
\C2|ALT_INV_data\(5) <= NOT \C2|data\(5);
\C2|ALT_INV_data\(4) <= NOT \C2|data\(4);
\C2|ALT_INV_data\(3) <= NOT \C2|data\(3);
\C2|ALT_INV_data\(1) <= NOT \C2|data\(1);
\C2|ALT_INV_data\(0) <= NOT \C2|data\(0);

-- Location: IOOBUF_X14_Y61_N53
\ledr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(0));

-- Location: IOOBUF_X15_Y61_N36
\ledr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(1));

-- Location: IOOBUF_X15_Y61_N53
\ledr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(2));

-- Location: IOOBUF_X14_Y61_N36
\ledr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(3));

-- Location: IOOBUF_X14_Y61_N19
\ledr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(4));

-- Location: IOOBUF_X12_Y61_N53
\ledr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(5));

-- Location: IOOBUF_X12_Y61_N2
\ledr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(6));

-- Location: IOOBUF_X14_Y61_N2
\ledr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(7));

-- Location: IOOBUF_X10_Y61_N42
\ledg[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledg[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledg(0));

-- Location: IOOBUF_X10_Y61_N59
\ledg[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledg[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledg(1));

-- Location: IOOBUF_X10_Y61_N76
\ledg[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledg[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledg(2));

-- Location: IOOBUF_X10_Y61_N93
\ledg[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledg[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledg(3));

-- Location: IOOBUF_X21_Y61_N36
\ledg[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledg[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledg(4));

-- Location: IOOBUF_X21_Y61_N53
\ledg[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledg[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledg(5));

-- Location: IOOBUF_X19_Y61_N2
\ledg[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledg[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledg(6));

-- Location: IOOBUF_X19_Y61_N19
\ledg[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledg[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledg(7));

-- Location: IOOBUF_X18_Y61_N19
\UART_TXD~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|Tx_line~q\,
	devoe => ww_devoe,
	o => ww_UART_TXD);

-- Location: IOIBUF_X38_Y61_N1
\clock_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: CLKCTRL_G12
\clock_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~input_o\,
	outclk => \clock_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X31_Y60_N0
\C2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|Add0~13_sumout\ = SUM(( \C2|prscl\(0) ) + ( VCC ) + ( !VCC ))
-- \C2|Add0~14\ = CARRY(( \C2|prscl\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|ALT_INV_prscl\(0),
	cin => GND,
	sumout => \C2|Add0~13_sumout\,
	cout => \C2|Add0~14\);

-- Location: FF_X31_Y60_N7
\C2|prscl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|Add0~21_sumout\,
	sclr => \C2|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|prscl\(2));

-- Location: LABCELL_X31_Y60_N48
\C2|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|LessThan0~2_combout\ = ( !\C2|prscl\(3) & ( (!\C2|prscl\(5) & ((!\C2|prscl\(0)) # ((!\C2|prscl\(1)) # (!\C2|prscl\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001000110011001100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_prscl\(0),
	datab => \C2|ALT_INV_prscl\(5),
	datac => \C2|ALT_INV_prscl\(1),
	datad => \C2|ALT_INV_prscl\(2),
	dataf => \C2|ALT_INV_prscl\(3),
	combout => \C2|LessThan0~2_combout\);

-- Location: LABCELL_X31_Y60_N51
\C2|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|LessThan0~0_combout\ = ( \C2|prscl\(6) & ( (\C2|prscl\(4)) # (\C2|prscl\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|ALT_INV_prscl\(5),
	datac => \C2|ALT_INV_prscl\(4),
	dataf => \C2|ALT_INV_prscl\(6),
	combout => \C2|LessThan0~0_combout\);

-- Location: LABCELL_X30_Y60_N51
\C2|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|LessThan0~1_combout\ = ( !\C2|prscl\(9) & ( (!\C2|prscl\(7) & !\C2|prscl\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_prscl\(7),
	datac => \C2|ALT_INV_prscl\(8),
	datae => \C2|ALT_INV_prscl\(9),
	combout => \C2|LessThan0~1_combout\);

-- Location: LABCELL_X31_Y60_N33
\C2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|Add0~49_sumout\ = SUM(( \C2|prscl\(11) ) + ( GND ) + ( \C2|Add0~46\ ))
-- \C2|Add0~50\ = CARRY(( \C2|prscl\(11) ) + ( GND ) + ( \C2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_prscl\(11),
	cin => \C2|Add0~46\,
	sumout => \C2|Add0~49_sumout\,
	cout => \C2|Add0~50\);

-- Location: LABCELL_X31_Y60_N36
\C2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|Add0~9_sumout\ = SUM(( \C2|prscl\(12) ) + ( GND ) + ( \C2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|ALT_INV_prscl\(12),
	cin => \C2|Add0~50\,
	sumout => \C2|Add0~9_sumout\);

-- Location: FF_X31_Y60_N38
\C2|prscl[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|Add0~9_sumout\,
	sclr => \C2|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|prscl\(12));

-- Location: LABCELL_X31_Y60_N54
\C2|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|LessThan0~3_combout\ = ( \C2|prscl\(12) & ( \C2|prscl\(11) ) ) # ( \C2|prscl\(12) & ( !\C2|prscl\(11) & ( (\C2|prscl\(10) & ((!\C2|LessThan0~1_combout\) # ((!\C2|LessThan0~2_combout\ & \C2|LessThan0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000001000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_LessThan0~2_combout\,
	datab => \C2|ALT_INV_prscl\(10),
	datac => \C2|ALT_INV_LessThan0~0_combout\,
	datad => \C2|ALT_INV_LessThan0~1_combout\,
	datae => \C2|ALT_INV_prscl\(12),
	dataf => \C2|ALT_INV_prscl\(11),
	combout => \C2|LessThan0~3_combout\);

-- Location: FF_X31_Y60_N2
\C2|prscl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|Add0~13_sumout\,
	sclr => \C2|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|prscl\(0));

-- Location: LABCELL_X31_Y60_N3
\C2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|Add0~17_sumout\ = SUM(( \C2|prscl\(1) ) + ( GND ) + ( \C2|Add0~14\ ))
-- \C2|Add0~18\ = CARRY(( \C2|prscl\(1) ) + ( GND ) + ( \C2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_prscl\(1),
	cin => \C2|Add0~14\,
	sumout => \C2|Add0~17_sumout\,
	cout => \C2|Add0~18\);

-- Location: FF_X31_Y60_N5
\C2|prscl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|Add0~17_sumout\,
	sclr => \C2|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|prscl\(1));

-- Location: LABCELL_X31_Y60_N6
\C2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|Add0~21_sumout\ = SUM(( \C2|prscl[2]~DUPLICATE_q\ ) + ( GND ) + ( \C2|Add0~18\ ))
-- \C2|Add0~22\ = CARRY(( \C2|prscl[2]~DUPLICATE_q\ ) + ( GND ) + ( \C2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|ALT_INV_prscl[2]~DUPLICATE_q\,
	cin => \C2|Add0~18\,
	sumout => \C2|Add0~21_sumout\,
	cout => \C2|Add0~22\);

-- Location: FF_X31_Y60_N8
\C2|prscl[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|Add0~21_sumout\,
	sclr => \C2|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|prscl[2]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y60_N9
\C2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|Add0~1_sumout\ = SUM(( \C2|prscl\(3) ) + ( GND ) + ( \C2|Add0~22\ ))
-- \C2|Add0~2\ = CARRY(( \C2|prscl\(3) ) + ( GND ) + ( \C2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|ALT_INV_prscl\(3),
	cin => \C2|Add0~22\,
	sumout => \C2|Add0~1_sumout\,
	cout => \C2|Add0~2\);

-- Location: FF_X31_Y60_N11
\C2|prscl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|Add0~1_sumout\,
	sclr => \C2|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|prscl\(3));

-- Location: LABCELL_X31_Y60_N12
\C2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|Add0~25_sumout\ = SUM(( \C2|prscl\(4) ) + ( GND ) + ( \C2|Add0~2\ ))
-- \C2|Add0~26\ = CARRY(( \C2|prscl\(4) ) + ( GND ) + ( \C2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|ALT_INV_prscl\(4),
	cin => \C2|Add0~2\,
	sumout => \C2|Add0~25_sumout\,
	cout => \C2|Add0~26\);

-- Location: FF_X31_Y60_N14
\C2|prscl[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|Add0~25_sumout\,
	sclr => \C2|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|prscl\(4));

-- Location: LABCELL_X31_Y60_N15
\C2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|Add0~5_sumout\ = SUM(( \C2|prscl\(5) ) + ( GND ) + ( \C2|Add0~26\ ))
-- \C2|Add0~6\ = CARRY(( \C2|prscl\(5) ) + ( GND ) + ( \C2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|ALT_INV_prscl\(5),
	cin => \C2|Add0~26\,
	sumout => \C2|Add0~5_sumout\,
	cout => \C2|Add0~6\);

-- Location: FF_X31_Y60_N17
\C2|prscl[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|Add0~5_sumout\,
	sclr => \C2|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|prscl\(5));

-- Location: LABCELL_X31_Y60_N18
\C2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|Add0~29_sumout\ = SUM(( \C2|prscl\(6) ) + ( GND ) + ( \C2|Add0~6\ ))
-- \C2|Add0~30\ = CARRY(( \C2|prscl\(6) ) + ( GND ) + ( \C2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|ALT_INV_prscl\(6),
	cin => \C2|Add0~6\,
	sumout => \C2|Add0~29_sumout\,
	cout => \C2|Add0~30\);

-- Location: FF_X31_Y60_N20
\C2|prscl[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|Add0~29_sumout\,
	sclr => \C2|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|prscl\(6));

-- Location: LABCELL_X31_Y60_N21
\C2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|Add0~33_sumout\ = SUM(( \C2|prscl\(7) ) + ( GND ) + ( \C2|Add0~30\ ))
-- \C2|Add0~34\ = CARRY(( \C2|prscl\(7) ) + ( GND ) + ( \C2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_prscl\(7),
	cin => \C2|Add0~30\,
	sumout => \C2|Add0~33_sumout\,
	cout => \C2|Add0~34\);

-- Location: FF_X31_Y60_N23
\C2|prscl[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|Add0~33_sumout\,
	sclr => \C2|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|prscl\(7));

-- Location: LABCELL_X31_Y60_N24
\C2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|Add0~37_sumout\ = SUM(( \C2|prscl\(8) ) + ( GND ) + ( \C2|Add0~34\ ))
-- \C2|Add0~38\ = CARRY(( \C2|prscl\(8) ) + ( GND ) + ( \C2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|ALT_INV_prscl\(8),
	cin => \C2|Add0~34\,
	sumout => \C2|Add0~37_sumout\,
	cout => \C2|Add0~38\);

-- Location: FF_X31_Y60_N26
\C2|prscl[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|Add0~37_sumout\,
	sclr => \C2|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|prscl\(8));

-- Location: LABCELL_X31_Y60_N27
\C2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|Add0~41_sumout\ = SUM(( \C2|prscl\(9) ) + ( GND ) + ( \C2|Add0~38\ ))
-- \C2|Add0~42\ = CARRY(( \C2|prscl\(9) ) + ( GND ) + ( \C2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_prscl\(9),
	cin => \C2|Add0~38\,
	sumout => \C2|Add0~41_sumout\,
	cout => \C2|Add0~42\);

-- Location: FF_X31_Y60_N29
\C2|prscl[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|Add0~41_sumout\,
	sclr => \C2|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|prscl\(9));

-- Location: LABCELL_X31_Y60_N30
\C2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|Add0~45_sumout\ = SUM(( \C2|prscl\(10) ) + ( GND ) + ( \C2|Add0~42\ ))
-- \C2|Add0~46\ = CARRY(( \C2|prscl\(10) ) + ( GND ) + ( \C2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|ALT_INV_prscl\(10),
	cin => \C2|Add0~42\,
	sumout => \C2|Add0~45_sumout\,
	cout => \C2|Add0~46\);

-- Location: FF_X31_Y60_N32
\C2|prscl[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|Add0~45_sumout\,
	sclr => \C2|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|prscl\(10));

-- Location: FF_X31_Y60_N35
\C2|prscl[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|Add0~49_sumout\,
	sclr => \C2|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|prscl\(11));

-- Location: LABCELL_X30_Y60_N39
\C2|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|Equal0~2_combout\ = ( !\C2|prscl\(10) & ( (\C2|prscl\(11) & (!\C2|prscl\(9) & (\C2|prscl\(8) & \C2|prscl\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_prscl\(11),
	datab => \C2|ALT_INV_prscl\(9),
	datac => \C2|ALT_INV_prscl\(8),
	datad => \C2|ALT_INV_prscl\(7),
	dataf => \C2|ALT_INV_prscl\(10),
	combout => \C2|Equal0~2_combout\);

-- Location: LABCELL_X31_Y60_N42
\C2|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|Equal0~1_combout\ = ( !\C2|prscl\(1) & ( \C2|prscl\(6) & ( (!\C2|prscl\(0) & (\C2|prscl[2]~DUPLICATE_q\ & (!\C2|prscl\(12) & !\C2|prscl\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_prscl\(0),
	datab => \C2|ALT_INV_prscl[2]~DUPLICATE_q\,
	datac => \C2|ALT_INV_prscl\(12),
	datad => \C2|ALT_INV_prscl\(4),
	datae => \C2|ALT_INV_prscl\(1),
	dataf => \C2|ALT_INV_prscl\(6),
	combout => \C2|Equal0~1_combout\);

-- Location: LABCELL_X30_Y60_N30
\C2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|Equal0~0_combout\ = (!\C2|prscl\(5) & !\C2|prscl\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_prscl\(5),
	datac => \C2|ALT_INV_prscl\(3),
	combout => \C2|Equal0~0_combout\);

-- Location: LABCELL_X30_Y60_N36
\C2|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|Equal0~3_combout\ = ( \C2|Equal0~0_combout\ & ( (\C2|Equal0~2_combout\ & \C2|Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|ALT_INV_Equal0~2_combout\,
	datad => \C2|ALT_INV_Equal0~1_combout\,
	dataf => \C2|ALT_INV_Equal0~0_combout\,
	combout => \C2|Equal0~3_combout\);

-- Location: LABCELL_X30_Y60_N33
\C2|rx_flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|rx_flag~0_combout\ = !\C2|data[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|ALT_INV_data[2]~0_combout\,
	combout => \C2|rx_flag~0_combout\);

-- Location: IOIBUF_X18_Y61_N1
\UART_RXD~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UART_RXD,
	o => \UART_RXD~input_o\);

-- Location: FF_X25_Y60_N58
\C2|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|index[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|index\(0));

-- Location: LABCELL_X27_Y60_N18
\C2|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|Add1~1_combout\ = ( \C2|index[1]~DUPLICATE_q\ & ( \C2|index\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|ALT_INV_index\(0),
	dataf => \C2|ALT_INV_index[1]~DUPLICATE_q\,
	combout => \C2|Add1~1_combout\);

-- Location: FF_X27_Y60_N35
\C2|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|index[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|index\(2));

-- Location: LABCELL_X27_Y60_N33
\C2|index[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|index[2]~3_combout\ = ( \C2|index\(2) & ( \C2|rx_flag~q\ & ( (!\C2|Equal0~3_combout\) # ((!\C2|Add1~1_combout\) # (\C2|LessThan1~0_combout\)) ) ) ) # ( !\C2|index\(2) & ( \C2|rx_flag~q\ & ( (\C2|Equal0~3_combout\ & (!\C2|LessThan1~0_combout\ & 
-- \C2|Add1~1_combout\)) ) ) ) # ( \C2|index\(2) & ( !\C2|rx_flag~q\ & ( (!\C2|Equal0~3_combout\ & (\UART_RXD~input_o\)) # (\C2|Equal0~3_combout\ & ((!\C2|LessThan1~0_combout\ & ((!\C2|Add1~1_combout\))) # (\C2|LessThan1~0_combout\ & (\UART_RXD~input_o\)))) 
-- ) ) ) # ( !\C2|index\(2) & ( !\C2|rx_flag~q\ & ( (\C2|Equal0~3_combout\ & (!\C2|LessThan1~0_combout\ & \C2|Add1~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000011101010100010100000000001100001111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_UART_RXD~input_o\,
	datab => \C2|ALT_INV_Equal0~3_combout\,
	datac => \C2|ALT_INV_LessThan1~0_combout\,
	datad => \C2|ALT_INV_Add1~1_combout\,
	datae => \C2|ALT_INV_index\(2),
	dataf => \C2|ALT_INV_rx_flag~q\,
	combout => \C2|index[2]~3_combout\);

-- Location: FF_X27_Y60_N34
\C2|index[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|index[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|index[2]~DUPLICATE_q\);

-- Location: FF_X25_Y60_N31
\C2|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|index[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|index\(1));

-- Location: MLABCELL_X25_Y60_N9
\C2|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|Add1~0_combout\ = ( \C2|index[2]~DUPLICATE_q\ & ( (\C2|index\(1) & \C2|index[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_index\(1),
	datac => \C2|ALT_INV_index[0]~DUPLICATE_q\,
	dataf => \C2|ALT_INV_index[2]~DUPLICATE_q\,
	combout => \C2|Add1~0_combout\);

-- Location: FF_X25_Y60_N23
\C2|index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|index[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|index\(3));

-- Location: MLABCELL_X25_Y60_N21
\C2|index[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|index[3]~0_combout\ = ( \C2|index\(3) & ( \C2|LessThan1~0_combout\ & ( (\UART_RXD~input_o\) # (\C2|rx_flag~q\) ) ) ) # ( \C2|index\(3) & ( !\C2|LessThan1~0_combout\ & ( (!\C2|Equal0~3_combout\ & (((\UART_RXD~input_o\)) # (\C2|rx_flag~q\))) # 
-- (\C2|Equal0~3_combout\ & (((!\C2|Add1~0_combout\)))) ) ) ) # ( !\C2|index\(3) & ( !\C2|LessThan1~0_combout\ & ( (\C2|Add1~0_combout\ & \C2|Equal0~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010111111100110000000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_rx_flag~q\,
	datab => \C2|ALT_INV_Add1~0_combout\,
	datac => \ALT_INV_UART_RXD~input_o\,
	datad => \C2|ALT_INV_Equal0~3_combout\,
	datae => \C2|ALT_INV_index\(3),
	dataf => \C2|ALT_INV_LessThan1~0_combout\,
	combout => \C2|index[3]~0_combout\);

-- Location: FF_X25_Y60_N22
\C2|index[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|index[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|index[3]~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y60_N6
\C2|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|LessThan1~0_combout\ = ( \C2|index[3]~DUPLICATE_q\ & ( ((\C2|index[0]~DUPLICATE_q\) # (\C2|index[2]~DUPLICATE_q\)) # (\C2|index[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|ALT_INV_index[1]~DUPLICATE_q\,
	datac => \C2|ALT_INV_index[2]~DUPLICATE_q\,
	datad => \C2|ALT_INV_index[0]~DUPLICATE_q\,
	dataf => \C2|ALT_INV_index[3]~DUPLICATE_q\,
	combout => \C2|LessThan1~0_combout\);

-- Location: LABCELL_X30_Y60_N12
\C2|busy~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|busy~0_combout\ = ( \C2|Equal0~1_combout\ & ( \C2|LessThan1~0_combout\ & ( (!\C2|rx_flag~q\ & ((!\UART_RXD~input_o\) # ((\C2|Equal0~2_combout\ & \C2|Equal0~0_combout\)))) # (\C2|rx_flag~q\ & (\C2|Equal0~2_combout\ & ((\C2|Equal0~0_combout\)))) ) ) ) # 
-- ( !\C2|Equal0~1_combout\ & ( \C2|LessThan1~0_combout\ & ( (!\C2|rx_flag~q\ & !\UART_RXD~input_o\) ) ) ) # ( \C2|Equal0~1_combout\ & ( !\C2|LessThan1~0_combout\ & ( (!\C2|rx_flag~q\ & !\UART_RXD~input_o\) ) ) ) # ( !\C2|Equal0~1_combout\ & ( 
-- !\C2|LessThan1~0_combout\ & ( (!\C2|rx_flag~q\ & !\UART_RXD~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_rx_flag~q\,
	datab => \C2|ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_UART_RXD~input_o\,
	datad => \C2|ALT_INV_Equal0~0_combout\,
	datae => \C2|ALT_INV_Equal0~1_combout\,
	dataf => \C2|ALT_INV_LessThan1~0_combout\,
	combout => \C2|busy~0_combout\);

-- Location: FF_X30_Y60_N35
\C2|rx_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|rx_flag~0_combout\,
	ena => \C2|busy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|rx_flag~q\);

-- Location: MLABCELL_X25_Y60_N57
\C2|index[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|index[0]~1_combout\ = ( \C2|index\(0) & ( \C2|LessThan1~0_combout\ & ( (\UART_RXD~input_o\) # (\C2|rx_flag~q\) ) ) ) # ( \C2|index\(0) & ( !\C2|LessThan1~0_combout\ & ( (!\C2|Equal0~3_combout\ & ((\UART_RXD~input_o\) # (\C2|rx_flag~q\))) ) ) ) # ( 
-- !\C2|index\(0) & ( !\C2|LessThan1~0_combout\ & ( \C2|Equal0~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010111110000000000000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_rx_flag~q\,
	datac => \ALT_INV_UART_RXD~input_o\,
	datad => \C2|ALT_INV_Equal0~3_combout\,
	datae => \C2|ALT_INV_index\(0),
	dataf => \C2|ALT_INV_LessThan1~0_combout\,
	combout => \C2|index[0]~1_combout\);

-- Location: FF_X25_Y60_N59
\C2|index[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|index[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|index[0]~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y60_N30
\C2|index[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|index[1]~2_combout\ = ( \C2|index\(1) & ( \C2|LessThan1~0_combout\ & ( (\UART_RXD~input_o\) # (\C2|rx_flag~q\) ) ) ) # ( \C2|index\(1) & ( !\C2|LessThan1~0_combout\ & ( (!\C2|Equal0~3_combout\ & (((\UART_RXD~input_o\) # (\C2|rx_flag~q\)))) # 
-- (\C2|Equal0~3_combout\ & (!\C2|index[0]~DUPLICATE_q\)) ) ) ) # ( !\C2|index\(1) & ( !\C2|LessThan1~0_combout\ & ( (\C2|Equal0~3_combout\ & \C2|index[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001010011101110111000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_Equal0~3_combout\,
	datab => \C2|ALT_INV_index[0]~DUPLICATE_q\,
	datac => \C2|ALT_INV_rx_flag~q\,
	datad => \ALT_INV_UART_RXD~input_o\,
	datae => \C2|ALT_INV_index\(1),
	dataf => \C2|ALT_INV_LessThan1~0_combout\,
	combout => \C2|index[1]~2_combout\);

-- Location: FF_X25_Y60_N32
\C2|index[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|index[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|index[1]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y60_N39
\C2|data[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|data[2]~0_combout\ = ( \C2|Equal0~3_combout\ & ( \C2|index\(2) & ( \C2|index\(3) ) ) ) # ( \C2|Equal0~3_combout\ & ( !\C2|index\(2) & ( (\C2|index\(3) & ((\C2|index\(0)) # (\C2|index[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100110001001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_index[1]~DUPLICATE_q\,
	datab => \C2|ALT_INV_index\(3),
	datac => \C2|ALT_INV_index\(0),
	datae => \C2|ALT_INV_Equal0~3_combout\,
	dataf => \C2|ALT_INV_index\(2),
	combout => \C2|data[2]~0_combout\);

-- Location: LABCELL_X38_Y60_N0
\C2|busy~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|busy~1_combout\ = ( !\C2|data[2]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \C2|ALT_INV_data[2]~0_combout\,
	combout => \C2|busy~1_combout\);

-- Location: FF_X38_Y60_N2
\C2|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \C2|busy~1_combout\,
	ena => \C2|busy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|busy~q\);

-- Location: LABCELL_X28_Y60_N24
\C2|datafll[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|datafll[1]~0_combout\ = ( \C2|datafll\(1) & ( \C2|index[2]~DUPLICATE_q\ ) ) # ( \C2|datafll\(1) & ( !\C2|index[2]~DUPLICATE_q\ & ( (((!\C2|index\(0)) # (\C2|index[1]~DUPLICATE_q\)) # (\UART_RXD~input_o\)) # (\C2|index\(3)) ) ) ) # ( !\C2|datafll\(1) & 
-- ( !\C2|index[2]~DUPLICATE_q\ & ( (!\C2|index\(3) & (\UART_RXD~input_o\ & (!\C2|index[1]~DUPLICATE_q\ & \C2|index\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000111111110111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_index\(3),
	datab => \ALT_INV_UART_RXD~input_o\,
	datac => \C2|ALT_INV_index[1]~DUPLICATE_q\,
	datad => \C2|ALT_INV_index\(0),
	datae => \C2|ALT_INV_datafll\(1),
	dataf => \C2|ALT_INV_index[2]~DUPLICATE_q\,
	combout => \C2|datafll[1]~0_combout\);

-- Location: FF_X28_Y60_N26
\C2|datafll[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|datafll[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datafll\(1));

-- Location: LABCELL_X28_Y60_N33
\C2|data[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|data[0]~feeder_combout\ = \C2|datafll\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_datafll\(1),
	combout => \C2|data[0]~feeder_combout\);

-- Location: MLABCELL_X25_Y60_N36
\C2|datafll[9]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|datafll[9]~2_combout\ = ( \C2|datafll\(9) & ( \C2|index[0]~DUPLICATE_q\ & ( (!\C2|index\(3)) # (((\C2|index[1]~DUPLICATE_q\) # (\C2|index[2]~DUPLICATE_q\)) # (\UART_RXD~input_o\)) ) ) ) # ( !\C2|datafll\(9) & ( \C2|index[0]~DUPLICATE_q\ & ( 
-- (\C2|index\(3) & (\UART_RXD~input_o\ & (!\C2|index[2]~DUPLICATE_q\ & !\C2|index[1]~DUPLICATE_q\))) ) ) ) # ( \C2|datafll\(9) & ( !\C2|index[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100010000000000001011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_index\(3),
	datab => \ALT_INV_UART_RXD~input_o\,
	datac => \C2|ALT_INV_index[2]~DUPLICATE_q\,
	datad => \C2|ALT_INV_index[1]~DUPLICATE_q\,
	datae => \C2|ALT_INV_datafll\(9),
	dataf => \C2|ALT_INV_index[0]~DUPLICATE_q\,
	combout => \C2|datafll[9]~2_combout\);

-- Location: FF_X25_Y60_N38
\C2|datafll[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|datafll[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datafll\(9));

-- Location: MLABCELL_X25_Y60_N0
\C2|datafll[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|datafll[0]~1_combout\ = ( \C2|datafll\(0) & ( \C2|index[0]~DUPLICATE_q\ ) ) # ( \C2|datafll\(0) & ( !\C2|index[0]~DUPLICATE_q\ & ( (((\C2|index[1]~DUPLICATE_q\) # (\C2|index[2]~DUPLICATE_q\)) # (\UART_RXD~input_o\)) # (\C2|index\(3)) ) ) ) # ( 
-- !\C2|datafll\(0) & ( !\C2|index[0]~DUPLICATE_q\ & ( (!\C2|index\(3) & (\UART_RXD~input_o\ & (!\C2|index[2]~DUPLICATE_q\ & !\C2|index[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000011111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_index\(3),
	datab => \ALT_INV_UART_RXD~input_o\,
	datac => \C2|ALT_INV_index[2]~DUPLICATE_q\,
	datad => \C2|ALT_INV_index[1]~DUPLICATE_q\,
	datae => \C2|ALT_INV_datafll\(0),
	dataf => \C2|ALT_INV_index[0]~DUPLICATE_q\,
	combout => \C2|datafll[0]~1_combout\);

-- Location: FF_X25_Y60_N2
\C2|datafll[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|datafll[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datafll\(0));

-- Location: MLABCELL_X25_Y60_N12
\C2|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|process_0~0_combout\ = ( \C2|datafll\(0) ) # ( !\C2|datafll\(0) & ( !\C2|datafll\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|ALT_INV_datafll\(9),
	datae => \C2|ALT_INV_datafll\(0),
	combout => \C2|process_0~0_combout\);

-- Location: FF_X28_Y60_N34
\C2|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|data[0]~feeder_combout\,
	sclr => \C2|process_0~0_combout\,
	ena => \C2|data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|data\(0));

-- Location: LABCELL_X38_Y60_N9
\ledr[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ledr[0]~reg0feeder_combout\ = ( \C2|data\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|ALT_INV_data\(0),
	combout => \ledr[0]~reg0feeder_combout\);

-- Location: FF_X38_Y60_N10
\ledr[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|ALT_INV_busy~q\,
	d => \ledr[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[0]~reg0_q\);

-- Location: MLABCELL_X25_Y60_N42
\C2|datafll[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|datafll[2]~3_combout\ = ( \C2|datafll\(2) & ( \C2|index[1]~DUPLICATE_q\ & ( (((\UART_RXD~input_o\) # (\C2|index[2]~DUPLICATE_q\)) # (\C2|index[0]~DUPLICATE_q\)) # (\C2|index\(3)) ) ) ) # ( !\C2|datafll\(2) & ( \C2|index[1]~DUPLICATE_q\ & ( 
-- (!\C2|index\(3) & (!\C2|index[0]~DUPLICATE_q\ & (!\C2|index[2]~DUPLICATE_q\ & \UART_RXD~input_o\))) ) ) ) # ( \C2|datafll\(2) & ( !\C2|index[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000100000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_index\(3),
	datab => \C2|ALT_INV_index[0]~DUPLICATE_q\,
	datac => \C2|ALT_INV_index[2]~DUPLICATE_q\,
	datad => \ALT_INV_UART_RXD~input_o\,
	datae => \C2|ALT_INV_datafll\(2),
	dataf => \C2|ALT_INV_index[1]~DUPLICATE_q\,
	combout => \C2|datafll[2]~3_combout\);

-- Location: FF_X25_Y60_N43
\C2|datafll[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|datafll[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datafll\(2));

-- Location: LABCELL_X28_Y60_N6
\C2|data[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|data[1]~feeder_combout\ = ( \C2|datafll\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|ALT_INV_datafll\(2),
	combout => \C2|data[1]~feeder_combout\);

-- Location: FF_X28_Y60_N7
\C2|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|data[1]~feeder_combout\,
	sclr => \C2|process_0~0_combout\,
	ena => \C2|data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|data\(1));

-- Location: LABCELL_X38_Y60_N24
\ledr[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ledr[1]~reg0feeder_combout\ = ( \C2|data\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|ALT_INV_data\(1),
	combout => \ledr[1]~reg0feeder_combout\);

-- Location: FF_X38_Y60_N25
\ledr[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|ALT_INV_busy~q\,
	d => \ledr[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[1]~reg0_q\);

-- Location: LABCELL_X28_Y60_N0
\C2|datafll[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|datafll[3]~4_combout\ = ( \C2|datafll\(3) & ( \C2|index[2]~DUPLICATE_q\ ) ) # ( \C2|datafll\(3) & ( !\C2|index[2]~DUPLICATE_q\ & ( (((!\C2|index[1]~DUPLICATE_q\) # (!\C2|index\(0))) # (\UART_RXD~input_o\)) # (\C2|index\(3)) ) ) ) # ( !\C2|datafll\(3) 
-- & ( !\C2|index[2]~DUPLICATE_q\ & ( (!\C2|index\(3) & (\UART_RXD~input_o\ & (\C2|index[1]~DUPLICATE_q\ & \C2|index\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111111111011100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_index\(3),
	datab => \ALT_INV_UART_RXD~input_o\,
	datac => \C2|ALT_INV_index[1]~DUPLICATE_q\,
	datad => \C2|ALT_INV_index\(0),
	datae => \C2|ALT_INV_datafll\(3),
	dataf => \C2|ALT_INV_index[2]~DUPLICATE_q\,
	combout => \C2|datafll[3]~4_combout\);

-- Location: FF_X28_Y60_N2
\C2|datafll[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|datafll[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datafll\(3));

-- Location: FF_X28_Y60_N10
\C2|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \C2|datafll\(3),
	sclr => \C2|process_0~0_combout\,
	sload => VCC,
	ena => \C2|data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|data\(2));

-- Location: FF_X38_Y60_N29
\ledr[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|ALT_INV_busy~q\,
	asdata => \C2|data\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[2]~reg0_q\);

-- Location: LABCELL_X27_Y60_N42
\C2|datafll[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|datafll[4]~5_combout\ = ( \C2|datafll\(4) & ( \C2|index[2]~DUPLICATE_q\ & ( (((\C2|index\(3)) # (\UART_RXD~input_o\)) # (\C2|index\(0))) # (\C2|index[1]~DUPLICATE_q\) ) ) ) # ( !\C2|datafll\(4) & ( \C2|index[2]~DUPLICATE_q\ & ( 
-- (!\C2|index[1]~DUPLICATE_q\ & (!\C2|index\(0) & (\UART_RXD~input_o\ & !\C2|index\(3)))) ) ) ) # ( \C2|datafll\(4) & ( !\C2|index[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_index[1]~DUPLICATE_q\,
	datab => \C2|ALT_INV_index\(0),
	datac => \ALT_INV_UART_RXD~input_o\,
	datad => \C2|ALT_INV_index\(3),
	datae => \C2|ALT_INV_datafll\(4),
	dataf => \C2|ALT_INV_index[2]~DUPLICATE_q\,
	combout => \C2|datafll[4]~5_combout\);

-- Location: FF_X27_Y60_N43
\C2|datafll[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|datafll[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datafll\(4));

-- Location: FF_X28_Y60_N13
\C2|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \C2|datafll\(4),
	sclr => \C2|process_0~0_combout\,
	sload => VCC,
	ena => \C2|data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|data\(3));

-- Location: LABCELL_X38_Y60_N6
\ledr[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ledr[3]~reg0feeder_combout\ = ( \C2|data\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|ALT_INV_data\(3),
	combout => \ledr[3]~reg0feeder_combout\);

-- Location: FF_X38_Y60_N7
\ledr[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|ALT_INV_busy~q\,
	d => \ledr[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[3]~reg0_q\);

-- Location: LABCELL_X28_Y60_N36
\C2|datafll[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|datafll[5]~6_combout\ = ( \C2|datafll\(5) & ( \C2|index[2]~DUPLICATE_q\ & ( (((!\C2|index\(0)) # (\C2|index[1]~DUPLICATE_q\)) # (\UART_RXD~input_o\)) # (\C2|index\(3)) ) ) ) # ( !\C2|datafll\(5) & ( \C2|index[2]~DUPLICATE_q\ & ( (!\C2|index\(3) & 
-- (\UART_RXD~input_o\ & (!\C2|index[1]~DUPLICATE_q\ & \C2|index\(0)))) ) ) ) # ( \C2|datafll\(5) & ( !\C2|index[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000001000001111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_index\(3),
	datab => \ALT_INV_UART_RXD~input_o\,
	datac => \C2|ALT_INV_index[1]~DUPLICATE_q\,
	datad => \C2|ALT_INV_index\(0),
	datae => \C2|ALT_INV_datafll\(5),
	dataf => \C2|ALT_INV_index[2]~DUPLICATE_q\,
	combout => \C2|datafll[5]~6_combout\);

-- Location: FF_X28_Y60_N38
\C2|datafll[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|datafll[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datafll\(5));

-- Location: FF_X28_Y60_N16
\C2|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \C2|datafll\(5),
	sclr => \C2|process_0~0_combout\,
	sload => VCC,
	ena => \C2|data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|data\(4));

-- Location: LABCELL_X38_Y60_N30
\ledr[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ledr[4]~reg0feeder_combout\ = ( \C2|data\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|ALT_INV_data\(4),
	combout => \ledr[4]~reg0feeder_combout\);

-- Location: FF_X38_Y60_N31
\ledr[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|ALT_INV_busy~q\,
	d => \ledr[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[4]~reg0_q\);

-- Location: LABCELL_X28_Y60_N42
\C2|datafll[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|datafll[6]~7_combout\ = ( \C2|datafll\(6) & ( \C2|index[2]~DUPLICATE_q\ & ( (((!\C2|index[1]~DUPLICATE_q\) # (\C2|index\(0))) # (\UART_RXD~input_o\)) # (\C2|index\(3)) ) ) ) # ( !\C2|datafll\(6) & ( \C2|index[2]~DUPLICATE_q\ & ( (!\C2|index\(3) & 
-- (\UART_RXD~input_o\ & (\C2|index[1]~DUPLICATE_q\ & !\C2|index\(0)))) ) ) ) # ( \C2|datafll\(6) & ( !\C2|index[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000010000000001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_index\(3),
	datab => \ALT_INV_UART_RXD~input_o\,
	datac => \C2|ALT_INV_index[1]~DUPLICATE_q\,
	datad => \C2|ALT_INV_index\(0),
	datae => \C2|ALT_INV_datafll\(6),
	dataf => \C2|ALT_INV_index[2]~DUPLICATE_q\,
	combout => \C2|datafll[6]~7_combout\);

-- Location: FF_X28_Y60_N44
\C2|datafll[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|datafll[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datafll\(6));

-- Location: FF_X28_Y60_N49
\C2|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \C2|datafll\(6),
	sclr => \C2|process_0~0_combout\,
	sload => VCC,
	ena => \C2|data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|data\(5));

-- Location: LABCELL_X38_Y60_N39
\ledr[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ledr[5]~reg0feeder_combout\ = ( \C2|data\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|ALT_INV_data\(5),
	combout => \ledr[5]~reg0feeder_combout\);

-- Location: FF_X38_Y60_N40
\ledr[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|ALT_INV_busy~q\,
	d => \ledr[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[5]~reg0_q\);

-- Location: LABCELL_X28_Y60_N18
\C2|datafll[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|datafll[7]~8_combout\ = ( \C2|datafll\(7) & ( \C2|index[2]~DUPLICATE_q\ & ( (((!\C2|index[1]~DUPLICATE_q\) # (!\C2|index\(0))) # (\UART_RXD~input_o\)) # (\C2|index\(3)) ) ) ) # ( !\C2|datafll\(7) & ( \C2|index[2]~DUPLICATE_q\ & ( (!\C2|index\(3) & 
-- (\UART_RXD~input_o\ & (\C2|index[1]~DUPLICATE_q\ & \C2|index\(0)))) ) ) ) # ( \C2|datafll\(7) & ( !\C2|index[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000101111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_index\(3),
	datab => \ALT_INV_UART_RXD~input_o\,
	datac => \C2|ALT_INV_index[1]~DUPLICATE_q\,
	datad => \C2|ALT_INV_index\(0),
	datae => \C2|ALT_INV_datafll\(7),
	dataf => \C2|ALT_INV_index[2]~DUPLICATE_q\,
	combout => \C2|datafll[7]~8_combout\);

-- Location: FF_X28_Y60_N20
\C2|datafll[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|datafll[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datafll\(7));

-- Location: FF_X28_Y60_N31
\C2|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \C2|datafll\(7),
	sclr => \C2|process_0~0_combout\,
	sload => VCC,
	ena => \C2|data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|data\(6));

-- Location: LABCELL_X38_Y60_N48
\ledr[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ledr[6]~reg0feeder_combout\ = ( \C2|data\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C2|ALT_INV_data\(6),
	combout => \ledr[6]~reg0feeder_combout\);

-- Location: FF_X38_Y60_N49
\ledr[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|ALT_INV_busy~q\,
	d => \ledr[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[6]~reg0_q\);

-- Location: LABCELL_X28_Y60_N54
\C2|datafll[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|datafll[8]~9_combout\ = ( \C2|datafll\(8) & ( \C2|index[2]~DUPLICATE_q\ ) ) # ( \C2|datafll\(8) & ( !\C2|index[2]~DUPLICATE_q\ & ( (!\C2|index\(3)) # (((\C2|index\(0)) # (\C2|index[1]~DUPLICATE_q\)) # (\UART_RXD~input_o\)) ) ) ) # ( !\C2|datafll\(8) & 
-- ( !\C2|index[2]~DUPLICATE_q\ & ( (\C2|index\(3) & (\UART_RXD~input_o\ & (!\C2|index[1]~DUPLICATE_q\ & !\C2|index\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000101111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|ALT_INV_index\(3),
	datab => \ALT_INV_UART_RXD~input_o\,
	datac => \C2|ALT_INV_index[1]~DUPLICATE_q\,
	datad => \C2|ALT_INV_index\(0),
	datae => \C2|ALT_INV_datafll\(8),
	dataf => \C2|ALT_INV_index[2]~DUPLICATE_q\,
	combout => \C2|datafll[8]~9_combout\);

-- Location: FF_X28_Y60_N56
\C2|datafll[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C2|datafll[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|datafll\(8));

-- Location: FF_X28_Y60_N52
\C2|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \C2|datafll\(8),
	sclr => \C2|process_0~0_combout\,
	sload => VCC,
	ena => \C2|data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|data\(7));

-- Location: FF_X38_Y60_N58
\ledr[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|ALT_INV_busy~q\,
	asdata => \C2|data\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[7]~reg0_q\);

-- Location: IOIBUF_X14_Y0_N35
\sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LABCELL_X15_Y60_N30
\Tx_data[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tx_data[0]~feeder_combout\ = ( \sw[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sw[0]~input_o\,
	combout => \Tx_data[0]~feeder_combout\);

-- Location: MLABCELL_X25_Y59_N0
\C1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~5_sumout\ = SUM(( \C1|prscl\(0) ) + ( VCC ) + ( !VCC ))
-- \C1|Add0~6\ = CARRY(( \C1|prscl\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_prscl\(0),
	cin => GND,
	sumout => \C1|Add0~5_sumout\,
	cout => \C1|Add0~6\);

-- Location: MLABCELL_X25_Y59_N18
\C1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~1_sumout\ = SUM(( \C1|prscl\(6) ) + ( GND ) + ( \C1|Add0~34\ ))
-- \C1|Add0~2\ = CARRY(( \C1|prscl\(6) ) + ( GND ) + ( \C1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_prscl\(6),
	cin => \C1|Add0~34\,
	sumout => \C1|Add0~1_sumout\,
	cout => \C1|Add0~2\);

-- Location: MLABCELL_X25_Y59_N21
\C1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~49_sumout\ = SUM(( \C1|prscl\(7) ) + ( GND ) + ( \C1|Add0~2\ ))
-- \C1|Add0~50\ = CARRY(( \C1|prscl\(7) ) + ( GND ) + ( \C1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_prscl\(7),
	cin => \C1|Add0~2\,
	sumout => \C1|Add0~49_sumout\,
	cout => \C1|Add0~50\);

-- Location: FF_X25_Y59_N23
\C1|prscl[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C1|Add0~49_sumout\,
	sclr => \C1|LessThan0~3_combout\,
	ena => \C1|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|prscl\(7));

-- Location: MLABCELL_X25_Y59_N24
\C1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~45_sumout\ = SUM(( \C1|prscl\(8) ) + ( GND ) + ( \C1|Add0~50\ ))
-- \C1|Add0~46\ = CARRY(( \C1|prscl\(8) ) + ( GND ) + ( \C1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_prscl\(8),
	cin => \C1|Add0~50\,
	sumout => \C1|Add0~45_sumout\,
	cout => \C1|Add0~46\);

-- Location: FF_X25_Y59_N26
\C1|prscl[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C1|Add0~45_sumout\,
	sclr => \C1|LessThan0~3_combout\,
	ena => \C1|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|prscl\(8));

-- Location: MLABCELL_X25_Y59_N27
\C1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~21_sumout\ = SUM(( \C1|prscl\(9) ) + ( GND ) + ( \C1|Add0~46\ ))
-- \C1|Add0~22\ = CARRY(( \C1|prscl\(9) ) + ( GND ) + ( \C1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_prscl\(9),
	cin => \C1|Add0~46\,
	sumout => \C1|Add0~21_sumout\,
	cout => \C1|Add0~22\);

-- Location: FF_X25_Y59_N28
\C1|prscl[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C1|Add0~21_sumout\,
	sclr => \C1|LessThan0~3_combout\,
	ena => \C1|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|prscl\(9));

-- Location: MLABCELL_X25_Y59_N30
\C1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~17_sumout\ = SUM(( \C1|prscl\(10) ) + ( GND ) + ( \C1|Add0~22\ ))
-- \C1|Add0~18\ = CARRY(( \C1|prscl\(10) ) + ( GND ) + ( \C1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_prscl\(10),
	cin => \C1|Add0~22\,
	sumout => \C1|Add0~17_sumout\,
	cout => \C1|Add0~18\);

-- Location: FF_X25_Y59_N31
\C1|prscl[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C1|Add0~17_sumout\,
	sclr => \C1|LessThan0~3_combout\,
	ena => \C1|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|prscl\(10));

-- Location: MLABCELL_X25_Y59_N33
\C1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~37_sumout\ = SUM(( \C1|prscl\(11) ) + ( GND ) + ( \C1|Add0~18\ ))
-- \C1|Add0~38\ = CARRY(( \C1|prscl\(11) ) + ( GND ) + ( \C1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_prscl\(11),
	cin => \C1|Add0~18\,
	sumout => \C1|Add0~37_sumout\,
	cout => \C1|Add0~38\);

-- Location: FF_X25_Y59_N35
\C1|prscl[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C1|Add0~37_sumout\,
	sclr => \C1|LessThan0~3_combout\,
	ena => \C1|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|prscl\(11));

-- Location: MLABCELL_X25_Y59_N36
\C1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~41_sumout\ = SUM(( \C1|prscl\(12) ) + ( GND ) + ( \C1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_prscl\(12),
	cin => \C1|Add0~38\,
	sumout => \C1|Add0~41_sumout\);

-- Location: FF_X25_Y59_N38
\C1|prscl[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C1|Add0~41_sumout\,
	sclr => \C1|LessThan0~3_combout\,
	ena => \C1|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|prscl\(12));

-- Location: MLABCELL_X25_Y59_N51
\C1|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|LessThan0~2_combout\ = ( \C1|prscl\(10) & ( \C1|prscl\(12) ) ) # ( !\C1|prscl\(10) & ( (\C1|prscl\(11) & \C1|prscl\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_prscl\(11),
	datad => \C1|ALT_INV_prscl\(12),
	dataf => \C1|ALT_INV_prscl\(10),
	combout => \C1|LessThan0~2_combout\);

-- Location: MLABCELL_X25_Y59_N42
\C1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Equal0~0_combout\ = ( \C1|prscl\(2) & ( (\C1|prscl\(1) & \C1|prscl\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_prscl\(1),
	datad => \C1|ALT_INV_prscl\(0),
	dataf => \C1|ALT_INV_prscl\(2),
	combout => \C1|Equal0~0_combout\);

-- Location: LABCELL_X23_Y59_N48
\C1|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|LessThan0~0_combout\ = (\C1|prscl\(6) & ((\C1|prscl\(4)) # (\C1|prscl\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_prscl\(5),
	datab => \C1|ALT_INV_prscl\(4),
	datac => \C1|ALT_INV_prscl\(6),
	combout => \C1|LessThan0~0_combout\);

-- Location: MLABCELL_X25_Y59_N45
\C1|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|LessThan0~1_combout\ = ( !\C1|prscl\(8) & ( (!\C1|prscl\(11) & (!\C1|prscl\(9) & !\C1|prscl\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_prscl\(11),
	datac => \C1|ALT_INV_prscl\(9),
	datad => \C1|ALT_INV_prscl\(7),
	dataf => \C1|ALT_INV_prscl\(8),
	combout => \C1|LessThan0~1_combout\);

-- Location: MLABCELL_X25_Y59_N54
\C1|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|LessThan0~3_combout\ = ( \C1|prscl\(3) & ( \C1|prscl\(5) & ( (\C1|LessThan0~2_combout\ & ((!\C1|LessThan0~1_combout\) # (\C1|LessThan0~0_combout\))) ) ) ) # ( !\C1|prscl\(3) & ( \C1|prscl\(5) & ( (\C1|LessThan0~2_combout\ & 
-- ((!\C1|LessThan0~1_combout\) # (\C1|LessThan0~0_combout\))) ) ) ) # ( \C1|prscl\(3) & ( !\C1|prscl\(5) & ( (\C1|LessThan0~2_combout\ & ((!\C1|LessThan0~1_combout\) # (\C1|LessThan0~0_combout\))) ) ) ) # ( !\C1|prscl\(3) & ( !\C1|prscl\(5) & ( 
-- (\C1|LessThan0~2_combout\ & ((!\C1|LessThan0~1_combout\) # ((\C1|Equal0~0_combout\ & \C1|LessThan0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000001010101010000010101010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_LessThan0~2_combout\,
	datab => \C1|ALT_INV_Equal0~0_combout\,
	datac => \C1|ALT_INV_LessThan0~0_combout\,
	datad => \C1|ALT_INV_LessThan0~1_combout\,
	datae => \C1|ALT_INV_prscl\(3),
	dataf => \C1|ALT_INV_prscl\(5),
	combout => \C1|LessThan0~3_combout\);

-- Location: FF_X25_Y59_N2
\C1|prscl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C1|Add0~5_sumout\,
	sclr => \C1|LessThan0~3_combout\,
	ena => \C1|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|prscl\(0));

-- Location: MLABCELL_X25_Y59_N3
\C1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~9_sumout\ = SUM(( \C1|prscl\(1) ) + ( GND ) + ( \C1|Add0~6\ ))
-- \C1|Add0~10\ = CARRY(( \C1|prscl\(1) ) + ( GND ) + ( \C1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_prscl\(1),
	cin => \C1|Add0~6\,
	sumout => \C1|Add0~9_sumout\,
	cout => \C1|Add0~10\);

-- Location: FF_X25_Y59_N5
\C1|prscl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C1|Add0~9_sumout\,
	sclr => \C1|LessThan0~3_combout\,
	ena => \C1|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|prscl\(1));

-- Location: MLABCELL_X25_Y59_N6
\C1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~13_sumout\ = SUM(( \C1|prscl\(2) ) + ( GND ) + ( \C1|Add0~10\ ))
-- \C1|Add0~14\ = CARRY(( \C1|prscl\(2) ) + ( GND ) + ( \C1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_prscl\(2),
	cin => \C1|Add0~10\,
	sumout => \C1|Add0~13_sumout\,
	cout => \C1|Add0~14\);

-- Location: FF_X25_Y59_N8
\C1|prscl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C1|Add0~13_sumout\,
	sclr => \C1|LessThan0~3_combout\,
	ena => \C1|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|prscl\(2));

-- Location: MLABCELL_X25_Y59_N9
\C1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~25_sumout\ = SUM(( \C1|prscl\(3) ) + ( GND ) + ( \C1|Add0~14\ ))
-- \C1|Add0~26\ = CARRY(( \C1|prscl\(3) ) + ( GND ) + ( \C1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_prscl\(3),
	cin => \C1|Add0~14\,
	sumout => \C1|Add0~25_sumout\,
	cout => \C1|Add0~26\);

-- Location: FF_X25_Y59_N10
\C1|prscl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C1|Add0~25_sumout\,
	sclr => \C1|LessThan0~3_combout\,
	ena => \C1|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|prscl\(3));

-- Location: MLABCELL_X25_Y59_N12
\C1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~29_sumout\ = SUM(( \C1|prscl\(4) ) + ( GND ) + ( \C1|Add0~26\ ))
-- \C1|Add0~30\ = CARRY(( \C1|prscl\(4) ) + ( GND ) + ( \C1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_prscl\(4),
	cin => \C1|Add0~26\,
	sumout => \C1|Add0~29_sumout\,
	cout => \C1|Add0~30\);

-- Location: FF_X25_Y59_N13
\C1|prscl[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C1|Add0~29_sumout\,
	sclr => \C1|LessThan0~3_combout\,
	ena => \C1|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|prscl\(4));

-- Location: MLABCELL_X25_Y59_N15
\C1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Add0~33_sumout\ = SUM(( \C1|prscl\(5) ) + ( GND ) + ( \C1|Add0~30\ ))
-- \C1|Add0~34\ = CARRY(( \C1|prscl\(5) ) + ( GND ) + ( \C1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_prscl\(5),
	cin => \C1|Add0~30\,
	sumout => \C1|Add0~33_sumout\,
	cout => \C1|Add0~34\);

-- Location: FF_X25_Y59_N16
\C1|prscl[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C1|Add0~33_sumout\,
	sclr => \C1|LessThan0~3_combout\,
	ena => \C1|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|prscl\(5));

-- Location: FF_X25_Y59_N19
\C1|prscl[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C1|Add0~1_sumout\,
	sclr => \C1|LessThan0~3_combout\,
	ena => \C1|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|prscl\(6));

-- Location: MLABCELL_X25_Y59_N48
\C1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Equal0~2_combout\ = ( !\C1|prscl\(8) & ( (\C1|prscl\(11) & (!\C1|prscl\(7) & !\C1|prscl\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_prscl\(11),
	datac => \C1|ALT_INV_prscl\(7),
	datad => \C1|ALT_INV_prscl\(12),
	dataf => \C1|ALT_INV_prscl\(8),
	combout => \C1|Equal0~2_combout\);

-- Location: LABCELL_X23_Y59_N51
\C1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Equal0~1_combout\ = ( !\C1|prscl\(10) & ( (\C1|prscl\(5) & (!\C1|prscl\(4) & (\C1|prscl\(3) & \C1|prscl\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_prscl\(5),
	datab => \C1|ALT_INV_prscl\(4),
	datac => \C1|ALT_INV_prscl\(3),
	datad => \C1|ALT_INV_prscl\(9),
	dataf => \C1|ALT_INV_prscl\(10),
	combout => \C1|Equal0~1_combout\);

-- Location: LABCELL_X23_Y59_N54
\C1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Equal0~3_combout\ = ( \C1|Equal0~1_combout\ & ( (!\C1|prscl\(6) & (\C1|Equal0~2_combout\ & \C1|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_prscl\(6),
	datab => \C1|ALT_INV_Equal0~2_combout\,
	datad => \C1|ALT_INV_Equal0~0_combout\,
	dataf => \C1|ALT_INV_Equal0~1_combout\,
	combout => \C1|Equal0~3_combout\);

-- Location: LABCELL_X23_Y59_N21
\C1|index~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|index~3_combout\ = ( \C1|index\(0) & ( (!\C1|index\(3) & !\C1|index\(1)) ) ) # ( !\C1|index\(0) & ( (!\C1|index\(3) & \C1|index\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_index\(3),
	datad => \C1|ALT_INV_index\(1),
	dataf => \C1|ALT_INV_index\(0),
	combout => \C1|index~3_combout\);

-- Location: LABCELL_X23_Y59_N57
\C1|index[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|index[0]~0_combout\ = ( \C1|Equal0~1_combout\ & ( (!\C1|prscl\(6) & (\C1|Equal0~2_combout\ & (\C1|Equal0~0_combout\ & \C1|busy~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_prscl\(6),
	datab => \C1|ALT_INV_Equal0~2_combout\,
	datac => \C1|ALT_INV_Equal0~0_combout\,
	datad => \C1|ALT_INV_busy~q\,
	dataf => \C1|ALT_INV_Equal0~1_combout\,
	combout => \C1|index[0]~0_combout\);

-- Location: FF_X23_Y59_N23
\C1|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C1|index~3_combout\,
	ena => \C1|index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|index\(1));

-- Location: LABCELL_X23_Y59_N45
\C1|index~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|index~2_combout\ = ( \C1|index\(2) & ( (\C1|index\(1) & (\C1|index\(0) & !\C1|index\(3))) ) ) # ( !\C1|index\(2) & ( (!\C1|index\(1) & (!\C1|index\(0) & \C1|index\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_index\(1),
	datac => \C1|ALT_INV_index\(0),
	datad => \C1|ALT_INV_index\(3),
	dataf => \C1|ALT_INV_index\(2),
	combout => \C1|index~2_combout\);

-- Location: FF_X23_Y59_N47
\C1|index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C1|index~2_combout\,
	ena => \C1|index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|index\(3));

-- Location: LABCELL_X23_Y59_N18
\C1|index~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|index~4_combout\ = ( \C1|index\(2) & ( (!\C1|index\(3) & !\C1|index\(0)) ) ) # ( !\C1|index\(2) & ( (!\C1|index\(0) & ((!\C1|index\(3)) # (!\C1|index\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000111111000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_index\(3),
	datac => \C1|ALT_INV_index\(1),
	datad => \C1|ALT_INV_index\(0),
	dataf => \C1|ALT_INV_index\(2),
	combout => \C1|index~4_combout\);

-- Location: FF_X23_Y59_N19
\C1|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C1|index~4_combout\,
	ena => \C1|index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|index\(0));

-- Location: LABCELL_X23_Y59_N42
\C1|index~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|index~1_combout\ = ( !\C1|index\(3) & ( !\C1|index\(2) $ (((!\C1|index\(0)) # (!\C1|index\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_index\(0),
	datac => \C1|ALT_INV_index\(1),
	datad => \C1|ALT_INV_index\(2),
	dataf => \C1|ALT_INV_index\(3),
	combout => \C1|index~1_combout\);

-- Location: FF_X23_Y59_N44
\C1|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C1|index~1_combout\,
	ena => \C1|index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|index\(2));

-- Location: LABCELL_X23_Y59_N33
\C1|busy~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|busy~0_combout\ = ( \C1|index\(0) & ( (!\C1|Equal0~3_combout\) # (!\C1|index\(3)) ) ) # ( !\C1|index\(0) & ( (!\C1|Equal0~3_combout\) # ((!\C1|index\(3)) # ((!\C1|index\(2) & !\C1|index\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111010111111101111101011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_Equal0~3_combout\,
	datab => \C1|ALT_INV_index\(2),
	datac => \C1|ALT_INV_index\(3),
	datad => \C1|ALT_INV_index\(1),
	dataf => \C1|ALT_INV_index\(0),
	combout => \C1|busy~0_combout\);

-- Location: FF_X23_Y59_N32
Tx_start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \process_1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tx_start~q\);

-- Location: FF_X23_Y59_N35
\C1|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C1|busy~0_combout\,
	asdata => \Tx_start~q\,
	sload => \C1|ALT_INV_busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|busy~q\);

-- Location: IOIBUF_X21_Y0_N1
\key~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key,
	o => \key~input_o\);

-- Location: LABCELL_X23_Y59_N6
\process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = ( !\key~input_o\ & ( !\C1|busy~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_busy~q\,
	dataf => \ALT_INV_key~input_o\,
	combout => \process_1~0_combout\);

-- Location: FF_X15_Y60_N31
\Tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Tx_data[0]~feeder_combout\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Tx_data(0));

-- Location: DDIOOUTCELL_X10_Y61_N50
\ledg[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => Tx_data(0),
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledg[0]~reg0_q\);

-- Location: IOIBUF_X36_Y0_N52
\sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LABCELL_X22_Y60_N33
\Tx_data[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tx_data[1]~feeder_combout\ = ( \sw[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sw[1]~input_o\,
	combout => \Tx_data[1]~feeder_combout\);

-- Location: FF_X22_Y60_N35
\Tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Tx_data[1]~feeder_combout\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Tx_data(1));

-- Location: DDIOOUTCELL_X10_Y61_N67
\ledg[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => Tx_data(1),
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledg[1]~reg0_q\);

-- Location: IOIBUF_X34_Y0_N35
\sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LABCELL_X22_Y60_N6
\Tx_data[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tx_data[2]~feeder_combout\ = ( \sw[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sw[2]~input_o\,
	combout => \Tx_data[2]~feeder_combout\);

-- Location: FF_X22_Y60_N7
\Tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Tx_data[2]~feeder_combout\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Tx_data(2));

-- Location: DDIOOUTCELL_X10_Y61_N84
\ledg[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => Tx_data(2),
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledg[2]~reg0_q\);

-- Location: IOIBUF_X14_Y0_N52
\sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: LABCELL_X13_Y60_N30
\Tx_data[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tx_data[3]~feeder_combout\ = ( \sw[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sw[3]~input_o\,
	combout => \Tx_data[3]~feeder_combout\);

-- Location: FF_X13_Y60_N31
\Tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Tx_data[3]~feeder_combout\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Tx_data(3));

-- Location: DDIOOUTCELL_X10_Y61_N101
\ledg[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => Tx_data(3),
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledg[3]~reg0_q\);

-- Location: IOIBUF_X10_Y0_N41
\sw[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: FF_X22_Y60_N17
\Tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \sw[4]~input_o\,
	sload => VCC,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Tx_data(4));

-- Location: DDIOOUTCELL_X21_Y61_N44
\ledg[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => Tx_data(4),
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledg[4]~reg0_q\);

-- Location: IOIBUF_X12_Y0_N35
\sw[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: FF_X15_Y60_N40
\Tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \sw[5]~input_o\,
	sload => VCC,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Tx_data(5));

-- Location: DDIOOUTCELL_X21_Y61_N61
\ledg[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => Tx_data(5),
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledg[5]~reg0_q\);

-- Location: IOIBUF_X17_Y0_N75
\sw[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: LABCELL_X22_Y60_N48
\Tx_data[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tx_data[6]~feeder_combout\ = ( \sw[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sw[6]~input_o\,
	combout => \Tx_data[6]~feeder_combout\);

-- Location: FF_X22_Y60_N49
\Tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Tx_data[6]~feeder_combout\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Tx_data(6));

-- Location: DDIOOUTCELL_X19_Y61_N10
\ledg[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => Tx_data(6),
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledg[6]~reg0_q\);

-- Location: IOIBUF_X12_Y0_N52
\sw[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: LABCELL_X15_Y60_N42
\Tx_data[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tx_data[7]~feeder_combout\ = ( \sw[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sw[7]~input_o\,
	combout => \Tx_data[7]~feeder_combout\);

-- Location: FF_X15_Y60_N43
\Tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Tx_data[7]~feeder_combout\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Tx_data(7));

-- Location: DDIOOUTCELL_X19_Y61_N27
\ledg[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => Tx_data(7),
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledg[7]~reg0_q\);

-- Location: LABCELL_X23_Y59_N30
\C1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|process_0~0_combout\ = ( \Tx_start~q\ & ( !\C1|busy~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_busy~q\,
	dataf => \ALT_INV_Tx_start~q\,
	combout => \C1|process_0~0_combout\);

-- Location: FF_X23_Y59_N2
\C1|datafll[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => Tx_data(5),
	sload => VCC,
	ena => \C1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|datafll\(6));

-- Location: FF_X23_Y59_N29
\C1|datafll[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => Tx_data(3),
	sload => VCC,
	ena => \C1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|datafll\(4));

-- Location: FF_X23_Y59_N26
\C1|datafll[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => Tx_data(6),
	sload => VCC,
	ena => \C1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|datafll\(7));

-- Location: FF_X23_Y59_N4
\C1|datafll[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => Tx_data(4),
	sload => VCC,
	ena => \C1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|datafll\(5));

-- Location: LABCELL_X23_Y59_N24
\C1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Mux0~0_combout\ = ( \C1|datafll\(7) & ( \C1|datafll\(5) & ( ((!\C1|index\(1) & ((\C1|datafll\(4)))) # (\C1|index\(1) & (\C1|datafll\(6)))) # (\C1|index\(0)) ) ) ) # ( !\C1|datafll\(7) & ( \C1|datafll\(5) & ( (!\C1|index\(0) & ((!\C1|index\(1) & 
-- ((\C1|datafll\(4)))) # (\C1|index\(1) & (\C1|datafll\(6))))) # (\C1|index\(0) & (((!\C1|index\(1))))) ) ) ) # ( \C1|datafll\(7) & ( !\C1|datafll\(5) & ( (!\C1|index\(0) & ((!\C1|index\(1) & ((\C1|datafll\(4)))) # (\C1|index\(1) & (\C1|datafll\(6))))) # 
-- (\C1|index\(0) & (((\C1|index\(1))))) ) ) ) # ( !\C1|datafll\(7) & ( !\C1|datafll\(5) & ( (!\C1|index\(0) & ((!\C1|index\(1) & ((\C1|datafll\(4)))) # (\C1|index\(1) & (\C1|datafll\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_datafll\(6),
	datab => \C1|ALT_INV_index\(0),
	datac => \C1|ALT_INV_datafll\(4),
	datad => \C1|ALT_INV_index\(1),
	datae => \C1|ALT_INV_datafll\(7),
	dataf => \C1|ALT_INV_datafll\(5),
	combout => \C1|Mux0~0_combout\);

-- Location: FF_X23_Y59_N14
\C1|datafll[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => Tx_data(7),
	sload => VCC,
	ena => \C1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|datafll\(8));

-- Location: FF_X23_Y59_N41
\C1|datafll[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => Tx_data(0),
	sload => VCC,
	ena => \C1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|datafll\(1));

-- Location: LABCELL_X23_Y59_N12
\C1|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Mux0~1_combout\ = ( \C1|datafll\(1) & ( ((\C1|index\(3) & \C1|datafll\(8))) # (\C1|index\(0)) ) ) # ( !\C1|datafll\(1) & ( (\C1|index\(3) & ((\C1|datafll\(8)) # (\C1|index\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_index\(0),
	datac => \C1|ALT_INV_index\(3),
	datad => \C1|ALT_INV_datafll\(8),
	dataf => \C1|ALT_INV_datafll\(1),
	combout => \C1|Mux0~1_combout\);

-- Location: LABCELL_X23_Y59_N36
\C1|datafll[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|datafll[3]~feeder_combout\ = ( Tx_data(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_Tx_data(2),
	combout => \C1|datafll[3]~feeder_combout\);

-- Location: FF_X23_Y59_N38
\C1|datafll[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C1|datafll[3]~feeder_combout\,
	ena => \C1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|datafll\(3));

-- Location: FF_X23_Y59_N17
\C1|datafll[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => Tx_data(1),
	sload => VCC,
	ena => \C1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|datafll\(2));

-- Location: LABCELL_X23_Y59_N15
\C1|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Mux0~2_combout\ = (!\C1|index\(0) & ((\C1|datafll\(2)))) # (\C1|index\(0) & (\C1|datafll\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_datafll\(3),
	datab => \C1|ALT_INV_index\(0),
	datad => \C1|ALT_INV_datafll\(2),
	combout => \C1|Mux0~2_combout\);

-- Location: LABCELL_X23_Y59_N0
\C1|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Mux0~3_combout\ = ( \C1|index\(1) & ( \C1|Mux0~2_combout\ & ( (!\C1|index\(3) & ((!\C1|index\(2)) # (\C1|Mux0~0_combout\))) ) ) ) # ( !\C1|index\(1) & ( \C1|Mux0~2_combout\ & ( (!\C1|index\(2) & (((\C1|Mux0~1_combout\)))) # (\C1|index\(2) & 
-- (\C1|Mux0~0_combout\ & ((!\C1|index\(3))))) ) ) ) # ( \C1|index\(1) & ( !\C1|Mux0~2_combout\ & ( (\C1|Mux0~0_combout\ & (\C1|index\(2) & !\C1|index\(3))) ) ) ) # ( !\C1|index\(1) & ( !\C1|Mux0~2_combout\ & ( (!\C1|index\(2) & (((\C1|Mux0~1_combout\)))) # 
-- (\C1|index\(2) & (\C1|Mux0~0_combout\ & ((!\C1|index\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110000000001010000000000110101001100001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_Mux0~0_combout\,
	datab => \C1|ALT_INV_Mux0~1_combout\,
	datac => \C1|ALT_INV_index\(2),
	datad => \C1|ALT_INV_index\(3),
	datae => \C1|ALT_INV_index\(1),
	dataf => \C1|ALT_INV_Mux0~2_combout\,
	combout => \C1|Mux0~3_combout\);

-- Location: DDIOOUTCELL_X18_Y61_N27
\C1|Tx_line\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \C1|Mux0~3_combout\,
	ena => \C1|index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Tx_line~q\);

-- Location: LABCELL_X64_Y48_N0
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


