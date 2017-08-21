-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "04/14/2016 15:37:50"

-- 
-- Device: Altera EP4CE40F29C6 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	adder IS
    PORT (
	clk : IN std_logic;
	a_i : IN std_logic_vector(63 DOWNTO 0);
	b_i : IN std_logic_vector(63 DOWNTO 0);
	sum_o : OUT std_logic_vector(64 DOWNTO 0);
	is_odd_o : OUT std_logic
	);
END adder;

-- Design Ports Information
-- sum_o[0]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[1]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[2]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[3]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[4]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[5]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[6]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[7]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[8]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[9]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[10]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[11]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[12]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[13]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[14]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[15]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[16]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[17]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[18]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[19]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[20]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[21]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[22]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[23]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[24]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[25]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[26]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[27]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[28]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[29]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[30]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[31]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[32]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[33]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[34]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[35]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[36]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[37]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[38]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[39]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[40]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[41]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[42]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[43]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[44]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[45]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[46]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[47]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[48]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[49]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[50]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[51]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[52]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[53]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[54]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[55]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[56]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[57]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[58]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[59]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[60]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[61]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[62]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[63]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_o[64]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_odd_o	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[1]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[1]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[2]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[2]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[3]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[4]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[4]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[5]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[5]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[6]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[6]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[7]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[7]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[8]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[8]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[9]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[9]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[10]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[10]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[11]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[11]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[12]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[12]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[13]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[13]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[14]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[14]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[15]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[15]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[16]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[16]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[17]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[17]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[18]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[18]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[19]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[19]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[20]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[20]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[21]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[21]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[22]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[22]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[23]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[23]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[24]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[24]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[25]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[25]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[26]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[26]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[27]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[27]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[28]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[28]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[29]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[29]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[30]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[30]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[31]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[31]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[32]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[32]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[33]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[33]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[34]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[34]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[35]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[35]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[36]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[36]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[37]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[37]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[38]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[38]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[39]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[39]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[40]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[40]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[41]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[41]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[42]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[42]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[43]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[43]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[44]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[44]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[45]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[45]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[46]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[46]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[47]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[47]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[48]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[48]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[49]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[49]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[50]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[50]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[51]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[51]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[52]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[52]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[53]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[53]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[54]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[54]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[55]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[55]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[56]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[56]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[57]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[57]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[58]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[58]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[59]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[59]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[60]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[60]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[61]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[61]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[62]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[62]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_i[63]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_i[63]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF adder IS
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
SIGNAL ww_a_i : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_b_i : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_sum_o : std_logic_vector(64 DOWNTO 0);
SIGNAL ww_is_odd_o : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sum_o[0]~output_o\ : std_logic;
SIGNAL \sum_o[1]~output_o\ : std_logic;
SIGNAL \sum_o[2]~output_o\ : std_logic;
SIGNAL \sum_o[3]~output_o\ : std_logic;
SIGNAL \sum_o[4]~output_o\ : std_logic;
SIGNAL \sum_o[5]~output_o\ : std_logic;
SIGNAL \sum_o[6]~output_o\ : std_logic;
SIGNAL \sum_o[7]~output_o\ : std_logic;
SIGNAL \sum_o[8]~output_o\ : std_logic;
SIGNAL \sum_o[9]~output_o\ : std_logic;
SIGNAL \sum_o[10]~output_o\ : std_logic;
SIGNAL \sum_o[11]~output_o\ : std_logic;
SIGNAL \sum_o[12]~output_o\ : std_logic;
SIGNAL \sum_o[13]~output_o\ : std_logic;
SIGNAL \sum_o[14]~output_o\ : std_logic;
SIGNAL \sum_o[15]~output_o\ : std_logic;
SIGNAL \sum_o[16]~output_o\ : std_logic;
SIGNAL \sum_o[17]~output_o\ : std_logic;
SIGNAL \sum_o[18]~output_o\ : std_logic;
SIGNAL \sum_o[19]~output_o\ : std_logic;
SIGNAL \sum_o[20]~output_o\ : std_logic;
SIGNAL \sum_o[21]~output_o\ : std_logic;
SIGNAL \sum_o[22]~output_o\ : std_logic;
SIGNAL \sum_o[23]~output_o\ : std_logic;
SIGNAL \sum_o[24]~output_o\ : std_logic;
SIGNAL \sum_o[25]~output_o\ : std_logic;
SIGNAL \sum_o[26]~output_o\ : std_logic;
SIGNAL \sum_o[27]~output_o\ : std_logic;
SIGNAL \sum_o[28]~output_o\ : std_logic;
SIGNAL \sum_o[29]~output_o\ : std_logic;
SIGNAL \sum_o[30]~output_o\ : std_logic;
SIGNAL \sum_o[31]~output_o\ : std_logic;
SIGNAL \sum_o[32]~output_o\ : std_logic;
SIGNAL \sum_o[33]~output_o\ : std_logic;
SIGNAL \sum_o[34]~output_o\ : std_logic;
SIGNAL \sum_o[35]~output_o\ : std_logic;
SIGNAL \sum_o[36]~output_o\ : std_logic;
SIGNAL \sum_o[37]~output_o\ : std_logic;
SIGNAL \sum_o[38]~output_o\ : std_logic;
SIGNAL \sum_o[39]~output_o\ : std_logic;
SIGNAL \sum_o[40]~output_o\ : std_logic;
SIGNAL \sum_o[41]~output_o\ : std_logic;
SIGNAL \sum_o[42]~output_o\ : std_logic;
SIGNAL \sum_o[43]~output_o\ : std_logic;
SIGNAL \sum_o[44]~output_o\ : std_logic;
SIGNAL \sum_o[45]~output_o\ : std_logic;
SIGNAL \sum_o[46]~output_o\ : std_logic;
SIGNAL \sum_o[47]~output_o\ : std_logic;
SIGNAL \sum_o[48]~output_o\ : std_logic;
SIGNAL \sum_o[49]~output_o\ : std_logic;
SIGNAL \sum_o[50]~output_o\ : std_logic;
SIGNAL \sum_o[51]~output_o\ : std_logic;
SIGNAL \sum_o[52]~output_o\ : std_logic;
SIGNAL \sum_o[53]~output_o\ : std_logic;
SIGNAL \sum_o[54]~output_o\ : std_logic;
SIGNAL \sum_o[55]~output_o\ : std_logic;
SIGNAL \sum_o[56]~output_o\ : std_logic;
SIGNAL \sum_o[57]~output_o\ : std_logic;
SIGNAL \sum_o[58]~output_o\ : std_logic;
SIGNAL \sum_o[59]~output_o\ : std_logic;
SIGNAL \sum_o[60]~output_o\ : std_logic;
SIGNAL \sum_o[61]~output_o\ : std_logic;
SIGNAL \sum_o[62]~output_o\ : std_logic;
SIGNAL \sum_o[63]~output_o\ : std_logic;
SIGNAL \sum_o[64]~output_o\ : std_logic;
SIGNAL \is_odd_o~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \a_i[0]~input_o\ : std_logic;
SIGNAL \a_r[0]~feeder_combout\ : std_logic;
SIGNAL \b_i[0]~input_o\ : std_logic;
SIGNAL \sum_next[0]~0_combout\ : std_logic;
SIGNAL \sum_o[0]~reg0feeder_combout\ : std_logic;
SIGNAL \sum_o[0]~reg0_q\ : std_logic;
SIGNAL \a_i[1]~input_o\ : std_logic;
SIGNAL \a_r[1]~feeder_combout\ : std_logic;
SIGNAL \b_i[1]~input_o\ : std_logic;
SIGNAL \b_r[1]~feeder_combout\ : std_logic;
SIGNAL \sum_next[0]~1\ : std_logic;
SIGNAL \sum_next[1]~2_combout\ : std_logic;
SIGNAL \sum_o[1]~reg0_q\ : std_logic;
SIGNAL \a_i[2]~input_o\ : std_logic;
SIGNAL \a_r[2]~feeder_combout\ : std_logic;
SIGNAL \b_i[2]~input_o\ : std_logic;
SIGNAL \b_r[2]~feeder_combout\ : std_logic;
SIGNAL \sum_next[1]~3\ : std_logic;
SIGNAL \sum_next[2]~4_combout\ : std_logic;
SIGNAL \sum_o[2]~reg0feeder_combout\ : std_logic;
SIGNAL \sum_o[2]~reg0_q\ : std_logic;
SIGNAL \b_i[3]~input_o\ : std_logic;
SIGNAL \b_r[3]~feeder_combout\ : std_logic;
SIGNAL \a_i[3]~input_o\ : std_logic;
SIGNAL \sum_next[2]~5\ : std_logic;
SIGNAL \sum_next[3]~6_combout\ : std_logic;
SIGNAL \sum_o[3]~reg0feeder_combout\ : std_logic;
SIGNAL \sum_o[3]~reg0_q\ : std_logic;
SIGNAL \b_i[4]~input_o\ : std_logic;
SIGNAL \a_i[4]~input_o\ : std_logic;
SIGNAL \a_r[4]~feeder_combout\ : std_logic;
SIGNAL \sum_next[3]~7\ : std_logic;
SIGNAL \sum_next[4]~8_combout\ : std_logic;
SIGNAL \sum_o[4]~reg0_q\ : std_logic;
SIGNAL \b_i[5]~input_o\ : std_logic;
SIGNAL \b_r[5]~feeder_combout\ : std_logic;
SIGNAL \a_i[5]~input_o\ : std_logic;
SIGNAL \a_r[5]~feeder_combout\ : std_logic;
SIGNAL \sum_next[4]~9\ : std_logic;
SIGNAL \sum_next[5]~10_combout\ : std_logic;
SIGNAL \sum_o[5]~reg0_q\ : std_logic;
SIGNAL \b_i[6]~input_o\ : std_logic;
SIGNAL \b_r[6]~feeder_combout\ : std_logic;
SIGNAL \a_i[6]~input_o\ : std_logic;
SIGNAL \sum_next[5]~11\ : std_logic;
SIGNAL \sum_next[6]~12_combout\ : std_logic;
SIGNAL \sum_o[6]~reg0_q\ : std_logic;
SIGNAL \a_i[7]~input_o\ : std_logic;
SIGNAL \b_i[7]~input_o\ : std_logic;
SIGNAL \b_r[7]~feeder_combout\ : std_logic;
SIGNAL \sum_next[6]~13\ : std_logic;
SIGNAL \sum_next[7]~14_combout\ : std_logic;
SIGNAL \sum_o[7]~reg0_q\ : std_logic;
SIGNAL \a_i[8]~input_o\ : std_logic;
SIGNAL \a_r[8]~feeder_combout\ : std_logic;
SIGNAL \b_i[8]~input_o\ : std_logic;
SIGNAL \sum_next[7]~15\ : std_logic;
SIGNAL \sum_next[8]~16_combout\ : std_logic;
SIGNAL \sum_o[8]~reg0_q\ : std_logic;
SIGNAL \a_i[9]~input_o\ : std_logic;
SIGNAL \a_r[9]~feeder_combout\ : std_logic;
SIGNAL \b_i[9]~input_o\ : std_logic;
SIGNAL \b_r[9]~feeder_combout\ : std_logic;
SIGNAL \sum_next[8]~17\ : std_logic;
SIGNAL \sum_next[9]~18_combout\ : std_logic;
SIGNAL \sum_o[9]~reg0_q\ : std_logic;
SIGNAL \b_i[10]~input_o\ : std_logic;
SIGNAL \a_i[10]~input_o\ : std_logic;
SIGNAL \sum_next[9]~19\ : std_logic;
SIGNAL \sum_next[10]~20_combout\ : std_logic;
SIGNAL \sum_o[10]~reg0_q\ : std_logic;
SIGNAL \a_i[11]~input_o\ : std_logic;
SIGNAL \a_r[11]~feeder_combout\ : std_logic;
SIGNAL \b_i[11]~input_o\ : std_logic;
SIGNAL \sum_next[10]~21\ : std_logic;
SIGNAL \sum_next[11]~22_combout\ : std_logic;
SIGNAL \sum_o[11]~reg0_q\ : std_logic;
SIGNAL \a_i[12]~input_o\ : std_logic;
SIGNAL \a_r[12]~feeder_combout\ : std_logic;
SIGNAL \b_i[12]~input_o\ : std_logic;
SIGNAL \sum_next[11]~23\ : std_logic;
SIGNAL \sum_next[12]~24_combout\ : std_logic;
SIGNAL \sum_o[12]~reg0_q\ : std_logic;
SIGNAL \b_i[13]~input_o\ : std_logic;
SIGNAL \b_r[13]~feeder_combout\ : std_logic;
SIGNAL \a_i[13]~input_o\ : std_logic;
SIGNAL \sum_next[12]~25\ : std_logic;
SIGNAL \sum_next[13]~26_combout\ : std_logic;
SIGNAL \sum_o[13]~reg0_q\ : std_logic;
SIGNAL \b_i[14]~input_o\ : std_logic;
SIGNAL \a_i[14]~input_o\ : std_logic;
SIGNAL \sum_next[13]~27\ : std_logic;
SIGNAL \sum_next[14]~28_combout\ : std_logic;
SIGNAL \sum_o[14]~reg0_q\ : std_logic;
SIGNAL \a_i[15]~input_o\ : std_logic;
SIGNAL \a_r[15]~feeder_combout\ : std_logic;
SIGNAL \b_i[15]~input_o\ : std_logic;
SIGNAL \b_r[15]~feeder_combout\ : std_logic;
SIGNAL \sum_next[14]~29\ : std_logic;
SIGNAL \sum_next[15]~30_combout\ : std_logic;
SIGNAL \sum_o[15]~reg0_q\ : std_logic;
SIGNAL \a_i[16]~input_o\ : std_logic;
SIGNAL \a_r[16]~feeder_combout\ : std_logic;
SIGNAL \b_i[16]~input_o\ : std_logic;
SIGNAL \sum_next[15]~31\ : std_logic;
SIGNAL \sum_next[16]~32_combout\ : std_logic;
SIGNAL \sum_o[16]~reg0_q\ : std_logic;
SIGNAL \b_i[17]~input_o\ : std_logic;
SIGNAL \a_i[17]~input_o\ : std_logic;
SIGNAL \sum_next[16]~33\ : std_logic;
SIGNAL \sum_next[17]~34_combout\ : std_logic;
SIGNAL \sum_o[17]~reg0_q\ : std_logic;
SIGNAL \a_i[18]~input_o\ : std_logic;
SIGNAL \a_r[18]~feeder_combout\ : std_logic;
SIGNAL \b_i[18]~input_o\ : std_logic;
SIGNAL \sum_next[17]~35\ : std_logic;
SIGNAL \sum_next[18]~36_combout\ : std_logic;
SIGNAL \sum_o[18]~reg0_q\ : std_logic;
SIGNAL \a_i[19]~input_o\ : std_logic;
SIGNAL \a_r[19]~feeder_combout\ : std_logic;
SIGNAL \b_i[19]~input_o\ : std_logic;
SIGNAL \b_r[19]~feeder_combout\ : std_logic;
SIGNAL \sum_next[18]~37\ : std_logic;
SIGNAL \sum_next[19]~38_combout\ : std_logic;
SIGNAL \sum_o[19]~reg0_q\ : std_logic;
SIGNAL \b_i[20]~input_o\ : std_logic;
SIGNAL \b_r[20]~feeder_combout\ : std_logic;
SIGNAL \a_i[20]~input_o\ : std_logic;
SIGNAL \a_r[20]~feeder_combout\ : std_logic;
SIGNAL \sum_next[19]~39\ : std_logic;
SIGNAL \sum_next[20]~40_combout\ : std_logic;
SIGNAL \sum_o[20]~reg0_q\ : std_logic;
SIGNAL \a_i[21]~input_o\ : std_logic;
SIGNAL \a_r[21]~feeder_combout\ : std_logic;
SIGNAL \b_i[21]~input_o\ : std_logic;
SIGNAL \sum_next[20]~41\ : std_logic;
SIGNAL \sum_next[21]~42_combout\ : std_logic;
SIGNAL \sum_o[21]~reg0_q\ : std_logic;
SIGNAL \b_i[22]~input_o\ : std_logic;
SIGNAL \b_r[22]~feeder_combout\ : std_logic;
SIGNAL \a_i[22]~input_o\ : std_logic;
SIGNAL \sum_next[21]~43\ : std_logic;
SIGNAL \sum_next[22]~44_combout\ : std_logic;
SIGNAL \sum_o[22]~reg0_q\ : std_logic;
SIGNAL \b_i[23]~input_o\ : std_logic;
SIGNAL \a_i[23]~input_o\ : std_logic;
SIGNAL \a_r[23]~feeder_combout\ : std_logic;
SIGNAL \sum_next[22]~45\ : std_logic;
SIGNAL \sum_next[23]~46_combout\ : std_logic;
SIGNAL \sum_o[23]~reg0_q\ : std_logic;
SIGNAL \a_i[24]~input_o\ : std_logic;
SIGNAL \a_r[24]~feeder_combout\ : std_logic;
SIGNAL \b_i[24]~input_o\ : std_logic;
SIGNAL \b_r[24]~feeder_combout\ : std_logic;
SIGNAL \sum_next[23]~47\ : std_logic;
SIGNAL \sum_next[24]~48_combout\ : std_logic;
SIGNAL \sum_o[24]~reg0_q\ : std_logic;
SIGNAL \a_i[25]~input_o\ : std_logic;
SIGNAL \a_r[25]~feeder_combout\ : std_logic;
SIGNAL \b_i[25]~input_o\ : std_logic;
SIGNAL \sum_next[24]~49\ : std_logic;
SIGNAL \sum_next[25]~50_combout\ : std_logic;
SIGNAL \sum_o[25]~reg0_q\ : std_logic;
SIGNAL \a_i[26]~input_o\ : std_logic;
SIGNAL \b_i[26]~input_o\ : std_logic;
SIGNAL \b_r[26]~feeder_combout\ : std_logic;
SIGNAL \sum_next[25]~51\ : std_logic;
SIGNAL \sum_next[26]~52_combout\ : std_logic;
SIGNAL \sum_o[26]~reg0_q\ : std_logic;
SIGNAL \b_i[27]~input_o\ : std_logic;
SIGNAL \b_r[27]~feeder_combout\ : std_logic;
SIGNAL \a_i[27]~input_o\ : std_logic;
SIGNAL \a_r[27]~feeder_combout\ : std_logic;
SIGNAL \sum_next[26]~53\ : std_logic;
SIGNAL \sum_next[27]~54_combout\ : std_logic;
SIGNAL \sum_o[27]~reg0_q\ : std_logic;
SIGNAL \b_i[28]~input_o\ : std_logic;
SIGNAL \b_r[28]~feeder_combout\ : std_logic;
SIGNAL \a_i[28]~input_o\ : std_logic;
SIGNAL \a_r[28]~feeder_combout\ : std_logic;
SIGNAL \sum_next[27]~55\ : std_logic;
SIGNAL \sum_next[28]~56_combout\ : std_logic;
SIGNAL \sum_o[28]~reg0_q\ : std_logic;
SIGNAL \a_i[29]~input_o\ : std_logic;
SIGNAL \b_i[29]~input_o\ : std_logic;
SIGNAL \b_r[29]~feeder_combout\ : std_logic;
SIGNAL \sum_next[28]~57\ : std_logic;
SIGNAL \sum_next[29]~58_combout\ : std_logic;
SIGNAL \sum_o[29]~reg0_q\ : std_logic;
SIGNAL \b_i[30]~input_o\ : std_logic;
SIGNAL \b_r[30]~feeder_combout\ : std_logic;
SIGNAL \a_i[30]~input_o\ : std_logic;
SIGNAL \a_r[30]~feeder_combout\ : std_logic;
SIGNAL \sum_next[29]~59\ : std_logic;
SIGNAL \sum_next[30]~60_combout\ : std_logic;
SIGNAL \sum_o[30]~reg0_q\ : std_logic;
SIGNAL \b_i[31]~input_o\ : std_logic;
SIGNAL \b_r[31]~feeder_combout\ : std_logic;
SIGNAL \a_i[31]~input_o\ : std_logic;
SIGNAL \a_r[31]~feeder_combout\ : std_logic;
SIGNAL \sum_next[30]~61\ : std_logic;
SIGNAL \sum_next[31]~62_combout\ : std_logic;
SIGNAL \sum_o[31]~reg0_q\ : std_logic;
SIGNAL \b_i[32]~input_o\ : std_logic;
SIGNAL \b_r[32]~feeder_combout\ : std_logic;
SIGNAL \a_i[32]~input_o\ : std_logic;
SIGNAL \a_r[32]~feeder_combout\ : std_logic;
SIGNAL \sum_next[31]~63\ : std_logic;
SIGNAL \sum_next[32]~64_combout\ : std_logic;
SIGNAL \sum_o[32]~reg0_q\ : std_logic;
SIGNAL \a_i[33]~input_o\ : std_logic;
SIGNAL \b_i[33]~input_o\ : std_logic;
SIGNAL \sum_next[32]~65\ : std_logic;
SIGNAL \sum_next[33]~66_combout\ : std_logic;
SIGNAL \sum_o[33]~reg0_q\ : std_logic;
SIGNAL \a_i[34]~input_o\ : std_logic;
SIGNAL \b_i[34]~input_o\ : std_logic;
SIGNAL \b_r[34]~feeder_combout\ : std_logic;
SIGNAL \sum_next[33]~67\ : std_logic;
SIGNAL \sum_next[34]~68_combout\ : std_logic;
SIGNAL \sum_o[34]~reg0_q\ : std_logic;
SIGNAL \a_i[35]~input_o\ : std_logic;
SIGNAL \a_r[35]~feeder_combout\ : std_logic;
SIGNAL \b_i[35]~input_o\ : std_logic;
SIGNAL \b_r[35]~feeder_combout\ : std_logic;
SIGNAL \sum_next[34]~69\ : std_logic;
SIGNAL \sum_next[35]~70_combout\ : std_logic;
SIGNAL \sum_o[35]~reg0_q\ : std_logic;
SIGNAL \b_i[36]~input_o\ : std_logic;
SIGNAL \b_r[36]~feeder_combout\ : std_logic;
SIGNAL \a_i[36]~input_o\ : std_logic;
SIGNAL \a_r[36]~feeder_combout\ : std_logic;
SIGNAL \sum_next[35]~71\ : std_logic;
SIGNAL \sum_next[36]~72_combout\ : std_logic;
SIGNAL \sum_o[36]~reg0_q\ : std_logic;
SIGNAL \a_i[37]~input_o\ : std_logic;
SIGNAL \a_r[37]~feeder_combout\ : std_logic;
SIGNAL \b_i[37]~input_o\ : std_logic;
SIGNAL \sum_next[36]~73\ : std_logic;
SIGNAL \sum_next[37]~74_combout\ : std_logic;
SIGNAL \sum_o[37]~reg0_q\ : std_logic;
SIGNAL \a_i[38]~input_o\ : std_logic;
SIGNAL \a_r[38]~feeder_combout\ : std_logic;
SIGNAL \b_i[38]~input_o\ : std_logic;
SIGNAL \sum_next[37]~75\ : std_logic;
SIGNAL \sum_next[38]~76_combout\ : std_logic;
SIGNAL \sum_o[38]~reg0_q\ : std_logic;
SIGNAL \a_i[39]~input_o\ : std_logic;
SIGNAL \a_r[39]~feeder_combout\ : std_logic;
SIGNAL \b_i[39]~input_o\ : std_logic;
SIGNAL \sum_next[38]~77\ : std_logic;
SIGNAL \sum_next[39]~78_combout\ : std_logic;
SIGNAL \sum_o[39]~reg0_q\ : std_logic;
SIGNAL \b_i[40]~input_o\ : std_logic;
SIGNAL \b_r[40]~feeder_combout\ : std_logic;
SIGNAL \a_i[40]~input_o\ : std_logic;
SIGNAL \sum_next[39]~79\ : std_logic;
SIGNAL \sum_next[40]~80_combout\ : std_logic;
SIGNAL \sum_o[40]~reg0_q\ : std_logic;
SIGNAL \b_i[41]~input_o\ : std_logic;
SIGNAL \b_r[41]~feeder_combout\ : std_logic;
SIGNAL \a_i[41]~input_o\ : std_logic;
SIGNAL \a_r[41]~feeder_combout\ : std_logic;
SIGNAL \sum_next[40]~81\ : std_logic;
SIGNAL \sum_next[41]~82_combout\ : std_logic;
SIGNAL \sum_o[41]~reg0_q\ : std_logic;
SIGNAL \a_i[42]~input_o\ : std_logic;
SIGNAL \b_i[42]~input_o\ : std_logic;
SIGNAL \sum_next[41]~83\ : std_logic;
SIGNAL \sum_next[42]~84_combout\ : std_logic;
SIGNAL \sum_o[42]~reg0_q\ : std_logic;
SIGNAL \a_i[43]~input_o\ : std_logic;
SIGNAL \a_r[43]~feeder_combout\ : std_logic;
SIGNAL \b_i[43]~input_o\ : std_logic;
SIGNAL \sum_next[42]~85\ : std_logic;
SIGNAL \sum_next[43]~86_combout\ : std_logic;
SIGNAL \sum_o[43]~reg0_q\ : std_logic;
SIGNAL \b_i[44]~input_o\ : std_logic;
SIGNAL \a_i[44]~input_o\ : std_logic;
SIGNAL \a_r[44]~feeder_combout\ : std_logic;
SIGNAL \sum_next[43]~87\ : std_logic;
SIGNAL \sum_next[44]~88_combout\ : std_logic;
SIGNAL \sum_o[44]~reg0_q\ : std_logic;
SIGNAL \a_i[45]~input_o\ : std_logic;
SIGNAL \b_i[45]~input_o\ : std_logic;
SIGNAL \b_r[45]~feeder_combout\ : std_logic;
SIGNAL \sum_next[44]~89\ : std_logic;
SIGNAL \sum_next[45]~90_combout\ : std_logic;
SIGNAL \sum_o[45]~reg0_q\ : std_logic;
SIGNAL \b_i[46]~input_o\ : std_logic;
SIGNAL \b_r[46]~feeder_combout\ : std_logic;
SIGNAL \a_i[46]~input_o\ : std_logic;
SIGNAL \sum_next[45]~91\ : std_logic;
SIGNAL \sum_next[46]~92_combout\ : std_logic;
SIGNAL \sum_o[46]~reg0_q\ : std_logic;
SIGNAL \b_i[47]~input_o\ : std_logic;
SIGNAL \b_r[47]~feeder_combout\ : std_logic;
SIGNAL \a_i[47]~input_o\ : std_logic;
SIGNAL \sum_next[46]~93\ : std_logic;
SIGNAL \sum_next[47]~94_combout\ : std_logic;
SIGNAL \sum_o[47]~reg0_q\ : std_logic;
SIGNAL \a_i[48]~input_o\ : std_logic;
SIGNAL \a_r[48]~feeder_combout\ : std_logic;
SIGNAL \b_i[48]~input_o\ : std_logic;
SIGNAL \b_r[48]~feeder_combout\ : std_logic;
SIGNAL \sum_next[47]~95\ : std_logic;
SIGNAL \sum_next[48]~96_combout\ : std_logic;
SIGNAL \sum_o[48]~reg0_q\ : std_logic;
SIGNAL \a_i[49]~input_o\ : std_logic;
SIGNAL \b_i[49]~input_o\ : std_logic;
SIGNAL \b_r[49]~feeder_combout\ : std_logic;
SIGNAL \sum_next[48]~97\ : std_logic;
SIGNAL \sum_next[49]~98_combout\ : std_logic;
SIGNAL \sum_o[49]~reg0_q\ : std_logic;
SIGNAL \b_i[50]~input_o\ : std_logic;
SIGNAL \b_r[50]~feeder_combout\ : std_logic;
SIGNAL \a_i[50]~input_o\ : std_logic;
SIGNAL \a_r[50]~feeder_combout\ : std_logic;
SIGNAL \sum_next[49]~99\ : std_logic;
SIGNAL \sum_next[50]~100_combout\ : std_logic;
SIGNAL \sum_o[50]~reg0_q\ : std_logic;
SIGNAL \a_i[51]~input_o\ : std_logic;
SIGNAL \b_i[51]~input_o\ : std_logic;
SIGNAL \sum_next[50]~101\ : std_logic;
SIGNAL \sum_next[51]~102_combout\ : std_logic;
SIGNAL \sum_o[51]~reg0_q\ : std_logic;
SIGNAL \b_i[52]~input_o\ : std_logic;
SIGNAL \b_r[52]~feeder_combout\ : std_logic;
SIGNAL \a_i[52]~input_o\ : std_logic;
SIGNAL \sum_next[51]~103\ : std_logic;
SIGNAL \sum_next[52]~104_combout\ : std_logic;
SIGNAL \sum_o[52]~reg0_q\ : std_logic;
SIGNAL \b_i[53]~input_o\ : std_logic;
SIGNAL \b_r[53]~feeder_combout\ : std_logic;
SIGNAL \a_i[53]~input_o\ : std_logic;
SIGNAL \a_r[53]~feeder_combout\ : std_logic;
SIGNAL \sum_next[52]~105\ : std_logic;
SIGNAL \sum_next[53]~106_combout\ : std_logic;
SIGNAL \sum_o[53]~reg0_q\ : std_logic;
SIGNAL \a_i[54]~input_o\ : std_logic;
SIGNAL \b_i[54]~input_o\ : std_logic;
SIGNAL \b_r[54]~feeder_combout\ : std_logic;
SIGNAL \sum_next[53]~107\ : std_logic;
SIGNAL \sum_next[54]~108_combout\ : std_logic;
SIGNAL \sum_o[54]~reg0_q\ : std_logic;
SIGNAL \a_i[55]~input_o\ : std_logic;
SIGNAL \a_r[55]~feeder_combout\ : std_logic;
SIGNAL \b_i[55]~input_o\ : std_logic;
SIGNAL \b_r[55]~feeder_combout\ : std_logic;
SIGNAL \sum_next[54]~109\ : std_logic;
SIGNAL \sum_next[55]~110_combout\ : std_logic;
SIGNAL \sum_o[55]~reg0_q\ : std_logic;
SIGNAL \a_i[56]~input_o\ : std_logic;
SIGNAL \b_i[56]~input_o\ : std_logic;
SIGNAL \sum_next[55]~111\ : std_logic;
SIGNAL \sum_next[56]~112_combout\ : std_logic;
SIGNAL \sum_o[56]~reg0_q\ : std_logic;
SIGNAL \a_i[57]~input_o\ : std_logic;
SIGNAL \b_i[57]~input_o\ : std_logic;
SIGNAL \sum_next[56]~113\ : std_logic;
SIGNAL \sum_next[57]~114_combout\ : std_logic;
SIGNAL \sum_o[57]~reg0_q\ : std_logic;
SIGNAL \b_i[58]~input_o\ : std_logic;
SIGNAL \a_i[58]~input_o\ : std_logic;
SIGNAL \a_r[58]~feeder_combout\ : std_logic;
SIGNAL \sum_next[57]~115\ : std_logic;
SIGNAL \sum_next[58]~116_combout\ : std_logic;
SIGNAL \sum_o[58]~reg0_q\ : std_logic;
SIGNAL \b_i[59]~input_o\ : std_logic;
SIGNAL \b_r[59]~feeder_combout\ : std_logic;
SIGNAL \a_i[59]~input_o\ : std_logic;
SIGNAL \a_r[59]~feeder_combout\ : std_logic;
SIGNAL \sum_next[58]~117\ : std_logic;
SIGNAL \sum_next[59]~118_combout\ : std_logic;
SIGNAL \sum_o[59]~reg0_q\ : std_logic;
SIGNAL \a_i[60]~input_o\ : std_logic;
SIGNAL \a_r[60]~feeder_combout\ : std_logic;
SIGNAL \b_i[60]~input_o\ : std_logic;
SIGNAL \b_r[60]~feeder_combout\ : std_logic;
SIGNAL \sum_next[59]~119\ : std_logic;
SIGNAL \sum_next[60]~120_combout\ : std_logic;
SIGNAL \sum_o[60]~reg0_q\ : std_logic;
SIGNAL \a_i[61]~input_o\ : std_logic;
SIGNAL \a_r[61]~feeder_combout\ : std_logic;
SIGNAL \b_i[61]~input_o\ : std_logic;
SIGNAL \b_r[61]~feeder_combout\ : std_logic;
SIGNAL \sum_next[60]~121\ : std_logic;
SIGNAL \sum_next[61]~122_combout\ : std_logic;
SIGNAL \sum_o[61]~reg0_q\ : std_logic;
SIGNAL \a_i[62]~input_o\ : std_logic;
SIGNAL \a_r[62]~feeder_combout\ : std_logic;
SIGNAL \b_i[62]~input_o\ : std_logic;
SIGNAL \b_r[62]~feeder_combout\ : std_logic;
SIGNAL \sum_next[61]~123\ : std_logic;
SIGNAL \sum_next[62]~124_combout\ : std_logic;
SIGNAL \sum_o[62]~reg0_q\ : std_logic;
SIGNAL \a_i[63]~input_o\ : std_logic;
SIGNAL \b_i[63]~input_o\ : std_logic;
SIGNAL \sum_next[62]~125\ : std_logic;
SIGNAL \sum_next[63]~126_combout\ : std_logic;
SIGNAL \sum_o[63]~reg0_q\ : std_logic;
SIGNAL \sum_next[63]~127\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \sum_o[64]~reg0_q\ : std_logic;
SIGNAL \is_odd_o~reg0feeder_combout\ : std_logic;
SIGNAL \is_odd_o~reg0_q\ : std_logic;
SIGNAL a_r : std_logic_vector(63 DOWNTO 0);
SIGNAL b_r : std_logic_vector(63 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_a_i <= a_i;
ww_b_i <= b_i;
sum_o <= ww_sum_o;
is_odd_o <= ww_is_odd_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X67_Y3_N2
\sum_o[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[0]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[0]~output_o\);

-- Location: IOOBUF_X67_Y30_N16
\sum_o[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[1]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[1]~output_o\);

-- Location: IOOBUF_X67_Y39_N2
\sum_o[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[2]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[2]~output_o\);

-- Location: IOOBUF_X67_Y26_N2
\sum_o[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[3]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[3]~output_o\);

-- Location: IOOBUF_X45_Y0_N9
\sum_o[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[4]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[4]~output_o\);

-- Location: IOOBUF_X67_Y31_N23
\sum_o[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[5]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[5]~output_o\);

-- Location: IOOBUF_X67_Y31_N2
\sum_o[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[6]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[6]~output_o\);

-- Location: IOOBUF_X61_Y43_N23
\sum_o[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[7]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[7]~output_o\);

-- Location: IOOBUF_X67_Y34_N9
\sum_o[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[8]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[8]~output_o\);

-- Location: IOOBUF_X67_Y34_N2
\sum_o[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[9]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[9]~output_o\);

-- Location: IOOBUF_X67_Y32_N23
\sum_o[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[10]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[10]~output_o\);

-- Location: IOOBUF_X67_Y38_N2
\sum_o[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[11]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[11]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\sum_o[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[12]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[12]~output_o\);

-- Location: IOOBUF_X67_Y34_N23
\sum_o[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[13]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[13]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\sum_o[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[14]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[14]~output_o\);

-- Location: IOOBUF_X50_Y0_N2
\sum_o[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[15]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[15]~output_o\);

-- Location: IOOBUF_X67_Y36_N2
\sum_o[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[16]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[16]~output_o\);

-- Location: IOOBUF_X67_Y2_N2
\sum_o[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[17]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[17]~output_o\);

-- Location: IOOBUF_X67_Y38_N23
\sum_o[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[18]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[18]~output_o\);

-- Location: IOOBUF_X59_Y43_N16
\sum_o[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[19]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[19]~output_o\);

-- Location: IOOBUF_X67_Y40_N2
\sum_o[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[20]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[20]~output_o\);

-- Location: IOOBUF_X67_Y26_N9
\sum_o[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[21]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[21]~output_o\);

-- Location: IOOBUF_X61_Y43_N2
\sum_o[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[22]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[22]~output_o\);

-- Location: IOOBUF_X61_Y43_N16
\sum_o[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[23]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[23]~output_o\);

-- Location: IOOBUF_X67_Y28_N2
\sum_o[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[24]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[24]~output_o\);

-- Location: IOOBUF_X67_Y39_N23
\sum_o[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[25]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[25]~output_o\);

-- Location: IOOBUF_X67_Y6_N23
\sum_o[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[26]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[26]~output_o\);

-- Location: IOOBUF_X67_Y13_N23
\sum_o[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[27]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[27]~output_o\);

-- Location: IOOBUF_X67_Y9_N16
\sum_o[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[28]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[28]~output_o\);

-- Location: IOOBUF_X59_Y43_N9
\sum_o[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[29]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[29]~output_o\);

-- Location: IOOBUF_X59_Y0_N9
\sum_o[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[30]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[30]~output_o\);

-- Location: IOOBUF_X67_Y33_N23
\sum_o[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[31]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[31]~output_o\);

-- Location: IOOBUF_X67_Y37_N16
\sum_o[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[32]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[32]~output_o\);

-- Location: IOOBUF_X48_Y0_N16
\sum_o[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[33]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[33]~output_o\);

-- Location: IOOBUF_X50_Y0_N16
\sum_o[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[34]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[34]~output_o\);

-- Location: IOOBUF_X48_Y0_N2
\sum_o[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[35]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[35]~output_o\);

-- Location: IOOBUF_X67_Y25_N23
\sum_o[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[36]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[36]~output_o\);

-- Location: IOOBUF_X67_Y32_N16
\sum_o[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[37]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[37]~output_o\);

-- Location: IOOBUF_X67_Y10_N9
\sum_o[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[38]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[38]~output_o\);

-- Location: IOOBUF_X67_Y37_N23
\sum_o[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[39]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[39]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\sum_o[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[40]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[40]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\sum_o[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[41]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[41]~output_o\);

-- Location: IOOBUF_X67_Y9_N23
\sum_o[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[42]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[42]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\sum_o[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[43]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[43]~output_o\);

-- Location: IOOBUF_X67_Y36_N9
\sum_o[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[44]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[44]~output_o\);

-- Location: IOOBUF_X67_Y9_N2
\sum_o[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[45]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[45]~output_o\);

-- Location: IOOBUF_X67_Y8_N9
\sum_o[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[46]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[46]~output_o\);

-- Location: IOOBUF_X67_Y8_N16
\sum_o[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[47]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[47]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\sum_o[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[48]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[48]~output_o\);

-- Location: IOOBUF_X59_Y0_N23
\sum_o[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[49]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[49]~output_o\);

-- Location: IOOBUF_X59_Y0_N16
\sum_o[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[50]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[50]~output_o\);

-- Location: IOOBUF_X45_Y0_N2
\sum_o[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[51]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[51]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\sum_o[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[52]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[52]~output_o\);

-- Location: IOOBUF_X54_Y43_N23
\sum_o[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[53]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[53]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\sum_o[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[54]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[54]~output_o\);

-- Location: IOOBUF_X59_Y0_N30
\sum_o[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[55]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[55]~output_o\);

-- Location: IOOBUF_X61_Y0_N23
\sum_o[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[56]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[56]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\sum_o[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[57]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[57]~output_o\);

-- Location: IOOBUF_X67_Y3_N16
\sum_o[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[58]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[58]~output_o\);

-- Location: IOOBUF_X67_Y15_N23
\sum_o[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[59]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[59]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\sum_o[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[60]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[60]~output_o\);

-- Location: IOOBUF_X59_Y0_N2
\sum_o[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[61]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[61]~output_o\);

-- Location: IOOBUF_X67_Y3_N23
\sum_o[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[62]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[62]~output_o\);

-- Location: IOOBUF_X67_Y7_N2
\sum_o[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[63]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[63]~output_o\);

-- Location: IOOBUF_X67_Y7_N9
\sum_o[64]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_o[64]~reg0_q\,
	devoe => ww_devoe,
	o => \sum_o[64]~output_o\);

-- Location: IOOBUF_X67_Y3_N9
\is_odd_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \is_odd_o~reg0_q\,
	devoe => ww_devoe,
	o => \is_odd_o~output_o\);

-- Location: IOIBUF_X0_Y21_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y21_N15
\a_i[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(0),
	o => \a_i[0]~input_o\);

-- Location: LCCOMB_X61_Y19_N12
\a_r[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[0]~feeder_combout\ = \a_i[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[0]~input_o\,
	combout => \a_r[0]~feeder_combout\);

-- Location: FF_X61_Y19_N13
\a_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(0));

-- Location: IOIBUF_X0_Y21_N22
\b_i[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(0),
	o => \b_i[0]~input_o\);

-- Location: FF_X61_Y19_N17
\b_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(0));

-- Location: LCCOMB_X61_Y19_N16
\sum_next[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[0]~0_combout\ = (a_r(0) & (b_r(0) $ (VCC))) # (!a_r(0) & (b_r(0) & VCC))
-- \sum_next[0]~1\ = CARRY((a_r(0) & b_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_r(0),
	datab => b_r(0),
	datad => VCC,
	combout => \sum_next[0]~0_combout\,
	cout => \sum_next[0]~1\);

-- Location: LCCOMB_X66_Y7_N16
\sum_o[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_o[0]~reg0feeder_combout\ = \sum_next[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sum_next[0]~0_combout\,
	combout => \sum_o[0]~reg0feeder_combout\);

-- Location: FF_X66_Y7_N17
\sum_o[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_o[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[0]~reg0_q\);

-- Location: IOIBUF_X61_Y43_N8
\a_i[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(1),
	o => \a_i[1]~input_o\);

-- Location: LCCOMB_X61_Y19_N6
\a_r[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[1]~feeder_combout\ = \a_i[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[1]~input_o\,
	combout => \a_r[1]~feeder_combout\);

-- Location: FF_X61_Y19_N7
\a_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(1));

-- Location: IOIBUF_X67_Y19_N8
\b_i[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(1),
	o => \b_i[1]~input_o\);

-- Location: LCCOMB_X61_Y19_N0
\b_r[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[1]~feeder_combout\ = \b_i[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[1]~input_o\,
	combout => \b_r[1]~feeder_combout\);

-- Location: FF_X61_Y19_N1
\b_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(1));

-- Location: LCCOMB_X61_Y19_N18
\sum_next[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[1]~2_combout\ = (a_r(1) & ((b_r(1) & (\sum_next[0]~1\ & VCC)) # (!b_r(1) & (!\sum_next[0]~1\)))) # (!a_r(1) & ((b_r(1) & (!\sum_next[0]~1\)) # (!b_r(1) & ((\sum_next[0]~1\) # (GND)))))
-- \sum_next[1]~3\ = CARRY((a_r(1) & (!b_r(1) & !\sum_next[0]~1\)) # (!a_r(1) & ((!\sum_next[0]~1\) # (!b_r(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(1),
	datab => b_r(1),
	datad => VCC,
	cin => \sum_next[0]~1\,
	combout => \sum_next[1]~2_combout\,
	cout => \sum_next[1]~3\);

-- Location: FF_X61_Y19_N19
\sum_o[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[1]~reg0_q\);

-- Location: IOIBUF_X63_Y43_N1
\a_i[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(2),
	o => \a_i[2]~input_o\);

-- Location: LCCOMB_X61_Y19_N2
\a_r[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[2]~feeder_combout\ = \a_i[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[2]~input_o\,
	combout => \a_r[2]~feeder_combout\);

-- Location: FF_X61_Y19_N3
\a_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(2));

-- Location: IOIBUF_X67_Y27_N15
\b_i[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(2),
	o => \b_i[2]~input_o\);

-- Location: LCCOMB_X62_Y19_N12
\b_r[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[2]~feeder_combout\ = \b_i[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[2]~input_o\,
	combout => \b_r[2]~feeder_combout\);

-- Location: FF_X62_Y19_N13
\b_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(2));

-- Location: LCCOMB_X61_Y19_N20
\sum_next[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[2]~4_combout\ = ((a_r(2) $ (b_r(2) $ (!\sum_next[1]~3\)))) # (GND)
-- \sum_next[2]~5\ = CARRY((a_r(2) & ((b_r(2)) # (!\sum_next[1]~3\))) # (!a_r(2) & (b_r(2) & !\sum_next[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(2),
	datab => b_r(2),
	datad => VCC,
	cin => \sum_next[1]~3\,
	combout => \sum_next[2]~4_combout\,
	cout => \sum_next[2]~5\);

-- Location: LCCOMB_X62_Y19_N8
\sum_o[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_o[2]~reg0feeder_combout\ = \sum_next[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sum_next[2]~4_combout\,
	combout => \sum_o[2]~reg0feeder_combout\);

-- Location: FF_X62_Y19_N9
\sum_o[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_o[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[2]~reg0_q\);

-- Location: IOIBUF_X67_Y35_N1
\b_i[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(3),
	o => \b_i[3]~input_o\);

-- Location: LCCOMB_X62_Y19_N20
\b_r[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[3]~feeder_combout\ = \b_i[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[3]~input_o\,
	combout => \b_r[3]~feeder_combout\);

-- Location: FF_X62_Y19_N21
\b_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(3));

-- Location: IOIBUF_X67_Y26_N22
\a_i[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(3),
	o => \a_i[3]~input_o\);

-- Location: FF_X62_Y19_N27
\a_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(3));

-- Location: LCCOMB_X61_Y19_N22
\sum_next[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[3]~6_combout\ = (b_r(3) & ((a_r(3) & (\sum_next[2]~5\ & VCC)) # (!a_r(3) & (!\sum_next[2]~5\)))) # (!b_r(3) & ((a_r(3) & (!\sum_next[2]~5\)) # (!a_r(3) & ((\sum_next[2]~5\) # (GND)))))
-- \sum_next[3]~7\ = CARRY((b_r(3) & (!a_r(3) & !\sum_next[2]~5\)) # (!b_r(3) & ((!\sum_next[2]~5\) # (!a_r(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(3),
	datab => a_r(3),
	datad => VCC,
	cin => \sum_next[2]~5\,
	combout => \sum_next[3]~6_combout\,
	cout => \sum_next[3]~7\);

-- Location: LCCOMB_X62_Y19_N2
\sum_o[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_o[3]~reg0feeder_combout\ = \sum_next[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sum_next[3]~6_combout\,
	combout => \sum_o[3]~reg0feeder_combout\);

-- Location: FF_X62_Y19_N3
\sum_o[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_o[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[3]~reg0_q\);

-- Location: IOIBUF_X67_Y30_N1
\b_i[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(4),
	o => \b_i[4]~input_o\);

-- Location: FF_X61_Y19_N11
\b_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(4));

-- Location: IOIBUF_X67_Y35_N22
\a_i[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(4),
	o => \a_i[4]~input_o\);

-- Location: LCCOMB_X61_Y19_N4
\a_r[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[4]~feeder_combout\ = \a_i[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[4]~input_o\,
	combout => \a_r[4]~feeder_combout\);

-- Location: FF_X61_Y19_N5
\a_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(4));

-- Location: LCCOMB_X61_Y19_N24
\sum_next[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[4]~8_combout\ = ((b_r(4) $ (a_r(4) $ (!\sum_next[3]~7\)))) # (GND)
-- \sum_next[4]~9\ = CARRY((b_r(4) & ((a_r(4)) # (!\sum_next[3]~7\))) # (!b_r(4) & (a_r(4) & !\sum_next[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(4),
	datab => a_r(4),
	datad => VCC,
	cin => \sum_next[3]~7\,
	combout => \sum_next[4]~8_combout\,
	cout => \sum_next[4]~9\);

-- Location: FF_X61_Y19_N25
\sum_o[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[4]~reg0_q\);

-- Location: IOIBUF_X67_Y19_N22
\b_i[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(5),
	o => \b_i[5]~input_o\);

-- Location: LCCOMB_X62_Y19_N6
\b_r[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[5]~feeder_combout\ = \b_i[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[5]~input_o\,
	combout => \b_r[5]~feeder_combout\);

-- Location: FF_X62_Y19_N7
\b_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(5));

-- Location: IOIBUF_X61_Y43_N29
\a_i[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(5),
	o => \a_i[5]~input_o\);

-- Location: LCCOMB_X61_Y19_N8
\a_r[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[5]~feeder_combout\ = \a_i[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[5]~input_o\,
	combout => \a_r[5]~feeder_combout\);

-- Location: FF_X61_Y19_N9
\a_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(5));

-- Location: LCCOMB_X61_Y19_N26
\sum_next[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[5]~10_combout\ = (b_r(5) & ((a_r(5) & (\sum_next[4]~9\ & VCC)) # (!a_r(5) & (!\sum_next[4]~9\)))) # (!b_r(5) & ((a_r(5) & (!\sum_next[4]~9\)) # (!a_r(5) & ((\sum_next[4]~9\) # (GND)))))
-- \sum_next[5]~11\ = CARRY((b_r(5) & (!a_r(5) & !\sum_next[4]~9\)) # (!b_r(5) & ((!\sum_next[4]~9\) # (!a_r(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(5),
	datab => a_r(5),
	datad => VCC,
	cin => \sum_next[4]~9\,
	combout => \sum_next[5]~10_combout\,
	cout => \sum_next[5]~11\);

-- Location: FF_X61_Y19_N27
\sum_o[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[5]~reg0_q\);

-- Location: IOIBUF_X67_Y29_N22
\b_i[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(6),
	o => \b_i[6]~input_o\);

-- Location: LCCOMB_X62_Y19_N4
\b_r[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[6]~feeder_combout\ = \b_i[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[6]~input_o\,
	combout => \b_r[6]~feeder_combout\);

-- Location: FF_X62_Y19_N5
\b_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(6));

-- Location: IOIBUF_X67_Y19_N15
\a_i[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(6),
	o => \a_i[6]~input_o\);

-- Location: FF_X61_Y19_N21
\a_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(6));

-- Location: LCCOMB_X61_Y19_N28
\sum_next[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[6]~12_combout\ = ((b_r(6) $ (a_r(6) $ (!\sum_next[5]~11\)))) # (GND)
-- \sum_next[6]~13\ = CARRY((b_r(6) & ((a_r(6)) # (!\sum_next[5]~11\))) # (!b_r(6) & (a_r(6) & !\sum_next[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(6),
	datab => a_r(6),
	datad => VCC,
	cin => \sum_next[5]~11\,
	combout => \sum_next[6]~12_combout\,
	cout => \sum_next[6]~13\);

-- Location: FF_X61_Y19_N29
\sum_o[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[6]~reg0_q\);

-- Location: IOIBUF_X67_Y31_N8
\a_i[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(7),
	o => \a_i[7]~input_o\);

-- Location: FF_X61_Y19_N23
\a_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(7));

-- Location: IOIBUF_X67_Y36_N15
\b_i[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(7),
	o => \b_i[7]~input_o\);

-- Location: LCCOMB_X61_Y19_N14
\b_r[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[7]~feeder_combout\ = \b_i[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[7]~input_o\,
	combout => \b_r[7]~feeder_combout\);

-- Location: FF_X61_Y19_N15
\b_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(7));

-- Location: LCCOMB_X61_Y19_N30
\sum_next[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[7]~14_combout\ = (a_r(7) & ((b_r(7) & (\sum_next[6]~13\ & VCC)) # (!b_r(7) & (!\sum_next[6]~13\)))) # (!a_r(7) & ((b_r(7) & (!\sum_next[6]~13\)) # (!b_r(7) & ((\sum_next[6]~13\) # (GND)))))
-- \sum_next[7]~15\ = CARRY((a_r(7) & (!b_r(7) & !\sum_next[6]~13\)) # (!a_r(7) & ((!\sum_next[6]~13\) # (!b_r(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(7),
	datab => b_r(7),
	datad => VCC,
	cin => \sum_next[6]~13\,
	combout => \sum_next[7]~14_combout\,
	cout => \sum_next[7]~15\);

-- Location: FF_X61_Y19_N31
\sum_o[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[7]~reg0_q\);

-- Location: IOIBUF_X52_Y0_N29
\a_i[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(8),
	o => \a_i[8]~input_o\);

-- Location: LCCOMB_X60_Y18_N12
\a_r[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[8]~feeder_combout\ = \a_i[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[8]~input_o\,
	combout => \a_r[8]~feeder_combout\);

-- Location: FF_X60_Y18_N13
\a_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(8));

-- Location: IOIBUF_X50_Y0_N29
\b_i[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(8),
	o => \b_i[8]~input_o\);

-- Location: FF_X60_Y18_N31
\b_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(8));

-- Location: LCCOMB_X61_Y18_N0
\sum_next[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[8]~16_combout\ = ((a_r(8) $ (b_r(8) $ (!\sum_next[7]~15\)))) # (GND)
-- \sum_next[8]~17\ = CARRY((a_r(8) & ((b_r(8)) # (!\sum_next[7]~15\))) # (!a_r(8) & (b_r(8) & !\sum_next[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(8),
	datab => b_r(8),
	datad => VCC,
	cin => \sum_next[7]~15\,
	combout => \sum_next[8]~16_combout\,
	cout => \sum_next[8]~17\);

-- Location: FF_X61_Y18_N1
\sum_o[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[8]~reg0_q\);

-- Location: IOIBUF_X48_Y0_N22
\a_i[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(9),
	o => \a_i[9]~input_o\);

-- Location: LCCOMB_X60_Y18_N8
\a_r[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[9]~feeder_combout\ = \a_i[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[9]~input_o\,
	combout => \a_r[9]~feeder_combout\);

-- Location: FF_X60_Y18_N9
\a_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(9));

-- Location: IOIBUF_X56_Y43_N29
\b_i[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(9),
	o => \b_i[9]~input_o\);

-- Location: LCCOMB_X60_Y18_N6
\b_r[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[9]~feeder_combout\ = \b_i[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[9]~input_o\,
	combout => \b_r[9]~feeder_combout\);

-- Location: FF_X60_Y18_N7
\b_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(9));

-- Location: LCCOMB_X61_Y18_N2
\sum_next[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[9]~18_combout\ = (a_r(9) & ((b_r(9) & (\sum_next[8]~17\ & VCC)) # (!b_r(9) & (!\sum_next[8]~17\)))) # (!a_r(9) & ((b_r(9) & (!\sum_next[8]~17\)) # (!b_r(9) & ((\sum_next[8]~17\) # (GND)))))
-- \sum_next[9]~19\ = CARRY((a_r(9) & (!b_r(9) & !\sum_next[8]~17\)) # (!a_r(9) & ((!\sum_next[8]~17\) # (!b_r(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(9),
	datab => b_r(9),
	datad => VCC,
	cin => \sum_next[8]~17\,
	combout => \sum_next[9]~18_combout\,
	cout => \sum_next[9]~19\);

-- Location: FF_X61_Y18_N3
\sum_o[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[9]~reg0_q\);

-- Location: IOIBUF_X56_Y43_N15
\b_i[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(10),
	o => \b_i[10]~input_o\);

-- Location: FF_X60_Y18_N23
\b_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(10));

-- Location: IOIBUF_X52_Y0_N15
\a_i[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(10),
	o => \a_i[10]~input_o\);

-- Location: FF_X60_Y18_N5
\a_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(10));

-- Location: LCCOMB_X61_Y18_N4
\sum_next[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[10]~20_combout\ = ((b_r(10) $ (a_r(10) $ (!\sum_next[9]~19\)))) # (GND)
-- \sum_next[10]~21\ = CARRY((b_r(10) & ((a_r(10)) # (!\sum_next[9]~19\))) # (!b_r(10) & (a_r(10) & !\sum_next[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(10),
	datab => a_r(10),
	datad => VCC,
	cin => \sum_next[9]~19\,
	combout => \sum_next[10]~20_combout\,
	cout => \sum_next[10]~21\);

-- Location: FF_X61_Y18_N5
\sum_o[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[10]~reg0_q\);

-- Location: IOIBUF_X45_Y0_N29
\a_i[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(11),
	o => \a_i[11]~input_o\);

-- Location: LCCOMB_X60_Y18_N24
\a_r[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[11]~feeder_combout\ = \a_i[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[11]~input_o\,
	combout => \a_r[11]~feeder_combout\);

-- Location: FF_X60_Y18_N25
\a_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(11));

-- Location: IOIBUF_X56_Y43_N1
\b_i[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(11),
	o => \b_i[11]~input_o\);

-- Location: FF_X60_Y18_N19
\b_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(11));

-- Location: LCCOMB_X61_Y18_N6
\sum_next[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[11]~22_combout\ = (a_r(11) & ((b_r(11) & (\sum_next[10]~21\ & VCC)) # (!b_r(11) & (!\sum_next[10]~21\)))) # (!a_r(11) & ((b_r(11) & (!\sum_next[10]~21\)) # (!b_r(11) & ((\sum_next[10]~21\) # (GND)))))
-- \sum_next[11]~23\ = CARRY((a_r(11) & (!b_r(11) & !\sum_next[10]~21\)) # (!a_r(11) & ((!\sum_next[10]~21\) # (!b_r(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(11),
	datab => b_r(11),
	datad => VCC,
	cin => \sum_next[10]~21\,
	combout => \sum_next[11]~22_combout\,
	cout => \sum_next[11]~23\);

-- Location: FF_X61_Y18_N7
\sum_o[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[11]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[11]~reg0_q\);

-- Location: IOIBUF_X56_Y0_N29
\a_i[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(12),
	o => \a_i[12]~input_o\);

-- Location: LCCOMB_X60_Y18_N0
\a_r[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[12]~feeder_combout\ = \a_i[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[12]~input_o\,
	combout => \a_r[12]~feeder_combout\);

-- Location: FF_X60_Y18_N1
\a_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(12));

-- Location: IOIBUF_X67_Y18_N22
\b_i[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(12),
	o => \b_i[12]~input_o\);

-- Location: FF_X62_Y18_N13
\b_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[12]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(12));

-- Location: LCCOMB_X61_Y18_N8
\sum_next[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[12]~24_combout\ = ((a_r(12) $ (b_r(12) $ (!\sum_next[11]~23\)))) # (GND)
-- \sum_next[12]~25\ = CARRY((a_r(12) & ((b_r(12)) # (!\sum_next[11]~23\))) # (!a_r(12) & (b_r(12) & !\sum_next[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(12),
	datab => b_r(12),
	datad => VCC,
	cin => \sum_next[11]~23\,
	combout => \sum_next[12]~24_combout\,
	cout => \sum_next[12]~25\);

-- Location: FF_X61_Y18_N9
\sum_o[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[12]~reg0_q\);

-- Location: IOIBUF_X0_Y18_N15
\b_i[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(13),
	o => \b_i[13]~input_o\);

-- Location: LCCOMB_X60_Y18_N2
\b_r[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[13]~feeder_combout\ = \b_i[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[13]~input_o\,
	combout => \b_r[13]~feeder_combout\);

-- Location: FF_X60_Y18_N3
\b_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(13));

-- Location: IOIBUF_X67_Y32_N8
\a_i[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(13),
	o => \a_i[13]~input_o\);

-- Location: FF_X62_Y18_N23
\a_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[13]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(13));

-- Location: LCCOMB_X61_Y18_N10
\sum_next[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[13]~26_combout\ = (b_r(13) & ((a_r(13) & (\sum_next[12]~25\ & VCC)) # (!a_r(13) & (!\sum_next[12]~25\)))) # (!b_r(13) & ((a_r(13) & (!\sum_next[12]~25\)) # (!a_r(13) & ((\sum_next[12]~25\) # (GND)))))
-- \sum_next[13]~27\ = CARRY((b_r(13) & (!a_r(13) & !\sum_next[12]~25\)) # (!b_r(13) & ((!\sum_next[12]~25\) # (!a_r(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(13),
	datab => a_r(13),
	datad => VCC,
	cin => \sum_next[12]~25\,
	combout => \sum_next[13]~26_combout\,
	cout => \sum_next[13]~27\);

-- Location: FF_X61_Y18_N11
\sum_o[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[13]~reg0_q\);

-- Location: IOIBUF_X50_Y0_N8
\b_i[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(14),
	o => \b_i[14]~input_o\);

-- Location: FF_X60_Y18_N11
\b_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[14]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(14));

-- Location: IOIBUF_X48_Y0_N8
\a_i[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(14),
	o => \a_i[14]~input_o\);

-- Location: FF_X60_Y18_N29
\a_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[14]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(14));

-- Location: LCCOMB_X61_Y18_N12
\sum_next[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[14]~28_combout\ = ((b_r(14) $ (a_r(14) $ (!\sum_next[13]~27\)))) # (GND)
-- \sum_next[14]~29\ = CARRY((b_r(14) & ((a_r(14)) # (!\sum_next[13]~27\))) # (!b_r(14) & (a_r(14) & !\sum_next[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(14),
	datab => a_r(14),
	datad => VCC,
	cin => \sum_next[13]~27\,
	combout => \sum_next[14]~28_combout\,
	cout => \sum_next[14]~29\);

-- Location: FF_X61_Y18_N13
\sum_o[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[14]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[14]~reg0_q\);

-- Location: IOIBUF_X48_Y0_N29
\a_i[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(15),
	o => \a_i[15]~input_o\);

-- Location: LCCOMB_X60_Y18_N16
\a_r[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[15]~feeder_combout\ = \a_i[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[15]~input_o\,
	combout => \a_r[15]~feeder_combout\);

-- Location: FF_X60_Y18_N17
\a_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(15));

-- Location: IOIBUF_X67_Y18_N8
\b_i[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(15),
	o => \b_i[15]~input_o\);

-- Location: LCCOMB_X62_Y18_N24
\b_r[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[15]~feeder_combout\ = \b_i[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[15]~input_o\,
	combout => \b_r[15]~feeder_combout\);

-- Location: FF_X62_Y18_N25
\b_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(15));

-- Location: LCCOMB_X61_Y18_N14
\sum_next[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[15]~30_combout\ = (a_r(15) & ((b_r(15) & (\sum_next[14]~29\ & VCC)) # (!b_r(15) & (!\sum_next[14]~29\)))) # (!a_r(15) & ((b_r(15) & (!\sum_next[14]~29\)) # (!b_r(15) & ((\sum_next[14]~29\) # (GND)))))
-- \sum_next[15]~31\ = CARRY((a_r(15) & (!b_r(15) & !\sum_next[14]~29\)) # (!a_r(15) & ((!\sum_next[14]~29\) # (!b_r(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(15),
	datab => b_r(15),
	datad => VCC,
	cin => \sum_next[14]~29\,
	combout => \sum_next[15]~30_combout\,
	cout => \sum_next[15]~31\);

-- Location: FF_X61_Y18_N15
\sum_o[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[15]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[15]~reg0_q\);

-- Location: IOIBUF_X67_Y18_N1
\a_i[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(16),
	o => \a_i[16]~input_o\);

-- Location: LCCOMB_X60_Y18_N26
\a_r[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[16]~feeder_combout\ = \a_i[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[16]~input_o\,
	combout => \a_r[16]~feeder_combout\);

-- Location: FF_X60_Y18_N27
\a_r[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(16));

-- Location: IOIBUF_X67_Y34_N15
\b_i[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(16),
	o => \b_i[16]~input_o\);

-- Location: FF_X62_Y18_N11
\b_r[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[16]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(16));

-- Location: LCCOMB_X61_Y18_N16
\sum_next[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[16]~32_combout\ = ((a_r(16) $ (b_r(16) $ (!\sum_next[15]~31\)))) # (GND)
-- \sum_next[16]~33\ = CARRY((a_r(16) & ((b_r(16)) # (!\sum_next[15]~31\))) # (!a_r(16) & (b_r(16) & !\sum_next[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(16),
	datab => b_r(16),
	datad => VCC,
	cin => \sum_next[15]~31\,
	combout => \sum_next[16]~32_combout\,
	cout => \sum_next[16]~33\);

-- Location: FF_X61_Y18_N17
\sum_o[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[16]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[16]~reg0_q\);

-- Location: IOIBUF_X67_Y18_N15
\b_i[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(17),
	o => \b_i[17]~input_o\);

-- Location: FF_X62_Y18_N31
\b_r[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[17]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(17));

-- Location: IOIBUF_X67_Y25_N8
\a_i[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(17),
	o => \a_i[17]~input_o\);

-- Location: FF_X62_Y18_N1
\a_r[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[17]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(17));

-- Location: LCCOMB_X61_Y18_N18
\sum_next[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[17]~34_combout\ = (b_r(17) & ((a_r(17) & (\sum_next[16]~33\ & VCC)) # (!a_r(17) & (!\sum_next[16]~33\)))) # (!b_r(17) & ((a_r(17) & (!\sum_next[16]~33\)) # (!a_r(17) & ((\sum_next[16]~33\) # (GND)))))
-- \sum_next[17]~35\ = CARRY((b_r(17) & (!a_r(17) & !\sum_next[16]~33\)) # (!b_r(17) & ((!\sum_next[16]~33\) # (!a_r(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(17),
	datab => a_r(17),
	datad => VCC,
	cin => \sum_next[16]~33\,
	combout => \sum_next[17]~34_combout\,
	cout => \sum_next[17]~35\);

-- Location: FF_X61_Y18_N19
\sum_o[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[17]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[17]~reg0_q\);

-- Location: IOIBUF_X67_Y29_N8
\a_i[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(18),
	o => \a_i[18]~input_o\);

-- Location: LCCOMB_X62_Y18_N20
\a_r[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[18]~feeder_combout\ = \a_i[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[18]~input_o\,
	combout => \a_r[18]~feeder_combout\);

-- Location: FF_X62_Y18_N21
\a_r[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(18));

-- Location: IOIBUF_X52_Y0_N22
\b_i[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(18),
	o => \b_i[18]~input_o\);

-- Location: FF_X60_Y18_N21
\b_r[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[18]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(18));

-- Location: LCCOMB_X61_Y18_N20
\sum_next[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[18]~36_combout\ = ((a_r(18) $ (b_r(18) $ (!\sum_next[17]~35\)))) # (GND)
-- \sum_next[18]~37\ = CARRY((a_r(18) & ((b_r(18)) # (!\sum_next[17]~35\))) # (!a_r(18) & (b_r(18) & !\sum_next[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(18),
	datab => b_r(18),
	datad => VCC,
	cin => \sum_next[17]~35\,
	combout => \sum_next[18]~36_combout\,
	cout => \sum_next[18]~37\);

-- Location: FF_X61_Y18_N21
\sum_o[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[18]~reg0_q\);

-- Location: IOIBUF_X67_Y38_N8
\a_i[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(19),
	o => \a_i[19]~input_o\);

-- Location: LCCOMB_X62_Y18_N26
\a_r[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[19]~feeder_combout\ = \a_i[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[19]~input_o\,
	combout => \a_r[19]~feeder_combout\);

-- Location: FF_X62_Y18_N27
\a_r[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(19));

-- Location: IOIBUF_X67_Y39_N15
\b_i[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(19),
	o => \b_i[19]~input_o\);

-- Location: LCCOMB_X62_Y18_N16
\b_r[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[19]~feeder_combout\ = \b_i[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[19]~input_o\,
	combout => \b_r[19]~feeder_combout\);

-- Location: FF_X62_Y18_N17
\b_r[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(19));

-- Location: LCCOMB_X61_Y18_N22
\sum_next[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[19]~38_combout\ = (a_r(19) & ((b_r(19) & (\sum_next[18]~37\ & VCC)) # (!b_r(19) & (!\sum_next[18]~37\)))) # (!a_r(19) & ((b_r(19) & (!\sum_next[18]~37\)) # (!b_r(19) & ((\sum_next[18]~37\) # (GND)))))
-- \sum_next[19]~39\ = CARRY((a_r(19) & (!b_r(19) & !\sum_next[18]~37\)) # (!a_r(19) & ((!\sum_next[18]~37\) # (!b_r(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(19),
	datab => b_r(19),
	datad => VCC,
	cin => \sum_next[18]~37\,
	combout => \sum_next[19]~38_combout\,
	cout => \sum_next[19]~39\);

-- Location: FF_X61_Y18_N23
\sum_o[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[19]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[19]~reg0_q\);

-- Location: IOIBUF_X67_Y30_N8
\b_i[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(20),
	o => \b_i[20]~input_o\);

-- Location: LCCOMB_X62_Y18_N4
\b_r[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[20]~feeder_combout\ = \b_i[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[20]~input_o\,
	combout => \b_r[20]~feeder_combout\);

-- Location: FF_X62_Y18_N5
\b_r[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(20));

-- Location: IOIBUF_X67_Y38_N15
\a_i[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(20),
	o => \a_i[20]~input_o\);

-- Location: LCCOMB_X62_Y18_N18
\a_r[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[20]~feeder_combout\ = \a_i[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[20]~input_o\,
	combout => \a_r[20]~feeder_combout\);

-- Location: FF_X62_Y18_N19
\a_r[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(20));

-- Location: LCCOMB_X61_Y18_N24
\sum_next[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[20]~40_combout\ = ((b_r(20) $ (a_r(20) $ (!\sum_next[19]~39\)))) # (GND)
-- \sum_next[20]~41\ = CARRY((b_r(20) & ((a_r(20)) # (!\sum_next[19]~39\))) # (!b_r(20) & (a_r(20) & !\sum_next[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(20),
	datab => a_r(20),
	datad => VCC,
	cin => \sum_next[19]~39\,
	combout => \sum_next[20]~40_combout\,
	cout => \sum_next[20]~41\);

-- Location: FF_X61_Y18_N25
\sum_o[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[20]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[20]~reg0_q\);

-- Location: IOIBUF_X59_Y43_N1
\a_i[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(21),
	o => \a_i[21]~input_o\);

-- Location: LCCOMB_X60_Y18_N14
\a_r[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[21]~feeder_combout\ = \a_i[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[21]~input_o\,
	combout => \a_r[21]~feeder_combout\);

-- Location: FF_X60_Y18_N15
\a_r[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(21));

-- Location: IOIBUF_X67_Y15_N15
\b_i[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(21),
	o => \b_i[21]~input_o\);

-- Location: FF_X62_Y18_N15
\b_r[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[21]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(21));

-- Location: LCCOMB_X61_Y18_N26
\sum_next[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[21]~42_combout\ = (a_r(21) & ((b_r(21) & (\sum_next[20]~41\ & VCC)) # (!b_r(21) & (!\sum_next[20]~41\)))) # (!a_r(21) & ((b_r(21) & (!\sum_next[20]~41\)) # (!b_r(21) & ((\sum_next[20]~41\) # (GND)))))
-- \sum_next[21]~43\ = CARRY((a_r(21) & (!b_r(21) & !\sum_next[20]~41\)) # (!a_r(21) & ((!\sum_next[20]~41\) # (!b_r(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(21),
	datab => b_r(21),
	datad => VCC,
	cin => \sum_next[20]~41\,
	combout => \sum_next[21]~42_combout\,
	cout => \sum_next[21]~43\);

-- Location: FF_X61_Y18_N27
\sum_o[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[21]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[21]~reg0_q\);

-- Location: IOIBUF_X67_Y30_N22
\b_i[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(22),
	o => \b_i[22]~input_o\);

-- Location: LCCOMB_X62_Y18_N6
\b_r[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[22]~feeder_combout\ = \b_i[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[22]~input_o\,
	combout => \b_r[22]~feeder_combout\);

-- Location: FF_X62_Y18_N7
\b_r[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(22));

-- Location: IOIBUF_X67_Y14_N8
\a_i[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(22),
	o => \a_i[22]~input_o\);

-- Location: FF_X62_Y18_N9
\a_r[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[22]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(22));

-- Location: LCCOMB_X61_Y18_N28
\sum_next[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[22]~44_combout\ = ((b_r(22) $ (a_r(22) $ (!\sum_next[21]~43\)))) # (GND)
-- \sum_next[22]~45\ = CARRY((b_r(22) & ((a_r(22)) # (!\sum_next[21]~43\))) # (!b_r(22) & (a_r(22) & !\sum_next[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(22),
	datab => a_r(22),
	datad => VCC,
	cin => \sum_next[21]~43\,
	combout => \sum_next[22]~44_combout\,
	cout => \sum_next[22]~45\);

-- Location: FF_X61_Y18_N29
\sum_o[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[22]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[22]~reg0_q\);

-- Location: IOIBUF_X67_Y32_N1
\b_i[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(23),
	o => \b_i[23]~input_o\);

-- Location: FF_X62_Y18_N3
\b_r[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[23]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(23));

-- Location: IOIBUF_X67_Y29_N15
\a_i[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(23),
	o => \a_i[23]~input_o\);

-- Location: LCCOMB_X62_Y18_N28
\a_r[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[23]~feeder_combout\ = \a_i[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[23]~input_o\,
	combout => \a_r[23]~feeder_combout\);

-- Location: FF_X62_Y18_N29
\a_r[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(23));

-- Location: LCCOMB_X61_Y18_N30
\sum_next[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[23]~46_combout\ = (b_r(23) & ((a_r(23) & (\sum_next[22]~45\ & VCC)) # (!a_r(23) & (!\sum_next[22]~45\)))) # (!b_r(23) & ((a_r(23) & (!\sum_next[22]~45\)) # (!a_r(23) & ((\sum_next[22]~45\) # (GND)))))
-- \sum_next[23]~47\ = CARRY((b_r(23) & (!a_r(23) & !\sum_next[22]~45\)) # (!b_r(23) & ((!\sum_next[22]~45\) # (!a_r(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(23),
	datab => a_r(23),
	datad => VCC,
	cin => \sum_next[22]~45\,
	combout => \sum_next[23]~46_combout\,
	cout => \sum_next[23]~47\);

-- Location: FF_X61_Y18_N31
\sum_o[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[23]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[23]~reg0_q\);

-- Location: IOIBUF_X67_Y17_N22
\a_i[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(24),
	o => \a_i[24]~input_o\);

-- Location: LCCOMB_X60_Y17_N0
\a_r[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[24]~feeder_combout\ = \a_i[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[24]~input_o\,
	combout => \a_r[24]~feeder_combout\);

-- Location: FF_X60_Y17_N1
\a_r[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(24));

-- Location: IOIBUF_X67_Y10_N15
\b_i[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(24),
	o => \b_i[24]~input_o\);

-- Location: LCCOMB_X62_Y17_N28
\b_r[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[24]~feeder_combout\ = \b_i[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[24]~input_o\,
	combout => \b_r[24]~feeder_combout\);

-- Location: FF_X62_Y17_N29
\b_r[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(24));

-- Location: LCCOMB_X61_Y17_N0
\sum_next[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[24]~48_combout\ = ((a_r(24) $ (b_r(24) $ (!\sum_next[23]~47\)))) # (GND)
-- \sum_next[24]~49\ = CARRY((a_r(24) & ((b_r(24)) # (!\sum_next[23]~47\))) # (!a_r(24) & (b_r(24) & !\sum_next[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(24),
	datab => b_r(24),
	datad => VCC,
	cin => \sum_next[23]~47\,
	combout => \sum_next[24]~48_combout\,
	cout => \sum_next[24]~49\);

-- Location: FF_X61_Y17_N1
\sum_o[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[24]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[24]~reg0_q\);

-- Location: IOIBUF_X67_Y14_N1
\a_i[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(25),
	o => \a_i[25]~input_o\);

-- Location: LCCOMB_X62_Y17_N6
\a_r[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[25]~feeder_combout\ = \a_i[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[25]~input_o\,
	combout => \a_r[25]~feeder_combout\);

-- Location: FF_X62_Y17_N7
\a_r[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(25));

-- Location: IOIBUF_X67_Y20_N1
\b_i[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(25),
	o => \b_i[25]~input_o\);

-- Location: FF_X62_Y17_N9
\b_r[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[25]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(25));

-- Location: LCCOMB_X61_Y17_N2
\sum_next[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[25]~50_combout\ = (a_r(25) & ((b_r(25) & (\sum_next[24]~49\ & VCC)) # (!b_r(25) & (!\sum_next[24]~49\)))) # (!a_r(25) & ((b_r(25) & (!\sum_next[24]~49\)) # (!b_r(25) & ((\sum_next[24]~49\) # (GND)))))
-- \sum_next[25]~51\ = CARRY((a_r(25) & (!b_r(25) & !\sum_next[24]~49\)) # (!a_r(25) & ((!\sum_next[24]~49\) # (!b_r(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(25),
	datab => b_r(25),
	datad => VCC,
	cin => \sum_next[24]~49\,
	combout => \sum_next[25]~50_combout\,
	cout => \sum_next[25]~51\);

-- Location: FF_X61_Y17_N3
\sum_o[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[25]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[25]~reg0_q\);

-- Location: IOIBUF_X67_Y36_N22
\a_i[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(26),
	o => \a_i[26]~input_o\);

-- Location: FF_X62_Y17_N3
\a_r[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[26]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(26));

-- Location: IOIBUF_X67_Y14_N15
\b_i[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(26),
	o => \b_i[26]~input_o\);

-- Location: LCCOMB_X62_Y17_N24
\b_r[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[26]~feeder_combout\ = \b_i[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[26]~input_o\,
	combout => \b_r[26]~feeder_combout\);

-- Location: FF_X62_Y17_N25
\b_r[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(26));

-- Location: LCCOMB_X61_Y17_N4
\sum_next[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[26]~52_combout\ = ((a_r(26) $ (b_r(26) $ (!\sum_next[25]~51\)))) # (GND)
-- \sum_next[26]~53\ = CARRY((a_r(26) & ((b_r(26)) # (!\sum_next[25]~51\))) # (!a_r(26) & (b_r(26) & !\sum_next[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(26),
	datab => b_r(26),
	datad => VCC,
	cin => \sum_next[25]~51\,
	combout => \sum_next[26]~52_combout\,
	cout => \sum_next[26]~53\);

-- Location: FF_X61_Y17_N5
\sum_o[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[26]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[26]~reg0_q\);

-- Location: IOIBUF_X67_Y25_N1
\b_i[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(27),
	o => \b_i[27]~input_o\);

-- Location: LCCOMB_X62_Y17_N30
\b_r[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[27]~feeder_combout\ = \b_i[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[27]~input_o\,
	combout => \b_r[27]~feeder_combout\);

-- Location: FF_X62_Y17_N31
\b_r[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(27));

-- Location: IOIBUF_X56_Y43_N22
\a_i[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(27),
	o => \a_i[27]~input_o\);

-- Location: LCCOMB_X60_Y17_N30
\a_r[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[27]~feeder_combout\ = \a_i[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[27]~input_o\,
	combout => \a_r[27]~feeder_combout\);

-- Location: FF_X60_Y17_N31
\a_r[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(27));

-- Location: LCCOMB_X61_Y17_N6
\sum_next[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[27]~54_combout\ = (b_r(27) & ((a_r(27) & (\sum_next[26]~53\ & VCC)) # (!a_r(27) & (!\sum_next[26]~53\)))) # (!b_r(27) & ((a_r(27) & (!\sum_next[26]~53\)) # (!a_r(27) & ((\sum_next[26]~53\) # (GND)))))
-- \sum_next[27]~55\ = CARRY((b_r(27) & (!a_r(27) & !\sum_next[26]~53\)) # (!b_r(27) & ((!\sum_next[26]~53\) # (!a_r(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(27),
	datab => a_r(27),
	datad => VCC,
	cin => \sum_next[26]~53\,
	combout => \sum_next[27]~54_combout\,
	cout => \sum_next[27]~55\);

-- Location: FF_X61_Y17_N7
\sum_o[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[27]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[27]~reg0_q\);

-- Location: IOIBUF_X56_Y43_N8
\b_i[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(28),
	o => \b_i[28]~input_o\);

-- Location: LCCOMB_X60_Y17_N18
\b_r[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[28]~feeder_combout\ = \b_i[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[28]~input_o\,
	combout => \b_r[28]~feeder_combout\);

-- Location: FF_X60_Y17_N19
\b_r[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(28));

-- Location: IOIBUF_X67_Y17_N15
\a_i[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(28),
	o => \a_i[28]~input_o\);

-- Location: LCCOMB_X60_Y17_N20
\a_r[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[28]~feeder_combout\ = \a_i[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[28]~input_o\,
	combout => \a_r[28]~feeder_combout\);

-- Location: FF_X60_Y17_N21
\a_r[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(28));

-- Location: LCCOMB_X61_Y17_N8
\sum_next[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[28]~56_combout\ = ((b_r(28) $ (a_r(28) $ (!\sum_next[27]~55\)))) # (GND)
-- \sum_next[28]~57\ = CARRY((b_r(28) & ((a_r(28)) # (!\sum_next[27]~55\))) # (!b_r(28) & (a_r(28) & !\sum_next[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(28),
	datab => a_r(28),
	datad => VCC,
	cin => \sum_next[27]~55\,
	combout => \sum_next[28]~56_combout\,
	cout => \sum_next[28]~57\);

-- Location: FF_X61_Y17_N9
\sum_o[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[28]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[28]~reg0_q\);

-- Location: IOIBUF_X67_Y33_N8
\a_i[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(29),
	o => \a_i[29]~input_o\);

-- Location: FF_X60_Y17_N9
\a_r[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[29]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(29));

-- Location: IOIBUF_X67_Y28_N15
\b_i[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(29),
	o => \b_i[29]~input_o\);

-- Location: LCCOMB_X60_Y17_N6
\b_r[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[29]~feeder_combout\ = \b_i[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[29]~input_o\,
	combout => \b_r[29]~feeder_combout\);

-- Location: FF_X60_Y17_N7
\b_r[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(29));

-- Location: LCCOMB_X61_Y17_N10
\sum_next[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[29]~58_combout\ = (a_r(29) & ((b_r(29) & (\sum_next[28]~57\ & VCC)) # (!b_r(29) & (!\sum_next[28]~57\)))) # (!a_r(29) & ((b_r(29) & (!\sum_next[28]~57\)) # (!b_r(29) & ((\sum_next[28]~57\) # (GND)))))
-- \sum_next[29]~59\ = CARRY((a_r(29) & (!b_r(29) & !\sum_next[28]~57\)) # (!a_r(29) & ((!\sum_next[28]~57\) # (!b_r(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(29),
	datab => b_r(29),
	datad => VCC,
	cin => \sum_next[28]~57\,
	combout => \sum_next[29]~58_combout\,
	cout => \sum_next[29]~59\);

-- Location: FF_X61_Y17_N11
\sum_o[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[29]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[29]~reg0_q\);

-- Location: IOIBUF_X67_Y40_N8
\b_i[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(30),
	o => \b_i[30]~input_o\);

-- Location: LCCOMB_X61_Y21_N18
\b_r[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[30]~feeder_combout\ = \b_i[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[30]~input_o\,
	combout => \b_r[30]~feeder_combout\);

-- Location: FF_X61_Y21_N19
\b_r[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(30));

-- Location: IOIBUF_X67_Y28_N22
\a_i[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(30),
	o => \a_i[30]~input_o\);

-- Location: LCCOMB_X61_Y21_N24
\a_r[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[30]~feeder_combout\ = \a_i[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[30]~input_o\,
	combout => \a_r[30]~feeder_combout\);

-- Location: FF_X61_Y21_N25
\a_r[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(30));

-- Location: LCCOMB_X61_Y17_N12
\sum_next[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[30]~60_combout\ = ((b_r(30) $ (a_r(30) $ (!\sum_next[29]~59\)))) # (GND)
-- \sum_next[30]~61\ = CARRY((b_r(30) & ((a_r(30)) # (!\sum_next[29]~59\))) # (!b_r(30) & (a_r(30) & !\sum_next[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(30),
	datab => a_r(30),
	datad => VCC,
	cin => \sum_next[29]~59\,
	combout => \sum_next[30]~60_combout\,
	cout => \sum_next[30]~61\);

-- Location: FF_X61_Y17_N13
\sum_o[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[30]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[30]~reg0_q\);

-- Location: IOIBUF_X67_Y35_N15
\b_i[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(31),
	o => \b_i[31]~input_o\);

-- Location: LCCOMB_X60_Y17_N14
\b_r[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[31]~feeder_combout\ = \b_i[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[31]~input_o\,
	combout => \b_r[31]~feeder_combout\);

-- Location: FF_X60_Y17_N15
\b_r[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(31));

-- Location: IOIBUF_X67_Y24_N1
\a_i[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(31),
	o => \a_i[31]~input_o\);

-- Location: LCCOMB_X60_Y17_N4
\a_r[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[31]~feeder_combout\ = \a_i[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[31]~input_o\,
	combout => \a_r[31]~feeder_combout\);

-- Location: FF_X60_Y17_N5
\a_r[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(31));

-- Location: LCCOMB_X61_Y17_N14
\sum_next[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[31]~62_combout\ = (b_r(31) & ((a_r(31) & (\sum_next[30]~61\ & VCC)) # (!a_r(31) & (!\sum_next[30]~61\)))) # (!b_r(31) & ((a_r(31) & (!\sum_next[30]~61\)) # (!a_r(31) & ((\sum_next[30]~61\) # (GND)))))
-- \sum_next[31]~63\ = CARRY((b_r(31) & (!a_r(31) & !\sum_next[30]~61\)) # (!b_r(31) & ((!\sum_next[30]~61\) # (!a_r(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(31),
	datab => a_r(31),
	datad => VCC,
	cin => \sum_next[30]~61\,
	combout => \sum_next[31]~62_combout\,
	cout => \sum_next[31]~63\);

-- Location: FF_X61_Y17_N15
\sum_o[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[31]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[31]~reg0_q\);

-- Location: IOIBUF_X63_Y0_N15
\b_i[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(32),
	o => \b_i[32]~input_o\);

-- Location: LCCOMB_X62_Y17_N26
\b_r[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[32]~feeder_combout\ = \b_i[32]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[32]~input_o\,
	combout => \b_r[32]~feeder_combout\);

-- Location: FF_X62_Y17_N27
\b_r[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(32));

-- Location: IOIBUF_X67_Y37_N1
\a_i[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(32),
	o => \a_i[32]~input_o\);

-- Location: LCCOMB_X62_Y17_N0
\a_r[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[32]~feeder_combout\ = \a_i[32]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[32]~input_o\,
	combout => \a_r[32]~feeder_combout\);

-- Location: FF_X62_Y17_N1
\a_r[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(32));

-- Location: LCCOMB_X61_Y17_N16
\sum_next[32]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[32]~64_combout\ = ((b_r(32) $ (a_r(32) $ (!\sum_next[31]~63\)))) # (GND)
-- \sum_next[32]~65\ = CARRY((b_r(32) & ((a_r(32)) # (!\sum_next[31]~63\))) # (!b_r(32) & (a_r(32) & !\sum_next[31]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(32),
	datab => a_r(32),
	datad => VCC,
	cin => \sum_next[31]~63\,
	combout => \sum_next[32]~64_combout\,
	cout => \sum_next[32]~65\);

-- Location: FF_X61_Y17_N17
\sum_o[32]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[32]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[32]~reg0_q\);

-- Location: IOIBUF_X67_Y13_N15
\a_i[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(33),
	o => \a_i[33]~input_o\);

-- Location: FF_X60_Y17_N17
\a_r[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[33]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(33));

-- Location: IOIBUF_X67_Y13_N8
\b_i[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(33),
	o => \b_i[33]~input_o\);

-- Location: FF_X62_Y17_N13
\b_r[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[33]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(33));

-- Location: LCCOMB_X61_Y17_N18
\sum_next[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[33]~66_combout\ = (a_r(33) & ((b_r(33) & (\sum_next[32]~65\ & VCC)) # (!b_r(33) & (!\sum_next[32]~65\)))) # (!a_r(33) & ((b_r(33) & (!\sum_next[32]~65\)) # (!b_r(33) & ((\sum_next[32]~65\) # (GND)))))
-- \sum_next[33]~67\ = CARRY((a_r(33) & (!b_r(33) & !\sum_next[32]~65\)) # (!a_r(33) & ((!\sum_next[32]~65\) # (!b_r(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(33),
	datab => b_r(33),
	datad => VCC,
	cin => \sum_next[32]~65\,
	combout => \sum_next[33]~66_combout\,
	cout => \sum_next[33]~67\);

-- Location: FF_X61_Y17_N19
\sum_o[33]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[33]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[33]~reg0_q\);

-- Location: IOIBUF_X67_Y33_N15
\a_i[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(34),
	o => \a_i[34]~input_o\);

-- Location: FF_X60_Y17_N3
\a_r[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[34]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(34));

-- Location: IOIBUF_X67_Y20_N15
\b_i[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(34),
	o => \b_i[34]~input_o\);

-- Location: LCCOMB_X62_Y17_N10
\b_r[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[34]~feeder_combout\ = \b_i[34]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[34]~input_o\,
	combout => \b_r[34]~feeder_combout\);

-- Location: FF_X62_Y17_N11
\b_r[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(34));

-- Location: LCCOMB_X61_Y17_N20
\sum_next[34]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[34]~68_combout\ = ((a_r(34) $ (b_r(34) $ (!\sum_next[33]~67\)))) # (GND)
-- \sum_next[34]~69\ = CARRY((a_r(34) & ((b_r(34)) # (!\sum_next[33]~67\))) # (!a_r(34) & (b_r(34) & !\sum_next[33]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(34),
	datab => b_r(34),
	datad => VCC,
	cin => \sum_next[33]~67\,
	combout => \sum_next[34]~68_combout\,
	cout => \sum_next[34]~69\);

-- Location: FF_X61_Y17_N21
\sum_o[34]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[34]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[34]~reg0_q\);

-- Location: IOIBUF_X67_Y13_N1
\a_i[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(35),
	o => \a_i[35]~input_o\);

-- Location: LCCOMB_X62_Y17_N20
\a_r[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[35]~feeder_combout\ = \a_i[35]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[35]~input_o\,
	combout => \a_r[35]~feeder_combout\);

-- Location: FF_X62_Y17_N21
\a_r[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(35));

-- Location: IOIBUF_X67_Y14_N22
\b_i[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(35),
	o => \b_i[35]~input_o\);

-- Location: LCCOMB_X62_Y17_N14
\b_r[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[35]~feeder_combout\ = \b_i[35]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[35]~input_o\,
	combout => \b_r[35]~feeder_combout\);

-- Location: FF_X62_Y17_N15
\b_r[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(35));

-- Location: LCCOMB_X61_Y17_N22
\sum_next[35]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[35]~70_combout\ = (a_r(35) & ((b_r(35) & (\sum_next[34]~69\ & VCC)) # (!b_r(35) & (!\sum_next[34]~69\)))) # (!a_r(35) & ((b_r(35) & (!\sum_next[34]~69\)) # (!b_r(35) & ((\sum_next[34]~69\) # (GND)))))
-- \sum_next[35]~71\ = CARRY((a_r(35) & (!b_r(35) & !\sum_next[34]~69\)) # (!a_r(35) & ((!\sum_next[34]~69\) # (!b_r(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(35),
	datab => b_r(35),
	datad => VCC,
	cin => \sum_next[34]~69\,
	combout => \sum_next[35]~70_combout\,
	cout => \sum_next[35]~71\);

-- Location: FF_X61_Y17_N23
\sum_o[35]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[35]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[35]~reg0_q\);

-- Location: IOIBUF_X67_Y10_N1
\b_i[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(36),
	o => \b_i[36]~input_o\);

-- Location: LCCOMB_X62_Y17_N16
\b_r[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[36]~feeder_combout\ = \b_i[36]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[36]~input_o\,
	combout => \b_r[36]~feeder_combout\);

-- Location: FF_X62_Y17_N17
\b_r[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(36));

-- Location: IOIBUF_X67_Y28_N8
\a_i[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(36),
	o => \a_i[36]~input_o\);

-- Location: LCCOMB_X61_Y21_N4
\a_r[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[36]~feeder_combout\ = \a_i[36]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[36]~input_o\,
	combout => \a_r[36]~feeder_combout\);

-- Location: FF_X61_Y21_N5
\a_r[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(36));

-- Location: LCCOMB_X61_Y17_N24
\sum_next[36]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[36]~72_combout\ = ((b_r(36) $ (a_r(36) $ (!\sum_next[35]~71\)))) # (GND)
-- \sum_next[36]~73\ = CARRY((b_r(36) & ((a_r(36)) # (!\sum_next[35]~71\))) # (!b_r(36) & (a_r(36) & !\sum_next[35]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(36),
	datab => a_r(36),
	datad => VCC,
	cin => \sum_next[35]~71\,
	combout => \sum_next[36]~72_combout\,
	cout => \sum_next[36]~73\);

-- Location: FF_X61_Y17_N25
\sum_o[36]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[36]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[36]~reg0_q\);

-- Location: IOIBUF_X67_Y33_N1
\a_i[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(37),
	o => \a_i[37]~input_o\);

-- Location: LCCOMB_X60_Y17_N12
\a_r[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[37]~feeder_combout\ = \a_i[37]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[37]~input_o\,
	combout => \a_r[37]~feeder_combout\);

-- Location: FF_X60_Y17_N13
\a_r[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(37));

-- Location: IOIBUF_X67_Y29_N1
\b_i[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(37),
	o => \b_i[37]~input_o\);

-- Location: FF_X61_Y21_N11
\b_r[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[37]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(37));

-- Location: LCCOMB_X61_Y17_N26
\sum_next[37]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[37]~74_combout\ = (a_r(37) & ((b_r(37) & (\sum_next[36]~73\ & VCC)) # (!b_r(37) & (!\sum_next[36]~73\)))) # (!a_r(37) & ((b_r(37) & (!\sum_next[36]~73\)) # (!b_r(37) & ((\sum_next[36]~73\) # (GND)))))
-- \sum_next[37]~75\ = CARRY((a_r(37) & (!b_r(37) & !\sum_next[36]~73\)) # (!a_r(37) & ((!\sum_next[36]~73\) # (!b_r(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(37),
	datab => b_r(37),
	datad => VCC,
	cin => \sum_next[36]~73\,
	combout => \sum_next[37]~74_combout\,
	cout => \sum_next[37]~75\);

-- Location: FF_X61_Y17_N27
\sum_o[37]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[37]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[37]~reg0_q\);

-- Location: IOIBUF_X67_Y25_N15
\a_i[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(38),
	o => \a_i[38]~input_o\);

-- Location: LCCOMB_X60_Y17_N10
\a_r[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[38]~feeder_combout\ = \a_i[38]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[38]~input_o\,
	combout => \a_r[38]~feeder_combout\);

-- Location: FF_X60_Y17_N11
\a_r[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(38));

-- Location: IOIBUF_X67_Y24_N8
\b_i[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(38),
	o => \b_i[38]~input_o\);

-- Location: FF_X62_Y17_N19
\b_r[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[38]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(38));

-- Location: LCCOMB_X61_Y17_N28
\sum_next[38]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[38]~76_combout\ = ((a_r(38) $ (b_r(38) $ (!\sum_next[37]~75\)))) # (GND)
-- \sum_next[38]~77\ = CARRY((a_r(38) & ((b_r(38)) # (!\sum_next[37]~75\))) # (!a_r(38) & (b_r(38) & !\sum_next[37]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(38),
	datab => b_r(38),
	datad => VCC,
	cin => \sum_next[37]~75\,
	combout => \sum_next[38]~76_combout\,
	cout => \sum_next[38]~77\);

-- Location: FF_X61_Y17_N29
\sum_o[38]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[38]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[38]~reg0_q\);

-- Location: IOIBUF_X67_Y9_N8
\a_i[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(39),
	o => \a_i[39]~input_o\);

-- Location: LCCOMB_X62_Y17_N4
\a_r[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[39]~feeder_combout\ = \a_i[39]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[39]~input_o\,
	combout => \a_r[39]~feeder_combout\);

-- Location: FF_X62_Y17_N5
\a_r[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(39));

-- Location: IOIBUF_X63_Y0_N29
\b_i[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(39),
	o => \b_i[39]~input_o\);

-- Location: FF_X62_Y17_N23
\b_r[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[39]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(39));

-- Location: LCCOMB_X61_Y17_N30
\sum_next[39]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[39]~78_combout\ = (a_r(39) & ((b_r(39) & (\sum_next[38]~77\ & VCC)) # (!b_r(39) & (!\sum_next[38]~77\)))) # (!a_r(39) & ((b_r(39) & (!\sum_next[38]~77\)) # (!b_r(39) & ((\sum_next[38]~77\) # (GND)))))
-- \sum_next[39]~79\ = CARRY((a_r(39) & (!b_r(39) & !\sum_next[38]~77\)) # (!a_r(39) & ((!\sum_next[38]~77\) # (!b_r(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(39),
	datab => b_r(39),
	datad => VCC,
	cin => \sum_next[38]~77\,
	combout => \sum_next[39]~78_combout\,
	cout => \sum_next[39]~79\);

-- Location: FF_X61_Y17_N31
\sum_o[39]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[39]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[39]~reg0_q\);

-- Location: IOIBUF_X67_Y5_N22
\b_i[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(40),
	o => \b_i[40]~input_o\);

-- Location: LCCOMB_X61_Y12_N10
\b_r[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[40]~feeder_combout\ = \b_i[40]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[40]~input_o\,
	combout => \b_r[40]~feeder_combout\);

-- Location: FF_X61_Y12_N11
\b_r[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(40));

-- Location: IOIBUF_X67_Y8_N1
\a_i[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(40),
	o => \a_i[40]~input_o\);

-- Location: FF_X61_Y12_N21
\a_r[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[40]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(40));

-- Location: LCCOMB_X61_Y16_N0
\sum_next[40]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[40]~80_combout\ = ((b_r(40) $ (a_r(40) $ (!\sum_next[39]~79\)))) # (GND)
-- \sum_next[40]~81\ = CARRY((b_r(40) & ((a_r(40)) # (!\sum_next[39]~79\))) # (!b_r(40) & (a_r(40) & !\sum_next[39]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(40),
	datab => a_r(40),
	datad => VCC,
	cin => \sum_next[39]~79\,
	combout => \sum_next[40]~80_combout\,
	cout => \sum_next[40]~81\);

-- Location: FF_X61_Y16_N1
\sum_o[40]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[40]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[40]~reg0_q\);

-- Location: IOIBUF_X67_Y8_N22
\b_i[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(41),
	o => \b_i[41]~input_o\);

-- Location: LCCOMB_X61_Y12_N22
\b_r[41]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[41]~feeder_combout\ = \b_i[41]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[41]~input_o\,
	combout => \b_r[41]~feeder_combout\);

-- Location: FF_X61_Y12_N23
\b_r[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[41]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(41));

-- Location: IOIBUF_X54_Y0_N15
\a_i[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(41),
	o => \a_i[41]~input_o\);

-- Location: LCCOMB_X61_Y12_N8
\a_r[41]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[41]~feeder_combout\ = \a_i[41]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[41]~input_o\,
	combout => \a_r[41]~feeder_combout\);

-- Location: FF_X61_Y12_N9
\a_r[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[41]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(41));

-- Location: LCCOMB_X61_Y16_N2
\sum_next[41]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[41]~82_combout\ = (b_r(41) & ((a_r(41) & (\sum_next[40]~81\ & VCC)) # (!a_r(41) & (!\sum_next[40]~81\)))) # (!b_r(41) & ((a_r(41) & (!\sum_next[40]~81\)) # (!a_r(41) & ((\sum_next[40]~81\) # (GND)))))
-- \sum_next[41]~83\ = CARRY((b_r(41) & (!a_r(41) & !\sum_next[40]~81\)) # (!b_r(41) & ((!\sum_next[40]~81\) # (!a_r(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(41),
	datab => a_r(41),
	datad => VCC,
	cin => \sum_next[40]~81\,
	combout => \sum_next[41]~82_combout\,
	cout => \sum_next[41]~83\);

-- Location: FF_X61_Y16_N3
\sum_o[41]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[41]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[41]~reg0_q\);

-- Location: IOIBUF_X67_Y4_N22
\a_i[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(42),
	o => \a_i[42]~input_o\);

-- Location: FF_X61_Y12_N29
\a_r[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[42]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(42));

-- Location: IOIBUF_X67_Y5_N1
\b_i[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(42),
	o => \b_i[42]~input_o\);

-- Location: FF_X61_Y12_N19
\b_r[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[42]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(42));

-- Location: LCCOMB_X61_Y16_N4
\sum_next[42]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[42]~84_combout\ = ((a_r(42) $ (b_r(42) $ (!\sum_next[41]~83\)))) # (GND)
-- \sum_next[42]~85\ = CARRY((a_r(42) & ((b_r(42)) # (!\sum_next[41]~83\))) # (!a_r(42) & (b_r(42) & !\sum_next[41]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(42),
	datab => b_r(42),
	datad => VCC,
	cin => \sum_next[41]~83\,
	combout => \sum_next[42]~84_combout\,
	cout => \sum_next[42]~85\);

-- Location: FF_X61_Y16_N5
\sum_o[42]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[42]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[42]~reg0_q\);

-- Location: IOIBUF_X67_Y6_N15
\a_i[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(43),
	o => \a_i[43]~input_o\);

-- Location: LCCOMB_X61_Y12_N12
\a_r[43]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[43]~feeder_combout\ = \a_i[43]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[43]~input_o\,
	combout => \a_r[43]~feeder_combout\);

-- Location: FF_X61_Y12_N13
\a_r[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[43]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(43));

-- Location: IOIBUF_X56_Y0_N22
\b_i[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(43),
	o => \b_i[43]~input_o\);

-- Location: FF_X61_Y12_N27
\b_r[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[43]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(43));

-- Location: LCCOMB_X61_Y16_N6
\sum_next[43]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[43]~86_combout\ = (a_r(43) & ((b_r(43) & (\sum_next[42]~85\ & VCC)) # (!b_r(43) & (!\sum_next[42]~85\)))) # (!a_r(43) & ((b_r(43) & (!\sum_next[42]~85\)) # (!b_r(43) & ((\sum_next[42]~85\) # (GND)))))
-- \sum_next[43]~87\ = CARRY((a_r(43) & (!b_r(43) & !\sum_next[42]~85\)) # (!a_r(43) & ((!\sum_next[42]~85\) # (!b_r(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(43),
	datab => b_r(43),
	datad => VCC,
	cin => \sum_next[42]~85\,
	combout => \sum_next[43]~86_combout\,
	cout => \sum_next[43]~87\);

-- Location: FF_X61_Y16_N7
\sum_o[43]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[43]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[43]~reg0_q\);

-- Location: IOIBUF_X67_Y4_N15
\b_i[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(44),
	o => \b_i[44]~input_o\);

-- Location: FF_X61_Y12_N7
\b_r[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[44]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(44));

-- Location: IOIBUF_X61_Y0_N1
\a_i[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(44),
	o => \a_i[44]~input_o\);

-- Location: LCCOMB_X61_Y12_N24
\a_r[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[44]~feeder_combout\ = \a_i[44]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[44]~input_o\,
	combout => \a_r[44]~feeder_combout\);

-- Location: FF_X61_Y12_N25
\a_r[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(44));

-- Location: LCCOMB_X61_Y16_N8
\sum_next[44]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[44]~88_combout\ = ((b_r(44) $ (a_r(44) $ (!\sum_next[43]~87\)))) # (GND)
-- \sum_next[44]~89\ = CARRY((b_r(44) & ((a_r(44)) # (!\sum_next[43]~87\))) # (!b_r(44) & (a_r(44) & !\sum_next[43]~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(44),
	datab => a_r(44),
	datad => VCC,
	cin => \sum_next[43]~87\,
	combout => \sum_next[44]~88_combout\,
	cout => \sum_next[44]~89\);

-- Location: FF_X61_Y16_N9
\sum_o[44]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[44]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[44]~reg0_q\);

-- Location: IOIBUF_X65_Y0_N8
\a_i[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(45),
	o => \a_i[45]~input_o\);

-- Location: FF_X61_Y12_N17
\a_r[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[45]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(45));

-- Location: IOIBUF_X61_Y0_N15
\b_i[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(45),
	o => \b_i[45]~input_o\);

-- Location: LCCOMB_X61_Y12_N30
\b_r[45]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[45]~feeder_combout\ = \b_i[45]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[45]~input_o\,
	combout => \b_r[45]~feeder_combout\);

-- Location: FF_X61_Y12_N31
\b_r[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[45]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(45));

-- Location: LCCOMB_X61_Y16_N10
\sum_next[45]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[45]~90_combout\ = (a_r(45) & ((b_r(45) & (\sum_next[44]~89\ & VCC)) # (!b_r(45) & (!\sum_next[44]~89\)))) # (!a_r(45) & ((b_r(45) & (!\sum_next[44]~89\)) # (!b_r(45) & ((\sum_next[44]~89\) # (GND)))))
-- \sum_next[45]~91\ = CARRY((a_r(45) & (!b_r(45) & !\sum_next[44]~89\)) # (!a_r(45) & ((!\sum_next[44]~89\) # (!b_r(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(45),
	datab => b_r(45),
	datad => VCC,
	cin => \sum_next[44]~89\,
	combout => \sum_next[45]~90_combout\,
	cout => \sum_next[45]~91\);

-- Location: FF_X61_Y16_N11
\sum_o[45]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[45]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[45]~reg0_q\);

-- Location: IOIBUF_X67_Y5_N8
\b_i[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(46),
	o => \b_i[46]~input_o\);

-- Location: LCCOMB_X61_Y12_N2
\b_r[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[46]~feeder_combout\ = \b_i[46]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[46]~input_o\,
	combout => \b_r[46]~feeder_combout\);

-- Location: FF_X61_Y12_N3
\b_r[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(46));

-- Location: IOIBUF_X65_Y0_N1
\a_i[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(46),
	o => \a_i[46]~input_o\);

-- Location: FF_X61_Y12_N5
\a_r[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[46]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(46));

-- Location: LCCOMB_X61_Y16_N12
\sum_next[46]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[46]~92_combout\ = ((b_r(46) $ (a_r(46) $ (!\sum_next[45]~91\)))) # (GND)
-- \sum_next[46]~93\ = CARRY((b_r(46) & ((a_r(46)) # (!\sum_next[45]~91\))) # (!b_r(46) & (a_r(46) & !\sum_next[45]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(46),
	datab => a_r(46),
	datad => VCC,
	cin => \sum_next[45]~91\,
	combout => \sum_next[46]~92_combout\,
	cout => \sum_next[46]~93\);

-- Location: FF_X61_Y16_N13
\sum_o[46]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[46]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[46]~reg0_q\);

-- Location: IOIBUF_X67_Y16_N1
\b_i[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(47),
	o => \b_i[47]~input_o\);

-- Location: LCCOMB_X62_Y16_N30
\b_r[47]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[47]~feeder_combout\ = \b_i[47]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[47]~input_o\,
	combout => \b_r[47]~feeder_combout\);

-- Location: FF_X62_Y16_N31
\b_r[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[47]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(47));

-- Location: IOIBUF_X67_Y12_N8
\a_i[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(47),
	o => \a_i[47]~input_o\);

-- Location: FF_X62_Y16_N29
\a_r[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[47]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(47));

-- Location: LCCOMB_X61_Y16_N14
\sum_next[47]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[47]~94_combout\ = (b_r(47) & ((a_r(47) & (\sum_next[46]~93\ & VCC)) # (!a_r(47) & (!\sum_next[46]~93\)))) # (!b_r(47) & ((a_r(47) & (!\sum_next[46]~93\)) # (!a_r(47) & ((\sum_next[46]~93\) # (GND)))))
-- \sum_next[47]~95\ = CARRY((b_r(47) & (!a_r(47) & !\sum_next[46]~93\)) # (!b_r(47) & ((!\sum_next[46]~93\) # (!a_r(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(47),
	datab => a_r(47),
	datad => VCC,
	cin => \sum_next[46]~93\,
	combout => \sum_next[47]~94_combout\,
	cout => \sum_next[47]~95\);

-- Location: FF_X61_Y16_N15
\sum_o[47]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[47]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[47]~reg0_q\);

-- Location: IOIBUF_X67_Y20_N22
\a_i[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(48),
	o => \a_i[48]~input_o\);

-- Location: LCCOMB_X62_Y16_N4
\a_r[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[48]~feeder_combout\ = \a_i[48]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[48]~input_o\,
	combout => \a_r[48]~feeder_combout\);

-- Location: FF_X62_Y16_N5
\a_r[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(48));

-- Location: IOIBUF_X65_Y0_N29
\b_i[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(48),
	o => \b_i[48]~input_o\);

-- Location: LCCOMB_X62_Y16_N26
\b_r[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[48]~feeder_combout\ = \b_i[48]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[48]~input_o\,
	combout => \b_r[48]~feeder_combout\);

-- Location: FF_X62_Y16_N27
\b_r[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(48));

-- Location: LCCOMB_X61_Y16_N16
\sum_next[48]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[48]~96_combout\ = ((a_r(48) $ (b_r(48) $ (!\sum_next[47]~95\)))) # (GND)
-- \sum_next[48]~97\ = CARRY((a_r(48) & ((b_r(48)) # (!\sum_next[47]~95\))) # (!a_r(48) & (b_r(48) & !\sum_next[47]~95\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(48),
	datab => b_r(48),
	datad => VCC,
	cin => \sum_next[47]~95\,
	combout => \sum_next[48]~96_combout\,
	cout => \sum_next[48]~97\);

-- Location: FF_X61_Y16_N17
\sum_o[48]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[48]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[48]~reg0_q\);

-- Location: IOIBUF_X67_Y2_N22
\a_i[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(49),
	o => \a_i[49]~input_o\);

-- Location: FF_X62_Y16_N13
\a_r[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[49]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(49));

-- Location: IOIBUF_X63_Y0_N22
\b_i[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(49),
	o => \b_i[49]~input_o\);

-- Location: LCCOMB_X62_Y16_N10
\b_r[49]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[49]~feeder_combout\ = \b_i[49]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[49]~input_o\,
	combout => \b_r[49]~feeder_combout\);

-- Location: FF_X62_Y16_N11
\b_r[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[49]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(49));

-- Location: LCCOMB_X61_Y16_N18
\sum_next[49]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[49]~98_combout\ = (a_r(49) & ((b_r(49) & (\sum_next[48]~97\ & VCC)) # (!b_r(49) & (!\sum_next[48]~97\)))) # (!a_r(49) & ((b_r(49) & (!\sum_next[48]~97\)) # (!b_r(49) & ((\sum_next[48]~97\) # (GND)))))
-- \sum_next[49]~99\ = CARRY((a_r(49) & (!b_r(49) & !\sum_next[48]~97\)) # (!a_r(49) & ((!\sum_next[48]~97\) # (!b_r(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(49),
	datab => b_r(49),
	datad => VCC,
	cin => \sum_next[48]~97\,
	combout => \sum_next[49]~98_combout\,
	cout => \sum_next[49]~99\);

-- Location: FF_X61_Y16_N19
\sum_o[49]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[49]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[49]~reg0_q\);

-- Location: IOIBUF_X67_Y12_N1
\b_i[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(50),
	o => \b_i[50]~input_o\);

-- Location: LCCOMB_X62_Y16_N6
\b_r[50]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[50]~feeder_combout\ = \b_i[50]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[50]~input_o\,
	combout => \b_r[50]~feeder_combout\);

-- Location: FF_X62_Y16_N7
\b_r[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(50));

-- Location: IOIBUF_X67_Y12_N22
\a_i[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(50),
	o => \a_i[50]~input_o\);

-- Location: LCCOMB_X62_Y16_N24
\a_r[50]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[50]~feeder_combout\ = \a_i[50]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[50]~input_o\,
	combout => \a_r[50]~feeder_combout\);

-- Location: FF_X62_Y16_N25
\a_r[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(50));

-- Location: LCCOMB_X61_Y16_N20
\sum_next[50]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[50]~100_combout\ = ((b_r(50) $ (a_r(50) $ (!\sum_next[49]~99\)))) # (GND)
-- \sum_next[50]~101\ = CARRY((b_r(50) & ((a_r(50)) # (!\sum_next[49]~99\))) # (!b_r(50) & (a_r(50) & !\sum_next[49]~99\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(50),
	datab => a_r(50),
	datad => VCC,
	cin => \sum_next[49]~99\,
	combout => \sum_next[50]~100_combout\,
	cout => \sum_next[50]~101\);

-- Location: FF_X61_Y16_N21
\sum_o[50]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[50]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[50]~reg0_q\);

-- Location: IOIBUF_X67_Y20_N8
\a_i[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(51),
	o => \a_i[51]~input_o\);

-- Location: FF_X62_Y16_N21
\a_r[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[51]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(51));

-- Location: IOIBUF_X67_Y16_N8
\b_i[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(51),
	o => \b_i[51]~input_o\);

-- Location: FF_X62_Y16_N23
\b_r[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[51]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(51));

-- Location: LCCOMB_X61_Y16_N22
\sum_next[51]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[51]~102_combout\ = (a_r(51) & ((b_r(51) & (\sum_next[50]~101\ & VCC)) # (!b_r(51) & (!\sum_next[50]~101\)))) # (!a_r(51) & ((b_r(51) & (!\sum_next[50]~101\)) # (!b_r(51) & ((\sum_next[50]~101\) # (GND)))))
-- \sum_next[51]~103\ = CARRY((a_r(51) & (!b_r(51) & !\sum_next[50]~101\)) # (!a_r(51) & ((!\sum_next[50]~101\) # (!b_r(51)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(51),
	datab => b_r(51),
	datad => VCC,
	cin => \sum_next[50]~101\,
	combout => \sum_next[51]~102_combout\,
	cout => \sum_next[51]~103\);

-- Location: FF_X61_Y16_N23
\sum_o[51]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[51]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[51]~reg0_q\);

-- Location: IOIBUF_X67_Y2_N15
\b_i[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(52),
	o => \b_i[52]~input_o\);

-- Location: LCCOMB_X62_Y16_N2
\b_r[52]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[52]~feeder_combout\ = \b_i[52]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[52]~input_o\,
	combout => \b_r[52]~feeder_combout\);

-- Location: FF_X62_Y16_N3
\b_r[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(52));

-- Location: IOIBUF_X63_Y0_N8
\a_i[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(52),
	o => \a_i[52]~input_o\);

-- Location: FF_X62_Y16_N9
\a_r[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[52]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(52));

-- Location: LCCOMB_X61_Y16_N24
\sum_next[52]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[52]~104_combout\ = ((b_r(52) $ (a_r(52) $ (!\sum_next[51]~103\)))) # (GND)
-- \sum_next[52]~105\ = CARRY((b_r(52) & ((a_r(52)) # (!\sum_next[51]~103\))) # (!b_r(52) & (a_r(52) & !\sum_next[51]~103\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(52),
	datab => a_r(52),
	datad => VCC,
	cin => \sum_next[51]~103\,
	combout => \sum_next[52]~104_combout\,
	cout => \sum_next[52]~105\);

-- Location: FF_X61_Y16_N25
\sum_o[52]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[52]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[52]~reg0_q\);

-- Location: IOIBUF_X67_Y16_N15
\b_i[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(53),
	o => \b_i[53]~input_o\);

-- Location: LCCOMB_X62_Y16_N18
\b_r[53]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[53]~feeder_combout\ = \b_i[53]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[53]~input_o\,
	combout => \b_r[53]~feeder_combout\);

-- Location: FF_X62_Y16_N19
\b_r[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[53]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(53));

-- Location: IOIBUF_X67_Y12_N15
\a_i[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(53),
	o => \a_i[53]~input_o\);

-- Location: LCCOMB_X62_Y16_N0
\a_r[53]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[53]~feeder_combout\ = \a_i[53]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[53]~input_o\,
	combout => \a_r[53]~feeder_combout\);

-- Location: FF_X62_Y16_N1
\a_r[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[53]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(53));

-- Location: LCCOMB_X61_Y16_N26
\sum_next[53]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[53]~106_combout\ = (b_r(53) & ((a_r(53) & (\sum_next[52]~105\ & VCC)) # (!a_r(53) & (!\sum_next[52]~105\)))) # (!b_r(53) & ((a_r(53) & (!\sum_next[52]~105\)) # (!a_r(53) & ((\sum_next[52]~105\) # (GND)))))
-- \sum_next[53]~107\ = CARRY((b_r(53) & (!a_r(53) & !\sum_next[52]~105\)) # (!b_r(53) & ((!\sum_next[52]~105\) # (!a_r(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(53),
	datab => a_r(53),
	datad => VCC,
	cin => \sum_next[52]~105\,
	combout => \sum_next[53]~106_combout\,
	cout => \sum_next[53]~107\);

-- Location: FF_X61_Y16_N27
\sum_o[53]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[53]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[53]~reg0_q\);

-- Location: IOIBUF_X63_Y0_N1
\a_i[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(54),
	o => \a_i[54]~input_o\);

-- Location: FF_X62_Y16_N17
\a_r[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[54]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(54));

-- Location: IOIBUF_X67_Y16_N22
\b_i[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(54),
	o => \b_i[54]~input_o\);

-- Location: LCCOMB_X62_Y16_N14
\b_r[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[54]~feeder_combout\ = \b_i[54]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[54]~input_o\,
	combout => \b_r[54]~feeder_combout\);

-- Location: FF_X62_Y16_N15
\b_r[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(54));

-- Location: LCCOMB_X61_Y16_N28
\sum_next[54]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[54]~108_combout\ = ((a_r(54) $ (b_r(54) $ (!\sum_next[53]~107\)))) # (GND)
-- \sum_next[54]~109\ = CARRY((a_r(54) & ((b_r(54)) # (!\sum_next[53]~107\))) # (!a_r(54) & (b_r(54) & !\sum_next[53]~107\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(54),
	datab => b_r(54),
	datad => VCC,
	cin => \sum_next[53]~107\,
	combout => \sum_next[54]~108_combout\,
	cout => \sum_next[54]~109\);

-- Location: FF_X61_Y16_N29
\sum_o[54]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[54]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[54]~reg0_q\);

-- Location: IOIBUF_X65_Y0_N15
\a_i[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(55),
	o => \a_i[55]~input_o\);

-- Location: LCCOMB_X61_Y12_N0
\a_r[55]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[55]~feeder_combout\ = \a_i[55]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[55]~input_o\,
	combout => \a_r[55]~feeder_combout\);

-- Location: FF_X61_Y12_N1
\a_r[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[55]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(55));

-- Location: IOIBUF_X67_Y5_N15
\b_i[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(55),
	o => \b_i[55]~input_o\);

-- Location: LCCOMB_X61_Y12_N14
\b_r[55]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[55]~feeder_combout\ = \b_i[55]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[55]~input_o\,
	combout => \b_r[55]~feeder_combout\);

-- Location: FF_X61_Y12_N15
\b_r[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[55]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(55));

-- Location: LCCOMB_X61_Y16_N30
\sum_next[55]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[55]~110_combout\ = (a_r(55) & ((b_r(55) & (\sum_next[54]~109\ & VCC)) # (!b_r(55) & (!\sum_next[54]~109\)))) # (!a_r(55) & ((b_r(55) & (!\sum_next[54]~109\)) # (!b_r(55) & ((\sum_next[54]~109\) # (GND)))))
-- \sum_next[55]~111\ = CARRY((a_r(55) & (!b_r(55) & !\sum_next[54]~109\)) # (!a_r(55) & ((!\sum_next[54]~109\) # (!b_r(55)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(55),
	datab => b_r(55),
	datad => VCC,
	cin => \sum_next[54]~109\,
	combout => \sum_next[55]~110_combout\,
	cout => \sum_next[55]~111\);

-- Location: FF_X61_Y16_N31
\sum_o[55]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[55]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[55]~reg0_q\);

-- Location: IOIBUF_X67_Y10_N22
\a_i[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(56),
	o => \a_i[56]~input_o\);

-- Location: FF_X62_Y15_N5
\a_r[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[56]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(56));

-- Location: IOIBUF_X67_Y11_N22
\b_i[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(56),
	o => \b_i[56]~input_o\);

-- Location: FF_X62_Y15_N19
\b_r[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[56]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(56));

-- Location: LCCOMB_X61_Y15_N0
\sum_next[56]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[56]~112_combout\ = ((a_r(56) $ (b_r(56) $ (!\sum_next[55]~111\)))) # (GND)
-- \sum_next[56]~113\ = CARRY((a_r(56) & ((b_r(56)) # (!\sum_next[55]~111\))) # (!a_r(56) & (b_r(56) & !\sum_next[55]~111\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(56),
	datab => b_r(56),
	datad => VCC,
	cin => \sum_next[55]~111\,
	combout => \sum_next[56]~112_combout\,
	cout => \sum_next[56]~113\);

-- Location: FF_X61_Y15_N1
\sum_o[56]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[56]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[56]~reg0_q\);

-- Location: IOIBUF_X50_Y0_N22
\a_i[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(57),
	o => \a_i[57]~input_o\);

-- Location: FF_X61_Y15_N27
\a_r[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[57]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(57));

-- Location: IOIBUF_X54_Y0_N29
\b_i[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(57),
	o => \b_i[57]~input_o\);

-- Location: FF_X61_Y15_N25
\b_r[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[57]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(57));

-- Location: LCCOMB_X61_Y15_N2
\sum_next[57]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[57]~114_combout\ = (a_r(57) & ((b_r(57) & (\sum_next[56]~113\ & VCC)) # (!b_r(57) & (!\sum_next[56]~113\)))) # (!a_r(57) & ((b_r(57) & (!\sum_next[56]~113\)) # (!b_r(57) & ((\sum_next[56]~113\) # (GND)))))
-- \sum_next[57]~115\ = CARRY((a_r(57) & (!b_r(57) & !\sum_next[56]~113\)) # (!a_r(57) & ((!\sum_next[56]~113\) # (!b_r(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(57),
	datab => b_r(57),
	datad => VCC,
	cin => \sum_next[56]~113\,
	combout => \sum_next[57]~114_combout\,
	cout => \sum_next[57]~115\);

-- Location: FF_X61_Y15_N3
\sum_o[57]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[57]~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[57]~reg0_q\);

-- Location: IOIBUF_X67_Y7_N22
\b_i[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(58),
	o => \b_i[58]~input_o\);

-- Location: FF_X62_Y15_N7
\b_r[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[58]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(58));

-- Location: IOIBUF_X67_Y11_N15
\a_i[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(58),
	o => \a_i[58]~input_o\);

-- Location: LCCOMB_X62_Y15_N28
\a_r[58]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[58]~feeder_combout\ = \a_i[58]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[58]~input_o\,
	combout => \a_r[58]~feeder_combout\);

-- Location: FF_X62_Y15_N29
\a_r[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(58));

-- Location: LCCOMB_X61_Y15_N4
\sum_next[58]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[58]~116_combout\ = ((b_r(58) $ (a_r(58) $ (!\sum_next[57]~115\)))) # (GND)
-- \sum_next[58]~117\ = CARRY((b_r(58) & ((a_r(58)) # (!\sum_next[57]~115\))) # (!b_r(58) & (a_r(58) & !\sum_next[57]~115\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(58),
	datab => a_r(58),
	datad => VCC,
	cin => \sum_next[57]~115\,
	combout => \sum_next[58]~116_combout\,
	cout => \sum_next[58]~117\);

-- Location: FF_X61_Y15_N5
\sum_o[58]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[58]~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[58]~reg0_q\);

-- Location: IOIBUF_X67_Y7_N15
\b_i[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(59),
	o => \b_i[59]~input_o\);

-- Location: LCCOMB_X62_Y15_N30
\b_r[59]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[59]~feeder_combout\ = \b_i[59]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[59]~input_o\,
	combout => \b_r[59]~feeder_combout\);

-- Location: FF_X62_Y15_N31
\b_r[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[59]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(59));

-- Location: IOIBUF_X67_Y11_N8
\a_i[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(59),
	o => \a_i[59]~input_o\);

-- Location: LCCOMB_X62_Y15_N8
\a_r[59]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[59]~feeder_combout\ = \a_i[59]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[59]~input_o\,
	combout => \a_r[59]~feeder_combout\);

-- Location: FF_X62_Y15_N9
\a_r[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[59]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(59));

-- Location: LCCOMB_X61_Y15_N6
\sum_next[59]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[59]~118_combout\ = (b_r(59) & ((a_r(59) & (\sum_next[58]~117\ & VCC)) # (!a_r(59) & (!\sum_next[58]~117\)))) # (!b_r(59) & ((a_r(59) & (!\sum_next[58]~117\)) # (!a_r(59) & ((\sum_next[58]~117\) # (GND)))))
-- \sum_next[59]~119\ = CARRY((b_r(59) & (!a_r(59) & !\sum_next[58]~117\)) # (!b_r(59) & ((!\sum_next[58]~117\) # (!a_r(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_r(59),
	datab => a_r(59),
	datad => VCC,
	cin => \sum_next[58]~117\,
	combout => \sum_next[59]~118_combout\,
	cout => \sum_next[59]~119\);

-- Location: FF_X61_Y15_N7
\sum_o[59]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[59]~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[59]~reg0_q\);

-- Location: IOIBUF_X61_Y0_N8
\a_i[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(60),
	o => \a_i[60]~input_o\);

-- Location: LCCOMB_X61_Y15_N30
\a_r[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[60]~feeder_combout\ = \a_i[60]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[60]~input_o\,
	combout => \a_r[60]~feeder_combout\);

-- Location: FF_X61_Y15_N31
\a_r[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(60));

-- Location: IOIBUF_X67_Y15_N8
\b_i[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(60),
	o => \b_i[60]~input_o\);

-- Location: LCCOMB_X62_Y15_N24
\b_r[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[60]~feeder_combout\ = \b_i[60]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[60]~input_o\,
	combout => \b_r[60]~feeder_combout\);

-- Location: FF_X62_Y15_N25
\b_r[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(60));

-- Location: LCCOMB_X61_Y15_N8
\sum_next[60]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[60]~120_combout\ = ((a_r(60) $ (b_r(60) $ (!\sum_next[59]~119\)))) # (GND)
-- \sum_next[60]~121\ = CARRY((a_r(60) & ((b_r(60)) # (!\sum_next[59]~119\))) # (!a_r(60) & (b_r(60) & !\sum_next[59]~119\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(60),
	datab => b_r(60),
	datad => VCC,
	cin => \sum_next[59]~119\,
	combout => \sum_next[60]~120_combout\,
	cout => \sum_next[60]~121\);

-- Location: FF_X61_Y15_N9
\sum_o[60]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[60]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[60]~reg0_q\);

-- Location: IOIBUF_X67_Y11_N1
\a_i[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(61),
	o => \a_i[61]~input_o\);

-- Location: LCCOMB_X62_Y15_N2
\a_r[61]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[61]~feeder_combout\ = \a_i[61]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[61]~input_o\,
	combout => \a_r[61]~feeder_combout\);

-- Location: FF_X62_Y15_N3
\a_r[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[61]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(61));

-- Location: IOIBUF_X61_Y0_N29
\b_i[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(61),
	o => \b_i[61]~input_o\);

-- Location: LCCOMB_X61_Y15_N28
\b_r[61]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[61]~feeder_combout\ = \b_i[61]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[61]~input_o\,
	combout => \b_r[61]~feeder_combout\);

-- Location: FF_X61_Y15_N29
\b_r[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[61]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(61));

-- Location: LCCOMB_X61_Y15_N10
\sum_next[61]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[61]~122_combout\ = (a_r(61) & ((b_r(61) & (\sum_next[60]~121\ & VCC)) # (!b_r(61) & (!\sum_next[60]~121\)))) # (!a_r(61) & ((b_r(61) & (!\sum_next[60]~121\)) # (!b_r(61) & ((\sum_next[60]~121\) # (GND)))))
-- \sum_next[61]~123\ = CARRY((a_r(61) & (!b_r(61) & !\sum_next[60]~121\)) # (!a_r(61) & ((!\sum_next[60]~121\) # (!b_r(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(61),
	datab => b_r(61),
	datad => VCC,
	cin => \sum_next[60]~121\,
	combout => \sum_next[61]~122_combout\,
	cout => \sum_next[61]~123\);

-- Location: FF_X61_Y15_N11
\sum_o[61]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[61]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[61]~reg0_q\);

-- Location: IOIBUF_X67_Y2_N8
\a_i[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(62),
	o => \a_i[62]~input_o\);

-- Location: LCCOMB_X66_Y15_N16
\a_r[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_r[62]~feeder_combout\ = \a_i[62]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a_i[62]~input_o\,
	combout => \a_r[62]~feeder_combout\);

-- Location: FF_X66_Y15_N17
\a_r[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_r[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(62));

-- Location: IOIBUF_X67_Y15_N1
\b_i[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(62),
	o => \b_i[62]~input_o\);

-- Location: LCCOMB_X62_Y15_N12
\b_r[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_r[62]~feeder_combout\ = \b_i[62]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b_i[62]~input_o\,
	combout => \b_r[62]~feeder_combout\);

-- Location: FF_X62_Y15_N13
\b_r[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_r[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(62));

-- Location: LCCOMB_X61_Y15_N12
\sum_next[62]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[62]~124_combout\ = ((a_r(62) $ (b_r(62) $ (!\sum_next[61]~123\)))) # (GND)
-- \sum_next[62]~125\ = CARRY((a_r(62) & ((b_r(62)) # (!\sum_next[61]~123\))) # (!a_r(62) & (b_r(62) & !\sum_next[61]~123\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(62),
	datab => b_r(62),
	datad => VCC,
	cin => \sum_next[61]~123\,
	combout => \sum_next[62]~124_combout\,
	cout => \sum_next[62]~125\);

-- Location: FF_X61_Y15_N13
\sum_o[62]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[62]~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[62]~reg0_q\);

-- Location: IOIBUF_X45_Y0_N22
\a_i[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_i(63),
	o => \a_i[63]~input_o\);

-- Location: FF_X61_Y15_N23
\a_r[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_i[63]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_r(63));

-- Location: IOIBUF_X54_Y0_N1
\b_i[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_i(63),
	o => \b_i[63]~input_o\);

-- Location: FF_X61_Y15_N21
\b_r[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b_i[63]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_r(63));

-- Location: LCCOMB_X61_Y15_N14
\sum_next[63]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum_next[63]~126_combout\ = (a_r(63) & ((b_r(63) & (\sum_next[62]~125\ & VCC)) # (!b_r(63) & (!\sum_next[62]~125\)))) # (!a_r(63) & ((b_r(63) & (!\sum_next[62]~125\)) # (!b_r(63) & ((\sum_next[62]~125\) # (GND)))))
-- \sum_next[63]~127\ = CARRY((a_r(63) & (!b_r(63) & !\sum_next[62]~125\)) # (!a_r(63) & ((!\sum_next[62]~125\) # (!b_r(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_r(63),
	datab => b_r(63),
	datad => VCC,
	cin => \sum_next[62]~125\,
	combout => \sum_next[63]~126_combout\,
	cout => \sum_next[63]~127\);

-- Location: FF_X61_Y15_N15
\sum_o[63]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sum_next[63]~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[63]~reg0_q\);

-- Location: LCCOMB_X61_Y15_N16
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = !\sum_next[63]~127\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sum_next[63]~127\,
	combout => \Add0~0_combout\);

-- Location: FF_X61_Y15_N17
\sum_o[64]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum_o[64]~reg0_q\);

-- Location: LCCOMB_X66_Y7_N6
\is_odd_o~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \is_odd_o~reg0feeder_combout\ = \sum_next[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sum_next[0]~0_combout\,
	combout => \is_odd_o~reg0feeder_combout\);

-- Location: FF_X66_Y7_N7
\is_odd_o~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \is_odd_o~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \is_odd_o~reg0_q\);

ww_sum_o(0) <= \sum_o[0]~output_o\;

ww_sum_o(1) <= \sum_o[1]~output_o\;

ww_sum_o(2) <= \sum_o[2]~output_o\;

ww_sum_o(3) <= \sum_o[3]~output_o\;

ww_sum_o(4) <= \sum_o[4]~output_o\;

ww_sum_o(5) <= \sum_o[5]~output_o\;

ww_sum_o(6) <= \sum_o[6]~output_o\;

ww_sum_o(7) <= \sum_o[7]~output_o\;

ww_sum_o(8) <= \sum_o[8]~output_o\;

ww_sum_o(9) <= \sum_o[9]~output_o\;

ww_sum_o(10) <= \sum_o[10]~output_o\;

ww_sum_o(11) <= \sum_o[11]~output_o\;

ww_sum_o(12) <= \sum_o[12]~output_o\;

ww_sum_o(13) <= \sum_o[13]~output_o\;

ww_sum_o(14) <= \sum_o[14]~output_o\;

ww_sum_o(15) <= \sum_o[15]~output_o\;

ww_sum_o(16) <= \sum_o[16]~output_o\;

ww_sum_o(17) <= \sum_o[17]~output_o\;

ww_sum_o(18) <= \sum_o[18]~output_o\;

ww_sum_o(19) <= \sum_o[19]~output_o\;

ww_sum_o(20) <= \sum_o[20]~output_o\;

ww_sum_o(21) <= \sum_o[21]~output_o\;

ww_sum_o(22) <= \sum_o[22]~output_o\;

ww_sum_o(23) <= \sum_o[23]~output_o\;

ww_sum_o(24) <= \sum_o[24]~output_o\;

ww_sum_o(25) <= \sum_o[25]~output_o\;

ww_sum_o(26) <= \sum_o[26]~output_o\;

ww_sum_o(27) <= \sum_o[27]~output_o\;

ww_sum_o(28) <= \sum_o[28]~output_o\;

ww_sum_o(29) <= \sum_o[29]~output_o\;

ww_sum_o(30) <= \sum_o[30]~output_o\;

ww_sum_o(31) <= \sum_o[31]~output_o\;

ww_sum_o(32) <= \sum_o[32]~output_o\;

ww_sum_o(33) <= \sum_o[33]~output_o\;

ww_sum_o(34) <= \sum_o[34]~output_o\;

ww_sum_o(35) <= \sum_o[35]~output_o\;

ww_sum_o(36) <= \sum_o[36]~output_o\;

ww_sum_o(37) <= \sum_o[37]~output_o\;

ww_sum_o(38) <= \sum_o[38]~output_o\;

ww_sum_o(39) <= \sum_o[39]~output_o\;

ww_sum_o(40) <= \sum_o[40]~output_o\;

ww_sum_o(41) <= \sum_o[41]~output_o\;

ww_sum_o(42) <= \sum_o[42]~output_o\;

ww_sum_o(43) <= \sum_o[43]~output_o\;

ww_sum_o(44) <= \sum_o[44]~output_o\;

ww_sum_o(45) <= \sum_o[45]~output_o\;

ww_sum_o(46) <= \sum_o[46]~output_o\;

ww_sum_o(47) <= \sum_o[47]~output_o\;

ww_sum_o(48) <= \sum_o[48]~output_o\;

ww_sum_o(49) <= \sum_o[49]~output_o\;

ww_sum_o(50) <= \sum_o[50]~output_o\;

ww_sum_o(51) <= \sum_o[51]~output_o\;

ww_sum_o(52) <= \sum_o[52]~output_o\;

ww_sum_o(53) <= \sum_o[53]~output_o\;

ww_sum_o(54) <= \sum_o[54]~output_o\;

ww_sum_o(55) <= \sum_o[55]~output_o\;

ww_sum_o(56) <= \sum_o[56]~output_o\;

ww_sum_o(57) <= \sum_o[57]~output_o\;

ww_sum_o(58) <= \sum_o[58]~output_o\;

ww_sum_o(59) <= \sum_o[59]~output_o\;

ww_sum_o(60) <= \sum_o[60]~output_o\;

ww_sum_o(61) <= \sum_o[61]~output_o\;

ww_sum_o(62) <= \sum_o[62]~output_o\;

ww_sum_o(63) <= \sum_o[63]~output_o\;

ww_sum_o(64) <= \sum_o[64]~output_o\;

ww_is_odd_o <= \is_odd_o~output_o\;
END structure;


