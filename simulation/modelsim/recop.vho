-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "05/08/2021 17:05:38"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	program_counter IS
    PORT (
	clk : IN std_logic;
	sel : IN std_logic_vector(1 DOWNTO 0);
	m_out : IN std_logic_vector(15 DOWNTO 0);
	rx : IN std_logic_vector(15 DOWNTO 0);
	operand : IN std_logic_vector(15 DOWNTO 0);
	pc_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END program_counter;

-- Design Ports Information
-- pc_out[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[1]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[2]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[4]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[5]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[6]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[7]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[8]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[9]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[10]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[11]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[12]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[13]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[14]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[15]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand[0]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx[0]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_out[0]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand[1]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx[1]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_out[1]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand[2]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx[2]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_out[2]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand[3]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx[3]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_out[3]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand[4]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx[4]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_out[4]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand[5]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx[5]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_out[5]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand[6]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx[6]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_out[6]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand[7]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx[7]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_out[7]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand[8]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx[8]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_out[8]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand[9]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx[9]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_out[9]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand[10]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx[10]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_out[10]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand[11]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx[11]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_out[11]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand[12]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx[12]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_out[12]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand[13]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx[13]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_out[13]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand[14]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx[14]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_out[14]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operand[15]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx[15]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_out[15]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF program_counter IS
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
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_m_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rx : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_operand : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_pc_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \operand[0]~input_o\ : std_logic;
SIGNAL \rx[0]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \m_out[0]~input_o\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \pc_in[0]~0_combout\ : std_logic;
SIGNAL \rx[1]~input_o\ : std_logic;
SIGNAL \m_out[1]~input_o\ : std_logic;
SIGNAL \operand[1]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \pc_in[1]~1_combout\ : std_logic;
SIGNAL \operand[2]~input_o\ : std_logic;
SIGNAL \rx[2]~input_o\ : std_logic;
SIGNAL \m_out[2]~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \pc_in[2]~2_combout\ : std_logic;
SIGNAL \rx[3]~input_o\ : std_logic;
SIGNAL \m_out[3]~input_o\ : std_logic;
SIGNAL \operand[3]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \pc_in[3]~3_combout\ : std_logic;
SIGNAL \rx[4]~input_o\ : std_logic;
SIGNAL \operand[4]~input_o\ : std_logic;
SIGNAL \m_out[4]~input_o\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \pc_in[4]~4_combout\ : std_logic;
SIGNAL \m_out[5]~input_o\ : std_logic;
SIGNAL \operand[5]~input_o\ : std_logic;
SIGNAL \rx[5]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \pc_in[5]~5_combout\ : std_logic;
SIGNAL \m_out[6]~input_o\ : std_logic;
SIGNAL \rx[6]~input_o\ : std_logic;
SIGNAL \operand[6]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \pc_in[6]~6_combout\ : std_logic;
SIGNAL \m_out[7]~input_o\ : std_logic;
SIGNAL \rx[7]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \operand[7]~input_o\ : std_logic;
SIGNAL \pc_in[7]~7_combout\ : std_logic;
SIGNAL \rx[8]~input_o\ : std_logic;
SIGNAL \operand[8]~input_o\ : std_logic;
SIGNAL \m_out[8]~input_o\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \pc_in[8]~8_combout\ : std_logic;
SIGNAL \rx[9]~input_o\ : std_logic;
SIGNAL \m_out[9]~input_o\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \operand[9]~input_o\ : std_logic;
SIGNAL \pc_in[9]~9_combout\ : std_logic;
SIGNAL \rx[10]~input_o\ : std_logic;
SIGNAL \m_out[10]~input_o\ : std_logic;
SIGNAL \operand[10]~input_o\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \pc_in[10]~10_combout\ : std_logic;
SIGNAL \m_out[11]~input_o\ : std_logic;
SIGNAL \rx[11]~input_o\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \operand[11]~input_o\ : std_logic;
SIGNAL \pc_in[11]~11_combout\ : std_logic;
SIGNAL \rx[12]~input_o\ : std_logic;
SIGNAL \operand[12]~input_o\ : std_logic;
SIGNAL \m_out[12]~input_o\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \pc_in[12]~12_combout\ : std_logic;
SIGNAL \operand[13]~input_o\ : std_logic;
SIGNAL \rx[13]~input_o\ : std_logic;
SIGNAL \m_out[13]~input_o\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \pc_in[13]~13_combout\ : std_logic;
SIGNAL \operand[14]~input_o\ : std_logic;
SIGNAL \rx[14]~input_o\ : std_logic;
SIGNAL \m_out[14]~input_o\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \pc_in[14]~14_combout\ : std_logic;
SIGNAL \operand[15]~input_o\ : std_logic;
SIGNAL \rx[15]~input_o\ : std_logic;
SIGNAL \m_out[15]~input_o\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \pc_in[15]~15_combout\ : std_logic;
SIGNAL pc_out_temp : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_operand[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_m_out[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[1]~input_o\ : std_logic;
SIGNAL ALT_INV_pc_out_temp : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_m_out[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_m_out[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_m_out[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_m_out[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_m_out[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_m_out[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_m_out[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_m_out[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_m_out[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_m_out[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_m_out[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_m_out[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_m_out[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_m_out[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_m_out[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx[1]~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_sel <= sel;
ww_m_out <= m_out;
ww_rx <= rx;
ww_operand <= operand;
pc_out <= ww_pc_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_operand[1]~input_o\ <= NOT \operand[1]~input_o\;
\ALT_INV_m_out[0]~input_o\ <= NOT \m_out[0]~input_o\;
\ALT_INV_rx[0]~input_o\ <= NOT \rx[0]~input_o\;
\ALT_INV_operand[0]~input_o\ <= NOT \operand[0]~input_o\;
\ALT_INV_sel[0]~input_o\ <= NOT \sel[0]~input_o\;
\ALT_INV_sel[1]~input_o\ <= NOT \sel[1]~input_o\;
ALT_INV_pc_out_temp(15) <= NOT pc_out_temp(15);
ALT_INV_pc_out_temp(14) <= NOT pc_out_temp(14);
ALT_INV_pc_out_temp(13) <= NOT pc_out_temp(13);
ALT_INV_pc_out_temp(12) <= NOT pc_out_temp(12);
ALT_INV_pc_out_temp(11) <= NOT pc_out_temp(11);
ALT_INV_pc_out_temp(10) <= NOT pc_out_temp(10);
ALT_INV_pc_out_temp(9) <= NOT pc_out_temp(9);
ALT_INV_pc_out_temp(8) <= NOT pc_out_temp(8);
ALT_INV_pc_out_temp(7) <= NOT pc_out_temp(7);
ALT_INV_pc_out_temp(6) <= NOT pc_out_temp(6);
ALT_INV_pc_out_temp(5) <= NOT pc_out_temp(5);
ALT_INV_pc_out_temp(4) <= NOT pc_out_temp(4);
ALT_INV_pc_out_temp(3) <= NOT pc_out_temp(3);
ALT_INV_pc_out_temp(2) <= NOT pc_out_temp(2);
ALT_INV_pc_out_temp(1) <= NOT pc_out_temp(1);
ALT_INV_pc_out_temp(0) <= NOT pc_out_temp(0);
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_m_out[15]~input_o\ <= NOT \m_out[15]~input_o\;
\ALT_INV_rx[15]~input_o\ <= NOT \rx[15]~input_o\;
\ALT_INV_operand[15]~input_o\ <= NOT \operand[15]~input_o\;
\ALT_INV_m_out[14]~input_o\ <= NOT \m_out[14]~input_o\;
\ALT_INV_rx[14]~input_o\ <= NOT \rx[14]~input_o\;
\ALT_INV_operand[14]~input_o\ <= NOT \operand[14]~input_o\;
\ALT_INV_m_out[13]~input_o\ <= NOT \m_out[13]~input_o\;
\ALT_INV_rx[13]~input_o\ <= NOT \rx[13]~input_o\;
\ALT_INV_operand[13]~input_o\ <= NOT \operand[13]~input_o\;
\ALT_INV_m_out[12]~input_o\ <= NOT \m_out[12]~input_o\;
\ALT_INV_rx[12]~input_o\ <= NOT \rx[12]~input_o\;
\ALT_INV_operand[12]~input_o\ <= NOT \operand[12]~input_o\;
\ALT_INV_m_out[11]~input_o\ <= NOT \m_out[11]~input_o\;
\ALT_INV_rx[11]~input_o\ <= NOT \rx[11]~input_o\;
\ALT_INV_operand[11]~input_o\ <= NOT \operand[11]~input_o\;
\ALT_INV_m_out[10]~input_o\ <= NOT \m_out[10]~input_o\;
\ALT_INV_rx[10]~input_o\ <= NOT \rx[10]~input_o\;
\ALT_INV_operand[10]~input_o\ <= NOT \operand[10]~input_o\;
\ALT_INV_m_out[9]~input_o\ <= NOT \m_out[9]~input_o\;
\ALT_INV_rx[9]~input_o\ <= NOT \rx[9]~input_o\;
\ALT_INV_operand[9]~input_o\ <= NOT \operand[9]~input_o\;
\ALT_INV_m_out[8]~input_o\ <= NOT \m_out[8]~input_o\;
\ALT_INV_rx[8]~input_o\ <= NOT \rx[8]~input_o\;
\ALT_INV_operand[8]~input_o\ <= NOT \operand[8]~input_o\;
\ALT_INV_m_out[7]~input_o\ <= NOT \m_out[7]~input_o\;
\ALT_INV_rx[7]~input_o\ <= NOT \rx[7]~input_o\;
\ALT_INV_operand[7]~input_o\ <= NOT \operand[7]~input_o\;
\ALT_INV_m_out[6]~input_o\ <= NOT \m_out[6]~input_o\;
\ALT_INV_rx[6]~input_o\ <= NOT \rx[6]~input_o\;
\ALT_INV_operand[6]~input_o\ <= NOT \operand[6]~input_o\;
\ALT_INV_m_out[5]~input_o\ <= NOT \m_out[5]~input_o\;
\ALT_INV_rx[5]~input_o\ <= NOT \rx[5]~input_o\;
\ALT_INV_operand[5]~input_o\ <= NOT \operand[5]~input_o\;
\ALT_INV_m_out[4]~input_o\ <= NOT \m_out[4]~input_o\;
\ALT_INV_rx[4]~input_o\ <= NOT \rx[4]~input_o\;
\ALT_INV_operand[4]~input_o\ <= NOT \operand[4]~input_o\;
\ALT_INV_m_out[3]~input_o\ <= NOT \m_out[3]~input_o\;
\ALT_INV_rx[3]~input_o\ <= NOT \rx[3]~input_o\;
\ALT_INV_operand[3]~input_o\ <= NOT \operand[3]~input_o\;
\ALT_INV_m_out[2]~input_o\ <= NOT \m_out[2]~input_o\;
\ALT_INV_rx[2]~input_o\ <= NOT \rx[2]~input_o\;
\ALT_INV_operand[2]~input_o\ <= NOT \operand[2]~input_o\;
\ALT_INV_m_out[1]~input_o\ <= NOT \m_out[1]~input_o\;
\ALT_INV_rx[1]~input_o\ <= NOT \rx[1]~input_o\;

-- Location: IOOBUF_X28_Y0_N2
\pc_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_out_temp(0),
	devoe => ww_devoe,
	o => ww_pc_out(0));

-- Location: IOOBUF_X30_Y0_N2
\pc_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_out_temp(1),
	devoe => ww_devoe,
	o => ww_pc_out(1));

-- Location: IOOBUF_X34_Y0_N93
\pc_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_out_temp(2),
	devoe => ww_devoe,
	o => ww_pc_out(2));

-- Location: IOOBUF_X20_Y0_N2
\pc_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_out_temp(3),
	devoe => ww_devoe,
	o => ww_pc_out(3));

-- Location: IOOBUF_X12_Y0_N19
\pc_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_out_temp(4),
	devoe => ww_devoe,
	o => ww_pc_out(4));

-- Location: IOOBUF_X12_Y0_N2
\pc_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_out_temp(5),
	devoe => ww_devoe,
	o => ww_pc_out(5));

-- Location: IOOBUF_X10_Y0_N59
\pc_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_out_temp(6),
	devoe => ww_devoe,
	o => ww_pc_out(6));

-- Location: IOOBUF_X12_Y0_N36
\pc_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_out_temp(7),
	devoe => ww_devoe,
	o => ww_pc_out(7));

-- Location: IOOBUF_X12_Y0_N53
\pc_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_out_temp(8),
	devoe => ww_devoe,
	o => ww_pc_out(8));

-- Location: IOOBUF_X14_Y0_N19
\pc_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_out_temp(9),
	devoe => ww_devoe,
	o => ww_pc_out(9));

-- Location: IOOBUF_X16_Y0_N19
\pc_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_out_temp(10),
	devoe => ww_devoe,
	o => ww_pc_out(10));

-- Location: IOOBUF_X28_Y0_N36
\pc_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_out_temp(11),
	devoe => ww_devoe,
	o => ww_pc_out(11));

-- Location: IOOBUF_X14_Y0_N2
\pc_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_out_temp(12),
	devoe => ww_devoe,
	o => ww_pc_out(12));

-- Location: IOOBUF_X16_Y0_N2
\pc_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_out_temp(13),
	devoe => ww_devoe,
	o => ww_pc_out(13));

-- Location: IOOBUF_X14_Y0_N36
\pc_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_out_temp(14),
	devoe => ww_devoe,
	o => ww_pc_out(14));

-- Location: IOOBUF_X28_Y0_N53
\pc_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => pc_out_temp(15),
	devoe => ww_devoe,
	o => ww_pc_out(15));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
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

-- Location: IOIBUF_X10_Y0_N41
\sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N52
\operand[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand(0),
	o => \operand[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\rx[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx(0),
	o => \rx[0]~input_o\);

-- Location: IOIBUF_X10_Y0_N75
\sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\m_out[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_out(0),
	o => \m_out[0]~input_o\);

-- Location: LABCELL_X12_Y4_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( pc_out_temp(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( pc_out_temp(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pc_out_temp(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X13_Y4_N42
\pc_in[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_in[0]~0_combout\ = ( \m_out[0]~input_o\ & ( \Add0~1_sumout\ & ( (!\sel[1]~input_o\ & (((!\sel[0]~input_o\) # (\rx[0]~input_o\)))) # (\sel[1]~input_o\ & (((\sel[0]~input_o\)) # (\operand[0]~input_o\))) ) ) ) # ( !\m_out[0]~input_o\ & ( \Add0~1_sumout\ 
-- & ( (!\sel[1]~input_o\ & (((\rx[0]~input_o\ & \sel[0]~input_o\)))) # (\sel[1]~input_o\ & (((\sel[0]~input_o\)) # (\operand[0]~input_o\))) ) ) ) # ( \m_out[0]~input_o\ & ( !\Add0~1_sumout\ & ( (!\sel[1]~input_o\ & (((!\sel[0]~input_o\) # 
-- (\rx[0]~input_o\)))) # (\sel[1]~input_o\ & (\operand[0]~input_o\ & ((!\sel[0]~input_o\)))) ) ) ) # ( !\m_out[0]~input_o\ & ( !\Add0~1_sumout\ & ( (!\sel[1]~input_o\ & (((\rx[0]~input_o\ & \sel[0]~input_o\)))) # (\sel[1]~input_o\ & (\operand[0]~input_o\ & 
-- ((!\sel[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010101110110000101000010001010111111011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \ALT_INV_operand[0]~input_o\,
	datac => \ALT_INV_rx[0]~input_o\,
	datad => \ALT_INV_sel[0]~input_o\,
	datae => \ALT_INV_m_out[0]~input_o\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \pc_in[0]~0_combout\);

-- Location: FF_X12_Y4_N53
\pc_out_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pc_in[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_out_temp(0));

-- Location: IOIBUF_X22_Y0_N18
\rx[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx(1),
	o => \rx[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N35
\m_out[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_out(1),
	o => \m_out[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\operand[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand(1),
	o => \operand[1]~input_o\);

-- Location: LABCELL_X12_Y4_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( pc_out_temp(1) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( pc_out_temp(1) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pc_out_temp(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X13_Y4_N6
\pc_in[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_in[1]~1_combout\ = ( \sel[1]~input_o\ & ( \Add0~5_sumout\ & ( (\operand[1]~input_o\) # (\sel[0]~input_o\) ) ) ) # ( !\sel[1]~input_o\ & ( \Add0~5_sumout\ & ( (!\sel[0]~input_o\ & ((\m_out[1]~input_o\))) # (\sel[0]~input_o\ & (\rx[1]~input_o\)) ) ) ) # 
-- ( \sel[1]~input_o\ & ( !\Add0~5_sumout\ & ( (!\sel[0]~input_o\ & \operand[1]~input_o\) ) ) ) # ( !\sel[1]~input_o\ & ( !\Add0~5_sumout\ & ( (!\sel[0]~input_o\ & ((\m_out[1]~input_o\))) # (\sel[0]~input_o\ & (\rx[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001100110000011101000111010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx[1]~input_o\,
	datab => \ALT_INV_sel[0]~input_o\,
	datac => \ALT_INV_m_out[1]~input_o\,
	datad => \ALT_INV_operand[1]~input_o\,
	datae => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \pc_in[1]~1_combout\);

-- Location: FF_X12_Y4_N59
\pc_out_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pc_in[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_out_temp(1));

-- Location: IOIBUF_X18_Y0_N41
\operand[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand(2),
	o => \operand[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\rx[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx(2),
	o => \rx[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N52
\m_out[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_out(2),
	o => \m_out[2]~input_o\);

-- Location: LABCELL_X12_Y4_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( pc_out_temp(2) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( pc_out_temp(2) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pc_out_temp(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X12_Y4_N54
\pc_in[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_in[2]~2_combout\ = ( \m_out[2]~input_o\ & ( \Add0~9_sumout\ & ( (!\sel[0]~input_o\ & (((!\sel[1]~input_o\)) # (\operand[2]~input_o\))) # (\sel[0]~input_o\ & (((\sel[1]~input_o\) # (\rx[2]~input_o\)))) ) ) ) # ( !\m_out[2]~input_o\ & ( \Add0~9_sumout\ 
-- & ( (!\sel[0]~input_o\ & (\operand[2]~input_o\ & ((\sel[1]~input_o\)))) # (\sel[0]~input_o\ & (((\sel[1]~input_o\) # (\rx[2]~input_o\)))) ) ) ) # ( \m_out[2]~input_o\ & ( !\Add0~9_sumout\ & ( (!\sel[0]~input_o\ & (((!\sel[1]~input_o\)) # 
-- (\operand[2]~input_o\))) # (\sel[0]~input_o\ & (((\rx[2]~input_o\ & !\sel[1]~input_o\)))) ) ) ) # ( !\m_out[2]~input_o\ & ( !\Add0~9_sumout\ & ( (!\sel[0]~input_o\ & (\operand[2]~input_o\ & ((\sel[1]~input_o\)))) # (\sel[0]~input_o\ & (((\rx[2]~input_o\ & 
-- !\sel[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000111100110101000000000011010111111111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_operand[2]~input_o\,
	datab => \ALT_INV_rx[2]~input_o\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \ALT_INV_sel[1]~input_o\,
	datae => \ALT_INV_m_out[2]~input_o\,
	dataf => \ALT_INV_Add0~9_sumout\,
	combout => \pc_in[2]~2_combout\);

-- Location: FF_X12_Y4_N56
\pc_out_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_in[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_out_temp(2));

-- Location: IOIBUF_X24_Y0_N52
\rx[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx(3),
	o => \rx[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\m_out[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_out(3),
	o => \m_out[3]~input_o\);

-- Location: IOIBUF_X18_Y0_N75
\operand[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand(3),
	o => \operand[3]~input_o\);

-- Location: LABCELL_X12_Y4_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( pc_out_temp(3) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( pc_out_temp(3) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pc_out_temp(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X13_Y4_N36
\pc_in[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_in[3]~3_combout\ = ( \sel[0]~input_o\ & ( \Add0~13_sumout\ & ( (\sel[1]~input_o\) # (\rx[3]~input_o\) ) ) ) # ( !\sel[0]~input_o\ & ( \Add0~13_sumout\ & ( (!\sel[1]~input_o\ & (\m_out[3]~input_o\)) # (\sel[1]~input_o\ & ((\operand[3]~input_o\))) ) ) ) 
-- # ( \sel[0]~input_o\ & ( !\Add0~13_sumout\ & ( (\rx[3]~input_o\ & !\sel[1]~input_o\) ) ) ) # ( !\sel[0]~input_o\ & ( !\Add0~13_sumout\ & ( (!\sel[1]~input_o\ & (\m_out[3]~input_o\)) # (\sel[1]~input_o\ & ((\operand[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111010100000101000000110000001111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx[3]~input_o\,
	datab => \ALT_INV_m_out[3]~input_o\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ALT_INV_operand[3]~input_o\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_Add0~13_sumout\,
	combout => \pc_in[3]~3_combout\);

-- Location: FF_X13_Y4_N38
\pc_out_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_in[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_out_temp(3));

-- Location: IOIBUF_X4_Y0_N18
\rx[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx(4),
	o => \rx[4]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\operand[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand(4),
	o => \operand[4]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\m_out[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_out(4),
	o => \m_out[4]~input_o\);

-- Location: LABCELL_X12_Y4_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( pc_out_temp(4) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( pc_out_temp(4) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pc_out_temp(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X11_Y4_N12
\pc_in[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_in[4]~4_combout\ = ( \m_out[4]~input_o\ & ( \Add0~17_sumout\ & ( (!\sel[0]~input_o\ & ((!\sel[1]~input_o\) # ((\operand[4]~input_o\)))) # (\sel[0]~input_o\ & (((\rx[4]~input_o\)) # (\sel[1]~input_o\))) ) ) ) # ( !\m_out[4]~input_o\ & ( 
-- \Add0~17_sumout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & ((\operand[4]~input_o\)))) # (\sel[0]~input_o\ & (((\rx[4]~input_o\)) # (\sel[1]~input_o\))) ) ) ) # ( \m_out[4]~input_o\ & ( !\Add0~17_sumout\ & ( (!\sel[0]~input_o\ & ((!\sel[1]~input_o\) # 
-- ((\operand[4]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & (\rx[4]~input_o\))) ) ) ) # ( !\m_out[4]~input_o\ & ( !\Add0~17_sumout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & ((\operand[4]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ 
-- & (\rx[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_rx[4]~input_o\,
	datad => \ALT_INV_operand[4]~input_o\,
	datae => \ALT_INV_m_out[4]~input_o\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \pc_in[4]~4_combout\);

-- Location: FF_X11_Y4_N14
\pc_out_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_in[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_out_temp(4));

-- Location: IOIBUF_X2_Y0_N75
\m_out[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_out(5),
	o => \m_out[5]~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\operand[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand(5),
	o => \operand[5]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\rx[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx(5),
	o => \rx[5]~input_o\);

-- Location: LABCELL_X12_Y4_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( pc_out_temp(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( pc_out_temp(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pc_out_temp(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X11_Y4_N18
\pc_in[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_in[5]~5_combout\ = ( \rx[5]~input_o\ & ( \Add0~21_sumout\ & ( ((!\sel[1]~input_o\ & (\m_out[5]~input_o\)) # (\sel[1]~input_o\ & ((\operand[5]~input_o\)))) # (\sel[0]~input_o\) ) ) ) # ( !\rx[5]~input_o\ & ( \Add0~21_sumout\ & ( (!\sel[0]~input_o\ & 
-- ((!\sel[1]~input_o\ & (\m_out[5]~input_o\)) # (\sel[1]~input_o\ & ((\operand[5]~input_o\))))) # (\sel[0]~input_o\ & (\sel[1]~input_o\)) ) ) ) # ( \rx[5]~input_o\ & ( !\Add0~21_sumout\ & ( (!\sel[0]~input_o\ & ((!\sel[1]~input_o\ & (\m_out[5]~input_o\)) # 
-- (\sel[1]~input_o\ & ((\operand[5]~input_o\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) ) # ( !\rx[5]~input_o\ & ( !\Add0~21_sumout\ & ( (!\sel[0]~input_o\ & ((!\sel[1]~input_o\ & (\m_out[5]~input_o\)) # (\sel[1]~input_o\ & 
-- ((\operand[5]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_m_out[5]~input_o\,
	datad => \ALT_INV_operand[5]~input_o\,
	datae => \ALT_INV_rx[5]~input_o\,
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \pc_in[5]~5_combout\);

-- Location: FF_X11_Y4_N20
\pc_out_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_in[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_out_temp(5));

-- Location: IOIBUF_X4_Y0_N52
\m_out[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_out(6),
	o => \m_out[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\rx[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx(6),
	o => \rx[6]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\operand[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand(6),
	o => \operand[6]~input_o\);

-- Location: LABCELL_X12_Y4_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( pc_out_temp(6) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( pc_out_temp(6) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pc_out_temp(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X11_Y4_N24
\pc_in[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_in[6]~6_combout\ = ( \operand[6]~input_o\ & ( \Add0~25_sumout\ & ( ((!\sel[0]~input_o\ & (\m_out[6]~input_o\)) # (\sel[0]~input_o\ & ((\rx[6]~input_o\)))) # (\sel[1]~input_o\) ) ) ) # ( !\operand[6]~input_o\ & ( \Add0~25_sumout\ & ( (!\sel[0]~input_o\ 
-- & (!\sel[1]~input_o\ & (\m_out[6]~input_o\))) # (\sel[0]~input_o\ & (((\rx[6]~input_o\)) # (\sel[1]~input_o\))) ) ) ) # ( \operand[6]~input_o\ & ( !\Add0~25_sumout\ & ( (!\sel[0]~input_o\ & (((\m_out[6]~input_o\)) # (\sel[1]~input_o\))) # 
-- (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\rx[6]~input_o\)))) ) ) ) # ( !\operand[6]~input_o\ & ( !\Add0~25_sumout\ & ( (!\sel[1]~input_o\ & ((!\sel[0]~input_o\ & (\m_out[6]~input_o\)) # (\sel[0]~input_o\ & ((\rx[6]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_m_out[6]~input_o\,
	datad => \ALT_INV_rx[6]~input_o\,
	datae => \ALT_INV_operand[6]~input_o\,
	dataf => \ALT_INV_Add0~25_sumout\,
	combout => \pc_in[6]~6_combout\);

-- Location: FF_X11_Y4_N26
\pc_out_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_in[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_out_temp(6));

-- Location: IOIBUF_X28_Y0_N18
\m_out[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_out(7),
	o => \m_out[7]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\rx[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx(7),
	o => \rx[7]~input_o\);

-- Location: LABCELL_X12_Y4_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( pc_out_temp(7) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( pc_out_temp(7) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pc_out_temp(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: IOIBUF_X2_Y0_N41
\operand[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand(7),
	o => \operand[7]~input_o\);

-- Location: LABCELL_X11_Y4_N48
\pc_in[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_in[7]~7_combout\ = ( \Add0~29_sumout\ & ( \operand[7]~input_o\ & ( ((!\sel[0]~input_o\ & (\m_out[7]~input_o\)) # (\sel[0]~input_o\ & ((\rx[7]~input_o\)))) # (\sel[1]~input_o\) ) ) ) # ( !\Add0~29_sumout\ & ( \operand[7]~input_o\ & ( (!\sel[0]~input_o\ 
-- & (((\m_out[7]~input_o\)) # (\sel[1]~input_o\))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\rx[7]~input_o\)))) ) ) ) # ( \Add0~29_sumout\ & ( !\operand[7]~input_o\ & ( (!\sel[0]~input_o\ & (!\sel[1]~input_o\ & (\m_out[7]~input_o\))) # (\sel[0]~input_o\ 
-- & (((\rx[7]~input_o\)) # (\sel[1]~input_o\))) ) ) ) # ( !\Add0~29_sumout\ & ( !\operand[7]~input_o\ & ( (!\sel[1]~input_o\ & ((!\sel[0]~input_o\ & (\m_out[7]~input_o\)) # (\sel[0]~input_o\ & ((\rx[7]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_m_out[7]~input_o\,
	datad => \ALT_INV_rx[7]~input_o\,
	datae => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_operand[7]~input_o\,
	combout => \pc_in[7]~7_combout\);

-- Location: FF_X11_Y4_N50
\pc_out_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_in[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_out_temp(7));

-- Location: IOIBUF_X6_Y0_N52
\rx[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx(8),
	o => \rx[8]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\operand[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand(8),
	o => \operand[8]~input_o\);

-- Location: IOIBUF_X2_Y0_N92
\m_out[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_out(8),
	o => \m_out[8]~input_o\);

-- Location: LABCELL_X12_Y4_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( pc_out_temp(8) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( pc_out_temp(8) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pc_out_temp(8),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: LABCELL_X11_Y4_N42
\pc_in[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_in[8]~8_combout\ = ( \m_out[8]~input_o\ & ( \Add0~33_sumout\ & ( (!\sel[0]~input_o\ & ((!\sel[1]~input_o\) # ((\operand[8]~input_o\)))) # (\sel[0]~input_o\ & (((\rx[8]~input_o\)) # (\sel[1]~input_o\))) ) ) ) # ( !\m_out[8]~input_o\ & ( 
-- \Add0~33_sumout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & ((\operand[8]~input_o\)))) # (\sel[0]~input_o\ & (((\rx[8]~input_o\)) # (\sel[1]~input_o\))) ) ) ) # ( \m_out[8]~input_o\ & ( !\Add0~33_sumout\ & ( (!\sel[0]~input_o\ & ((!\sel[1]~input_o\) # 
-- ((\operand[8]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & (\rx[8]~input_o\))) ) ) ) # ( !\m_out[8]~input_o\ & ( !\Add0~33_sumout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & ((\operand[8]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ 
-- & (\rx[8]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_rx[8]~input_o\,
	datad => \ALT_INV_operand[8]~input_o\,
	datae => \ALT_INV_m_out[8]~input_o\,
	dataf => \ALT_INV_Add0~33_sumout\,
	combout => \pc_in[8]~8_combout\);

-- Location: FF_X11_Y4_N44
\pc_out_temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_in[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_out_temp(8));

-- Location: IOIBUF_X24_Y0_N35
\rx[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx(9),
	o => \rx[9]~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\m_out[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_out(9),
	o => \m_out[9]~input_o\);

-- Location: LABCELL_X12_Y4_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( pc_out_temp(9) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( pc_out_temp(9) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pc_out_temp(9),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: IOIBUF_X26_Y0_N75
\operand[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand(9),
	o => \operand[9]~input_o\);

-- Location: LABCELL_X13_Y4_N12
\pc_in[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_in[9]~9_combout\ = ( \Add0~37_sumout\ & ( \operand[9]~input_o\ & ( ((!\sel[0]~input_o\ & ((\m_out[9]~input_o\))) # (\sel[0]~input_o\ & (\rx[9]~input_o\))) # (\sel[1]~input_o\) ) ) ) # ( !\Add0~37_sumout\ & ( \operand[9]~input_o\ & ( (!\sel[0]~input_o\ 
-- & (((\m_out[9]~input_o\) # (\sel[1]~input_o\)))) # (\sel[0]~input_o\ & (\rx[9]~input_o\ & (!\sel[1]~input_o\))) ) ) ) # ( \Add0~37_sumout\ & ( !\operand[9]~input_o\ & ( (!\sel[0]~input_o\ & (((!\sel[1]~input_o\ & \m_out[9]~input_o\)))) # (\sel[0]~input_o\ 
-- & (((\sel[1]~input_o\)) # (\rx[9]~input_o\))) ) ) ) # ( !\Add0~37_sumout\ & ( !\operand[9]~input_o\ & ( (!\sel[1]~input_o\ & ((!\sel[0]~input_o\ & ((\m_out[9]~input_o\))) # (\sel[0]~input_o\ & (\rx[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rx[9]~input_o\,
	datab => \ALT_INV_sel[0]~input_o\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ALT_INV_m_out[9]~input_o\,
	datae => \ALT_INV_Add0~37_sumout\,
	dataf => \ALT_INV_operand[9]~input_o\,
	combout => \pc_in[9]~9_combout\);

-- Location: FF_X13_Y4_N14
\pc_out_temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_in[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_out_temp(9));

-- Location: IOIBUF_X30_Y0_N35
\rx[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx(10),
	o => \rx[10]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\m_out[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_out(10),
	o => \m_out[10]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\operand[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand(10),
	o => \operand[10]~input_o\);

-- Location: LABCELL_X12_Y4_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( pc_out_temp(10) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( pc_out_temp(10) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pc_out_temp(10),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X13_Y4_N21
\pc_in[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_in[10]~10_combout\ = ( \operand[10]~input_o\ & ( \Add0~41_sumout\ & ( ((!\sel[0]~input_o\ & ((\m_out[10]~input_o\))) # (\sel[0]~input_o\ & (\rx[10]~input_o\))) # (\sel[1]~input_o\) ) ) ) # ( !\operand[10]~input_o\ & ( \Add0~41_sumout\ & ( 
-- (!\sel[1]~input_o\ & ((!\sel[0]~input_o\ & ((\m_out[10]~input_o\))) # (\sel[0]~input_o\ & (\rx[10]~input_o\)))) # (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) ) ) ) # ( \operand[10]~input_o\ & ( !\Add0~41_sumout\ & ( (!\sel[1]~input_o\ & 
-- ((!\sel[0]~input_o\ & ((\m_out[10]~input_o\))) # (\sel[0]~input_o\ & (\rx[10]~input_o\)))) # (\sel[1]~input_o\ & (((!\sel[0]~input_o\)))) ) ) ) # ( !\operand[10]~input_o\ & ( !\Add0~41_sumout\ & ( (!\sel[1]~input_o\ & ((!\sel[0]~input_o\ & 
-- ((\m_out[10]~input_o\))) # (\sel[0]~input_o\ & (\rx[10]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \ALT_INV_rx[10]~input_o\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \ALT_INV_m_out[10]~input_o\,
	datae => \ALT_INV_operand[10]~input_o\,
	dataf => \ALT_INV_Add0~41_sumout\,
	combout => \pc_in[10]~10_combout\);

-- Location: FF_X13_Y4_N23
\pc_out_temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_in[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_out_temp(10));

-- Location: IOIBUF_X24_Y0_N18
\m_out[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_out(11),
	o => \m_out[11]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\rx[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx(11),
	o => \rx[11]~input_o\);

-- Location: LABCELL_X12_Y4_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( pc_out_temp(11) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( pc_out_temp(11) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pc_out_temp(11),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: IOIBUF_X32_Y0_N18
\operand[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand(11),
	o => \operand[11]~input_o\);

-- Location: LABCELL_X13_Y4_N48
\pc_in[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_in[11]~11_combout\ = ( \Add0~45_sumout\ & ( \operand[11]~input_o\ & ( ((!\sel[0]~input_o\ & (\m_out[11]~input_o\)) # (\sel[0]~input_o\ & ((\rx[11]~input_o\)))) # (\sel[1]~input_o\) ) ) ) # ( !\Add0~45_sumout\ & ( \operand[11]~input_o\ & ( 
-- (!\sel[1]~input_o\ & ((!\sel[0]~input_o\ & (\m_out[11]~input_o\)) # (\sel[0]~input_o\ & ((\rx[11]~input_o\))))) # (\sel[1]~input_o\ & (((!\sel[0]~input_o\)))) ) ) ) # ( \Add0~45_sumout\ & ( !\operand[11]~input_o\ & ( (!\sel[1]~input_o\ & 
-- ((!\sel[0]~input_o\ & (\m_out[11]~input_o\)) # (\sel[0]~input_o\ & ((\rx[11]~input_o\))))) # (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) ) ) ) # ( !\Add0~45_sumout\ & ( !\operand[11]~input_o\ & ( (!\sel[1]~input_o\ & ((!\sel[0]~input_o\ & 
-- (\m_out[11]~input_o\)) # (\sel[0]~input_o\ & ((\rx[11]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011111101011111001100000101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m_out[11]~input_o\,
	datab => \ALT_INV_rx[11]~input_o\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ALT_INV_sel[0]~input_o\,
	datae => \ALT_INV_Add0~45_sumout\,
	dataf => \ALT_INV_operand[11]~input_o\,
	combout => \pc_in[11]~11_combout\);

-- Location: FF_X13_Y4_N50
\pc_out_temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_in[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_out_temp(11));

-- Location: IOIBUF_X34_Y0_N58
\rx[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx(12),
	o => \rx[12]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\operand[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand(12),
	o => \operand[12]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\m_out[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_out(12),
	o => \m_out[12]~input_o\);

-- Location: LABCELL_X12_Y4_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( pc_out_temp(12) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( pc_out_temp(12) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pc_out_temp(12),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: LABCELL_X13_Y4_N54
\pc_in[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_in[12]~12_combout\ = ( \sel[0]~input_o\ & ( \Add0~49_sumout\ & ( (\rx[12]~input_o\) # (\sel[1]~input_o\) ) ) ) # ( !\sel[0]~input_o\ & ( \Add0~49_sumout\ & ( (!\sel[1]~input_o\ & ((\m_out[12]~input_o\))) # (\sel[1]~input_o\ & (\operand[12]~input_o\)) 
-- ) ) ) # ( \sel[0]~input_o\ & ( !\Add0~49_sumout\ & ( (!\sel[1]~input_o\ & \rx[12]~input_o\) ) ) ) # ( !\sel[0]~input_o\ & ( !\Add0~49_sumout\ & ( (!\sel[1]~input_o\ & ((\m_out[12]~input_o\))) # (\sel[1]~input_o\ & (\operand[12]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111001000100010001000000101101011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \ALT_INV_rx[12]~input_o\,
	datac => \ALT_INV_operand[12]~input_o\,
	datad => \ALT_INV_m_out[12]~input_o\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_Add0~49_sumout\,
	combout => \pc_in[12]~12_combout\);

-- Location: FF_X13_Y4_N56
\pc_out_temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_in[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_out_temp(12));

-- Location: IOIBUF_X30_Y0_N52
\operand[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand(13),
	o => \operand[13]~input_o\);

-- Location: IOIBUF_X20_Y0_N18
\rx[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx(13),
	o => \rx[13]~input_o\);

-- Location: IOIBUF_X20_Y0_N52
\m_out[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_out(13),
	o => \m_out[13]~input_o\);

-- Location: LABCELL_X12_Y4_N39
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( pc_out_temp(13) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( pc_out_temp(13) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pc_out_temp(13),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LABCELL_X13_Y4_N27
\pc_in[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_in[13]~13_combout\ = ( \sel[0]~input_o\ & ( \Add0~53_sumout\ & ( (\sel[1]~input_o\) # (\rx[13]~input_o\) ) ) ) # ( !\sel[0]~input_o\ & ( \Add0~53_sumout\ & ( (!\sel[1]~input_o\ & ((\m_out[13]~input_o\))) # (\sel[1]~input_o\ & (\operand[13]~input_o\)) 
-- ) ) ) # ( \sel[0]~input_o\ & ( !\Add0~53_sumout\ & ( (\rx[13]~input_o\ & !\sel[1]~input_o\) ) ) ) # ( !\sel[0]~input_o\ & ( !\Add0~53_sumout\ & ( (!\sel[1]~input_o\ & ((\m_out[13]~input_o\))) # (\sel[1]~input_o\ & (\operand[13]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001100110000000000001111010101010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_operand[13]~input_o\,
	datab => \ALT_INV_rx[13]~input_o\,
	datac => \ALT_INV_m_out[13]~input_o\,
	datad => \ALT_INV_sel[1]~input_o\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_Add0~53_sumout\,
	combout => \pc_in[13]~13_combout\);

-- Location: FF_X13_Y4_N29
\pc_out_temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_in[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_out_temp(13));

-- Location: IOIBUF_X4_Y0_N35
\operand[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand(14),
	o => \operand[14]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\rx[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx(14),
	o => \rx[14]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\m_out[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_out(14),
	o => \m_out[14]~input_o\);

-- Location: LABCELL_X12_Y4_N42
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( pc_out_temp(14) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( pc_out_temp(14) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pc_out_temp(14),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: LABCELL_X11_Y4_N3
\pc_in[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_in[14]~14_combout\ = ( \m_out[14]~input_o\ & ( \Add0~57_sumout\ & ( (!\sel[0]~input_o\ & ((!\sel[1]~input_o\) # ((\operand[14]~input_o\)))) # (\sel[0]~input_o\ & (((\rx[14]~input_o\)) # (\sel[1]~input_o\))) ) ) ) # ( !\m_out[14]~input_o\ & ( 
-- \Add0~57_sumout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (\operand[14]~input_o\))) # (\sel[0]~input_o\ & (((\rx[14]~input_o\)) # (\sel[1]~input_o\))) ) ) ) # ( \m_out[14]~input_o\ & ( !\Add0~57_sumout\ & ( (!\sel[0]~input_o\ & ((!\sel[1]~input_o\) # 
-- ((\operand[14]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\rx[14]~input_o\)))) ) ) ) # ( !\m_out[14]~input_o\ & ( !\Add0~57_sumout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (\operand[14]~input_o\))) # (\sel[0]~input_o\ & 
-- (!\sel[1]~input_o\ & ((\rx[14]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_operand[14]~input_o\,
	datad => \ALT_INV_rx[14]~input_o\,
	datae => \ALT_INV_m_out[14]~input_o\,
	dataf => \ALT_INV_Add0~57_sumout\,
	combout => \pc_in[14]~14_combout\);

-- Location: FF_X11_Y4_N5
\pc_out_temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_in[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_out_temp(14));

-- Location: IOIBUF_X18_Y0_N58
\operand[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand(15),
	o => \operand[15]~input_o\);

-- Location: IOIBUF_X16_Y0_N35
\rx[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx(15),
	o => \rx[15]~input_o\);

-- Location: IOIBUF_X18_Y0_N92
\m_out[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_out(15),
	o => \m_out[15]~input_o\);

-- Location: LABCELL_X12_Y4_N45
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( pc_out_temp(15) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pc_out_temp(15),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\);

-- Location: LABCELL_X12_Y4_N48
\pc_in[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc_in[15]~15_combout\ = ( \Add0~61_sumout\ & ( \sel[0]~input_o\ & ( (\sel[1]~input_o\) # (\rx[15]~input_o\) ) ) ) # ( !\Add0~61_sumout\ & ( \sel[0]~input_o\ & ( (\rx[15]~input_o\ & !\sel[1]~input_o\) ) ) ) # ( \Add0~61_sumout\ & ( !\sel[0]~input_o\ & ( 
-- (!\sel[1]~input_o\ & ((\m_out[15]~input_o\))) # (\sel[1]~input_o\ & (\operand[15]~input_o\)) ) ) ) # ( !\Add0~61_sumout\ & ( !\sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((\m_out[15]~input_o\))) # (\sel[1]~input_o\ & (\operand[15]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_operand[15]~input_o\,
	datab => \ALT_INV_rx[15]~input_o\,
	datac => \ALT_INV_m_out[15]~input_o\,
	datad => \ALT_INV_sel[1]~input_o\,
	datae => \ALT_INV_Add0~61_sumout\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \pc_in[15]~15_combout\);

-- Location: FF_X12_Y4_N50
\pc_out_temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pc_in[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pc_out_temp(15));

-- Location: LABCELL_X19_Y68_N0
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


