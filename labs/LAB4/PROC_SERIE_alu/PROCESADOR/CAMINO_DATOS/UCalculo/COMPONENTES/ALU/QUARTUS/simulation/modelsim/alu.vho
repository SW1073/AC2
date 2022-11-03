-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "11/03/2022 18:15:02"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	opALU : IN std_logic_vector(4 DOWNTO 0);
	a : IN std_logic_vector(31 DOWNTO 0);
	b : IN std_logic_vector(31 DOWNTO 0);
	s : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END alu;

-- Design Ports Information
-- s[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[8]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[9]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[10]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[11]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[12]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[13]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[14]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[15]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[16]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[17]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[18]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[19]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[20]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[21]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[22]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[23]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[24]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[25]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[26]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[27]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[28]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[29]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[30]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[31]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opALU[0]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opALU[1]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opALU[2]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[29]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[28]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[31]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[30]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[27]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[25]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[26]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[24]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[23]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[21]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[22]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[20]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[19]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[17]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[18]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[16]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opALU[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opALU[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[31]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[30]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[29]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[28]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[27]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[26]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[25]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[24]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[23]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[22]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[21]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[20]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[19]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[18]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[17]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[16]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_opALU : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(31 DOWNTO 0);
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \s[4]~output_o\ : std_logic;
SIGNAL \s[5]~output_o\ : std_logic;
SIGNAL \s[6]~output_o\ : std_logic;
SIGNAL \s[7]~output_o\ : std_logic;
SIGNAL \s[8]~output_o\ : std_logic;
SIGNAL \s[9]~output_o\ : std_logic;
SIGNAL \s[10]~output_o\ : std_logic;
SIGNAL \s[11]~output_o\ : std_logic;
SIGNAL \s[12]~output_o\ : std_logic;
SIGNAL \s[13]~output_o\ : std_logic;
SIGNAL \s[14]~output_o\ : std_logic;
SIGNAL \s[15]~output_o\ : std_logic;
SIGNAL \s[16]~output_o\ : std_logic;
SIGNAL \s[17]~output_o\ : std_logic;
SIGNAL \s[18]~output_o\ : std_logic;
SIGNAL \s[19]~output_o\ : std_logic;
SIGNAL \s[20]~output_o\ : std_logic;
SIGNAL \s[21]~output_o\ : std_logic;
SIGNAL \s[22]~output_o\ : std_logic;
SIGNAL \s[23]~output_o\ : std_logic;
SIGNAL \s[24]~output_o\ : std_logic;
SIGNAL \s[25]~output_o\ : std_logic;
SIGNAL \s[26]~output_o\ : std_logic;
SIGNAL \s[27]~output_o\ : std_logic;
SIGNAL \s[28]~output_o\ : std_logic;
SIGNAL \s[29]~output_o\ : std_logic;
SIGNAL \s[30]~output_o\ : std_logic;
SIGNAL \s[31]~output_o\ : std_logic;
SIGNAL \opALU[2]~input_o\ : std_logic;
SIGNAL \opALU[3]~input_o\ : std_logic;
SIGNAL \sumalg_M|Mux0~0_combout\ : std_logic;
SIGNAL \opALU[1]~input_o\ : std_logic;
SIGNAL \opALU[0]~input_o\ : std_logic;
SIGNAL \opALU[4]~input_o\ : std_logic;
SIGNAL \sumalg_M|Mux0~1_combout\ : std_logic;
SIGNAL \b[31]~input_o\ : std_logic;
SIGNAL \a[31]~input_o\ : std_logic;
SIGNAL \a[30]~input_o\ : std_logic;
SIGNAL \b[30]~input_o\ : std_logic;
SIGNAL \a[29]~input_o\ : std_logic;
SIGNAL \b[29]~input_o\ : std_logic;
SIGNAL \b[28]~input_o\ : std_logic;
SIGNAL \a[28]~input_o\ : std_logic;
SIGNAL \a[27]~input_o\ : std_logic;
SIGNAL \b[27]~input_o\ : std_logic;
SIGNAL \b[26]~input_o\ : std_logic;
SIGNAL \a[26]~input_o\ : std_logic;
SIGNAL \a[25]~input_o\ : std_logic;
SIGNAL \b[25]~input_o\ : std_logic;
SIGNAL \a[24]~input_o\ : std_logic;
SIGNAL \b[24]~input_o\ : std_logic;
SIGNAL \b[23]~input_o\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \b[22]~input_o\ : std_logic;
SIGNAL \b[21]~input_o\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \b[20]~input_o\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \b[19]~input_o\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \b[18]~input_o\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \b[17]~input_o\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \b[16]~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \sumalg_M|Add0~1_cout\ : std_logic;
SIGNAL \sumalg_M|Add0~3\ : std_logic;
SIGNAL \sumalg_M|Add0~5\ : std_logic;
SIGNAL \sumalg_M|Add0~7\ : std_logic;
SIGNAL \sumalg_M|Add0~9\ : std_logic;
SIGNAL \sumalg_M|Add0~11\ : std_logic;
SIGNAL \sumalg_M|Add0~13\ : std_logic;
SIGNAL \sumalg_M|Add0~15\ : std_logic;
SIGNAL \sumalg_M|Add0~17\ : std_logic;
SIGNAL \sumalg_M|Add0~19\ : std_logic;
SIGNAL \sumalg_M|Add0~21\ : std_logic;
SIGNAL \sumalg_M|Add0~23\ : std_logic;
SIGNAL \sumalg_M|Add0~25\ : std_logic;
SIGNAL \sumalg_M|Add0~27\ : std_logic;
SIGNAL \sumalg_M|Add0~29\ : std_logic;
SIGNAL \sumalg_M|Add0~31\ : std_logic;
SIGNAL \sumalg_M|Add0~33\ : std_logic;
SIGNAL \sumalg_M|Add0~35\ : std_logic;
SIGNAL \sumalg_M|Add0~37\ : std_logic;
SIGNAL \sumalg_M|Add0~39\ : std_logic;
SIGNAL \sumalg_M|Add0~41\ : std_logic;
SIGNAL \sumalg_M|Add0~43\ : std_logic;
SIGNAL \sumalg_M|Add0~45\ : std_logic;
SIGNAL \sumalg_M|Add0~47\ : std_logic;
SIGNAL \sumalg_M|Add0~49\ : std_logic;
SIGNAL \sumalg_M|Add0~51\ : std_logic;
SIGNAL \sumalg_M|Add0~53\ : std_logic;
SIGNAL \sumalg_M|Add0~55\ : std_logic;
SIGNAL \sumalg_M|Add0~57\ : std_logic;
SIGNAL \sumalg_M|Add0~59\ : std_logic;
SIGNAL \sumalg_M|Add0~61\ : std_logic;
SIGNAL \sumalg_M|Add0~63\ : std_logic;
SIGNAL \sumalg_M|Add0~65\ : std_logic;
SIGNAL \sumalg_M|Add0~66_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \mux_final|Selector31~3_combout\ : std_logic;
SIGNAL \despla_M|Mux31~9_combout\ : std_logic;
SIGNAL \mux_final|Selector2~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \mux_des_log|Selector30~2_combout\ : std_logic;
SIGNAL \mux_des_log|Selector31~0_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~19_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~20_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~21_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~6_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~17_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~18_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~22_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~27_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~26_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~28_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~24_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~23_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~25_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~29_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~30_combout\ : std_logic;
SIGNAL \despla_M|Mux31~1_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~4_combout\ : std_logic;
SIGNAL \despla_M|Mux31~2_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~5_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~8_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~9_combout\ : std_logic;
SIGNAL \despla_M|Mux31~3_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~14_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~13_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~15_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~11_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~10_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~12_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~16_combout\ : std_logic;
SIGNAL \despla_M|Mux31~4_combout\ : std_logic;
SIGNAL \despla_M|Mux31~5_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \despla_M|Mux31~6_combout\ : std_logic;
SIGNAL \despla_M|Mux31~7_combout\ : std_logic;
SIGNAL \despla_M|Mux31~0_combout\ : std_logic;
SIGNAL \despla_M|Mux31~8_combout\ : std_logic;
SIGNAL \mux_final|Selector31~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \mux_final|Selector31~4_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~15_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~36_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~16_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~37_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~38_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~17_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~18_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~20_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~39_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~40_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~8_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~7_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~9_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~31_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~10_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~32_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~11_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~13_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~34_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~12_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~33_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~35_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~14_combout\ : std_logic;
SIGNAL \mux_des_log|Selector30~7_combout\ : std_logic;
SIGNAL \mux_des_log|Selector30~8_combout\ : std_logic;
SIGNAL \mux_des_log|Selector30~4_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~100_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~19_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~21_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~22_combout\ : std_logic;
SIGNAL \mux_des_log|Selector30~3_combout\ : std_logic;
SIGNAL \mux_des_log|Selector30~5_combout\ : std_logic;
SIGNAL \mux_des_log|Selector30~6_combout\ : std_logic;
SIGNAL \despla_M|Mux30~0_combout\ : std_logic;
SIGNAL \mux_des_log|Selector30~10_combout\ : std_logic;
SIGNAL \mux_des_log|Selector30~9_combout\ : std_logic;
SIGNAL \mux_final|Selector30~3_combout\ : std_logic;
SIGNAL \mux_final|Selector0~0_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~4_combout\ : std_logic;
SIGNAL \mux_final|Selector30~2_combout\ : std_logic;
SIGNAL \mux_final|Selector28~8_combout\ : std_logic;
SIGNAL \mux_final|Selector28~7_combout\ : std_logic;
SIGNAL \mux_final|Selector29~9_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~29_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~30_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~27_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~28_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~41_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~24_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~25_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~26_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~31_combout\ : std_logic;
SIGNAL \mux_final|Selector28~4_combout\ : std_logic;
SIGNAL \mux_final|Selector28~19_combout\ : std_logic;
SIGNAL \mux_final|Selector28~10_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~42_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~43_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~32_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~33_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~34_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~23_combout\ : std_logic;
SIGNAL \mux_final|Selector28~9_combout\ : std_logic;
SIGNAL \mux_final|Selector29~3_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~35_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~36_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~37_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~38_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~44_combout\ : std_logic;
SIGNAL \mux_final|Selector29~4_combout\ : std_logic;
SIGNAL \mux_final|Selector29~5_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~101_combout\ : std_logic;
SIGNAL \mux_final|Selector28~18_combout\ : std_logic;
SIGNAL \mux_final|Selector29~6_combout\ : std_logic;
SIGNAL \mux_final|Selector29~10_combout\ : std_logic;
SIGNAL \mux_final|Selector28~5_combout\ : std_logic;
SIGNAL \mux_final|Selector28~6_combout\ : std_logic;
SIGNAL \mux_final|Selector28~11_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~6_combout\ : std_logic;
SIGNAL \mux_final|Selector29~8_combout\ : std_logic;
SIGNAL \mux_final|Selector29~2_combout\ : std_logic;
SIGNAL \mux_final|Selector29~7_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~8_combout\ : std_logic;
SIGNAL \mux_final|Selector28~12_combout\ : std_logic;
SIGNAL \mux_final|Selector28~20_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~45_combout\ : std_logic;
SIGNAL \mux_final|Selector28~13_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~46_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~47_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~48_combout\ : std_logic;
SIGNAL \mux_final|Selector28~14_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~43_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~42_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~45_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~39_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~40_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~46_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~47_combout\ : std_logic;
SIGNAL \mux_final|Selector28~15_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~41_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~44_combout\ : std_logic;
SIGNAL \mux_final|Selector28~16_combout\ : std_logic;
SIGNAL \mux_final|Selector28~21_combout\ : std_logic;
SIGNAL \mux_final|Selector28~17_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~10_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \mux_final|Selector27~11_combout\ : std_logic;
SIGNAL \mux_final|Selector27~2_combout\ : std_logic;
SIGNAL \mux_final|Selector27~3_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~49_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~48_combout\ : std_logic;
SIGNAL \mux_final|Selector27~4_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~52_combout\ : std_logic;
SIGNAL \mux_final|Selector27~5_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~50_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~51_combout\ : std_logic;
SIGNAL \mux_final|Selector27~6_combout\ : std_logic;
SIGNAL \mux_final|Selector27~7_combout\ : std_logic;
SIGNAL \mux_final|Selector27~12_combout\ : std_logic;
SIGNAL \mux_final|Selector27~13_combout\ : std_logic;
SIGNAL \mux_final|Selector27~8_combout\ : std_logic;
SIGNAL \mux_final|Selector27~9_combout\ : std_logic;
SIGNAL \mux_final|Selector27~10_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \mux_final|Selector26~5_combout\ : std_logic;
SIGNAL \mux_final|Selector26~0_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~53_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~54_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~55_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~56_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~57_combout\ : std_logic;
SIGNAL \mux_final|Selector26~1_combout\ : std_logic;
SIGNAL \mux_final|Selector26~6_combout\ : std_logic;
SIGNAL \mux_final|Selector26~2_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~61_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~49_combout\ : std_logic;
SIGNAL \mux_final|Selector26~3_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~12_combout\ : std_logic;
SIGNAL \mux_final|Selector26~4_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~14_combout\ : std_logic;
SIGNAL \mux_final|Selector25~5_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~61_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~59_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~50_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~58_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~60_combout\ : std_logic;
SIGNAL \mux_final|Selector25~0_combout\ : std_logic;
SIGNAL \mux_final|Selector25~1_combout\ : std_logic;
SIGNAL \mux_final|Selector25~6_combout\ : std_logic;
SIGNAL \mux_final|Selector25~2_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~51_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~52_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \mux_final|Selector25~3_combout\ : std_logic;
SIGNAL \mux_final|Selector25~4_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~26_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~27_combout\ : std_logic;
SIGNAL \mux_final|Selector24~5_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~64_combout\ : std_logic;
SIGNAL \mux_final|Selector24~0_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~62_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~63_combout\ : std_logic;
SIGNAL \mux_final|Selector24~1_combout\ : std_logic;
SIGNAL \mux_final|Selector24~6_combout\ : std_logic;
SIGNAL \mux_final|Selector24~2_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~53_combout\ : std_logic;
SIGNAL \mux_final|Selector24~3_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~16_combout\ : std_logic;
SIGNAL \mux_final|Selector24~4_combout\ : std_logic;
SIGNAL \mux_final|Selector23~10_combout\ : std_logic;
SIGNAL \mux_final|Selector23~6_combout\ : std_logic;
SIGNAL \mux_final|Selector23~11_combout\ : std_logic;
SIGNAL \mux_final|Selector23~7_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~18_combout\ : std_logic;
SIGNAL \mux_final|Selector23~8_combout\ : std_logic;
SIGNAL \mux_final|Selector23~12_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~29_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~30_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~28_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~31_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~32_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~54_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~65_combout\ : std_logic;
SIGNAL \mux_final|Selector23~4_combout\ : std_logic;
SIGNAL \mux_final|Selector23~5_combout\ : std_logic;
SIGNAL \mux_final|Selector23~13_combout\ : std_logic;
SIGNAL \mux_final|Selector23~9_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~55_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~66_combout\ : std_logic;
SIGNAL \mux_final|Selector22~0_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~33_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~34_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~35_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~36_combout\ : std_logic;
SIGNAL \mux_final|Selector22~1_combout\ : std_logic;
SIGNAL \mux_final|Selector22~4_combout\ : std_logic;
SIGNAL \mux_final|Selector22~5_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~20_combout\ : std_logic;
SIGNAL \mux_final|Selector22~2_combout\ : std_logic;
SIGNAL \mux_final|Selector22~3_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~22_combout\ : std_logic;
SIGNAL \mux_final|Selector21~2_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~37_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~38_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~39_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~40_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~56_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~67_combout\ : std_logic;
SIGNAL \mux_final|Selector21~0_combout\ : std_logic;
SIGNAL \mux_final|Selector21~1_combout\ : std_logic;
SIGNAL \mux_final|Selector21~4_combout\ : std_logic;
SIGNAL \mux_final|Selector21~5_combout\ : std_logic;
SIGNAL \mux_final|Selector21~3_combout\ : std_logic;
SIGNAL \mux_final|Selector20~4_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~71_combout\ : std_logic;
SIGNAL \mux_final|Selector20~0_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~41_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~42_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~43_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~44_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~57_combout\ : std_logic;
SIGNAL \mux_final|Selector20~1_combout\ : std_logic;
SIGNAL \mux_final|Selector20~5_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~24_combout\ : std_logic;
SIGNAL \mux_final|Selector20~2_combout\ : std_logic;
SIGNAL \mux_final|Selector20~3_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~26_combout\ : std_logic;
SIGNAL \mux_final|Selector19~2_combout\ : std_logic;
SIGNAL \mux_final|Selector19~4_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~72_combout\ : std_logic;
SIGNAL \mux_final|Selector19~0_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~58_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~45_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~46_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~47_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~48_combout\ : std_logic;
SIGNAL \mux_final|Selector19~1_combout\ : std_logic;
SIGNAL \mux_final|Selector19~5_combout\ : std_logic;
SIGNAL \mux_final|Selector19~3_combout\ : std_logic;
SIGNAL \mux_final|Selector18~4_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~59_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~69_combout\ : std_logic;
SIGNAL \mux_final|Selector18~0_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~49_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~50_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~51_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~52_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~53_combout\ : std_logic;
SIGNAL \mux_final|Selector18~1_combout\ : std_logic;
SIGNAL \mux_final|Selector18~5_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~28_combout\ : std_logic;
SIGNAL \mux_final|Selector18~2_combout\ : std_logic;
SIGNAL \mux_final|Selector18~3_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~54_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~55_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~56_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~57_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~58_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~62_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~70_combout\ : std_logic;
SIGNAL \mux_final|Selector17~0_combout\ : std_logic;
SIGNAL \mux_final|Selector17~1_combout\ : std_logic;
SIGNAL \mux_final|Selector17~4_combout\ : std_logic;
SIGNAL \mux_final|Selector17~5_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~30_combout\ : std_logic;
SIGNAL \mux_final|Selector17~2_combout\ : std_logic;
SIGNAL \mux_final|Selector17~3_combout\ : std_logic;
SIGNAL \mux_final|Selector16~0_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~59_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~60_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~61_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~62_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~63_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight1~60_combout\ : std_logic;
SIGNAL \mux_final|Selector16~1_combout\ : std_logic;
SIGNAL \mux_final|Selector16~4_combout\ : std_logic;
SIGNAL \mux_final|Selector16~5_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~32_combout\ : std_logic;
SIGNAL \mux_final|Selector16~2_combout\ : std_logic;
SIGNAL \mux_final|Selector16~3_combout\ : std_logic;
SIGNAL \mux_final|Selector15~2_combout\ : std_logic;
SIGNAL \despla_M|Mux15~1_combout\ : std_logic;
SIGNAL \despla_M|Mux15~7_combout\ : std_logic;
SIGNAL \despla_M|Mux15~8_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~64_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~65_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~66_combout\ : std_logic;
SIGNAL \despla_M|Mux15~2_combout\ : std_logic;
SIGNAL \despla_M|Mux15~3_combout\ : std_logic;
SIGNAL \despla_M|Mux15~4_combout\ : std_logic;
SIGNAL \despla_M|Mux15~5_combout\ : std_logic;
SIGNAL \despla_M|Mux15~6_combout\ : std_logic;
SIGNAL \despla_M|Mux15~0_combout\ : std_logic;
SIGNAL \mux_final|Selector15~3_combout\ : std_logic;
SIGNAL \mux_final|Selector15~4_combout\ : std_logic;
SIGNAL \mux_final|Selector15~6_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~34_combout\ : std_logic;
SIGNAL \mux_final|Selector15~5_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~36_combout\ : std_logic;
SIGNAL \mux_final|Selector11~0_combout\ : std_logic;
SIGNAL \mux_final|Selector11~1_combout\ : std_logic;
SIGNAL \mux_final|Selector11~2_combout\ : std_logic;
SIGNAL \mux_final|Selector14~5_combout\ : std_logic;
SIGNAL \mux_final|Selector11~4_combout\ : std_logic;
SIGNAL \mux_final|Selector11~3_combout\ : std_logic;
SIGNAL \mux_final|Selector14~0_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~67_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~68_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~69_combout\ : std_logic;
SIGNAL \mux_final|Selector14~1_combout\ : std_logic;
SIGNAL \mux_final|Selector14~6_combout\ : std_logic;
SIGNAL \mux_final|Selector14~2_combout\ : std_logic;
SIGNAL \mux_final|Selector14~3_combout\ : std_logic;
SIGNAL \mux_final|Selector14~4_combout\ : std_logic;
SIGNAL \mux_final|Selector13~0_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~70_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~71_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~72_combout\ : std_logic;
SIGNAL \mux_final|Selector13~1_combout\ : std_logic;
SIGNAL \mux_final|Selector13~5_combout\ : std_logic;
SIGNAL \mux_final|Selector13~6_combout\ : std_logic;
SIGNAL \mux_final|Selector13~2_combout\ : std_logic;
SIGNAL \mux_final|Selector13~3_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~38_combout\ : std_logic;
SIGNAL \mux_final|Selector13~4_combout\ : std_logic;
SIGNAL \mux_final|Selector12~5_combout\ : std_logic;
SIGNAL \mux_final|Selector12~0_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~73_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~74_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~75_combout\ : std_logic;
SIGNAL \mux_final|Selector12~1_combout\ : std_logic;
SIGNAL \mux_final|Selector12~6_combout\ : std_logic;
SIGNAL \mux_final|Selector12~2_combout\ : std_logic;
SIGNAL \mux_final|Selector12~3_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~40_combout\ : std_logic;
SIGNAL \mux_final|Selector12~4_combout\ : std_logic;
SIGNAL \mux_final|Selector11~11_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~76_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~77_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~78_combout\ : std_logic;
SIGNAL \mux_final|Selector11~5_combout\ : std_logic;
SIGNAL \mux_final|Selector11~6_combout\ : std_logic;
SIGNAL \mux_final|Selector11~12_combout\ : std_logic;
SIGNAL \mux_final|Selector11~7_combout\ : std_logic;
SIGNAL \mux_final|Selector11~8_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~42_combout\ : std_logic;
SIGNAL \mux_final|Selector11~9_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~44_combout\ : std_logic;
SIGNAL \mux_final|Selector10~5_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~79_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~80_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~81_combout\ : std_logic;
SIGNAL \mux_final|Selector10~0_combout\ : std_logic;
SIGNAL \mux_final|Selector10~1_combout\ : std_logic;
SIGNAL \mux_final|Selector10~6_combout\ : std_logic;
SIGNAL \mux_final|Selector10~2_combout\ : std_logic;
SIGNAL \mux_final|Selector10~3_combout\ : std_logic;
SIGNAL \mux_final|Selector10~4_combout\ : std_logic;
SIGNAL \mux_final|Selector9~0_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~82_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~83_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~84_combout\ : std_logic;
SIGNAL \mux_final|Selector9~1_combout\ : std_logic;
SIGNAL \mux_final|Selector9~5_combout\ : std_logic;
SIGNAL \mux_final|Selector9~6_combout\ : std_logic;
SIGNAL \mux_final|Selector9~2_combout\ : std_logic;
SIGNAL \mux_final|Selector9~3_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~46_combout\ : std_logic;
SIGNAL \mux_final|Selector9~4_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~85_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~86_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~87_combout\ : std_logic;
SIGNAL \mux_final|Selector8~0_combout\ : std_logic;
SIGNAL \mux_final|Selector8~1_combout\ : std_logic;
SIGNAL \mux_final|Selector8~5_combout\ : std_logic;
SIGNAL \mux_final|Selector8~6_combout\ : std_logic;
SIGNAL \mux_final|Selector8~2_combout\ : std_logic;
SIGNAL \mux_final|Selector8~3_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~48_combout\ : std_logic;
SIGNAL \mux_final|Selector8~4_combout\ : std_logic;
SIGNAL \mux_final|Selector7~6_combout\ : std_logic;
SIGNAL \mux_final|Selector4~1_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~88_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~89_combout\ : std_logic;
SIGNAL \mux_final|Selector4~0_combout\ : std_logic;
SIGNAL \mux_final|Selector7~0_combout\ : std_logic;
SIGNAL \mux_final|Selector7~1_combout\ : std_logic;
SIGNAL \mux_final|Selector4~3_combout\ : std_logic;
SIGNAL \mux_final|Selector4~2_combout\ : std_logic;
SIGNAL \mux_final|Selector7~2_combout\ : std_logic;
SIGNAL \mux_final|Selector7~3_combout\ : std_logic;
SIGNAL \mux_final|Selector7~7_combout\ : std_logic;
SIGNAL \mux_final|Selector11~10_combout\ : std_logic;
SIGNAL \mux_final|Selector7~4_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~50_combout\ : std_logic;
SIGNAL \mux_final|Selector7~5_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~52_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~90_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~91_combout\ : std_logic;
SIGNAL \mux_final|Selector6~0_combout\ : std_logic;
SIGNAL \mux_final|Selector6~1_combout\ : std_logic;
SIGNAL \mux_final|Selector6~2_combout\ : std_logic;
SIGNAL \mux_final|Selector6~3_combout\ : std_logic;
SIGNAL \mux_final|Selector6~6_combout\ : std_logic;
SIGNAL \mux_final|Selector6~7_combout\ : std_logic;
SIGNAL \mux_final|Selector6~4_combout\ : std_logic;
SIGNAL \mux_final|Selector6~5_combout\ : std_logic;
SIGNAL \mux_final|Selector5~6_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~92_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~93_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~94_combout\ : std_logic;
SIGNAL \mux_final|Selector5~0_combout\ : std_logic;
SIGNAL \mux_final|Selector5~1_combout\ : std_logic;
SIGNAL \mux_final|Selector5~2_combout\ : std_logic;
SIGNAL \mux_final|Selector5~3_combout\ : std_logic;
SIGNAL \mux_final|Selector5~7_combout\ : std_logic;
SIGNAL \mux_final|Selector5~4_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~54_combout\ : std_logic;
SIGNAL \mux_final|Selector5~5_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~95_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~96_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~97_combout\ : std_logic;
SIGNAL \mux_final|Selector4~4_combout\ : std_logic;
SIGNAL \mux_final|Selector4~5_combout\ : std_logic;
SIGNAL \mux_final|Selector4~6_combout\ : std_logic;
SIGNAL \mux_final|Selector4~7_combout\ : std_logic;
SIGNAL \mux_final|Selector4~11_combout\ : std_logic;
SIGNAL \mux_final|Selector4~12_combout\ : std_logic;
SIGNAL \mux_final|Selector4~8_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~56_combout\ : std_logic;
SIGNAL \mux_final|Selector4~9_combout\ : std_logic;
SIGNAL \mux_final|Selector2~2_combout\ : std_logic;
SIGNAL \despla_M|ShiftRight0~68_combout\ : std_logic;
SIGNAL \mux_final|Selector2~1_combout\ : std_logic;
SIGNAL \mux_final|Selector3~2_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~98_combout\ : std_logic;
SIGNAL \mux_final|Selector3~0_combout\ : std_logic;
SIGNAL \mux_final|Selector3~1_combout\ : std_logic;
SIGNAL \mux_final|Selector3~3_combout\ : std_logic;
SIGNAL \mux_final|Selector3~6_combout\ : std_logic;
SIGNAL \mux_final|Selector3~7_combout\ : std_logic;
SIGNAL \mux_final|Selector2~3_combout\ : std_logic;
SIGNAL \mux_final|Selector4~10_combout\ : std_logic;
SIGNAL \mux_final|Selector2~4_combout\ : std_logic;
SIGNAL \mux_final|Selector2~5_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~58_combout\ : std_logic;
SIGNAL \mux_final|Selector3~4_combout\ : std_logic;
SIGNAL \mux_final|Selector3~5_combout\ : std_logic;
SIGNAL \mux_final|Selector2~12_combout\ : std_logic;
SIGNAL \despla_M|ShiftLeft0~99_combout\ : std_logic;
SIGNAL \mux_final|Selector2~6_combout\ : std_logic;
SIGNAL \mux_final|Selector2~7_combout\ : std_logic;
SIGNAL \mux_final|Selector2~8_combout\ : std_logic;
SIGNAL \mux_final|Selector2~9_combout\ : std_logic;
SIGNAL \mux_final|Selector2~13_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~60_combout\ : std_logic;
SIGNAL \mux_final|Selector2~10_combout\ : std_logic;
SIGNAL \mux_final|Selector2~11_combout\ : std_logic;
SIGNAL \despla_M|Mux1~0_combout\ : std_logic;
SIGNAL \mux_final|Selector1~4_combout\ : std_logic;
SIGNAL \mux_final|Selector1~5_combout\ : std_logic;
SIGNAL \mux_final|Selector1~6_combout\ : std_logic;
SIGNAL \mux_final|Selector1~7_combout\ : std_logic;
SIGNAL \mux_final|Selector1~8_combout\ : std_logic;
SIGNAL \mux_final|Selector1~9_combout\ : std_logic;
SIGNAL \mux_final|Selector1~10_combout\ : std_logic;
SIGNAL \mux_final|Selector1~11_combout\ : std_logic;
SIGNAL \mux_final|Selector1~2_combout\ : std_logic;
SIGNAL \mux_final|Selector1~3_combout\ : std_logic;
SIGNAL \mux_final|Selector1~14_combout\ : std_logic;
SIGNAL \mux_final|Selector1~12_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~62_combout\ : std_logic;
SIGNAL \mux_final|Selector1~13_combout\ : std_logic;
SIGNAL \mux_des_log|Selector0~0_combout\ : std_logic;
SIGNAL \mux_des_log|Selector0~1_combout\ : std_logic;
SIGNAL \despla_M|Mux0~6_combout\ : std_logic;
SIGNAL \despla_M|Mux0~1_combout\ : std_logic;
SIGNAL \despla_M|Mux0~2_combout\ : std_logic;
SIGNAL \despla_M|Mux0~3_combout\ : std_logic;
SIGNAL \despla_M|Mux0~4_combout\ : std_logic;
SIGNAL \despla_M|Mux0~5_combout\ : std_logic;
SIGNAL \despla_M|Mux0~0_combout\ : std_logic;
SIGNAL \mux_final|Selector0~1_combout\ : std_logic;
SIGNAL \mux_final|Selector0~2_combout\ : std_logic;
SIGNAL \mux_final|Selector0~3_combout\ : std_logic;
SIGNAL \sumalg_M|Add0~64_combout\ : std_logic;
SIGNAL \mux_final|Selector0~4_combout\ : std_logic;
SIGNAL \sumalg_M|bb\ : std_logic_vector(32 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_opALU <= opALU;
ww_a <= a;
ww_b <= b;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X31_Y0_N9
\s[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector31~4_combout\,
	devoe => ww_devoe,
	o => \s[0]~output_o\);

-- Location: IOOBUF_X7_Y41_N16
\s[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector30~2_combout\,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

-- Location: IOOBUF_X31_Y41_N23
\s[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector29~7_combout\,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

-- Location: IOOBUF_X21_Y41_N9
\s[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector28~17_combout\,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\s[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector27~10_combout\,
	devoe => ww_devoe,
	o => \s[4]~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\s[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector26~4_combout\,
	devoe => ww_devoe,
	o => \s[5]~output_o\);

-- Location: IOOBUF_X36_Y41_N9
\s[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector25~4_combout\,
	devoe => ww_devoe,
	o => \s[6]~output_o\);

-- Location: IOOBUF_X38_Y41_N2
\s[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector24~4_combout\,
	devoe => ww_devoe,
	o => \s[7]~output_o\);

-- Location: IOOBUF_X52_Y19_N2
\s[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector23~9_combout\,
	devoe => ww_devoe,
	o => \s[8]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\s[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector22~3_combout\,
	devoe => ww_devoe,
	o => \s[9]~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\s[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector21~3_combout\,
	devoe => ww_devoe,
	o => \s[10]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\s[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector20~3_combout\,
	devoe => ww_devoe,
	o => \s[11]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\s[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector19~3_combout\,
	devoe => ww_devoe,
	o => \s[12]~output_o\);

-- Location: IOOBUF_X52_Y10_N9
\s[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector18~3_combout\,
	devoe => ww_devoe,
	o => \s[13]~output_o\);

-- Location: IOOBUF_X52_Y9_N9
\s[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector17~3_combout\,
	devoe => ww_devoe,
	o => \s[14]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\s[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector16~3_combout\,
	devoe => ww_devoe,
	o => \s[15]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\s[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector15~5_combout\,
	devoe => ww_devoe,
	o => \s[16]~output_o\);

-- Location: IOOBUF_X46_Y41_N2
\s[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector14~4_combout\,
	devoe => ww_devoe,
	o => \s[17]~output_o\);

-- Location: IOOBUF_X43_Y41_N9
\s[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector13~4_combout\,
	devoe => ww_devoe,
	o => \s[18]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\s[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector12~4_combout\,
	devoe => ww_devoe,
	o => \s[19]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\s[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector11~9_combout\,
	devoe => ww_devoe,
	o => \s[20]~output_o\);

-- Location: IOOBUF_X36_Y41_N2
\s[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector10~4_combout\,
	devoe => ww_devoe,
	o => \s[21]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\s[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector9~4_combout\,
	devoe => ww_devoe,
	o => \s[22]~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\s[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector8~4_combout\,
	devoe => ww_devoe,
	o => \s[23]~output_o\);

-- Location: IOOBUF_X41_Y0_N2
\s[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector7~5_combout\,
	devoe => ww_devoe,
	o => \s[24]~output_o\);

-- Location: IOOBUF_X52_Y16_N2
\s[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector6~5_combout\,
	devoe => ww_devoe,
	o => \s[25]~output_o\);

-- Location: IOOBUF_X52_Y15_N9
\s[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector5~5_combout\,
	devoe => ww_devoe,
	o => \s[26]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\s[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector4~9_combout\,
	devoe => ww_devoe,
	o => \s[27]~output_o\);

-- Location: IOOBUF_X50_Y41_N9
\s[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector3~5_combout\,
	devoe => ww_devoe,
	o => \s[28]~output_o\);

-- Location: IOOBUF_X52_Y16_N9
\s[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector2~11_combout\,
	devoe => ww_devoe,
	o => \s[29]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\s[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector1~13_combout\,
	devoe => ww_devoe,
	o => \s[30]~output_o\);

-- Location: IOOBUF_X52_Y18_N9
\s[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_final|Selector0~4_combout\,
	devoe => ww_devoe,
	o => \s[31]~output_o\);

-- Location: IOIBUF_X27_Y0_N8
\opALU[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opALU(2),
	o => \opALU[2]~input_o\);

-- Location: IOIBUF_X52_Y9_N1
\opALU[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opALU(3),
	o => \opALU[3]~input_o\);

-- Location: LCCOMB_X35_Y22_N24
\sumalg_M|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Mux0~0_combout\ = (!\opALU[2]~input_o\ & \opALU[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opALU[2]~input_o\,
	datad => \opALU[3]~input_o\,
	combout => \sumalg_M|Mux0~0_combout\);

-- Location: IOIBUF_X52_Y11_N1
\opALU[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opALU(1),
	o => \opALU[1]~input_o\);

-- Location: IOIBUF_X52_Y21_N8
\opALU[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opALU(0),
	o => \opALU[0]~input_o\);

-- Location: IOIBUF_X52_Y32_N8
\opALU[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opALU(4),
	o => \opALU[4]~input_o\);

-- Location: LCCOMB_X35_Y22_N2
\sumalg_M|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Mux0~1_combout\ = (\sumalg_M|Mux0~0_combout\ & (!\opALU[1]~input_o\ & (!\opALU[0]~input_o\ & \opALU[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|Mux0~0_combout\,
	datab => \opALU[1]~input_o\,
	datac => \opALU[0]~input_o\,
	datad => \opALU[4]~input_o\,
	combout => \sumalg_M|Mux0~1_combout\);

-- Location: IOIBUF_X52_Y12_N8
\b[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(31),
	o => \b[31]~input_o\);

-- Location: LCCOMB_X37_Y24_N24
\sumalg_M|bb[31]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(31) = \b[31]~input_o\ $ (\sumalg_M|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[31]~input_o\,
	datad => \sumalg_M|Mux0~1_combout\,
	combout => \sumalg_M|bb\(31));

-- Location: IOIBUF_X52_Y30_N8
\a[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(31),
	o => \a[31]~input_o\);

-- Location: IOIBUF_X52_Y19_N8
\a[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(30),
	o => \a[30]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\b[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(30),
	o => \b[30]~input_o\);

-- Location: LCCOMB_X37_Y24_N10
\sumalg_M|bb[30]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(30) = \sumalg_M|Mux0~1_combout\ $ (\b[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sumalg_M|Mux0~1_combout\,
	datad => \b[30]~input_o\,
	combout => \sumalg_M|bb\(30));

-- Location: IOIBUF_X52_Y30_N1
\a[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(29),
	o => \a[29]~input_o\);

-- Location: IOIBUF_X46_Y41_N22
\b[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(29),
	o => \b[29]~input_o\);

-- Location: LCCOMB_X37_Y22_N8
\sumalg_M|bb[29]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(29) = \sumalg_M|Mux0~1_combout\ $ (\b[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sumalg_M|Mux0~1_combout\,
	datad => \b[29]~input_o\,
	combout => \sumalg_M|bb\(29));

-- Location: IOIBUF_X52_Y15_N1
\b[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(28),
	o => \b[28]~input_o\);

-- Location: LCCOMB_X37_Y22_N10
\sumalg_M|bb[28]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(28) = \sumalg_M|Mux0~1_combout\ $ (\b[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sumalg_M|Mux0~1_combout\,
	datac => \b[28]~input_o\,
	combout => \sumalg_M|bb\(28));

-- Location: IOIBUF_X31_Y41_N15
\a[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(28),
	o => \a[28]~input_o\);

-- Location: IOIBUF_X29_Y41_N8
\a[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(27),
	o => \a[27]~input_o\);

-- Location: IOIBUF_X41_Y0_N8
\b[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(27),
	o => \b[27]~input_o\);

-- Location: LCCOMB_X35_Y25_N8
\sumalg_M|bb[27]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(27) = \sumalg_M|Mux0~1_combout\ $ (\b[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sumalg_M|Mux0~1_combout\,
	datac => \b[27]~input_o\,
	combout => \sumalg_M|bb\(27));

-- Location: IOIBUF_X52_Y31_N1
\b[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(26),
	o => \b[26]~input_o\);

-- Location: LCCOMB_X37_Y24_N20
\sumalg_M|bb[26]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(26) = \sumalg_M|Mux0~1_combout\ $ (\b[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sumalg_M|Mux0~1_combout\,
	datad => \b[26]~input_o\,
	combout => \sumalg_M|bb\(26));

-- Location: IOIBUF_X41_Y41_N22
\a[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(26),
	o => \a[26]~input_o\);

-- Location: IOIBUF_X52_Y32_N15
\a[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(25),
	o => \a[25]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\b[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(25),
	o => \b[25]~input_o\);

-- Location: LCCOMB_X37_Y24_N22
\sumalg_M|bb[25]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(25) = \b[25]~input_o\ $ (\sumalg_M|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[25]~input_o\,
	datad => \sumalg_M|Mux0~1_combout\,
	combout => \sumalg_M|bb\(25));

-- Location: IOIBUF_X48_Y41_N1
\a[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(24),
	o => \a[24]~input_o\);

-- Location: IOIBUF_X52_Y10_N1
\b[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(24),
	o => \b[24]~input_o\);

-- Location: LCCOMB_X37_Y24_N0
\sumalg_M|bb[24]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(24) = \sumalg_M|Mux0~1_combout\ $ (\b[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sumalg_M|Mux0~1_combout\,
	datad => \b[24]~input_o\,
	combout => \sumalg_M|bb\(24));

-- Location: IOIBUF_X7_Y41_N1
\b[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(23),
	o => \b[23]~input_o\);

-- Location: LCCOMB_X34_Y25_N24
\sumalg_M|bb[23]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(23) = \sumalg_M|Mux0~1_combout\ $ (\b[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sumalg_M|Mux0~1_combout\,
	datac => \b[23]~input_o\,
	combout => \sumalg_M|bb\(23));

-- Location: IOIBUF_X50_Y41_N1
\a[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

-- Location: IOIBUF_X52_Y27_N1
\a[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

-- Location: IOIBUF_X52_Y25_N8
\b[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(22),
	o => \b[22]~input_o\);

-- Location: LCCOMB_X34_Y25_N26
\sumalg_M|bb[22]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(22) = \sumalg_M|Mux0~1_combout\ $ (\b[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sumalg_M|Mux0~1_combout\,
	datac => \b[22]~input_o\,
	combout => \sumalg_M|bb\(22));

-- Location: IOIBUF_X23_Y41_N1
\b[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(21),
	o => \b[21]~input_o\);

-- Location: LCCOMB_X31_Y25_N16
\sumalg_M|bb[21]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(21) = \b[21]~input_o\ $ (\sumalg_M|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[21]~input_o\,
	datad => \sumalg_M|Mux0~1_combout\,
	combout => \sumalg_M|bb\(21));

-- Location: IOIBUF_X21_Y41_N1
\a[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\b[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(20),
	o => \b[20]~input_o\);

-- Location: LCCOMB_X34_Y25_N28
\sumalg_M|bb[20]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(20) = \sumalg_M|Mux0~1_combout\ $ (\b[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sumalg_M|Mux0~1_combout\,
	datac => \b[20]~input_o\,
	combout => \sumalg_M|bb\(20));

-- Location: IOIBUF_X48_Y41_N8
\a[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\b[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(19),
	o => \b[19]~input_o\);

-- Location: LCCOMB_X31_Y25_N26
\sumalg_M|bb[19]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(19) = \b[19]~input_o\ $ (\sumalg_M|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[19]~input_o\,
	datad => \sumalg_M|Mux0~1_combout\,
	combout => \sumalg_M|bb\(19));

-- Location: IOIBUF_X52_Y32_N1
\a[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

-- Location: IOIBUF_X14_Y41_N1
\b[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(18),
	o => \b[18]~input_o\);

-- Location: LCCOMB_X35_Y25_N26
\sumalg_M|bb[18]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(18) = \sumalg_M|Mux0~1_combout\ $ (\b[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sumalg_M|Mux0~1_combout\,
	datac => \b[18]~input_o\,
	combout => \sumalg_M|bb\(18));

-- Location: IOIBUF_X29_Y0_N1
\a[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

-- Location: IOIBUF_X31_Y41_N1
\a[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

-- Location: IOIBUF_X25_Y0_N8
\b[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(17),
	o => \b[17]~input_o\);

-- Location: LCCOMB_X31_Y25_N20
\sumalg_M|bb[17]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(17) = \b[17]~input_o\ $ (\sumalg_M|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[17]~input_o\,
	datad => \sumalg_M|Mux0~1_combout\,
	combout => \sumalg_M|bb\(17));

-- Location: IOIBUF_X43_Y41_N1
\a[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

-- Location: IOIBUF_X27_Y41_N1
\b[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(16),
	o => \b[16]~input_o\);

-- Location: LCCOMB_X37_Y24_N2
\sumalg_M|bb[16]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(16) = \b[16]~input_o\ $ (\sumalg_M|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[16]~input_o\,
	datad => \sumalg_M|Mux0~1_combout\,
	combout => \sumalg_M|bb\(16));

-- Location: IOIBUF_X5_Y41_N8
\a[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: IOIBUF_X27_Y41_N8
\b[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: LCCOMB_X35_Y23_N26
\sumalg_M|bb[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(15) = \b[15]~input_o\ $ (\sumalg_M|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[15]~input_o\,
	datad => \sumalg_M|Mux0~1_combout\,
	combout => \sumalg_M|bb\(15));

-- Location: IOIBUF_X52_Y12_N1
\a[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: IOIBUF_X10_Y41_N1
\b[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: LCCOMB_X31_Y25_N22
\sumalg_M|bb[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(14) = \b[14]~input_o\ $ (\sumalg_M|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[14]~input_o\,
	datad => \sumalg_M|Mux0~1_combout\,
	combout => \sumalg_M|bb\(14));

-- Location: IOIBUF_X34_Y0_N8
\b[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: LCCOMB_X35_Y23_N4
\sumalg_M|bb[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(13) = \b[13]~input_o\ $ (\sumalg_M|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[13]~input_o\,
	datad => \sumalg_M|Mux0~1_combout\,
	combout => \sumalg_M|bb\(13));

-- Location: IOIBUF_X18_Y41_N1
\a[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\b[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: LCCOMB_X37_Y22_N12
\sumalg_M|bb[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(12) = \sumalg_M|Mux0~1_combout\ $ (\b[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sumalg_M|Mux0~1_combout\,
	datad => \b[12]~input_o\,
	combout => \sumalg_M|bb\(12));

-- Location: IOIBUF_X52_Y23_N8
\a[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: IOIBUF_X41_Y41_N1
\b[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: LCCOMB_X37_Y24_N12
\sumalg_M|bb[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(11) = \b[11]~input_o\ $ (\sumalg_M|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[11]~input_o\,
	datad => \sumalg_M|Mux0~1_combout\,
	combout => \sumalg_M|bb\(11));

-- Location: IOIBUF_X36_Y0_N1
\a[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: IOIBUF_X52_Y25_N1
\a[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: IOIBUF_X41_Y0_N15
\b[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: LCCOMB_X35_Y24_N16
\sumalg_M|bb[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(10) = \sumalg_M|Mux0~1_combout\ $ (\b[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sumalg_M|Mux0~1_combout\,
	datad => \b[10]~input_o\,
	combout => \sumalg_M|bb\(10));

-- Location: IOIBUF_X52_Y27_N8
\b[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: LCCOMB_X35_Y23_N6
\sumalg_M|bb[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(9) = \sumalg_M|Mux0~1_combout\ $ (\b[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sumalg_M|Mux0~1_combout\,
	datad => \b[9]~input_o\,
	combout => \sumalg_M|bb\(9));

-- Location: IOIBUF_X18_Y41_N8
\a[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X16_Y41_N1
\a[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: IOIBUF_X46_Y41_N15
\b[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: LCCOMB_X35_Y24_N10
\sumalg_M|bb[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(8) = \sumalg_M|Mux0~1_combout\ $ (\b[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sumalg_M|Mux0~1_combout\,
	datad => \b[8]~input_o\,
	combout => \sumalg_M|bb\(8));

-- Location: IOIBUF_X31_Y0_N22
\b[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LCCOMB_X31_Y25_N0
\sumalg_M|bb[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(7) = \sumalg_M|Mux0~1_combout\ $ (\b[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|Mux0~1_combout\,
	datad => \b[7]~input_o\,
	combout => \sumalg_M|bb\(7));

-- Location: IOIBUF_X29_Y41_N1
\a[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X23_Y41_N8
\b[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: LCCOMB_X31_Y25_N18
\sumalg_M|bb[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(6) = \b[6]~input_o\ $ (\sumalg_M|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[6]~input_o\,
	datad => \sumalg_M|Mux0~1_combout\,
	combout => \sumalg_M|bb\(6));

-- Location: IOIBUF_X52_Y13_N1
\a[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X52_Y11_N8
\b[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: LCCOMB_X37_Y22_N6
\sumalg_M|bb[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(5) = \sumalg_M|Mux0~1_combout\ $ (\b[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sumalg_M|Mux0~1_combout\,
	datac => \b[5]~input_o\,
	combout => \sumalg_M|bb\(5));

-- Location: IOIBUF_X25_Y41_N1
\a[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X14_Y41_N8
\a[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X52_Y23_N1
\b[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: LCCOMB_X37_Y24_N6
\sumalg_M|bb[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(4) = \b[4]~input_o\ $ (\sumalg_M|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datad => \sumalg_M|Mux0~1_combout\,
	combout => \sumalg_M|bb\(4));

-- Location: IOIBUF_X25_Y41_N8
\a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X52_Y28_N1
\b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X37_Y24_N16
\sumalg_M|bb[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(3) = \b[3]~input_o\ $ (\sumalg_M|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[3]~input_o\,
	datad => \sumalg_M|Mux0~1_combout\,
	combout => \sumalg_M|bb\(3));

-- Location: IOIBUF_X12_Y41_N1
\a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X52_Y13_N8
\b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X32_Y26_N22
\sumalg_M|bb[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(2) = \b[2]~input_o\ $ (\sumalg_M|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[2]~input_o\,
	datad => \sumalg_M|Mux0~1_combout\,
	combout => \sumalg_M|bb\(2));

-- Location: IOIBUF_X52_Y18_N1
\b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X36_Y26_N10
\sumalg_M|bb[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(1) = \b[1]~input_o\ $ (\sumalg_M|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datac => \sumalg_M|Mux0~1_combout\,
	combout => \sumalg_M|bb\(1));

-- Location: IOIBUF_X27_Y0_N1
\a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X16_Y41_N8
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X52_Y21_N1
\b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X37_Y22_N16
\sumalg_M|bb[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|bb\(0) = \sumalg_M|Mux0~1_combout\ $ (\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sumalg_M|Mux0~1_combout\,
	datad => \b[0]~input_o\,
	combout => \sumalg_M|bb\(0));

-- Location: LCCOMB_X36_Y26_N14
\sumalg_M|Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~1_cout\ = CARRY(\sumalg_M|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|Mux0~1_combout\,
	datad => VCC,
	cout => \sumalg_M|Add0~1_cout\);

-- Location: LCCOMB_X36_Y26_N16
\sumalg_M|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~2_combout\ = (\a[0]~input_o\ & ((\sumalg_M|bb\(0) & (\sumalg_M|Add0~1_cout\ & VCC)) # (!\sumalg_M|bb\(0) & (!\sumalg_M|Add0~1_cout\)))) # (!\a[0]~input_o\ & ((\sumalg_M|bb\(0) & (!\sumalg_M|Add0~1_cout\)) # (!\sumalg_M|bb\(0) & 
-- ((\sumalg_M|Add0~1_cout\) # (GND)))))
-- \sumalg_M|Add0~3\ = CARRY((\a[0]~input_o\ & (!\sumalg_M|bb\(0) & !\sumalg_M|Add0~1_cout\)) # (!\a[0]~input_o\ & ((!\sumalg_M|Add0~1_cout\) # (!\sumalg_M|bb\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \sumalg_M|bb\(0),
	datad => VCC,
	cin => \sumalg_M|Add0~1_cout\,
	combout => \sumalg_M|Add0~2_combout\,
	cout => \sumalg_M|Add0~3\);

-- Location: LCCOMB_X36_Y26_N18
\sumalg_M|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~4_combout\ = ((\sumalg_M|bb\(1) $ (\a[1]~input_o\ $ (!\sumalg_M|Add0~3\)))) # (GND)
-- \sumalg_M|Add0~5\ = CARRY((\sumalg_M|bb\(1) & ((\a[1]~input_o\) # (!\sumalg_M|Add0~3\))) # (!\sumalg_M|bb\(1) & (\a[1]~input_o\ & !\sumalg_M|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|bb\(1),
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \sumalg_M|Add0~3\,
	combout => \sumalg_M|Add0~4_combout\,
	cout => \sumalg_M|Add0~5\);

-- Location: LCCOMB_X36_Y26_N20
\sumalg_M|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~6_combout\ = (\a[2]~input_o\ & ((\sumalg_M|bb\(2) & (\sumalg_M|Add0~5\ & VCC)) # (!\sumalg_M|bb\(2) & (!\sumalg_M|Add0~5\)))) # (!\a[2]~input_o\ & ((\sumalg_M|bb\(2) & (!\sumalg_M|Add0~5\)) # (!\sumalg_M|bb\(2) & ((\sumalg_M|Add0~5\) # 
-- (GND)))))
-- \sumalg_M|Add0~7\ = CARRY((\a[2]~input_o\ & (!\sumalg_M|bb\(2) & !\sumalg_M|Add0~5\)) # (!\a[2]~input_o\ & ((!\sumalg_M|Add0~5\) # (!\sumalg_M|bb\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \sumalg_M|bb\(2),
	datad => VCC,
	cin => \sumalg_M|Add0~5\,
	combout => \sumalg_M|Add0~6_combout\,
	cout => \sumalg_M|Add0~7\);

-- Location: LCCOMB_X36_Y26_N22
\sumalg_M|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~8_combout\ = ((\a[3]~input_o\ $ (\sumalg_M|bb\(3) $ (!\sumalg_M|Add0~7\)))) # (GND)
-- \sumalg_M|Add0~9\ = CARRY((\a[3]~input_o\ & ((\sumalg_M|bb\(3)) # (!\sumalg_M|Add0~7\))) # (!\a[3]~input_o\ & (\sumalg_M|bb\(3) & !\sumalg_M|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \sumalg_M|bb\(3),
	datad => VCC,
	cin => \sumalg_M|Add0~7\,
	combout => \sumalg_M|Add0~8_combout\,
	cout => \sumalg_M|Add0~9\);

-- Location: LCCOMB_X36_Y26_N24
\sumalg_M|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~10_combout\ = (\a[4]~input_o\ & ((\sumalg_M|bb\(4) & (\sumalg_M|Add0~9\ & VCC)) # (!\sumalg_M|bb\(4) & (!\sumalg_M|Add0~9\)))) # (!\a[4]~input_o\ & ((\sumalg_M|bb\(4) & (!\sumalg_M|Add0~9\)) # (!\sumalg_M|bb\(4) & ((\sumalg_M|Add0~9\) # 
-- (GND)))))
-- \sumalg_M|Add0~11\ = CARRY((\a[4]~input_o\ & (!\sumalg_M|bb\(4) & !\sumalg_M|Add0~9\)) # (!\a[4]~input_o\ & ((!\sumalg_M|Add0~9\) # (!\sumalg_M|bb\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \sumalg_M|bb\(4),
	datad => VCC,
	cin => \sumalg_M|Add0~9\,
	combout => \sumalg_M|Add0~10_combout\,
	cout => \sumalg_M|Add0~11\);

-- Location: LCCOMB_X36_Y26_N26
\sumalg_M|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~12_combout\ = ((\sumalg_M|bb\(5) $ (\a[5]~input_o\ $ (!\sumalg_M|Add0~11\)))) # (GND)
-- \sumalg_M|Add0~13\ = CARRY((\sumalg_M|bb\(5) & ((\a[5]~input_o\) # (!\sumalg_M|Add0~11\))) # (!\sumalg_M|bb\(5) & (\a[5]~input_o\ & !\sumalg_M|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|bb\(5),
	datab => \a[5]~input_o\,
	datad => VCC,
	cin => \sumalg_M|Add0~11\,
	combout => \sumalg_M|Add0~12_combout\,
	cout => \sumalg_M|Add0~13\);

-- Location: LCCOMB_X36_Y26_N28
\sumalg_M|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~14_combout\ = (\sumalg_M|bb\(6) & ((\a[6]~input_o\ & (\sumalg_M|Add0~13\ & VCC)) # (!\a[6]~input_o\ & (!\sumalg_M|Add0~13\)))) # (!\sumalg_M|bb\(6) & ((\a[6]~input_o\ & (!\sumalg_M|Add0~13\)) # (!\a[6]~input_o\ & ((\sumalg_M|Add0~13\) # 
-- (GND)))))
-- \sumalg_M|Add0~15\ = CARRY((\sumalg_M|bb\(6) & (!\a[6]~input_o\ & !\sumalg_M|Add0~13\)) # (!\sumalg_M|bb\(6) & ((!\sumalg_M|Add0~13\) # (!\a[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|bb\(6),
	datab => \a[6]~input_o\,
	datad => VCC,
	cin => \sumalg_M|Add0~13\,
	combout => \sumalg_M|Add0~14_combout\,
	cout => \sumalg_M|Add0~15\);

-- Location: LCCOMB_X36_Y26_N30
\sumalg_M|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~16_combout\ = ((\sumalg_M|bb\(7) $ (\a[7]~input_o\ $ (!\sumalg_M|Add0~15\)))) # (GND)
-- \sumalg_M|Add0~17\ = CARRY((\sumalg_M|bb\(7) & ((\a[7]~input_o\) # (!\sumalg_M|Add0~15\))) # (!\sumalg_M|bb\(7) & (\a[7]~input_o\ & !\sumalg_M|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|bb\(7),
	datab => \a[7]~input_o\,
	datad => VCC,
	cin => \sumalg_M|Add0~15\,
	combout => \sumalg_M|Add0~16_combout\,
	cout => \sumalg_M|Add0~17\);

-- Location: LCCOMB_X36_Y25_N0
\sumalg_M|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~18_combout\ = (\a[8]~input_o\ & ((\sumalg_M|bb\(8) & (\sumalg_M|Add0~17\ & VCC)) # (!\sumalg_M|bb\(8) & (!\sumalg_M|Add0~17\)))) # (!\a[8]~input_o\ & ((\sumalg_M|bb\(8) & (!\sumalg_M|Add0~17\)) # (!\sumalg_M|bb\(8) & ((\sumalg_M|Add0~17\) # 
-- (GND)))))
-- \sumalg_M|Add0~19\ = CARRY((\a[8]~input_o\ & (!\sumalg_M|bb\(8) & !\sumalg_M|Add0~17\)) # (!\a[8]~input_o\ & ((!\sumalg_M|Add0~17\) # (!\sumalg_M|bb\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \sumalg_M|bb\(8),
	datad => VCC,
	cin => \sumalg_M|Add0~17\,
	combout => \sumalg_M|Add0~18_combout\,
	cout => \sumalg_M|Add0~19\);

-- Location: LCCOMB_X36_Y25_N2
\sumalg_M|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~20_combout\ = ((\sumalg_M|bb\(9) $ (\a[9]~input_o\ $ (!\sumalg_M|Add0~19\)))) # (GND)
-- \sumalg_M|Add0~21\ = CARRY((\sumalg_M|bb\(9) & ((\a[9]~input_o\) # (!\sumalg_M|Add0~19\))) # (!\sumalg_M|bb\(9) & (\a[9]~input_o\ & !\sumalg_M|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|bb\(9),
	datab => \a[9]~input_o\,
	datad => VCC,
	cin => \sumalg_M|Add0~19\,
	combout => \sumalg_M|Add0~20_combout\,
	cout => \sumalg_M|Add0~21\);

-- Location: LCCOMB_X36_Y25_N4
\sumalg_M|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~22_combout\ = (\a[10]~input_o\ & ((\sumalg_M|bb\(10) & (\sumalg_M|Add0~21\ & VCC)) # (!\sumalg_M|bb\(10) & (!\sumalg_M|Add0~21\)))) # (!\a[10]~input_o\ & ((\sumalg_M|bb\(10) & (!\sumalg_M|Add0~21\)) # (!\sumalg_M|bb\(10) & 
-- ((\sumalg_M|Add0~21\) # (GND)))))
-- \sumalg_M|Add0~23\ = CARRY((\a[10]~input_o\ & (!\sumalg_M|bb\(10) & !\sumalg_M|Add0~21\)) # (!\a[10]~input_o\ & ((!\sumalg_M|Add0~21\) # (!\sumalg_M|bb\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[10]~input_o\,
	datab => \sumalg_M|bb\(10),
	datad => VCC,
	cin => \sumalg_M|Add0~21\,
	combout => \sumalg_M|Add0~22_combout\,
	cout => \sumalg_M|Add0~23\);

-- Location: LCCOMB_X36_Y25_N6
\sumalg_M|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~24_combout\ = ((\sumalg_M|bb\(11) $ (\a[11]~input_o\ $ (!\sumalg_M|Add0~23\)))) # (GND)
-- \sumalg_M|Add0~25\ = CARRY((\sumalg_M|bb\(11) & ((\a[11]~input_o\) # (!\sumalg_M|Add0~23\))) # (!\sumalg_M|bb\(11) & (\a[11]~input_o\ & !\sumalg_M|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|bb\(11),
	datab => \a[11]~input_o\,
	datad => VCC,
	cin => \sumalg_M|Add0~23\,
	combout => \sumalg_M|Add0~24_combout\,
	cout => \sumalg_M|Add0~25\);

-- Location: LCCOMB_X36_Y25_N8
\sumalg_M|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~26_combout\ = (\sumalg_M|bb\(12) & ((\a[12]~input_o\ & (\sumalg_M|Add0~25\ & VCC)) # (!\a[12]~input_o\ & (!\sumalg_M|Add0~25\)))) # (!\sumalg_M|bb\(12) & ((\a[12]~input_o\ & (!\sumalg_M|Add0~25\)) # (!\a[12]~input_o\ & ((\sumalg_M|Add0~25\) 
-- # (GND)))))
-- \sumalg_M|Add0~27\ = CARRY((\sumalg_M|bb\(12) & (!\a[12]~input_o\ & !\sumalg_M|Add0~25\)) # (!\sumalg_M|bb\(12) & ((!\sumalg_M|Add0~25\) # (!\a[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|bb\(12),
	datab => \a[12]~input_o\,
	datad => VCC,
	cin => \sumalg_M|Add0~25\,
	combout => \sumalg_M|Add0~26_combout\,
	cout => \sumalg_M|Add0~27\);

-- Location: LCCOMB_X36_Y25_N10
\sumalg_M|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~28_combout\ = ((\sumalg_M|bb\(13) $ (\a[13]~input_o\ $ (!\sumalg_M|Add0~27\)))) # (GND)
-- \sumalg_M|Add0~29\ = CARRY((\sumalg_M|bb\(13) & ((\a[13]~input_o\) # (!\sumalg_M|Add0~27\))) # (!\sumalg_M|bb\(13) & (\a[13]~input_o\ & !\sumalg_M|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|bb\(13),
	datab => \a[13]~input_o\,
	datad => VCC,
	cin => \sumalg_M|Add0~27\,
	combout => \sumalg_M|Add0~28_combout\,
	cout => \sumalg_M|Add0~29\);

-- Location: LCCOMB_X36_Y25_N12
\sumalg_M|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~30_combout\ = (\a[14]~input_o\ & ((\sumalg_M|bb\(14) & (\sumalg_M|Add0~29\ & VCC)) # (!\sumalg_M|bb\(14) & (!\sumalg_M|Add0~29\)))) # (!\a[14]~input_o\ & ((\sumalg_M|bb\(14) & (!\sumalg_M|Add0~29\)) # (!\sumalg_M|bb\(14) & 
-- ((\sumalg_M|Add0~29\) # (GND)))))
-- \sumalg_M|Add0~31\ = CARRY((\a[14]~input_o\ & (!\sumalg_M|bb\(14) & !\sumalg_M|Add0~29\)) # (!\a[14]~input_o\ & ((!\sumalg_M|Add0~29\) # (!\sumalg_M|bb\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[14]~input_o\,
	datab => \sumalg_M|bb\(14),
	datad => VCC,
	cin => \sumalg_M|Add0~29\,
	combout => \sumalg_M|Add0~30_combout\,
	cout => \sumalg_M|Add0~31\);

-- Location: LCCOMB_X36_Y25_N14
\sumalg_M|Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~32_combout\ = ((\a[15]~input_o\ $ (\sumalg_M|bb\(15) $ (!\sumalg_M|Add0~31\)))) # (GND)
-- \sumalg_M|Add0~33\ = CARRY((\a[15]~input_o\ & ((\sumalg_M|bb\(15)) # (!\sumalg_M|Add0~31\))) # (!\a[15]~input_o\ & (\sumalg_M|bb\(15) & !\sumalg_M|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \sumalg_M|bb\(15),
	datad => VCC,
	cin => \sumalg_M|Add0~31\,
	combout => \sumalg_M|Add0~32_combout\,
	cout => \sumalg_M|Add0~33\);

-- Location: LCCOMB_X36_Y25_N16
\sumalg_M|Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~34_combout\ = (\a[16]~input_o\ & ((\sumalg_M|bb\(16) & (\sumalg_M|Add0~33\ & VCC)) # (!\sumalg_M|bb\(16) & (!\sumalg_M|Add0~33\)))) # (!\a[16]~input_o\ & ((\sumalg_M|bb\(16) & (!\sumalg_M|Add0~33\)) # (!\sumalg_M|bb\(16) & 
-- ((\sumalg_M|Add0~33\) # (GND)))))
-- \sumalg_M|Add0~35\ = CARRY((\a[16]~input_o\ & (!\sumalg_M|bb\(16) & !\sumalg_M|Add0~33\)) # (!\a[16]~input_o\ & ((!\sumalg_M|Add0~33\) # (!\sumalg_M|bb\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[16]~input_o\,
	datab => \sumalg_M|bb\(16),
	datad => VCC,
	cin => \sumalg_M|Add0~33\,
	combout => \sumalg_M|Add0~34_combout\,
	cout => \sumalg_M|Add0~35\);

-- Location: LCCOMB_X36_Y25_N18
\sumalg_M|Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~36_combout\ = ((\a[17]~input_o\ $ (\sumalg_M|bb\(17) $ (!\sumalg_M|Add0~35\)))) # (GND)
-- \sumalg_M|Add0~37\ = CARRY((\a[17]~input_o\ & ((\sumalg_M|bb\(17)) # (!\sumalg_M|Add0~35\))) # (!\a[17]~input_o\ & (\sumalg_M|bb\(17) & !\sumalg_M|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[17]~input_o\,
	datab => \sumalg_M|bb\(17),
	datad => VCC,
	cin => \sumalg_M|Add0~35\,
	combout => \sumalg_M|Add0~36_combout\,
	cout => \sumalg_M|Add0~37\);

-- Location: LCCOMB_X36_Y25_N20
\sumalg_M|Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~38_combout\ = (\sumalg_M|bb\(18) & ((\a[18]~input_o\ & (\sumalg_M|Add0~37\ & VCC)) # (!\a[18]~input_o\ & (!\sumalg_M|Add0~37\)))) # (!\sumalg_M|bb\(18) & ((\a[18]~input_o\ & (!\sumalg_M|Add0~37\)) # (!\a[18]~input_o\ & ((\sumalg_M|Add0~37\) 
-- # (GND)))))
-- \sumalg_M|Add0~39\ = CARRY((\sumalg_M|bb\(18) & (!\a[18]~input_o\ & !\sumalg_M|Add0~37\)) # (!\sumalg_M|bb\(18) & ((!\sumalg_M|Add0~37\) # (!\a[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|bb\(18),
	datab => \a[18]~input_o\,
	datad => VCC,
	cin => \sumalg_M|Add0~37\,
	combout => \sumalg_M|Add0~38_combout\,
	cout => \sumalg_M|Add0~39\);

-- Location: LCCOMB_X36_Y25_N22
\sumalg_M|Add0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~40_combout\ = ((\sumalg_M|bb\(19) $ (\a[19]~input_o\ $ (!\sumalg_M|Add0~39\)))) # (GND)
-- \sumalg_M|Add0~41\ = CARRY((\sumalg_M|bb\(19) & ((\a[19]~input_o\) # (!\sumalg_M|Add0~39\))) # (!\sumalg_M|bb\(19) & (\a[19]~input_o\ & !\sumalg_M|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|bb\(19),
	datab => \a[19]~input_o\,
	datad => VCC,
	cin => \sumalg_M|Add0~39\,
	combout => \sumalg_M|Add0~40_combout\,
	cout => \sumalg_M|Add0~41\);

-- Location: LCCOMB_X36_Y25_N24
\sumalg_M|Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~42_combout\ = (\sumalg_M|bb\(20) & ((\a[20]~input_o\ & (\sumalg_M|Add0~41\ & VCC)) # (!\a[20]~input_o\ & (!\sumalg_M|Add0~41\)))) # (!\sumalg_M|bb\(20) & ((\a[20]~input_o\ & (!\sumalg_M|Add0~41\)) # (!\a[20]~input_o\ & ((\sumalg_M|Add0~41\) 
-- # (GND)))))
-- \sumalg_M|Add0~43\ = CARRY((\sumalg_M|bb\(20) & (!\a[20]~input_o\ & !\sumalg_M|Add0~41\)) # (!\sumalg_M|bb\(20) & ((!\sumalg_M|Add0~41\) # (!\a[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|bb\(20),
	datab => \a[20]~input_o\,
	datad => VCC,
	cin => \sumalg_M|Add0~41\,
	combout => \sumalg_M|Add0~42_combout\,
	cout => \sumalg_M|Add0~43\);

-- Location: LCCOMB_X36_Y25_N26
\sumalg_M|Add0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~44_combout\ = ((\sumalg_M|bb\(21) $ (\a[21]~input_o\ $ (!\sumalg_M|Add0~43\)))) # (GND)
-- \sumalg_M|Add0~45\ = CARRY((\sumalg_M|bb\(21) & ((\a[21]~input_o\) # (!\sumalg_M|Add0~43\))) # (!\sumalg_M|bb\(21) & (\a[21]~input_o\ & !\sumalg_M|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|bb\(21),
	datab => \a[21]~input_o\,
	datad => VCC,
	cin => \sumalg_M|Add0~43\,
	combout => \sumalg_M|Add0~44_combout\,
	cout => \sumalg_M|Add0~45\);

-- Location: LCCOMB_X36_Y25_N28
\sumalg_M|Add0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~46_combout\ = (\a[22]~input_o\ & ((\sumalg_M|bb\(22) & (\sumalg_M|Add0~45\ & VCC)) # (!\sumalg_M|bb\(22) & (!\sumalg_M|Add0~45\)))) # (!\a[22]~input_o\ & ((\sumalg_M|bb\(22) & (!\sumalg_M|Add0~45\)) # (!\sumalg_M|bb\(22) & 
-- ((\sumalg_M|Add0~45\) # (GND)))))
-- \sumalg_M|Add0~47\ = CARRY((\a[22]~input_o\ & (!\sumalg_M|bb\(22) & !\sumalg_M|Add0~45\)) # (!\a[22]~input_o\ & ((!\sumalg_M|Add0~45\) # (!\sumalg_M|bb\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[22]~input_o\,
	datab => \sumalg_M|bb\(22),
	datad => VCC,
	cin => \sumalg_M|Add0~45\,
	combout => \sumalg_M|Add0~46_combout\,
	cout => \sumalg_M|Add0~47\);

-- Location: LCCOMB_X36_Y25_N30
\sumalg_M|Add0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~48_combout\ = ((\sumalg_M|bb\(23) $ (\a[23]~input_o\ $ (!\sumalg_M|Add0~47\)))) # (GND)
-- \sumalg_M|Add0~49\ = CARRY((\sumalg_M|bb\(23) & ((\a[23]~input_o\) # (!\sumalg_M|Add0~47\))) # (!\sumalg_M|bb\(23) & (\a[23]~input_o\ & !\sumalg_M|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|bb\(23),
	datab => \a[23]~input_o\,
	datad => VCC,
	cin => \sumalg_M|Add0~47\,
	combout => \sumalg_M|Add0~48_combout\,
	cout => \sumalg_M|Add0~49\);

-- Location: LCCOMB_X36_Y24_N0
\sumalg_M|Add0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~50_combout\ = (\a[24]~input_o\ & ((\sumalg_M|bb\(24) & (\sumalg_M|Add0~49\ & VCC)) # (!\sumalg_M|bb\(24) & (!\sumalg_M|Add0~49\)))) # (!\a[24]~input_o\ & ((\sumalg_M|bb\(24) & (!\sumalg_M|Add0~49\)) # (!\sumalg_M|bb\(24) & 
-- ((\sumalg_M|Add0~49\) # (GND)))))
-- \sumalg_M|Add0~51\ = CARRY((\a[24]~input_o\ & (!\sumalg_M|bb\(24) & !\sumalg_M|Add0~49\)) # (!\a[24]~input_o\ & ((!\sumalg_M|Add0~49\) # (!\sumalg_M|bb\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[24]~input_o\,
	datab => \sumalg_M|bb\(24),
	datad => VCC,
	cin => \sumalg_M|Add0~49\,
	combout => \sumalg_M|Add0~50_combout\,
	cout => \sumalg_M|Add0~51\);

-- Location: LCCOMB_X36_Y24_N2
\sumalg_M|Add0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~52_combout\ = ((\a[25]~input_o\ $ (\sumalg_M|bb\(25) $ (!\sumalg_M|Add0~51\)))) # (GND)
-- \sumalg_M|Add0~53\ = CARRY((\a[25]~input_o\ & ((\sumalg_M|bb\(25)) # (!\sumalg_M|Add0~51\))) # (!\a[25]~input_o\ & (\sumalg_M|bb\(25) & !\sumalg_M|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[25]~input_o\,
	datab => \sumalg_M|bb\(25),
	datad => VCC,
	cin => \sumalg_M|Add0~51\,
	combout => \sumalg_M|Add0~52_combout\,
	cout => \sumalg_M|Add0~53\);

-- Location: LCCOMB_X36_Y24_N4
\sumalg_M|Add0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~54_combout\ = (\sumalg_M|bb\(26) & ((\a[26]~input_o\ & (\sumalg_M|Add0~53\ & VCC)) # (!\a[26]~input_o\ & (!\sumalg_M|Add0~53\)))) # (!\sumalg_M|bb\(26) & ((\a[26]~input_o\ & (!\sumalg_M|Add0~53\)) # (!\a[26]~input_o\ & ((\sumalg_M|Add0~53\) 
-- # (GND)))))
-- \sumalg_M|Add0~55\ = CARRY((\sumalg_M|bb\(26) & (!\a[26]~input_o\ & !\sumalg_M|Add0~53\)) # (!\sumalg_M|bb\(26) & ((!\sumalg_M|Add0~53\) # (!\a[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|bb\(26),
	datab => \a[26]~input_o\,
	datad => VCC,
	cin => \sumalg_M|Add0~53\,
	combout => \sumalg_M|Add0~54_combout\,
	cout => \sumalg_M|Add0~55\);

-- Location: LCCOMB_X36_Y24_N6
\sumalg_M|Add0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~56_combout\ = ((\a[27]~input_o\ $ (\sumalg_M|bb\(27) $ (!\sumalg_M|Add0~55\)))) # (GND)
-- \sumalg_M|Add0~57\ = CARRY((\a[27]~input_o\ & ((\sumalg_M|bb\(27)) # (!\sumalg_M|Add0~55\))) # (!\a[27]~input_o\ & (\sumalg_M|bb\(27) & !\sumalg_M|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[27]~input_o\,
	datab => \sumalg_M|bb\(27),
	datad => VCC,
	cin => \sumalg_M|Add0~55\,
	combout => \sumalg_M|Add0~56_combout\,
	cout => \sumalg_M|Add0~57\);

-- Location: LCCOMB_X36_Y24_N8
\sumalg_M|Add0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~58_combout\ = (\sumalg_M|bb\(28) & ((\a[28]~input_o\ & (\sumalg_M|Add0~57\ & VCC)) # (!\a[28]~input_o\ & (!\sumalg_M|Add0~57\)))) # (!\sumalg_M|bb\(28) & ((\a[28]~input_o\ & (!\sumalg_M|Add0~57\)) # (!\a[28]~input_o\ & ((\sumalg_M|Add0~57\) 
-- # (GND)))))
-- \sumalg_M|Add0~59\ = CARRY((\sumalg_M|bb\(28) & (!\a[28]~input_o\ & !\sumalg_M|Add0~57\)) # (!\sumalg_M|bb\(28) & ((!\sumalg_M|Add0~57\) # (!\a[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|bb\(28),
	datab => \a[28]~input_o\,
	datad => VCC,
	cin => \sumalg_M|Add0~57\,
	combout => \sumalg_M|Add0~58_combout\,
	cout => \sumalg_M|Add0~59\);

-- Location: LCCOMB_X36_Y24_N10
\sumalg_M|Add0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~60_combout\ = ((\a[29]~input_o\ $ (\sumalg_M|bb\(29) $ (!\sumalg_M|Add0~59\)))) # (GND)
-- \sumalg_M|Add0~61\ = CARRY((\a[29]~input_o\ & ((\sumalg_M|bb\(29)) # (!\sumalg_M|Add0~59\))) # (!\a[29]~input_o\ & (\sumalg_M|bb\(29) & !\sumalg_M|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[29]~input_o\,
	datab => \sumalg_M|bb\(29),
	datad => VCC,
	cin => \sumalg_M|Add0~59\,
	combout => \sumalg_M|Add0~60_combout\,
	cout => \sumalg_M|Add0~61\);

-- Location: LCCOMB_X36_Y24_N12
\sumalg_M|Add0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~62_combout\ = (\a[30]~input_o\ & ((\sumalg_M|bb\(30) & (\sumalg_M|Add0~61\ & VCC)) # (!\sumalg_M|bb\(30) & (!\sumalg_M|Add0~61\)))) # (!\a[30]~input_o\ & ((\sumalg_M|bb\(30) & (!\sumalg_M|Add0~61\)) # (!\sumalg_M|bb\(30) & 
-- ((\sumalg_M|Add0~61\) # (GND)))))
-- \sumalg_M|Add0~63\ = CARRY((\a[30]~input_o\ & (!\sumalg_M|bb\(30) & !\sumalg_M|Add0~61\)) # (!\a[30]~input_o\ & ((!\sumalg_M|Add0~61\) # (!\sumalg_M|bb\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[30]~input_o\,
	datab => \sumalg_M|bb\(30),
	datad => VCC,
	cin => \sumalg_M|Add0~61\,
	combout => \sumalg_M|Add0~62_combout\,
	cout => \sumalg_M|Add0~63\);

-- Location: LCCOMB_X36_Y24_N14
\sumalg_M|Add0~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~64_combout\ = ((\sumalg_M|bb\(31) $ (\a[31]~input_o\ $ (!\sumalg_M|Add0~63\)))) # (GND)
-- \sumalg_M|Add0~65\ = CARRY((\sumalg_M|bb\(31) & ((\a[31]~input_o\) # (!\sumalg_M|Add0~63\))) # (!\sumalg_M|bb\(31) & (\a[31]~input_o\ & !\sumalg_M|Add0~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|bb\(31),
	datab => \a[31]~input_o\,
	datad => VCC,
	cin => \sumalg_M|Add0~63\,
	combout => \sumalg_M|Add0~64_combout\,
	cout => \sumalg_M|Add0~65\);

-- Location: LCCOMB_X36_Y24_N16
\sumalg_M|Add0~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sumalg_M|Add0~66_combout\ = \sumalg_M|Mux0~1_combout\ $ (\sumalg_M|Add0~65\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|Mux0~1_combout\,
	cin => \sumalg_M|Add0~65\,
	combout => \sumalg_M|Add0~66_combout\);

-- Location: LCCOMB_X35_Y21_N10
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\opALU[3]~input_o\ & ((\opALU[1]~input_o\) # (\opALU[0]~input_o\ $ (\opALU[2]~input_o\)))) # (!\opALU[3]~input_o\ & (\opALU[1]~input_o\ & ((!\opALU[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[3]~input_o\,
	datab => \opALU[1]~input_o\,
	datac => \opALU[0]~input_o\,
	datad => \opALU[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X34_Y24_N22
\mux_final|Selector31~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector31~3_combout\ = (\opALU[4]~input_o\ & ((\Mux1~0_combout\ & (\sumalg_M|Add0~66_combout\)) # (!\Mux1~0_combout\ & ((\sumalg_M|Add0~2_combout\))))) # (!\opALU[4]~input_o\ & (\sumalg_M|Add0~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|Add0~66_combout\,
	datab => \sumalg_M|Add0~2_combout\,
	datac => \opALU[4]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \mux_final|Selector31~3_combout\);

-- Location: LCCOMB_X32_Y23_N16
\despla_M|Mux31~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux31~9_combout\ = (!\opALU[3]~input_o\ & \opALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[3]~input_o\,
	datac => \opALU[2]~input_o\,
	combout => \despla_M|Mux31~9_combout\);

-- Location: LCCOMB_X32_Y23_N18
\mux_final|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector2~0_combout\ = (\opALU[3]~input_o\) # (\opALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[3]~input_o\,
	datac => \opALU[2]~input_o\,
	combout => \mux_final|Selector2~0_combout\);

-- Location: LCCOMB_X35_Y21_N8
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\opALU[1]~input_o\ & (\opALU[0]~input_o\ & ((\opALU[2]~input_o\) # (!\opALU[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[3]~input_o\,
	datab => \opALU[1]~input_o\,
	datac => \opALU[0]~input_o\,
	datad => \opALU[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X32_Y25_N16
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!\opALU[4]~input_o\) # (!\Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datad => \opALU[4]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X34_Y22_N10
\mux_des_log|Selector30~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_des_log|Selector30~2_combout\ = (!\opALU[1]~input_o\ & (\opALU[2]~input_o\ & \opALU[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[1]~input_o\,
	datab => \opALU[2]~input_o\,
	datad => \opALU[0]~input_o\,
	combout => \mux_des_log|Selector30~2_combout\);

-- Location: LCCOMB_X31_Y22_N24
\mux_des_log|Selector31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_des_log|Selector31~0_combout\ = (\Mux0~1_combout\ & (\despla_M|Mux31~9_combout\)) # (!\Mux0~1_combout\ & (((\mux_des_log|Selector30~2_combout\) # (!\mux_final|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|Mux31~9_combout\,
	datab => \mux_final|Selector2~0_combout\,
	datac => \Mux0~1_combout\,
	datad => \mux_des_log|Selector30~2_combout\,
	combout => \mux_des_log|Selector31~0_combout\);

-- Location: LCCOMB_X32_Y24_N8
\despla_M|ShiftRight0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~19_combout\ = (\b[1]~input_o\ & (\a[27]~input_o\)) # (!\b[1]~input_o\ & ((\a[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datac => \a[27]~input_o\,
	datad => \a[25]~input_o\,
	combout => \despla_M|ShiftRight0~19_combout\);

-- Location: LCCOMB_X32_Y24_N18
\despla_M|ShiftRight0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~20_combout\ = (\b[1]~input_o\ & (\a[26]~input_o\)) # (!\b[1]~input_o\ & ((\a[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[26]~input_o\,
	datac => \a[24]~input_o\,
	datad => \b[1]~input_o\,
	combout => \despla_M|ShiftRight0~20_combout\);

-- Location: LCCOMB_X32_Y24_N12
\despla_M|ShiftRight0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~21_combout\ = (\b[0]~input_o\ & (\despla_M|ShiftRight0~19_combout\)) # (!\b[0]~input_o\ & ((\despla_M|ShiftRight0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftRight0~19_combout\,
	datac => \b[0]~input_o\,
	datad => \despla_M|ShiftRight0~20_combout\,
	combout => \despla_M|ShiftRight0~21_combout\);

-- Location: LCCOMB_X32_Y22_N2
\despla_M|ShiftRight1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~6_combout\ = (\b[0]~input_o\ & ((\a[31]~input_o\))) # (!\b[0]~input_o\ & (\a[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[30]~input_o\,
	datab => \a[31]~input_o\,
	datac => \b[0]~input_o\,
	combout => \despla_M|ShiftRight1~6_combout\);

-- Location: LCCOMB_X32_Y22_N0
\despla_M|ShiftRight0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~17_combout\ = (!\b[1]~input_o\ & ((\b[0]~input_o\ & ((\a[29]~input_o\))) # (!\b[0]~input_o\ & (\a[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[28]~input_o\,
	datad => \a[29]~input_o\,
	combout => \despla_M|ShiftRight0~17_combout\);

-- Location: LCCOMB_X32_Y22_N20
\despla_M|ShiftRight0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~18_combout\ = (\despla_M|ShiftRight0~17_combout\) # ((\b[1]~input_o\ & \despla_M|ShiftRight1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datac => \despla_M|ShiftRight1~6_combout\,
	datad => \despla_M|ShiftRight0~17_combout\,
	combout => \despla_M|ShiftRight0~18_combout\);

-- Location: LCCOMB_X32_Y26_N0
\despla_M|ShiftRight0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~22_combout\ = (\b[3]~input_o\ & ((\b[2]~input_o\ & ((\despla_M|ShiftRight0~18_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftRight0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~21_combout\,
	datab => \despla_M|ShiftRight0~18_combout\,
	datac => \b[2]~input_o\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftRight0~22_combout\);

-- Location: LCCOMB_X30_Y25_N0
\despla_M|ShiftRight0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~27_combout\ = (\b[1]~input_o\ & ((\a[18]~input_o\))) # (!\b[1]~input_o\ & (\a[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[16]~input_o\,
	datac => \a[18]~input_o\,
	datad => \b[1]~input_o\,
	combout => \despla_M|ShiftRight0~27_combout\);

-- Location: LCCOMB_X30_Y26_N18
\despla_M|ShiftRight0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~26_combout\ = (\b[1]~input_o\ & ((\a[19]~input_o\))) # (!\b[1]~input_o\ & (\a[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[17]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[19]~input_o\,
	combout => \despla_M|ShiftRight0~26_combout\);

-- Location: LCCOMB_X30_Y26_N20
\despla_M|ShiftRight0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~28_combout\ = (\b[0]~input_o\ & ((\despla_M|ShiftRight0~26_combout\))) # (!\b[0]~input_o\ & (\despla_M|ShiftRight0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftRight0~27_combout\,
	datac => \b[0]~input_o\,
	datad => \despla_M|ShiftRight0~26_combout\,
	combout => \despla_M|ShiftRight0~28_combout\);

-- Location: LCCOMB_X35_Y27_N18
\despla_M|ShiftRight0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~24_combout\ = (\b[1]~input_o\ & ((\a[22]~input_o\))) # (!\b[1]~input_o\ & (\a[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[1]~input_o\,
	datac => \a[20]~input_o\,
	datad => \a[22]~input_o\,
	combout => \despla_M|ShiftRight0~24_combout\);

-- Location: LCCOMB_X35_Y27_N24
\despla_M|ShiftRight0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~23_combout\ = (\b[1]~input_o\ & (\a[23]~input_o\)) # (!\b[1]~input_o\ & ((\a[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[23]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[21]~input_o\,
	combout => \despla_M|ShiftRight0~23_combout\);

-- Location: LCCOMB_X30_Y26_N16
\despla_M|ShiftRight0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~25_combout\ = (\b[0]~input_o\ & ((\despla_M|ShiftRight0~23_combout\))) # (!\b[0]~input_o\ & (\despla_M|ShiftRight0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \despla_M|ShiftRight0~24_combout\,
	datac => \despla_M|ShiftRight0~23_combout\,
	combout => \despla_M|ShiftRight0~25_combout\);

-- Location: LCCOMB_X32_Y26_N2
\despla_M|ShiftRight0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~29_combout\ = (\b[2]~input_o\ & ((\despla_M|ShiftRight0~25_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftRight0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftRight0~28_combout\,
	datac => \b[2]~input_o\,
	datad => \despla_M|ShiftRight0~25_combout\,
	combout => \despla_M|ShiftRight0~29_combout\);

-- Location: LCCOMB_X32_Y26_N20
\despla_M|ShiftRight0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~30_combout\ = (\despla_M|ShiftRight0~22_combout\) # ((\despla_M|ShiftRight0~29_combout\ & !\b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftRight0~22_combout\,
	datac => \despla_M|ShiftRight0~29_combout\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftRight0~30_combout\);

-- Location: LCCOMB_X36_Y26_N0
\despla_M|Mux31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux31~1_combout\ = (!\b[1]~input_o\ & ((\b[0]~input_o\ & (\a[1]~input_o\)) # (!\b[0]~input_o\ & ((\a[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[0]~input_o\,
	datad => \b[0]~input_o\,
	combout => \despla_M|Mux31~1_combout\);

-- Location: LCCOMB_X30_Y23_N16
\despla_M|ShiftRight1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~4_combout\ = (\b[0]~input_o\ & (\a[3]~input_o\)) # (!\b[0]~input_o\ & ((\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datac => \a[2]~input_o\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftRight1~4_combout\);

-- Location: LCCOMB_X31_Y26_N24
\despla_M|Mux31~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux31~2_combout\ = (!\b[2]~input_o\ & ((\despla_M|Mux31~1_combout\) # ((\despla_M|ShiftRight1~4_combout\ & \b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \despla_M|Mux31~1_combout\,
	datac => \despla_M|ShiftRight1~4_combout\,
	datad => \b[1]~input_o\,
	combout => \despla_M|Mux31~2_combout\);

-- Location: LCCOMB_X29_Y26_N26
\despla_M|ShiftRight1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~5_combout\ = (\b[0]~input_o\ & (\a[5]~input_o\)) # (!\b[0]~input_o\ & ((\a[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[5]~input_o\,
	datac => \a[4]~input_o\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftRight1~5_combout\);

-- Location: LCCOMB_X29_Y26_N8
\despla_M|ShiftRight0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~8_combout\ = (\b[1]~input_o\ & ((\b[0]~input_o\ & ((\a[7]~input_o\))) # (!\b[0]~input_o\ & (\a[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \a[7]~input_o\,
	datac => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftRight0~8_combout\);

-- Location: LCCOMB_X29_Y26_N12
\despla_M|ShiftRight0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~9_combout\ = (\despla_M|ShiftRight0~8_combout\) # ((\despla_M|ShiftRight1~5_combout\ & !\b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~5_combout\,
	datab => \despla_M|ShiftRight0~8_combout\,
	datac => \b[1]~input_o\,
	combout => \despla_M|ShiftRight0~9_combout\);

-- Location: LCCOMB_X31_Y26_N26
\despla_M|Mux31~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux31~3_combout\ = (!\b[3]~input_o\ & ((\despla_M|Mux31~2_combout\) # ((\b[2]~input_o\ & \despla_M|ShiftRight0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \despla_M|Mux31~2_combout\,
	datac => \b[3]~input_o\,
	datad => \despla_M|ShiftRight0~9_combout\,
	combout => \despla_M|Mux31~3_combout\);

-- Location: LCCOMB_X34_Y24_N2
\despla_M|ShiftRight0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~14_combout\ = (\b[1]~input_o\ & (\a[10]~input_o\)) # (!\b[1]~input_o\ & ((\a[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datac => \a[10]~input_o\,
	datad => \a[8]~input_o\,
	combout => \despla_M|ShiftRight0~14_combout\);

-- Location: LCCOMB_X34_Y24_N24
\despla_M|ShiftRight0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~13_combout\ = (\b[1]~input_o\ & ((\a[11]~input_o\))) # (!\b[1]~input_o\ & (\a[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[9]~input_o\,
	datac => \a[11]~input_o\,
	datad => \b[1]~input_o\,
	combout => \despla_M|ShiftRight0~13_combout\);

-- Location: LCCOMB_X30_Y24_N26
\despla_M|ShiftRight0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~15_combout\ = (\b[0]~input_o\ & ((\despla_M|ShiftRight0~13_combout\))) # (!\b[0]~input_o\ & (\despla_M|ShiftRight0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~14_combout\,
	datac => \despla_M|ShiftRight0~13_combout\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftRight0~15_combout\);

-- Location: LCCOMB_X30_Y24_N16
\despla_M|ShiftRight0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~11_combout\ = (\b[1]~input_o\ & (\a[14]~input_o\)) # (!\b[1]~input_o\ & ((\a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datac => \a[14]~input_o\,
	datad => \a[12]~input_o\,
	combout => \despla_M|ShiftRight0~11_combout\);

-- Location: LCCOMB_X35_Y23_N0
\despla_M|ShiftRight0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~10_combout\ = (\b[1]~input_o\ & (\a[15]~input_o\)) # (!\b[1]~input_o\ & ((\a[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[13]~input_o\,
	combout => \despla_M|ShiftRight0~10_combout\);

-- Location: LCCOMB_X31_Y26_N4
\despla_M|ShiftRight0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~12_combout\ = (\b[0]~input_o\ & ((\despla_M|ShiftRight0~10_combout\))) # (!\b[0]~input_o\ & (\despla_M|ShiftRight0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~11_combout\,
	datac => \despla_M|ShiftRight0~10_combout\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftRight0~12_combout\);

-- Location: LCCOMB_X31_Y26_N6
\despla_M|ShiftRight0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~16_combout\ = (\b[2]~input_o\ & ((\despla_M|ShiftRight0~12_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftRight0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \despla_M|ShiftRight0~15_combout\,
	datac => \despla_M|ShiftRight0~12_combout\,
	combout => \despla_M|ShiftRight0~16_combout\);

-- Location: LCCOMB_X34_Y23_N18
\despla_M|Mux31~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux31~4_combout\ = (!\b[4]~input_o\ & ((\despla_M|Mux31~3_combout\) # ((\despla_M|ShiftRight0~16_combout\ & \b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \despla_M|Mux31~3_combout\,
	datac => \despla_M|ShiftRight0~16_combout\,
	datad => \b[3]~input_o\,
	combout => \despla_M|Mux31~4_combout\);

-- Location: LCCOMB_X34_Y23_N20
\despla_M|Mux31~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux31~5_combout\ = (\opALU[2]~input_o\ & ((\despla_M|Mux31~4_combout\) # ((\b[4]~input_o\ & \despla_M|ShiftRight0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \despla_M|ShiftRight0~30_combout\,
	datac => \opALU[2]~input_o\,
	datad => \despla_M|Mux31~4_combout\,
	combout => \despla_M|Mux31~5_combout\);

-- Location: LCCOMB_X30_Y23_N26
\despla_M|ShiftLeft0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~4_combout\ = (\b[2]~input_o\) # ((\b[1]~input_o\) # (\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datac => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X34_Y23_N30
\despla_M|ShiftLeft0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~5_combout\ = (\b[4]~input_o\) # ((\despla_M|ShiftLeft0~4_combout\) # (\b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \despla_M|ShiftLeft0~4_combout\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftLeft0~5_combout\);

-- Location: LCCOMB_X34_Y22_N0
\despla_M|Mux31~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux31~6_combout\ = (!\opALU[1]~input_o\ & \opALU[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[1]~input_o\,
	datad => \opALU[0]~input_o\,
	combout => \despla_M|Mux31~6_combout\);

-- Location: LCCOMB_X34_Y23_N8
\despla_M|Mux31~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux31~7_combout\ = (!\opALU[2]~input_o\ & (\a[0]~input_o\ & ((!\despla_M|Mux31~6_combout\) # (!\despla_M|ShiftLeft0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[2]~input_o\,
	datab => \a[0]~input_o\,
	datac => \despla_M|ShiftLeft0~5_combout\,
	datad => \despla_M|Mux31~6_combout\,
	combout => \despla_M|Mux31~7_combout\);

-- Location: LCCOMB_X34_Y23_N24
\despla_M|Mux31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux31~0_combout\ = (\b[0]~input_o\ & ((\a[0]~input_o\ & ((\opALU[1]~input_o\) # (\opALU[0]~input_o\))) # (!\a[0]~input_o\ & ((!\opALU[0]~input_o\))))) # (!\b[0]~input_o\ & (\a[0]~input_o\ & ((!\opALU[0]~input_o\) # (!\opALU[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \opALU[1]~input_o\,
	datad => \opALU[0]~input_o\,
	combout => \despla_M|Mux31~0_combout\);

-- Location: LCCOMB_X34_Y23_N2
\despla_M|Mux31~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux31~8_combout\ = (\Mux0~1_combout\ & (((\despla_M|Mux31~0_combout\)))) # (!\Mux0~1_combout\ & ((\despla_M|Mux31~5_combout\) # ((\despla_M|Mux31~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \despla_M|Mux31~5_combout\,
	datac => \despla_M|Mux31~7_combout\,
	datad => \despla_M|Mux31~0_combout\,
	combout => \despla_M|Mux31~8_combout\);

-- Location: LCCOMB_X34_Y24_N20
\mux_final|Selector31~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector31~2_combout\ = (\mux_des_log|Selector31~0_combout\ & ((\opALU[4]~input_o\ & ((\despla_M|Mux31~8_combout\))) # (!\opALU[4]~input_o\ & (\a[0]~input_o\)))) # (!\mux_des_log|Selector31~0_combout\ & (\a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_des_log|Selector31~0_combout\,
	datab => \a[0]~input_o\,
	datac => \opALU[4]~input_o\,
	datad => \despla_M|Mux31~8_combout\,
	combout => \mux_final|Selector31~2_combout\);

-- Location: LCCOMB_X35_Y22_N28
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\opALU[3]~input_o\ & (\opALU[2]~input_o\ & (\opALU[0]~input_o\ & !\opALU[1]~input_o\))) # (!\opALU[3]~input_o\ & ((\opALU[2]~input_o\) # ((\opALU[0]~input_o\ & !\opALU[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[3]~input_o\,
	datab => \opALU[2]~input_o\,
	datac => \opALU[0]~input_o\,
	datad => \opALU[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X34_Y24_N18
\mux_final|Selector31~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector31~4_combout\ = (\opALU[4]~input_o\ & ((\Mux2~0_combout\ & ((\mux_final|Selector31~2_combout\))) # (!\Mux2~0_combout\ & (\mux_final|Selector31~3_combout\)))) # (!\opALU[4]~input_o\ & (\mux_final|Selector31~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector31~3_combout\,
	datab => \mux_final|Selector31~2_combout\,
	datac => \opALU[4]~input_o\,
	datad => \Mux2~0_combout\,
	combout => \mux_final|Selector31~4_combout\);

-- Location: LCCOMB_X35_Y27_N12
\despla_M|ShiftRight1~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~15_combout\ = (\b[1]~input_o\ & (\a[24]~input_o\)) # (!\b[1]~input_o\ & ((\a[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[24]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[22]~input_o\,
	combout => \despla_M|ShiftRight1~15_combout\);

-- Location: LCCOMB_X30_Y26_N6
\despla_M|ShiftRight0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~36_combout\ = (\b[0]~input_o\ & (\despla_M|ShiftRight1~15_combout\)) # (!\b[0]~input_o\ & ((\despla_M|ShiftRight0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \despla_M|ShiftRight1~15_combout\,
	datac => \despla_M|ShiftRight0~23_combout\,
	combout => \despla_M|ShiftRight0~36_combout\);

-- Location: LCCOMB_X30_Y25_N14
\despla_M|ShiftRight1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~16_combout\ = (\b[1]~input_o\ & (\a[20]~input_o\)) # (!\b[1]~input_o\ & ((\a[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[20]~input_o\,
	datac => \a[18]~input_o\,
	datad => \b[1]~input_o\,
	combout => \despla_M|ShiftRight1~16_combout\);

-- Location: LCCOMB_X30_Y26_N8
\despla_M|ShiftRight0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~37_combout\ = (\b[0]~input_o\ & ((\despla_M|ShiftRight1~16_combout\))) # (!\b[0]~input_o\ & (\despla_M|ShiftRight0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \despla_M|ShiftRight0~26_combout\,
	datac => \despla_M|ShiftRight1~16_combout\,
	combout => \despla_M|ShiftRight0~37_combout\);

-- Location: LCCOMB_X31_Y22_N0
\despla_M|ShiftRight0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~38_combout\ = (\b[2]~input_o\ & (\despla_M|ShiftRight0~36_combout\)) # (!\b[2]~input_o\ & ((\despla_M|ShiftRight0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~36_combout\,
	datab => \b[2]~input_o\,
	datad => \despla_M|ShiftRight0~37_combout\,
	combout => \despla_M|ShiftRight0~38_combout\);

-- Location: LCCOMB_X32_Y24_N6
\despla_M|ShiftRight1~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~17_combout\ = (\b[1]~input_o\ & ((\a[28]~input_o\))) # (!\b[1]~input_o\ & (\a[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[26]~input_o\,
	datac => \a[28]~input_o\,
	datad => \b[1]~input_o\,
	combout => \despla_M|ShiftRight1~17_combout\);

-- Location: LCCOMB_X32_Y24_N16
\despla_M|ShiftRight1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~18_combout\ = (!\b[2]~input_o\ & ((\b[0]~input_o\ & ((\despla_M|ShiftRight1~17_combout\))) # (!\b[0]~input_o\ & (\despla_M|ShiftRight0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \despla_M|ShiftRight0~19_combout\,
	datac => \b[0]~input_o\,
	datad => \despla_M|ShiftRight1~17_combout\,
	combout => \despla_M|ShiftRight1~18_combout\);

-- Location: LCCOMB_X30_Y26_N10
\despla_M|ShiftRight1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~20_combout\ = (\b[0]~input_o\ & (\a[30]~input_o\)) # (!\b[0]~input_o\ & ((\a[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[30]~input_o\,
	datac => \b[0]~input_o\,
	datad => \a[29]~input_o\,
	combout => \despla_M|ShiftRight1~20_combout\);

-- Location: LCCOMB_X29_Y23_N22
\despla_M|ShiftRight0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~39_combout\ = (\b[2]~input_o\ & ((\b[1]~input_o\ & ((\a[31]~input_o\))) # (!\b[1]~input_o\ & (\despla_M|ShiftRight1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \b[2]~input_o\,
	datac => \despla_M|ShiftRight1~20_combout\,
	datad => \a[31]~input_o\,
	combout => \despla_M|ShiftRight0~39_combout\);

-- Location: LCCOMB_X32_Y25_N10
\despla_M|ShiftRight0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~40_combout\ = (\b[3]~input_o\ & (((\despla_M|ShiftRight1~18_combout\) # (\despla_M|ShiftRight0~39_combout\)))) # (!\b[3]~input_o\ & (\despla_M|ShiftRight0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~38_combout\,
	datab => \despla_M|ShiftRight1~18_combout\,
	datac => \despla_M|ShiftRight0~39_combout\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftRight0~40_combout\);

-- Location: LCCOMB_X30_Y23_N30
\despla_M|ShiftRight1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~8_combout\ = (\b[0]~input_o\ & ((\a[4]~input_o\))) # (!\b[0]~input_o\ & (\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datac => \a[4]~input_o\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftRight1~8_combout\);

-- Location: LCCOMB_X30_Y23_N20
\despla_M|ShiftRight1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~7_combout\ = (!\b[1]~input_o\ & ((\b[0]~input_o\ & (\a[2]~input_o\)) # (!\b[0]~input_o\ & ((\a[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[2]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[1]~input_o\,
	combout => \despla_M|ShiftRight1~7_combout\);

-- Location: LCCOMB_X30_Y23_N8
\despla_M|ShiftRight1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~9_combout\ = (!\b[2]~input_o\ & ((\despla_M|ShiftRight1~7_combout\) # ((\despla_M|ShiftRight1~8_combout\ & \b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~8_combout\,
	datab => \despla_M|ShiftRight1~7_combout\,
	datac => \b[1]~input_o\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftRight1~9_combout\);

-- Location: LCCOMB_X29_Y26_N30
\despla_M|ShiftRight0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~31_combout\ = (\b[1]~input_o\ & ((\b[0]~input_o\ & (\a[8]~input_o\)) # (!\b[0]~input_o\ & ((\a[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[8]~input_o\,
	datac => \a[7]~input_o\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftRight0~31_combout\);

-- Location: LCCOMB_X29_Y26_N24
\despla_M|ShiftRight1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~10_combout\ = (\b[0]~input_o\ & ((\a[6]~input_o\))) # (!\b[0]~input_o\ & (\a[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[5]~input_o\,
	datac => \a[6]~input_o\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftRight1~10_combout\);

-- Location: LCCOMB_X29_Y26_N18
\despla_M|ShiftRight0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~32_combout\ = (\despla_M|ShiftRight0~31_combout\) # ((!\b[1]~input_o\ & \despla_M|ShiftRight1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~31_combout\,
	datac => \b[1]~input_o\,
	datad => \despla_M|ShiftRight1~10_combout\,
	combout => \despla_M|ShiftRight0~32_combout\);

-- Location: LCCOMB_X31_Y22_N26
\despla_M|ShiftRight1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~11_combout\ = (!\b[3]~input_o\ & ((\despla_M|ShiftRight1~9_combout\) # ((\despla_M|ShiftRight0~32_combout\ & \b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~9_combout\,
	datab => \b[3]~input_o\,
	datac => \despla_M|ShiftRight0~32_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftRight1~11_combout\);

-- Location: LCCOMB_X30_Y24_N20
\despla_M|ShiftRight1~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~13_combout\ = (\b[1]~input_o\ & ((\a[12]~input_o\))) # (!\b[1]~input_o\ & (\a[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[10]~input_o\,
	datad => \a[12]~input_o\,
	combout => \despla_M|ShiftRight1~13_combout\);

-- Location: LCCOMB_X30_Y24_N14
\despla_M|ShiftRight0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~34_combout\ = (\b[0]~input_o\ & (\despla_M|ShiftRight1~13_combout\)) # (!\b[0]~input_o\ & ((\despla_M|ShiftRight0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftRight1~13_combout\,
	datac => \despla_M|ShiftRight0~13_combout\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftRight0~34_combout\);

-- Location: LCCOMB_X30_Y25_N2
\despla_M|ShiftRight1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~12_combout\ = (\b[1]~input_o\ & (\a[16]~input_o\)) # (!\b[1]~input_o\ & ((\a[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[16]~input_o\,
	datab => \a[14]~input_o\,
	datad => \b[1]~input_o\,
	combout => \despla_M|ShiftRight1~12_combout\);

-- Location: LCCOMB_X30_Y25_N20
\despla_M|ShiftRight0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~33_combout\ = (\b[0]~input_o\ & (\despla_M|ShiftRight1~12_combout\)) # (!\b[0]~input_o\ & ((\despla_M|ShiftRight0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftRight1~12_combout\,
	datac => \despla_M|ShiftRight0~10_combout\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftRight0~33_combout\);

-- Location: LCCOMB_X31_Y22_N28
\despla_M|ShiftRight0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~35_combout\ = (\b[2]~input_o\ & ((\despla_M|ShiftRight0~33_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftRight0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \despla_M|ShiftRight0~34_combout\,
	datad => \despla_M|ShiftRight0~33_combout\,
	combout => \despla_M|ShiftRight0~35_combout\);

-- Location: LCCOMB_X31_Y22_N30
\despla_M|ShiftRight1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~14_combout\ = (!\b[4]~input_o\ & ((\despla_M|ShiftRight1~11_combout\) # ((\despla_M|ShiftRight0~35_combout\ & \b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~11_combout\,
	datab => \despla_M|ShiftRight0~35_combout\,
	datac => \b[4]~input_o\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftRight1~14_combout\);

-- Location: LCCOMB_X34_Y22_N4
\mux_des_log|Selector30~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_des_log|Selector30~7_combout\ = (\mux_des_log|Selector30~2_combout\ & ((\despla_M|ShiftRight1~14_combout\) # ((\despla_M|ShiftRight0~40_combout\ & \b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~40_combout\,
	datab => \despla_M|ShiftRight1~14_combout\,
	datac => \b[4]~input_o\,
	datad => \mux_des_log|Selector30~2_combout\,
	combout => \mux_des_log|Selector30~7_combout\);

-- Location: LCCOMB_X34_Y22_N30
\mux_des_log|Selector30~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_des_log|Selector30~8_combout\ = (\opALU[3]~input_o\ & ((\mux_des_log|Selector30~7_combout\) # ((\a[1]~input_o\ & !\mux_des_log|Selector30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \mux_des_log|Selector30~7_combout\,
	datac => \opALU[3]~input_o\,
	datad => \mux_des_log|Selector30~2_combout\,
	combout => \mux_des_log|Selector30~8_combout\);

-- Location: LCCOMB_X27_Y25_N16
\mux_des_log|Selector30~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_des_log|Selector30~4_combout\ = (!\opALU[2]~input_o\ & !\b[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opALU[2]~input_o\,
	datad => \b[4]~input_o\,
	combout => \mux_des_log|Selector30~4_combout\);

-- Location: LCCOMB_X36_Y26_N12
\despla_M|ShiftLeft0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~6_combout\ = (\b[0]~input_o\ & ((\a[0]~input_o\))) # (!\b[0]~input_o\ & (\a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[1]~input_o\,
	datac => \a[0]~input_o\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X32_Y24_N20
\despla_M|ShiftLeft0~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~100_combout\ = (!\b[1]~input_o\ & (\despla_M|ShiftLeft0~6_combout\ & (!\b[2]~input_o\ & !\b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \despla_M|ShiftLeft0~6_combout\,
	datac => \b[2]~input_o\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftLeft0~100_combout\);

-- Location: LCCOMB_X29_Y23_N8
\despla_M|ShiftRight1~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~19_combout\ = (!\b[0]~input_o\ & \a[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[0]~input_o\,
	datad => \a[31]~input_o\,
	combout => \despla_M|ShiftRight1~19_combout\);

-- Location: LCCOMB_X29_Y23_N26
\despla_M|ShiftRight1~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~21_combout\ = (\b[2]~input_o\ & ((\b[1]~input_o\ & ((\despla_M|ShiftRight1~19_combout\))) # (!\b[1]~input_o\ & (\despla_M|ShiftRight1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~20_combout\,
	datab => \b[2]~input_o\,
	datac => \b[1]~input_o\,
	datad => \despla_M|ShiftRight1~19_combout\,
	combout => \despla_M|ShiftRight1~21_combout\);

-- Location: LCCOMB_X29_Y23_N20
\despla_M|ShiftRight1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~22_combout\ = (\b[3]~input_o\ & (((\despla_M|ShiftRight1~18_combout\) # (\despla_M|ShiftRight1~21_combout\)))) # (!\b[3]~input_o\ & (\despla_M|ShiftRight0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \despla_M|ShiftRight0~38_combout\,
	datac => \despla_M|ShiftRight1~18_combout\,
	datad => \despla_M|ShiftRight1~21_combout\,
	combout => \despla_M|ShiftRight1~22_combout\);

-- Location: LCCOMB_X34_Y22_N22
\mux_des_log|Selector30~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_des_log|Selector30~3_combout\ = (\opALU[2]~input_o\ & ((\despla_M|ShiftRight1~14_combout\) # ((\despla_M|ShiftRight1~22_combout\ & \b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~22_combout\,
	datab => \opALU[2]~input_o\,
	datac => \b[4]~input_o\,
	datad => \despla_M|ShiftRight1~14_combout\,
	combout => \mux_des_log|Selector30~3_combout\);

-- Location: LCCOMB_X34_Y22_N8
\mux_des_log|Selector30~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_des_log|Selector30~5_combout\ = (\despla_M|Mux31~6_combout\ & ((\mux_des_log|Selector30~3_combout\) # ((\mux_des_log|Selector30~4_combout\ & \despla_M|ShiftLeft0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_des_log|Selector30~4_combout\,
	datab => \despla_M|ShiftLeft0~100_combout\,
	datac => \mux_des_log|Selector30~3_combout\,
	datad => \despla_M|Mux31~6_combout\,
	combout => \mux_des_log|Selector30~5_combout\);

-- Location: LCCOMB_X34_Y22_N26
\mux_des_log|Selector30~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_des_log|Selector30~6_combout\ = (!\opALU[3]~input_o\ & ((\mux_des_log|Selector30~5_combout\) # ((\a[1]~input_o\ & !\despla_M|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \despla_M|Mux31~6_combout\,
	datac => \opALU[3]~input_o\,
	datad => \mux_des_log|Selector30~5_combout\,
	combout => \mux_des_log|Selector30~6_combout\);

-- Location: LCCOMB_X34_Y22_N20
\despla_M|Mux30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux30~0_combout\ = (\a[1]~input_o\ & ((\opALU[0]~input_o\ & ((\b[1]~input_o\) # (!\opALU[1]~input_o\))) # (!\opALU[0]~input_o\ & ((\opALU[1]~input_o\) # (!\b[1]~input_o\))))) # (!\a[1]~input_o\ & (!\opALU[0]~input_o\ & ((\b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \opALU[0]~input_o\,
	datac => \opALU[1]~input_o\,
	datad => \b[1]~input_o\,
	combout => \despla_M|Mux30~0_combout\);

-- Location: LCCOMB_X34_Y22_N6
\mux_des_log|Selector30~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_des_log|Selector30~10_combout\ = (\opALU[3]~input_o\ & (((\a[1]~input_o\)))) # (!\opALU[3]~input_o\ & ((\opALU[2]~input_o\ & ((\despla_M|Mux30~0_combout\))) # (!\opALU[2]~input_o\ & (\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[3]~input_o\,
	datab => \opALU[2]~input_o\,
	datac => \a[1]~input_o\,
	datad => \despla_M|Mux30~0_combout\,
	combout => \mux_des_log|Selector30~10_combout\);

-- Location: LCCOMB_X34_Y22_N24
\mux_des_log|Selector30~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_des_log|Selector30~9_combout\ = (\Mux0~1_combout\ & (((\mux_des_log|Selector30~10_combout\)))) # (!\Mux0~1_combout\ & ((\mux_des_log|Selector30~8_combout\) # ((\mux_des_log|Selector30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_des_log|Selector30~8_combout\,
	datab => \Mux0~1_combout\,
	datac => \mux_des_log|Selector30~6_combout\,
	datad => \mux_des_log|Selector30~10_combout\,
	combout => \mux_des_log|Selector30~9_combout\);

-- Location: LCCOMB_X35_Y25_N12
\mux_final|Selector30~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector30~3_combout\ = (\Mux2~0_combout\ & (\mux_des_log|Selector30~9_combout\ & \opALU[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \mux_des_log|Selector30~9_combout\,
	datac => \opALU[4]~input_o\,
	combout => \mux_final|Selector30~3_combout\);

-- Location: LCCOMB_X35_Y25_N22
\mux_final|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector0~0_combout\ = (!\Mux1~0_combout\ & (\opALU[4]~input_o\ & !\Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \opALU[4]~input_o\,
	datac => \Mux2~0_combout\,
	combout => \mux_final|Selector0~0_combout\);

-- Location: LCCOMB_X35_Y25_N24
\mux_final|Selector30~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector30~2_combout\ = (\mux_final|Selector30~3_combout\) # ((\mux_final|Selector0~0_combout\ & \sumalg_M|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector30~3_combout\,
	datac => \mux_final|Selector0~0_combout\,
	datad => \sumalg_M|Add0~4_combout\,
	combout => \mux_final|Selector30~2_combout\);

-- Location: LCCOMB_X35_Y22_N0
\mux_final|Selector28~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector28~8_combout\ = (\opALU[1]~input_o\ & ((!\opALU[4]~input_o\) # (!\Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opALU[1]~input_o\,
	datac => \Mux0~0_combout\,
	datad => \opALU[4]~input_o\,
	combout => \mux_final|Selector28~8_combout\);

-- Location: LCCOMB_X35_Y22_N6
\mux_final|Selector28~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector28~7_combout\ = (\opALU[0]~input_o\ & (((!\opALU[4]~input_o\) # (!\Mux0~0_combout\)))) # (!\opALU[0]~input_o\ & (!\opALU[1]~input_o\ & ((!\opALU[4]~input_o\) # (!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[0]~input_o\,
	datab => \opALU[1]~input_o\,
	datac => \Mux0~0_combout\,
	datad => \opALU[4]~input_o\,
	combout => \mux_final|Selector28~7_combout\);

-- Location: LCCOMB_X31_Y26_N12
\mux_final|Selector29~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector29~9_combout\ = (\b[2]~input_o\ & ((\mux_final|Selector28~8_combout\ $ (!\a[2]~input_o\)) # (!\mux_final|Selector28~7_combout\))) # (!\b[2]~input_o\ & ((\mux_final|Selector28~8_combout\ & (!\mux_final|Selector28~7_combout\ & 
-- \a[2]~input_o\)) # (!\mux_final|Selector28~8_combout\ & ((\a[2]~input_o\) # (!\mux_final|Selector28~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \mux_final|Selector28~8_combout\,
	datac => \mux_final|Selector28~7_combout\,
	datad => \a[2]~input_o\,
	combout => \mux_final|Selector29~9_combout\);

-- Location: LCCOMB_X30_Y26_N22
\despla_M|ShiftRight1~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~29_combout\ = (\b[1]~input_o\ & (\a[21]~input_o\)) # (!\b[1]~input_o\ & ((\a[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[21]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[19]~input_o\,
	combout => \despla_M|ShiftRight1~29_combout\);

-- Location: LCCOMB_X30_Y26_N0
\despla_M|ShiftRight1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~30_combout\ = (\b[0]~input_o\ & ((\despla_M|ShiftRight1~29_combout\))) # (!\b[0]~input_o\ & (\despla_M|ShiftRight1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \despla_M|ShiftRight1~16_combout\,
	datac => \despla_M|ShiftRight1~29_combout\,
	combout => \despla_M|ShiftRight1~30_combout\);

-- Location: LCCOMB_X35_Y27_N14
\despla_M|ShiftRight1~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~27_combout\ = (\b[1]~input_o\ & ((\a[25]~input_o\))) # (!\b[1]~input_o\ & (\a[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[1]~input_o\,
	datac => \a[23]~input_o\,
	datad => \a[25]~input_o\,
	combout => \despla_M|ShiftRight1~27_combout\);

-- Location: LCCOMB_X35_Y27_N16
\despla_M|ShiftRight1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~28_combout\ = (\b[0]~input_o\ & (\despla_M|ShiftRight1~27_combout\)) # (!\b[0]~input_o\ & ((\despla_M|ShiftRight1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftRight1~27_combout\,
	datac => \b[0]~input_o\,
	datad => \despla_M|ShiftRight1~15_combout\,
	combout => \despla_M|ShiftRight1~28_combout\);

-- Location: LCCOMB_X31_Y24_N10
\despla_M|ShiftRight0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~41_combout\ = (\b[2]~input_o\ & ((\despla_M|ShiftRight1~28_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftRight1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \despla_M|ShiftRight1~30_combout\,
	datad => \despla_M|ShiftRight1~28_combout\,
	combout => \despla_M|ShiftRight0~41_combout\);

-- Location: LCCOMB_X30_Y26_N28
\despla_M|ShiftRight1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~24_combout\ = (\b[0]~input_o\ & ((\b[1]~input_o\ & ((\a[29]~input_o\))) # (!\b[1]~input_o\ & (\a[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[27]~input_o\,
	datad => \a[29]~input_o\,
	combout => \despla_M|ShiftRight1~24_combout\);

-- Location: LCCOMB_X32_Y24_N26
\despla_M|ShiftRight1~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~25_combout\ = (!\b[2]~input_o\ & ((\despla_M|ShiftRight1~24_combout\) # ((!\b[0]~input_o\ & \despla_M|ShiftRight1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \despla_M|ShiftRight1~24_combout\,
	datac => \b[0]~input_o\,
	datad => \despla_M|ShiftRight1~17_combout\,
	combout => \despla_M|ShiftRight1~25_combout\);

-- Location: LCCOMB_X31_Y24_N16
\despla_M|ShiftRight1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~26_combout\ = (\despla_M|ShiftRight1~25_combout\) # ((\despla_M|ShiftRight1~6_combout\ & (!\b[1]~input_o\ & \b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~6_combout\,
	datab => \despla_M|ShiftRight1~25_combout\,
	datac => \b[1]~input_o\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftRight1~26_combout\);

-- Location: LCCOMB_X31_Y24_N12
\despla_M|ShiftRight1~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~31_combout\ = (\b[3]~input_o\ & ((\despla_M|ShiftRight1~26_combout\))) # (!\b[3]~input_o\ & (\despla_M|ShiftRight0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~41_combout\,
	datab => \despla_M|ShiftRight1~26_combout\,
	datac => \b[3]~input_o\,
	combout => \despla_M|ShiftRight1~31_combout\);

-- Location: LCCOMB_X35_Y21_N4
\mux_final|Selector28~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector28~4_combout\ = ((\opALU[1]~input_o\) # ((\b[4]~input_o\) # (!\opALU[2]~input_o\))) # (!\opALU[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[0]~input_o\,
	datab => \opALU[1]~input_o\,
	datac => \opALU[2]~input_o\,
	datad => \b[4]~input_o\,
	combout => \mux_final|Selector28~4_combout\);

-- Location: LCCOMB_X32_Y23_N10
\mux_final|Selector28~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector28~19_combout\ = ((!\opALU[3]~input_o\ & \opALU[2]~input_o\)) # (!\mux_final|Selector28~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[3]~input_o\,
	datab => \mux_final|Selector28~4_combout\,
	datac => \opALU[2]~input_o\,
	combout => \mux_final|Selector28~19_combout\);

-- Location: LCCOMB_X31_Y23_N8
\mux_final|Selector28~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector28~10_combout\ = (\mux_final|Selector28~4_combout\ & !\opALU[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_final|Selector28~4_combout\,
	datad => \opALU[3]~input_o\,
	combout => \mux_final|Selector28~10_combout\);

-- Location: LCCOMB_X28_Y24_N8
\despla_M|ShiftLeft0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~9_combout\ = (!\b[1]~input_o\ & !\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	combout => \despla_M|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X31_Y24_N22
\despla_M|ShiftRight0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~42_combout\ = (\b[2]~input_o\ & ((\despla_M|ShiftLeft0~9_combout\ & (\a[30]~input_o\)) # (!\despla_M|ShiftLeft0~9_combout\ & ((\a[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~9_combout\,
	datab => \a[30]~input_o\,
	datac => \a[31]~input_o\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftRight0~42_combout\);

-- Location: LCCOMB_X31_Y24_N8
\despla_M|ShiftRight0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~43_combout\ = (\b[3]~input_o\ & (((\despla_M|ShiftRight1~25_combout\) # (\despla_M|ShiftRight0~42_combout\)))) # (!\b[3]~input_o\ & (\despla_M|ShiftRight0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~41_combout\,
	datab => \despla_M|ShiftRight1~25_combout\,
	datac => \b[3]~input_o\,
	datad => \despla_M|ShiftRight0~42_combout\,
	combout => \despla_M|ShiftRight0~43_combout\);

-- Location: LCCOMB_X29_Y26_N28
\despla_M|ShiftRight1~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~32_combout\ = (!\b[0]~input_o\ & ((\b[1]~input_o\ & ((\a[8]~input_o\))) # (!\b[1]~input_o\ & (\a[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \a[8]~input_o\,
	datac => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftRight1~32_combout\);

-- Location: LCCOMB_X29_Y26_N6
\despla_M|ShiftRight1~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~33_combout\ = (\b[1]~input_o\ & (\a[9]~input_o\)) # (!\b[1]~input_o\ & ((\a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[9]~input_o\,
	datab => \a[7]~input_o\,
	datac => \b[1]~input_o\,
	combout => \despla_M|ShiftRight1~33_combout\);

-- Location: LCCOMB_X30_Y24_N8
\despla_M|ShiftRight1~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~34_combout\ = (\despla_M|ShiftRight1~32_combout\) # ((\despla_M|ShiftRight1~33_combout\ & \b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftRight1~32_combout\,
	datac => \despla_M|ShiftRight1~33_combout\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftRight1~34_combout\);

-- Location: LCCOMB_X31_Y22_N10
\despla_M|ShiftRight1~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~23_combout\ = (!\b[2]~input_o\ & !\b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftRight1~23_combout\);

-- Location: LCCOMB_X31_Y24_N18
\mux_final|Selector28~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector28~9_combout\ = (\b[3]~input_o\) # ((!\b[2]~input_o\ & \b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[3]~input_o\,
	combout => \mux_final|Selector28~9_combout\);

-- Location: LCCOMB_X31_Y24_N28
\mux_final|Selector29~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector29~3_combout\ = (\despla_M|ShiftRight1~23_combout\ & (((\despla_M|ShiftRight1~4_combout\ & !\mux_final|Selector28~9_combout\)))) # (!\despla_M|ShiftRight1~23_combout\ & ((\despla_M|ShiftRight1~34_combout\) # 
-- ((\mux_final|Selector28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~34_combout\,
	datab => \despla_M|ShiftRight1~4_combout\,
	datac => \despla_M|ShiftRight1~23_combout\,
	datad => \mux_final|Selector28~9_combout\,
	combout => \mux_final|Selector29~3_combout\);

-- Location: LCCOMB_X30_Y25_N24
\despla_M|ShiftRight1~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~35_combout\ = (\b[1]~input_o\ & (\a[17]~input_o\)) # (!\b[1]~input_o\ & ((\a[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[17]~input_o\,
	datac => \a[15]~input_o\,
	datad => \b[1]~input_o\,
	combout => \despla_M|ShiftRight1~35_combout\);

-- Location: LCCOMB_X30_Y25_N10
\despla_M|ShiftRight1~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~36_combout\ = (\b[0]~input_o\ & (\despla_M|ShiftRight1~35_combout\)) # (!\b[0]~input_o\ & ((\despla_M|ShiftRight1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \despla_M|ShiftRight1~35_combout\,
	datad => \despla_M|ShiftRight1~12_combout\,
	combout => \despla_M|ShiftRight1~36_combout\);

-- Location: LCCOMB_X30_Y24_N10
\despla_M|ShiftRight1~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~37_combout\ = (\b[1]~input_o\ & (\a[13]~input_o\)) # (!\b[1]~input_o\ & ((\a[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datac => \a[11]~input_o\,
	datad => \b[1]~input_o\,
	combout => \despla_M|ShiftRight1~37_combout\);

-- Location: LCCOMB_X30_Y24_N12
\despla_M|ShiftRight1~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~38_combout\ = (\b[0]~input_o\ & ((\despla_M|ShiftRight1~37_combout\))) # (!\b[0]~input_o\ & (\despla_M|ShiftRight1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \despla_M|ShiftRight1~13_combout\,
	datad => \despla_M|ShiftRight1~37_combout\,
	combout => \despla_M|ShiftRight1~38_combout\);

-- Location: LCCOMB_X31_Y24_N14
\despla_M|ShiftRight0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~44_combout\ = (\b[2]~input_o\ & (\despla_M|ShiftRight1~36_combout\)) # (!\b[2]~input_o\ & ((\despla_M|ShiftRight1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftRight1~36_combout\,
	datac => \despla_M|ShiftRight1~38_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftRight0~44_combout\);

-- Location: LCCOMB_X31_Y24_N24
\mux_final|Selector29~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector29~4_combout\ = (\mux_final|Selector29~3_combout\ & (((\despla_M|ShiftRight0~44_combout\) # (!\mux_final|Selector28~9_combout\)))) # (!\mux_final|Selector29~3_combout\ & (\despla_M|ShiftRight1~5_combout\ & 
-- ((\mux_final|Selector28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~5_combout\,
	datab => \mux_final|Selector29~3_combout\,
	datac => \despla_M|ShiftRight0~44_combout\,
	datad => \mux_final|Selector28~9_combout\,
	combout => \mux_final|Selector29~4_combout\);

-- Location: LCCOMB_X31_Y24_N2
\mux_final|Selector29~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector29~5_combout\ = (\mux_final|Selector28~19_combout\ & ((\mux_final|Selector28~10_combout\) # ((\mux_final|Selector29~4_combout\)))) # (!\mux_final|Selector28~19_combout\ & (!\mux_final|Selector28~10_combout\ & 
-- (\despla_M|ShiftRight0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~19_combout\,
	datab => \mux_final|Selector28~10_combout\,
	datac => \despla_M|ShiftRight0~43_combout\,
	datad => \mux_final|Selector29~4_combout\,
	combout => \mux_final|Selector29~5_combout\);

-- Location: LCCOMB_X36_Y26_N8
\despla_M|ShiftLeft0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~7_combout\ = (!\b[0]~input_o\ & ((\b[1]~input_o\ & ((\a[0]~input_o\))) # (!\b[1]~input_o\ & (\a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \a[0]~input_o\,
	datac => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X36_Y26_N2
\despla_M|ShiftLeft0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~8_combout\ = (\despla_M|ShiftLeft0~7_combout\) # ((!\b[1]~input_o\ & (\a[1]~input_o\ & \b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[1]~input_o\,
	datac => \despla_M|ShiftLeft0~7_combout\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X29_Y25_N14
\despla_M|ShiftLeft0~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~101_combout\ = (\despla_M|ShiftLeft0~8_combout\ & (!\b[3]~input_o\ & !\b[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~8_combout\,
	datab => \b[3]~input_o\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftLeft0~101_combout\);

-- Location: LCCOMB_X32_Y23_N8
\mux_final|Selector28~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector28~18_combout\ = (!\opALU[3]~input_o\ & (\mux_final|Selector28~4_combout\ & ((\opALU[2]~input_o\) # (!\b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[3]~input_o\,
	datab => \mux_final|Selector28~4_combout\,
	datac => \opALU[2]~input_o\,
	datad => \b[4]~input_o\,
	combout => \mux_final|Selector28~18_combout\);

-- Location: LCCOMB_X31_Y26_N16
\mux_final|Selector29~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector29~6_combout\ = (\mux_final|Selector29~5_combout\ & ((\despla_M|ShiftRight1~31_combout\) # ((!\mux_final|Selector28~18_combout\)))) # (!\mux_final|Selector29~5_combout\ & (((\despla_M|ShiftLeft0~101_combout\ & 
-- \mux_final|Selector28~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~31_combout\,
	datab => \mux_final|Selector29~5_combout\,
	datac => \despla_M|ShiftLeft0~101_combout\,
	datad => \mux_final|Selector28~18_combout\,
	combout => \mux_final|Selector29~6_combout\);

-- Location: LCCOMB_X31_Y26_N22
\mux_final|Selector29~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector29~10_combout\ = (\mux_final|Selector29~9_combout\ & ((\mux_final|Selector28~8_combout\) # ((\mux_final|Selector28~7_combout\) # (\mux_final|Selector29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector29~9_combout\,
	datab => \mux_final|Selector28~8_combout\,
	datac => \mux_final|Selector28~7_combout\,
	datad => \mux_final|Selector29~6_combout\,
	combout => \mux_final|Selector29~10_combout\);

-- Location: LCCOMB_X31_Y22_N20
\mux_final|Selector28~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector28~5_combout\ = (!\Mux0~1_combout\ & (\mux_final|Selector28~4_combout\ & ((\sumalg_M|Mux0~0_combout\) # (!\despla_M|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|Mux31~6_combout\,
	datab => \Mux0~1_combout\,
	datac => \sumalg_M|Mux0~0_combout\,
	datad => \mux_final|Selector28~4_combout\,
	combout => \mux_final|Selector28~5_combout\);

-- Location: LCCOMB_X31_Y22_N6
\mux_final|Selector28~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector28~6_combout\ = (\mux_final|Selector28~5_combout\) # ((\Mux0~1_combout\ & ((\despla_M|Mux31~6_combout\) # (!\despla_M|Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|Mux31~9_combout\,
	datab => \mux_final|Selector28~5_combout\,
	datac => \Mux0~1_combout\,
	datad => \despla_M|Mux31~6_combout\,
	combout => \mux_final|Selector28~6_combout\);

-- Location: LCCOMB_X32_Y25_N20
\mux_final|Selector28~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector28~11_combout\ = (!\mux_final|Selector28~6_combout\ & \opALU[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_final|Selector28~6_combout\,
	datad => \opALU[4]~input_o\,
	combout => \mux_final|Selector28~11_combout\);

-- Location: LCCOMB_X35_Y25_N4
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\opALU[4]~input_o\ & \Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opALU[4]~input_o\,
	datac => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X35_Y26_N8
\mux_final|Selector29~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector29~8_combout\ = (\mux_final|Selector28~6_combout\ & (\Mux2~0_combout\ & \opALU[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~6_combout\,
	datac => \Mux2~0_combout\,
	datad => \opALU[4]~input_o\,
	combout => \mux_final|Selector29~8_combout\);

-- Location: LCCOMB_X36_Y26_N6
\mux_final|Selector29~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector29~2_combout\ = (\a[2]~input_o\ & ((\mux_final|Selector29~8_combout\) # ((\sumalg_M|Add0~6_combout\ & \mux_final|Selector0~0_combout\)))) # (!\a[2]~input_o\ & (\sumalg_M|Add0~6_combout\ & (\mux_final|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \sumalg_M|Add0~6_combout\,
	datac => \mux_final|Selector0~0_combout\,
	datad => \mux_final|Selector29~8_combout\,
	combout => \mux_final|Selector29~2_combout\);

-- Location: LCCOMB_X31_Y26_N2
\mux_final|Selector29~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector29~7_combout\ = (\mux_final|Selector29~2_combout\) # ((\mux_final|Selector29~10_combout\ & (\mux_final|Selector28~11_combout\ & \Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector29~10_combout\,
	datab => \mux_final|Selector28~11_combout\,
	datac => \Mux2~1_combout\,
	datad => \mux_final|Selector29~2_combout\,
	combout => \mux_final|Selector29~7_combout\);

-- Location: LCCOMB_X36_Y26_N4
\mux_final|Selector28~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector28~12_combout\ = (\mux_final|Selector0~0_combout\ & ((\sumalg_M|Add0~8_combout\) # ((\a[3]~input_o\ & \mux_final|Selector29~8_combout\)))) # (!\mux_final|Selector0~0_combout\ & (\a[3]~input_o\ & ((\mux_final|Selector29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector0~0_combout\,
	datab => \a[3]~input_o\,
	datac => \sumalg_M|Add0~8_combout\,
	datad => \mux_final|Selector29~8_combout\,
	combout => \mux_final|Selector28~12_combout\);

-- Location: LCCOMB_X31_Y26_N8
\mux_final|Selector28~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector28~20_combout\ = (\b[3]~input_o\ & ((\mux_final|Selector28~8_combout\ $ (!\a[3]~input_o\)) # (!\mux_final|Selector28~7_combout\))) # (!\b[3]~input_o\ & ((\mux_final|Selector28~8_combout\ & (!\mux_final|Selector28~7_combout\ & 
-- \a[3]~input_o\)) # (!\mux_final|Selector28~8_combout\ & ((\a[3]~input_o\) # (!\mux_final|Selector28~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \mux_final|Selector28~8_combout\,
	datac => \mux_final|Selector28~7_combout\,
	datad => \a[3]~input_o\,
	combout => \mux_final|Selector28~20_combout\);

-- Location: LCCOMB_X30_Y23_N18
\despla_M|ShiftLeft0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~10_combout\ = (!\b[1]~input_o\ & ((\b[0]~input_o\ & ((\a[2]~input_o\))) # (!\b[0]~input_o\ & (\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \a[2]~input_o\,
	datac => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftLeft0~10_combout\);

-- Location: LCCOMB_X32_Y22_N22
\despla_M|ShiftLeft0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~11_combout\ = (\despla_M|ShiftRight1~23_combout\ & ((\despla_M|ShiftLeft0~10_combout\) # ((\b[1]~input_o\ & \despla_M|ShiftLeft0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~23_combout\,
	datab => \despla_M|ShiftLeft0~10_combout\,
	datac => \b[1]~input_o\,
	datad => \despla_M|ShiftLeft0~6_combout\,
	combout => \despla_M|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X30_Y24_N30
\despla_M|ShiftRight1~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~45_combout\ = (\b[0]~input_o\ & (\despla_M|ShiftRight0~14_combout\)) # (!\b[0]~input_o\ & ((\despla_M|ShiftRight1~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~14_combout\,
	datac => \despla_M|ShiftRight1~33_combout\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftRight1~45_combout\);

-- Location: LCCOMB_X30_Y23_N12
\mux_final|Selector28~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector28~13_combout\ = (\despla_M|ShiftRight1~23_combout\ & (((!\mux_final|Selector28~9_combout\ & \despla_M|ShiftRight1~8_combout\)))) # (!\despla_M|ShiftRight1~23_combout\ & ((\despla_M|ShiftRight1~45_combout\) # 
-- ((\mux_final|Selector28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~45_combout\,
	datab => \despla_M|ShiftRight1~23_combout\,
	datac => \mux_final|Selector28~9_combout\,
	datad => \despla_M|ShiftRight1~8_combout\,
	combout => \mux_final|Selector28~13_combout\);

-- Location: LCCOMB_X30_Y25_N4
\despla_M|ShiftRight1~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~46_combout\ = (\b[0]~input_o\ & ((\despla_M|ShiftRight0~27_combout\))) # (!\b[0]~input_o\ & (\despla_M|ShiftRight1~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftRight1~35_combout\,
	datac => \despla_M|ShiftRight0~27_combout\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftRight1~46_combout\);

-- Location: LCCOMB_X30_Y24_N24
\despla_M|ShiftRight1~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~47_combout\ = (\b[0]~input_o\ & (\despla_M|ShiftRight0~11_combout\)) # (!\b[0]~input_o\ & ((\despla_M|ShiftRight1~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \despla_M|ShiftRight0~11_combout\,
	datad => \despla_M|ShiftRight1~37_combout\,
	combout => \despla_M|ShiftRight1~47_combout\);

-- Location: LCCOMB_X31_Y23_N28
\despla_M|ShiftRight0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~48_combout\ = (\b[2]~input_o\ & (\despla_M|ShiftRight1~46_combout\)) # (!\b[2]~input_o\ & ((\despla_M|ShiftRight1~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftRight1~46_combout\,
	datac => \despla_M|ShiftRight1~47_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftRight0~48_combout\);

-- Location: LCCOMB_X31_Y23_N30
\mux_final|Selector28~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector28~14_combout\ = (\mux_final|Selector28~13_combout\ & (((\despla_M|ShiftRight0~48_combout\) # (!\mux_final|Selector28~9_combout\)))) # (!\mux_final|Selector28~13_combout\ & (\despla_M|ShiftRight1~10_combout\ & 
-- (\mux_final|Selector28~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~13_combout\,
	datab => \despla_M|ShiftRight1~10_combout\,
	datac => \mux_final|Selector28~9_combout\,
	datad => \despla_M|ShiftRight0~48_combout\,
	combout => \mux_final|Selector28~14_combout\);

-- Location: LCCOMB_X30_Y26_N14
\despla_M|ShiftRight1~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~43_combout\ = (\b[0]~input_o\ & (\despla_M|ShiftRight0~24_combout\)) # (!\b[0]~input_o\ & ((\despla_M|ShiftRight1~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \despla_M|ShiftRight0~24_combout\,
	datac => \despla_M|ShiftRight1~29_combout\,
	combout => \despla_M|ShiftRight1~43_combout\);

-- Location: LCCOMB_X35_Y27_N2
\despla_M|ShiftRight1~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~42_combout\ = (\b[0]~input_o\ & (\despla_M|ShiftRight0~20_combout\)) # (!\b[0]~input_o\ & ((\despla_M|ShiftRight1~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~20_combout\,
	datab => \despla_M|ShiftRight1~27_combout\,
	datac => \b[0]~input_o\,
	combout => \despla_M|ShiftRight1~42_combout\);

-- Location: LCCOMB_X31_Y23_N4
\despla_M|ShiftRight0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~45_combout\ = (\b[2]~input_o\ & ((\despla_M|ShiftRight1~42_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftRight1~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~43_combout\,
	datac => \despla_M|ShiftRight1~42_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftRight0~45_combout\);

-- Location: LCCOMB_X30_Y26_N2
\despla_M|ShiftRight1~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~39_combout\ = (!\b[1]~input_o\ & ((\b[0]~input_o\ & (\a[28]~input_o\)) # (!\b[0]~input_o\ & ((\a[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[28]~input_o\,
	datac => \a[27]~input_o\,
	datad => \b[1]~input_o\,
	combout => \despla_M|ShiftRight1~39_combout\);

-- Location: LCCOMB_X30_Y26_N4
\despla_M|ShiftRight1~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~40_combout\ = (\despla_M|ShiftRight1~39_combout\) # ((\despla_M|ShiftRight1~20_combout\ & \b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~20_combout\,
	datab => \despla_M|ShiftRight1~39_combout\,
	datad => \b[1]~input_o\,
	combout => \despla_M|ShiftRight1~40_combout\);

-- Location: LCCOMB_X31_Y23_N16
\despla_M|ShiftRight0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~46_combout\ = (\b[3]~input_o\ & ((\b[2]~input_o\ & (\a[31]~input_o\)) # (!\b[2]~input_o\ & ((\despla_M|ShiftRight1~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \despla_M|ShiftRight1~40_combout\,
	datac => \b[3]~input_o\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftRight0~46_combout\);

-- Location: LCCOMB_X31_Y23_N2
\despla_M|ShiftRight0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~47_combout\ = (\despla_M|ShiftRight0~46_combout\) # ((\despla_M|ShiftRight0~45_combout\ & !\b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftRight0~45_combout\,
	datac => \b[3]~input_o\,
	datad => \despla_M|ShiftRight0~46_combout\,
	combout => \despla_M|ShiftRight0~47_combout\);

-- Location: LCCOMB_X31_Y23_N24
\mux_final|Selector28~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector28~15_combout\ = (\mux_final|Selector28~19_combout\ & ((\mux_final|Selector28~14_combout\) # ((\mux_final|Selector28~10_combout\)))) # (!\mux_final|Selector28~19_combout\ & (((!\mux_final|Selector28~10_combout\ & 
-- \despla_M|ShiftRight0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~14_combout\,
	datab => \mux_final|Selector28~19_combout\,
	datac => \mux_final|Selector28~10_combout\,
	datad => \despla_M|ShiftRight0~47_combout\,
	combout => \mux_final|Selector28~15_combout\);

-- Location: LCCOMB_X31_Y23_N18
\despla_M|ShiftRight1~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~41_combout\ = (\b[2]~input_o\ & (\despla_M|ShiftRight1~19_combout\ & ((!\b[1]~input_o\)))) # (!\b[2]~input_o\ & (((\despla_M|ShiftRight1~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~19_combout\,
	datab => \despla_M|ShiftRight1~40_combout\,
	datac => \b[1]~input_o\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftRight1~41_combout\);

-- Location: LCCOMB_X31_Y23_N22
\despla_M|ShiftRight1~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~44_combout\ = (\b[3]~input_o\ & ((\despla_M|ShiftRight1~41_combout\))) # (!\b[3]~input_o\ & (\despla_M|ShiftRight0~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftRight0~45_combout\,
	datac => \b[3]~input_o\,
	datad => \despla_M|ShiftRight1~41_combout\,
	combout => \despla_M|ShiftRight1~44_combout\);

-- Location: LCCOMB_X31_Y26_N28
\mux_final|Selector28~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector28~16_combout\ = (\mux_final|Selector28~15_combout\ & (((\despla_M|ShiftRight1~44_combout\) # (!\mux_final|Selector28~18_combout\)))) # (!\mux_final|Selector28~15_combout\ & (\despla_M|ShiftLeft0~11_combout\ & 
-- ((\mux_final|Selector28~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~11_combout\,
	datab => \mux_final|Selector28~15_combout\,
	datac => \despla_M|ShiftRight1~44_combout\,
	datad => \mux_final|Selector28~18_combout\,
	combout => \mux_final|Selector28~16_combout\);

-- Location: LCCOMB_X31_Y26_N18
\mux_final|Selector28~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector28~21_combout\ = (\mux_final|Selector28~20_combout\ & ((\mux_final|Selector28~8_combout\) # ((\mux_final|Selector28~7_combout\) # (\mux_final|Selector28~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~20_combout\,
	datab => \mux_final|Selector28~8_combout\,
	datac => \mux_final|Selector28~7_combout\,
	datad => \mux_final|Selector28~16_combout\,
	combout => \mux_final|Selector28~21_combout\);

-- Location: LCCOMB_X31_Y26_N14
\mux_final|Selector28~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector28~17_combout\ = (\mux_final|Selector28~12_combout\) # ((\mux_final|Selector28~11_combout\ & (\Mux2~1_combout\ & \mux_final|Selector28~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~12_combout\,
	datab => \mux_final|Selector28~11_combout\,
	datac => \Mux2~1_combout\,
	datad => \mux_final|Selector28~21_combout\,
	combout => \mux_final|Selector28~17_combout\);

-- Location: LCCOMB_X30_Y23_N24
\despla_M|ShiftLeft0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~13_combout\ = (\b[1]~input_o\ & ((\a[2]~input_o\))) # (!\b[1]~input_o\ & (\a[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \a[2]~input_o\,
	datac => \b[1]~input_o\,
	combout => \despla_M|ShiftLeft0~13_combout\);

-- Location: LCCOMB_X30_Y23_N22
\despla_M|ShiftLeft0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~12_combout\ = (\b[0]~input_o\ & ((\b[1]~input_o\ & ((\a[1]~input_o\))) # (!\b[1]~input_o\ & (\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \a[1]~input_o\,
	datac => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X30_Y23_N2
\despla_M|ShiftLeft0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~14_combout\ = (\despla_M|ShiftLeft0~12_combout\) # ((\despla_M|ShiftLeft0~13_combout\ & !\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftLeft0~13_combout\,
	datac => \despla_M|ShiftLeft0~12_combout\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftLeft0~14_combout\);

-- Location: LCCOMB_X28_Y24_N2
\despla_M|ShiftLeft0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~15_combout\ = (\b[2]~input_o\ & (\despla_M|ShiftLeft0~9_combout\ & (\a[0]~input_o\))) # (!\b[2]~input_o\ & (((\despla_M|ShiftLeft0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \despla_M|ShiftLeft0~9_combout\,
	datac => \a[0]~input_o\,
	datad => \despla_M|ShiftLeft0~14_combout\,
	combout => \despla_M|ShiftLeft0~15_combout\);

-- Location: LCCOMB_X35_Y25_N10
\despla_M|ShiftLeft0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~16_combout\ = (\despla_M|ShiftLeft0~15_combout\ & !\b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~15_combout\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftLeft0~16_combout\);

-- Location: LCCOMB_X32_Y25_N14
\mux_final|Selector27~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector27~11_combout\ = (((\mux_final|Selector28~6_combout\) # (!\opALU[4]~input_o\)) # (!\mux_final|Selector28~10_combout\)) # (!\Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \mux_final|Selector28~10_combout\,
	datac => \mux_final|Selector28~6_combout\,
	datad => \opALU[4]~input_o\,
	combout => \mux_final|Selector27~11_combout\);

-- Location: LCCOMB_X32_Y25_N22
\mux_final|Selector27~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector27~2_combout\ = ((!\Mux0~1_combout\ & (\mux_final|Selector28~10_combout\ & \opALU[2]~input_o\))) # (!\mux_final|Selector28~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \mux_final|Selector28~10_combout\,
	datac => \opALU[2]~input_o\,
	datad => \mux_final|Selector28~11_combout\,
	combout => \mux_final|Selector27~2_combout\);

-- Location: LCCOMB_X28_Y25_N24
\mux_final|Selector27~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector27~3_combout\ = (!\mux_final|Selector27~11_combout\ & ((\mux_final|Selector27~2_combout\) # (!\b[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \mux_final|Selector27~11_combout\,
	datad => \mux_final|Selector27~2_combout\,
	combout => \mux_final|Selector27~3_combout\);

-- Location: LCCOMB_X32_Y26_N16
\despla_M|ShiftRight0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~49_combout\ = (\b[2]~input_o\ & ((\despla_M|ShiftRight0~21_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftRight0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~25_combout\,
	datac => \b[2]~input_o\,
	datad => \despla_M|ShiftRight0~21_combout\,
	combout => \despla_M|ShiftRight0~49_combout\);

-- Location: LCCOMB_X32_Y26_N26
\despla_M|ShiftRight1~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~48_combout\ = (\b[3]~input_o\ & (((!\b[2]~input_o\ & \despla_M|ShiftRight0~18_combout\)))) # (!\b[3]~input_o\ & (\despla_M|ShiftRight0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \despla_M|ShiftRight0~49_combout\,
	datac => \b[2]~input_o\,
	datad => \despla_M|ShiftRight0~18_combout\,
	combout => \despla_M|ShiftRight1~48_combout\);

-- Location: LCCOMB_X31_Y22_N16
\mux_final|Selector27~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector27~4_combout\ = (!\mux_final|Selector28~4_combout\ & ((\b[2]~input_o\) # (\b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \mux_final|Selector28~4_combout\,
	datad => \b[3]~input_o\,
	combout => \mux_final|Selector27~4_combout\);

-- Location: LCCOMB_X32_Y26_N24
\despla_M|ShiftRight0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~52_combout\ = (\b[2]~input_o\ & (\despla_M|ShiftRight0~28_combout\)) # (!\b[2]~input_o\ & ((\despla_M|ShiftRight0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \despla_M|ShiftRight0~28_combout\,
	datac => \despla_M|ShiftRight0~12_combout\,
	combout => \despla_M|ShiftRight0~52_combout\);

-- Location: LCCOMB_X31_Y22_N2
\mux_final|Selector27~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector27~5_combout\ = (\mux_final|Selector28~4_combout\) # (\b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_final|Selector28~4_combout\,
	datad => \b[3]~input_o\,
	combout => \mux_final|Selector27~5_combout\);

-- Location: LCCOMB_X32_Y26_N12
\despla_M|ShiftRight0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~50_combout\ = (\b[3]~input_o\ & ((\b[2]~input_o\ & ((\a[31]~input_o\))) # (!\b[2]~input_o\ & (\despla_M|ShiftRight0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[3]~input_o\,
	datac => \despla_M|ShiftRight0~18_combout\,
	datad => \a[31]~input_o\,
	combout => \despla_M|ShiftRight0~50_combout\);

-- Location: LCCOMB_X32_Y26_N30
\despla_M|ShiftRight0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~51_combout\ = (\despla_M|ShiftRight0~50_combout\) # ((\despla_M|ShiftRight0~49_combout\ & !\b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~50_combout\,
	datab => \despla_M|ShiftRight0~49_combout\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftRight0~51_combout\);

-- Location: LCCOMB_X31_Y26_N0
\mux_final|Selector27~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector27~6_combout\ = (\mux_final|Selector27~5_combout\ & ((\mux_final|Selector27~4_combout\) # ((\despla_M|ShiftRight0~51_combout\)))) # (!\mux_final|Selector27~5_combout\ & (!\mux_final|Selector27~4_combout\ & 
-- ((\despla_M|ShiftRight0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector27~5_combout\,
	datab => \mux_final|Selector27~4_combout\,
	datac => \despla_M|ShiftRight0~51_combout\,
	datad => \despla_M|ShiftRight0~9_combout\,
	combout => \mux_final|Selector27~6_combout\);

-- Location: LCCOMB_X31_Y26_N10
\mux_final|Selector27~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector27~7_combout\ = (\mux_final|Selector27~4_combout\ & ((\mux_final|Selector27~6_combout\ & ((\despla_M|ShiftRight0~52_combout\))) # (!\mux_final|Selector27~6_combout\ & (\despla_M|ShiftRight0~15_combout\)))) # 
-- (!\mux_final|Selector27~4_combout\ & (((\mux_final|Selector27~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~15_combout\,
	datab => \mux_final|Selector27~4_combout\,
	datac => \despla_M|ShiftRight0~52_combout\,
	datad => \mux_final|Selector27~6_combout\,
	combout => \mux_final|Selector27~7_combout\);

-- Location: LCCOMB_X31_Y26_N20
\mux_final|Selector27~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector27~12_combout\ = (\b[4]~input_o\ & ((\mux_final|Selector28~8_combout\ $ (!\a[4]~input_o\)) # (!\mux_final|Selector28~7_combout\))) # (!\b[4]~input_o\ & ((\mux_final|Selector28~7_combout\ & (!\mux_final|Selector28~8_combout\ & 
-- \a[4]~input_o\)) # (!\mux_final|Selector28~7_combout\ & ((\a[4]~input_o\) # (!\mux_final|Selector28~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \mux_final|Selector28~7_combout\,
	datac => \mux_final|Selector28~8_combout\,
	datad => \a[4]~input_o\,
	combout => \mux_final|Selector27~12_combout\);

-- Location: LCCOMB_X31_Y26_N30
\mux_final|Selector27~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector27~13_combout\ = (\mux_final|Selector27~12_combout\ & ((\mux_final|Selector27~7_combout\) # ((\mux_final|Selector28~7_combout\) # (\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector27~7_combout\,
	datab => \mux_final|Selector28~7_combout\,
	datac => \mux_final|Selector28~8_combout\,
	datad => \mux_final|Selector27~12_combout\,
	combout => \mux_final|Selector27~13_combout\);

-- Location: LCCOMB_X28_Y25_N2
\mux_final|Selector27~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector27~8_combout\ = (\mux_final|Selector27~11_combout\ & ((\mux_final|Selector27~2_combout\ & (\a[4]~input_o\)) # (!\mux_final|Selector27~2_combout\ & ((\mux_final|Selector27~13_combout\))))) # (!\mux_final|Selector27~11_combout\ & 
-- (((\mux_final|Selector27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \mux_final|Selector27~11_combout\,
	datac => \mux_final|Selector27~13_combout\,
	datad => \mux_final|Selector27~2_combout\,
	combout => \mux_final|Selector27~8_combout\);

-- Location: LCCOMB_X28_Y25_N12
\mux_final|Selector27~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector27~9_combout\ = (\mux_final|Selector27~3_combout\ & ((\mux_final|Selector27~8_combout\ & ((\despla_M|ShiftRight1~48_combout\))) # (!\mux_final|Selector27~8_combout\ & (\despla_M|ShiftLeft0~16_combout\)))) # 
-- (!\mux_final|Selector27~3_combout\ & (((\mux_final|Selector27~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~16_combout\,
	datab => \mux_final|Selector27~3_combout\,
	datac => \despla_M|ShiftRight1~48_combout\,
	datad => \mux_final|Selector27~8_combout\,
	combout => \mux_final|Selector27~9_combout\);

-- Location: LCCOMB_X36_Y29_N8
\mux_final|Selector27~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector27~10_combout\ = (\Mux2~1_combout\ & ((\mux_final|Selector27~9_combout\) # ((\mux_final|Selector0~0_combout\ & \sumalg_M|Add0~10_combout\)))) # (!\Mux2~1_combout\ & (\mux_final|Selector0~0_combout\ & (\sumalg_M|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mux_final|Selector0~0_combout\,
	datac => \sumalg_M|Add0~10_combout\,
	datad => \mux_final|Selector27~9_combout\,
	combout => \mux_final|Selector27~10_combout\);

-- Location: LCCOMB_X28_Y24_N20
\despla_M|ShiftLeft0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~17_combout\ = (!\b[1]~input_o\ & ((\b[0]~input_o\ & ((\a[0]~input_o\))) # (!\b[0]~input_o\ & (\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \despla_M|ShiftLeft0~17_combout\);

-- Location: LCCOMB_X29_Y26_N0
\despla_M|ShiftLeft0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~18_combout\ = (\b[1]~input_o\ & ((\a[3]~input_o\))) # (!\b[1]~input_o\ & (\a[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[5]~input_o\,
	datac => \a[3]~input_o\,
	combout => \despla_M|ShiftLeft0~18_combout\);

-- Location: LCCOMB_X30_Y23_N4
\despla_M|ShiftLeft0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~19_combout\ = (\b[0]~input_o\ & (\despla_M|ShiftLeft0~13_combout\)) # (!\b[0]~input_o\ & ((\despla_M|ShiftLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftLeft0~13_combout\,
	datac => \despla_M|ShiftLeft0~18_combout\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftLeft0~19_combout\);

-- Location: LCCOMB_X29_Y24_N0
\despla_M|ShiftLeft0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~20_combout\ = (!\b[3]~input_o\ & ((\b[2]~input_o\ & (\despla_M|ShiftLeft0~17_combout\)) # (!\b[2]~input_o\ & ((\despla_M|ShiftLeft0~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \despla_M|ShiftLeft0~17_combout\,
	datac => \b[3]~input_o\,
	datad => \despla_M|ShiftLeft0~19_combout\,
	combout => \despla_M|ShiftLeft0~20_combout\);

-- Location: LCCOMB_X37_Y22_N20
\mux_final|Selector26~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector26~5_combout\ = (\mux_final|Selector28~7_combout\ & ((\a[5]~input_o\ & (\b[5]~input_o\ $ (!\mux_final|Selector28~8_combout\))) # (!\a[5]~input_o\ & (\b[5]~input_o\ & !\mux_final|Selector28~8_combout\)))) # 
-- (!\mux_final|Selector28~7_combout\ & ((\a[5]~input_o\) # ((\b[5]~input_o\) # (!\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~7_combout\,
	datab => \a[5]~input_o\,
	datac => \b[5]~input_o\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector26~5_combout\);

-- Location: LCCOMB_X31_Y22_N22
\mux_final|Selector26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector26~0_combout\ = (\mux_final|Selector27~4_combout\ & (((\despla_M|ShiftRight0~34_combout\) # (\mux_final|Selector27~5_combout\)))) # (!\mux_final|Selector27~4_combout\ & (\despla_M|ShiftRight0~32_combout\ & 
-- ((!\mux_final|Selector27~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~32_combout\,
	datab => \despla_M|ShiftRight0~34_combout\,
	datac => \mux_final|Selector27~4_combout\,
	datad => \mux_final|Selector27~5_combout\,
	combout => \mux_final|Selector26~0_combout\);

-- Location: LCCOMB_X32_Y24_N28
\despla_M|ShiftRight0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~53_combout\ = (\b[2]~input_o\ & ((\b[0]~input_o\ & ((\despla_M|ShiftRight1~17_combout\))) # (!\b[0]~input_o\ & (\despla_M|ShiftRight0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \despla_M|ShiftRight0~19_combout\,
	datac => \b[0]~input_o\,
	datad => \despla_M|ShiftRight1~17_combout\,
	combout => \despla_M|ShiftRight0~53_combout\);

-- Location: LCCOMB_X31_Y22_N12
\despla_M|ShiftRight0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~54_combout\ = (\despla_M|ShiftRight0~53_combout\) # ((\despla_M|ShiftRight0~36_combout\ & !\b[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~36_combout\,
	datab => \despla_M|ShiftRight0~53_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftRight0~54_combout\);

-- Location: LCCOMB_X29_Y23_N2
\despla_M|ShiftRight0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~55_combout\ = (\b[1]~input_o\ & (((\a[31]~input_o\)))) # (!\b[1]~input_o\ & ((\b[2]~input_o\ & ((\a[31]~input_o\))) # (!\b[2]~input_o\ & (\despla_M|ShiftRight1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \b[2]~input_o\,
	datac => \despla_M|ShiftRight1~20_combout\,
	datad => \a[31]~input_o\,
	combout => \despla_M|ShiftRight0~55_combout\);

-- Location: LCCOMB_X29_Y23_N28
\despla_M|ShiftRight0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~56_combout\ = (\b[3]~input_o\ & ((\despla_M|ShiftRight0~55_combout\))) # (!\b[3]~input_o\ & (\despla_M|ShiftRight0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~54_combout\,
	datab => \despla_M|ShiftRight0~55_combout\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftRight0~56_combout\);

-- Location: LCCOMB_X31_Y22_N8
\despla_M|ShiftRight0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~57_combout\ = (\b[2]~input_o\ & (\despla_M|ShiftRight0~37_combout\)) # (!\b[2]~input_o\ & ((\despla_M|ShiftRight0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~37_combout\,
	datab => \despla_M|ShiftRight0~33_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftRight0~57_combout\);

-- Location: LCCOMB_X31_Y22_N18
\mux_final|Selector26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector26~1_combout\ = (\mux_final|Selector26~0_combout\ & (((\despla_M|ShiftRight0~57_combout\)) # (!\mux_final|Selector27~5_combout\))) # (!\mux_final|Selector26~0_combout\ & (\mux_final|Selector27~5_combout\ & 
-- (\despla_M|ShiftRight0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector26~0_combout\,
	datab => \mux_final|Selector27~5_combout\,
	datac => \despla_M|ShiftRight0~56_combout\,
	datad => \despla_M|ShiftRight0~57_combout\,
	combout => \mux_final|Selector26~1_combout\);

-- Location: LCCOMB_X37_Y22_N14
\mux_final|Selector26~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector26~6_combout\ = (\mux_final|Selector26~5_combout\ & ((\mux_final|Selector28~7_combout\) # ((\mux_final|Selector26~1_combout\) # (\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~7_combout\,
	datab => \mux_final|Selector26~5_combout\,
	datac => \mux_final|Selector26~1_combout\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector26~6_combout\);

-- Location: LCCOMB_X28_Y25_N30
\mux_final|Selector26~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector26~2_combout\ = (\mux_final|Selector27~11_combout\ & ((\mux_final|Selector27~2_combout\ & ((\a[5]~input_o\))) # (!\mux_final|Selector27~2_combout\ & (\mux_final|Selector26~6_combout\)))) # (!\mux_final|Selector27~11_combout\ & 
-- (((\mux_final|Selector27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector26~6_combout\,
	datab => \a[5]~input_o\,
	datac => \mux_final|Selector27~11_combout\,
	datad => \mux_final|Selector27~2_combout\,
	combout => \mux_final|Selector26~2_combout\);

-- Location: LCCOMB_X29_Y23_N4
\despla_M|ShiftRight1~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~61_combout\ = (\b[1]~input_o\ & (!\b[0]~input_o\ & ((\a[31]~input_o\)))) # (!\b[1]~input_o\ & (((\despla_M|ShiftRight1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \b[0]~input_o\,
	datac => \despla_M|ShiftRight1~20_combout\,
	datad => \a[31]~input_o\,
	combout => \despla_M|ShiftRight1~61_combout\);

-- Location: LCCOMB_X29_Y23_N24
\despla_M|ShiftRight1~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~49_combout\ = (\b[3]~input_o\ & (((\despla_M|ShiftRight1~61_combout\ & !\b[2]~input_o\)))) # (!\b[3]~input_o\ & (\despla_M|ShiftRight0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~54_combout\,
	datab => \despla_M|ShiftRight1~61_combout\,
	datac => \b[2]~input_o\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftRight1~49_combout\);

-- Location: LCCOMB_X28_Y25_N0
\mux_final|Selector26~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector26~3_combout\ = (\mux_final|Selector27~3_combout\ & ((\mux_final|Selector26~2_combout\ & ((\despla_M|ShiftRight1~49_combout\))) # (!\mux_final|Selector26~2_combout\ & (\despla_M|ShiftLeft0~20_combout\)))) # 
-- (!\mux_final|Selector27~3_combout\ & (((\mux_final|Selector26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~20_combout\,
	datab => \mux_final|Selector27~3_combout\,
	datac => \mux_final|Selector26~2_combout\,
	datad => \despla_M|ShiftRight1~49_combout\,
	combout => \mux_final|Selector26~3_combout\);

-- Location: LCCOMB_X36_Y29_N26
\mux_final|Selector26~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector26~4_combout\ = (\Mux2~1_combout\ & ((\mux_final|Selector26~3_combout\) # ((\mux_final|Selector0~0_combout\ & \sumalg_M|Add0~12_combout\)))) # (!\Mux2~1_combout\ & (\mux_final|Selector0~0_combout\ & ((\sumalg_M|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mux_final|Selector0~0_combout\,
	datac => \mux_final|Selector26~3_combout\,
	datad => \sumalg_M|Add0~12_combout\,
	combout => \mux_final|Selector26~4_combout\);

-- Location: LCCOMB_X31_Y25_N10
\mux_final|Selector25~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector25~5_combout\ = (\mux_final|Selector28~8_combout\ & ((\mux_final|Selector28~7_combout\ & (\b[6]~input_o\ & \a[6]~input_o\)) # (!\mux_final|Selector28~7_combout\ & ((\b[6]~input_o\) # (\a[6]~input_o\))))) # 
-- (!\mux_final|Selector28~8_combout\ & ((\b[6]~input_o\ $ (\a[6]~input_o\)) # (!\mux_final|Selector28~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~8_combout\,
	datab => \mux_final|Selector28~7_combout\,
	datac => \b[6]~input_o\,
	datad => \a[6]~input_o\,
	combout => \mux_final|Selector25~5_combout\);

-- Location: LCCOMB_X31_Y24_N30
\despla_M|ShiftRight0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~61_combout\ = (\b[2]~input_o\ & ((\despla_M|ShiftRight1~30_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftRight1~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \despla_M|ShiftRight1~36_combout\,
	datad => \despla_M|ShiftRight1~30_combout\,
	combout => \despla_M|ShiftRight0~61_combout\);

-- Location: LCCOMB_X29_Y23_N10
\despla_M|ShiftRight0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~59_combout\ = (\b[3]~input_o\ & ((\despla_M|ShiftLeft0~4_combout\ & ((\a[31]~input_o\))) # (!\despla_M|ShiftLeft0~4_combout\ & (\a[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \despla_M|ShiftLeft0~4_combout\,
	datac => \a[30]~input_o\,
	datad => \a[31]~input_o\,
	combout => \despla_M|ShiftRight0~59_combout\);

-- Location: LCCOMB_X32_Y24_N30
\despla_M|ShiftRight1~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~50_combout\ = (!\b[0]~input_o\ & ((\b[1]~input_o\ & ((\a[28]~input_o\))) # (!\b[1]~input_o\ & (\a[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[26]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[28]~input_o\,
	datad => \b[1]~input_o\,
	combout => \despla_M|ShiftRight1~50_combout\);

-- Location: LCCOMB_X32_Y24_N24
\despla_M|ShiftRight0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~58_combout\ = (\b[2]~input_o\ & (((\despla_M|ShiftRight1~24_combout\) # (\despla_M|ShiftRight1~50_combout\)))) # (!\b[2]~input_o\ & (\despla_M|ShiftRight1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~28_combout\,
	datab => \despla_M|ShiftRight1~24_combout\,
	datac => \despla_M|ShiftRight1~50_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftRight0~58_combout\);

-- Location: LCCOMB_X29_Y23_N12
\despla_M|ShiftRight0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~60_combout\ = (\despla_M|ShiftRight0~59_combout\) # ((\despla_M|ShiftRight0~58_combout\ & !\b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~59_combout\,
	datab => \despla_M|ShiftRight0~58_combout\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftRight0~60_combout\);

-- Location: LCCOMB_X31_Y24_N20
\mux_final|Selector25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector25~0_combout\ = (\mux_final|Selector27~4_combout\ & (((\mux_final|Selector27~5_combout\)))) # (!\mux_final|Selector27~4_combout\ & ((\mux_final|Selector27~5_combout\ & ((\despla_M|ShiftRight0~60_combout\))) # 
-- (!\mux_final|Selector27~5_combout\ & (\despla_M|ShiftRight1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~34_combout\,
	datab => \despla_M|ShiftRight0~60_combout\,
	datac => \mux_final|Selector27~4_combout\,
	datad => \mux_final|Selector27~5_combout\,
	combout => \mux_final|Selector25~0_combout\);

-- Location: LCCOMB_X31_Y24_N0
\mux_final|Selector25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector25~1_combout\ = (\mux_final|Selector27~4_combout\ & ((\mux_final|Selector25~0_combout\ & ((\despla_M|ShiftRight0~61_combout\))) # (!\mux_final|Selector25~0_combout\ & (\despla_M|ShiftRight1~38_combout\)))) # 
-- (!\mux_final|Selector27~4_combout\ & (((\mux_final|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~38_combout\,
	datab => \mux_final|Selector27~4_combout\,
	datac => \despla_M|ShiftRight0~61_combout\,
	datad => \mux_final|Selector25~0_combout\,
	combout => \mux_final|Selector25~1_combout\);

-- Location: LCCOMB_X31_Y25_N28
\mux_final|Selector25~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector25~6_combout\ = (\mux_final|Selector25~5_combout\ & ((\mux_final|Selector25~1_combout\) # ((\mux_final|Selector28~7_combout\) # (\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector25~5_combout\,
	datab => \mux_final|Selector25~1_combout\,
	datac => \mux_final|Selector28~7_combout\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector25~6_combout\);

-- Location: LCCOMB_X28_Y25_N10
\mux_final|Selector25~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector25~2_combout\ = (\mux_final|Selector27~11_combout\ & ((\mux_final|Selector27~2_combout\ & (\a[6]~input_o\)) # (!\mux_final|Selector27~2_combout\ & ((\mux_final|Selector25~6_combout\))))) # (!\mux_final|Selector27~11_combout\ & 
-- (((\mux_final|Selector27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \mux_final|Selector25~6_combout\,
	datac => \mux_final|Selector27~11_combout\,
	datad => \mux_final|Selector27~2_combout\,
	combout => \mux_final|Selector25~2_combout\);

-- Location: LCCOMB_X29_Y23_N30
\despla_M|ShiftRight1~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~51_combout\ = (!\b[1]~input_o\ & ((\b[0]~input_o\ & ((\a[31]~input_o\))) # (!\b[0]~input_o\ & (\a[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[30]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \a[31]~input_o\,
	combout => \despla_M|ShiftRight1~51_combout\);

-- Location: LCCOMB_X29_Y23_N16
\despla_M|ShiftRight1~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~52_combout\ = (\b[3]~input_o\ & (\despla_M|ShiftRight1~51_combout\ & ((!\b[2]~input_o\)))) # (!\b[3]~input_o\ & (((\despla_M|ShiftRight0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~51_combout\,
	datab => \despla_M|ShiftRight0~58_combout\,
	datac => \b[2]~input_o\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftRight1~52_combout\);

-- Location: LCCOMB_X29_Y26_N10
\despla_M|ShiftLeft0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~21_combout\ = (\b[1]~input_o\ & ((\a[4]~input_o\))) # (!\b[1]~input_o\ & (\a[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[4]~input_o\,
	combout => \despla_M|ShiftLeft0~21_combout\);

-- Location: LCCOMB_X29_Y26_N4
\despla_M|ShiftLeft0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~22_combout\ = (\b[0]~input_o\ & ((\despla_M|ShiftLeft0~18_combout\))) # (!\b[0]~input_o\ & (\despla_M|ShiftLeft0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~21_combout\,
	datab => \despla_M|ShiftLeft0~18_combout\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftLeft0~22_combout\);

-- Location: LCCOMB_X29_Y25_N24
\despla_M|ShiftLeft0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~23_combout\ = (!\b[3]~input_o\ & ((\b[2]~input_o\ & ((\despla_M|ShiftLeft0~8_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftLeft0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~22_combout\,
	datab => \b[3]~input_o\,
	datac => \despla_M|ShiftLeft0~8_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftLeft0~23_combout\);

-- Location: LCCOMB_X28_Y25_N28
\mux_final|Selector25~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector25~3_combout\ = (\mux_final|Selector25~2_combout\ & (((\despla_M|ShiftRight1~52_combout\)) # (!\mux_final|Selector27~3_combout\))) # (!\mux_final|Selector25~2_combout\ & (\mux_final|Selector27~3_combout\ & 
-- ((\despla_M|ShiftLeft0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector25~2_combout\,
	datab => \mux_final|Selector27~3_combout\,
	datac => \despla_M|ShiftRight1~52_combout\,
	datad => \despla_M|ShiftLeft0~23_combout\,
	combout => \mux_final|Selector25~3_combout\);

-- Location: LCCOMB_X36_Y29_N4
\mux_final|Selector25~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector25~4_combout\ = (\Mux2~1_combout\ & ((\mux_final|Selector25~3_combout\) # ((\mux_final|Selector0~0_combout\ & \sumalg_M|Add0~14_combout\)))) # (!\Mux2~1_combout\ & (\mux_final|Selector0~0_combout\ & (\sumalg_M|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mux_final|Selector0~0_combout\,
	datac => \sumalg_M|Add0~14_combout\,
	datad => \mux_final|Selector25~3_combout\,
	combout => \mux_final|Selector25~4_combout\);

-- Location: LCCOMB_X32_Y24_N10
\despla_M|ShiftLeft0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~24_combout\ = (\despla_M|ShiftLeft0~10_combout\) # ((\despla_M|ShiftLeft0~6_combout\ & \b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~10_combout\,
	datab => \despla_M|ShiftLeft0~6_combout\,
	datad => \b[1]~input_o\,
	combout => \despla_M|ShiftLeft0~24_combout\);

-- Location: LCCOMB_X29_Y26_N22
\despla_M|ShiftLeft0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~25_combout\ = (\b[1]~input_o\ & (\a[5]~input_o\)) # (!\b[1]~input_o\ & ((\a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[5]~input_o\,
	datac => \a[7]~input_o\,
	combout => \despla_M|ShiftLeft0~25_combout\);

-- Location: LCCOMB_X29_Y26_N16
\despla_M|ShiftLeft0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~26_combout\ = (\b[0]~input_o\ & (\despla_M|ShiftLeft0~21_combout\)) # (!\b[0]~input_o\ & ((\despla_M|ShiftLeft0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~21_combout\,
	datac => \despla_M|ShiftLeft0~25_combout\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftLeft0~26_combout\);

-- Location: LCCOMB_X27_Y25_N10
\despla_M|ShiftLeft0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~27_combout\ = (!\b[3]~input_o\ & ((\b[2]~input_o\ & (\despla_M|ShiftLeft0~24_combout\)) # (!\b[2]~input_o\ & ((\despla_M|ShiftLeft0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~24_combout\,
	datab => \despla_M|ShiftLeft0~26_combout\,
	datac => \b[2]~input_o\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftLeft0~27_combout\);

-- Location: LCCOMB_X31_Y25_N30
\mux_final|Selector24~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector24~5_combout\ = (\b[7]~input_o\ & ((\a[7]~input_o\ $ (!\mux_final|Selector28~8_combout\)) # (!\mux_final|Selector28~7_combout\))) # (!\b[7]~input_o\ & ((\a[7]~input_o\ & ((!\mux_final|Selector28~8_combout\) # 
-- (!\mux_final|Selector28~7_combout\))) # (!\a[7]~input_o\ & (!\mux_final|Selector28~7_combout\ & !\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \a[7]~input_o\,
	datac => \mux_final|Selector28~7_combout\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector24~5_combout\);

-- Location: LCCOMB_X31_Y23_N20
\despla_M|ShiftRight0~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~64_combout\ = (\b[2]~input_o\ & (\despla_M|ShiftRight1~43_combout\)) # (!\b[2]~input_o\ & ((\despla_M|ShiftRight1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~43_combout\,
	datab => \despla_M|ShiftRight1~46_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftRight0~64_combout\);

-- Location: LCCOMB_X30_Y23_N14
\mux_final|Selector24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector24~0_combout\ = (\mux_final|Selector27~5_combout\ & (((\mux_final|Selector27~4_combout\)))) # (!\mux_final|Selector27~5_combout\ & ((\mux_final|Selector27~4_combout\ & ((\despla_M|ShiftRight1~47_combout\))) # 
-- (!\mux_final|Selector27~4_combout\ & (\despla_M|ShiftRight1~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~45_combout\,
	datab => \despla_M|ShiftRight1~47_combout\,
	datac => \mux_final|Selector27~5_combout\,
	datad => \mux_final|Selector27~4_combout\,
	combout => \mux_final|Selector24~0_combout\);

-- Location: LCCOMB_X31_Y23_N10
\despla_M|ShiftRight0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~62_combout\ = (\b[2]~input_o\ & ((\despla_M|ShiftRight1~40_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftRight1~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftRight1~42_combout\,
	datac => \despla_M|ShiftRight1~40_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftRight0~62_combout\);

-- Location: LCCOMB_X34_Y23_N22
\despla_M|ShiftRight0~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~63_combout\ = (\b[3]~input_o\ & ((\a[31]~input_o\))) # (!\b[3]~input_o\ & (\despla_M|ShiftRight0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datac => \despla_M|ShiftRight0~62_combout\,
	datad => \a[31]~input_o\,
	combout => \despla_M|ShiftRight0~63_combout\);

-- Location: LCCOMB_X30_Y23_N0
\mux_final|Selector24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector24~1_combout\ = (\mux_final|Selector24~0_combout\ & ((\despla_M|ShiftRight0~64_combout\) # ((!\mux_final|Selector27~5_combout\)))) # (!\mux_final|Selector24~0_combout\ & (((\mux_final|Selector27~5_combout\ & 
-- \despla_M|ShiftRight0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~64_combout\,
	datab => \mux_final|Selector24~0_combout\,
	datac => \mux_final|Selector27~5_combout\,
	datad => \despla_M|ShiftRight0~63_combout\,
	combout => \mux_final|Selector24~1_combout\);

-- Location: LCCOMB_X31_Y25_N24
\mux_final|Selector24~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector24~6_combout\ = (\mux_final|Selector24~5_combout\ & ((\mux_final|Selector24~1_combout\) # ((\mux_final|Selector28~7_combout\) # (\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector24~5_combout\,
	datab => \mux_final|Selector24~1_combout\,
	datac => \mux_final|Selector28~7_combout\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector24~6_combout\);

-- Location: LCCOMB_X28_Y25_N22
\mux_final|Selector24~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector24~2_combout\ = (\mux_final|Selector27~11_combout\ & ((\mux_final|Selector27~2_combout\ & (\a[7]~input_o\)) # (!\mux_final|Selector27~2_combout\ & ((\mux_final|Selector24~6_combout\))))) # (!\mux_final|Selector27~11_combout\ & 
-- (((\mux_final|Selector27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \mux_final|Selector24~6_combout\,
	datac => \mux_final|Selector27~11_combout\,
	datad => \mux_final|Selector27~2_combout\,
	combout => \mux_final|Selector24~2_combout\);

-- Location: LCCOMB_X34_Y23_N4
\despla_M|ShiftRight1~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~53_combout\ = (\b[3]~input_o\ & (!\despla_M|ShiftLeft0~4_combout\ & ((\a[31]~input_o\)))) # (!\b[3]~input_o\ & (((\despla_M|ShiftRight0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \despla_M|ShiftLeft0~4_combout\,
	datac => \despla_M|ShiftRight0~62_combout\,
	datad => \a[31]~input_o\,
	combout => \despla_M|ShiftRight1~53_combout\);

-- Location: LCCOMB_X28_Y25_N8
\mux_final|Selector24~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector24~3_combout\ = (\mux_final|Selector27~3_combout\ & ((\mux_final|Selector24~2_combout\ & ((\despla_M|ShiftRight1~53_combout\))) # (!\mux_final|Selector24~2_combout\ & (\despla_M|ShiftLeft0~27_combout\)))) # 
-- (!\mux_final|Selector27~3_combout\ & (((\mux_final|Selector24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~27_combout\,
	datab => \mux_final|Selector27~3_combout\,
	datac => \mux_final|Selector24~2_combout\,
	datad => \despla_M|ShiftRight1~53_combout\,
	combout => \mux_final|Selector24~3_combout\);

-- Location: LCCOMB_X36_Y29_N6
\mux_final|Selector24~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector24~4_combout\ = (\mux_final|Selector24~3_combout\ & ((\Mux2~1_combout\) # ((\mux_final|Selector0~0_combout\ & \sumalg_M|Add0~16_combout\)))) # (!\mux_final|Selector24~3_combout\ & (\mux_final|Selector0~0_combout\ & 
-- (\sumalg_M|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector24~3_combout\,
	datab => \mux_final|Selector0~0_combout\,
	datac => \sumalg_M|Add0~16_combout\,
	datad => \Mux2~1_combout\,
	combout => \mux_final|Selector24~4_combout\);

-- Location: LCCOMB_X34_Y24_N28
\mux_final|Selector23~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector23~10_combout\ = (\mux_final|Selector28~6_combout\) # ((!\Mux2~0_combout\) # (!\opALU[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_final|Selector28~6_combout\,
	datac => \opALU[4]~input_o\,
	datad => \Mux2~0_combout\,
	combout => \mux_final|Selector23~10_combout\);

-- Location: LCCOMB_X35_Y25_N20
\mux_final|Selector23~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector23~6_combout\ = (\Mux0~0_combout\ & (\b[3]~input_o\ & (\opALU[4]~input_o\ & !\mux_final|Selector28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \b[3]~input_o\,
	datac => \opALU[4]~input_o\,
	datad => \mux_final|Selector28~4_combout\,
	combout => \mux_final|Selector23~6_combout\);

-- Location: LCCOMB_X34_Y24_N6
\mux_final|Selector23~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector23~11_combout\ = (((!\mux_final|Selector28~6_combout\ & \mux_final|Selector23~6_combout\)) # (!\opALU[4]~input_o\)) # (!\Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \mux_final|Selector28~6_combout\,
	datac => \opALU[4]~input_o\,
	datad => \mux_final|Selector23~6_combout\,
	combout => \mux_final|Selector23~11_combout\);

-- Location: LCCOMB_X34_Y24_N8
\mux_final|Selector23~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector23~7_combout\ = (\mux_final|Selector23~10_combout\ & (((\opALU[4]~input_o\ & !\Mux1~0_combout\)) # (!\mux_final|Selector23~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector23~11_combout\,
	datab => \mux_final|Selector23~10_combout\,
	datac => \opALU[4]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \mux_final|Selector23~7_combout\);

-- Location: LCCOMB_X35_Y24_N14
\mux_final|Selector23~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector23~8_combout\ = (\mux_final|Selector23~7_combout\ & ((\mux_final|Selector23~11_combout\ & ((\sumalg_M|Add0~18_combout\))) # (!\mux_final|Selector23~11_combout\ & (\a[8]~input_o\)))) # (!\mux_final|Selector23~7_combout\ & 
-- (!\mux_final|Selector23~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector23~7_combout\,
	datab => \mux_final|Selector23~11_combout\,
	datac => \a[8]~input_o\,
	datad => \sumalg_M|Add0~18_combout\,
	combout => \mux_final|Selector23~8_combout\);

-- Location: LCCOMB_X35_Y24_N4
\mux_final|Selector23~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector23~12_combout\ = (\mux_final|Selector28~8_combout\ & ((\mux_final|Selector28~7_combout\ & (\a[8]~input_o\ & \b[8]~input_o\)) # (!\mux_final|Selector28~7_combout\ & ((\a[8]~input_o\) # (\b[8]~input_o\))))) # 
-- (!\mux_final|Selector28~8_combout\ & ((\a[8]~input_o\ $ (\b[8]~input_o\)) # (!\mux_final|Selector28~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~8_combout\,
	datab => \mux_final|Selector28~7_combout\,
	datac => \a[8]~input_o\,
	datad => \b[8]~input_o\,
	combout => \mux_final|Selector23~12_combout\);

-- Location: LCCOMB_X29_Y26_N2
\despla_M|ShiftLeft0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~29_combout\ = (\b[1]~input_o\ & (\a[6]~input_o\)) # (!\b[1]~input_o\ & ((\a[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \a[8]~input_o\,
	datac => \b[1]~input_o\,
	combout => \despla_M|ShiftLeft0~29_combout\);

-- Location: LCCOMB_X29_Y26_N20
\despla_M|ShiftLeft0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~30_combout\ = (\b[0]~input_o\ & ((\despla_M|ShiftLeft0~25_combout\))) # (!\b[0]~input_o\ & (\despla_M|ShiftLeft0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftLeft0~29_combout\,
	datac => \despla_M|ShiftLeft0~25_combout\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftLeft0~30_combout\);

-- Location: LCCOMB_X28_Y24_N22
\despla_M|ShiftLeft0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~28_combout\ = (\a[0]~input_o\ & (!\b[1]~input_o\ & (!\b[0]~input_o\ & !\b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftLeft0~28_combout\);

-- Location: LCCOMB_X28_Y24_N0
\despla_M|ShiftLeft0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~31_combout\ = (\b[3]~input_o\ & (((\despla_M|ShiftLeft0~28_combout\)))) # (!\b[3]~input_o\ & (\despla_M|ShiftLeft0~30_combout\ & ((!\b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~30_combout\,
	datab => \b[3]~input_o\,
	datac => \despla_M|ShiftLeft0~28_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftLeft0~31_combout\);

-- Location: LCCOMB_X28_Y24_N26
\despla_M|ShiftLeft0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~32_combout\ = (\despla_M|ShiftLeft0~31_combout\) # ((\b[2]~input_o\ & (\despla_M|ShiftLeft0~14_combout\ & !\b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \despla_M|ShiftLeft0~14_combout\,
	datac => \despla_M|ShiftLeft0~31_combout\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftLeft0~32_combout\);

-- Location: LCCOMB_X32_Y26_N18
\despla_M|ShiftRight1~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~54_combout\ = (!\b[3]~input_o\ & ((\b[2]~input_o\ & ((\despla_M|ShiftRight0~18_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftRight0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~21_combout\,
	datab => \despla_M|ShiftRight0~18_combout\,
	datac => \b[2]~input_o\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftRight1~54_combout\);

-- Location: LCCOMB_X32_Y26_N28
\despla_M|ShiftRight0~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~65_combout\ = (\despla_M|ShiftRight1~54_combout\) # ((\a[31]~input_o\ & \b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \despla_M|ShiftRight1~54_combout\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftRight0~65_combout\);

-- Location: LCCOMB_X34_Y23_N0
\mux_final|Selector23~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector23~4_combout\ = (\mux_final|Selector28~19_combout\ & ((\despla_M|ShiftRight0~16_combout\) # ((\mux_final|Selector28~10_combout\)))) # (!\mux_final|Selector28~19_combout\ & (((\despla_M|ShiftRight0~65_combout\ & 
-- !\mux_final|Selector28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~19_combout\,
	datab => \despla_M|ShiftRight0~16_combout\,
	datac => \despla_M|ShiftRight0~65_combout\,
	datad => \mux_final|Selector28~10_combout\,
	combout => \mux_final|Selector23~4_combout\);

-- Location: LCCOMB_X35_Y24_N28
\mux_final|Selector23~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector23~5_combout\ = (\mux_final|Selector28~18_combout\ & ((\mux_final|Selector23~4_combout\ & ((\despla_M|ShiftRight1~54_combout\))) # (!\mux_final|Selector23~4_combout\ & (\despla_M|ShiftLeft0~32_combout\)))) # 
-- (!\mux_final|Selector28~18_combout\ & (((\mux_final|Selector23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~18_combout\,
	datab => \despla_M|ShiftLeft0~32_combout\,
	datac => \mux_final|Selector23~4_combout\,
	datad => \despla_M|ShiftRight1~54_combout\,
	combout => \mux_final|Selector23~5_combout\);

-- Location: LCCOMB_X35_Y24_N6
\mux_final|Selector23~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector23~13_combout\ = (\mux_final|Selector23~12_combout\ & ((\mux_final|Selector28~8_combout\) # ((\mux_final|Selector28~7_combout\) # (\mux_final|Selector23~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~8_combout\,
	datab => \mux_final|Selector28~7_combout\,
	datac => \mux_final|Selector23~12_combout\,
	datad => \mux_final|Selector23~5_combout\,
	combout => \mux_final|Selector23~13_combout\);

-- Location: LCCOMB_X35_Y24_N8
\mux_final|Selector23~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector23~9_combout\ = (\mux_final|Selector23~10_combout\ & (\mux_final|Selector23~8_combout\)) # (!\mux_final|Selector23~10_combout\ & ((\mux_final|Selector23~8_combout\ & ((\mux_final|Selector23~13_combout\))) # 
-- (!\mux_final|Selector23~8_combout\ & (\despla_M|ShiftRight0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector23~10_combout\,
	datab => \mux_final|Selector23~8_combout\,
	datac => \despla_M|ShiftRight0~29_combout\,
	datad => \mux_final|Selector23~13_combout\,
	combout => \mux_final|Selector23~9_combout\);

-- Location: LCCOMB_X29_Y23_N14
\despla_M|ShiftRight1~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~55_combout\ = (!\b[3]~input_o\ & ((\despla_M|ShiftRight1~21_combout\) # (\despla_M|ShiftRight1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftRight1~21_combout\,
	datac => \despla_M|ShiftRight1~18_combout\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftRight1~55_combout\);

-- Location: LCCOMB_X29_Y23_N0
\despla_M|ShiftRight0~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~66_combout\ = (\b[3]~input_o\ & (((\a[31]~input_o\)))) # (!\b[3]~input_o\ & ((\despla_M|ShiftRight0~39_combout\) # ((\despla_M|ShiftRight1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \despla_M|ShiftRight0~39_combout\,
	datac => \despla_M|ShiftRight1~18_combout\,
	datad => \a[31]~input_o\,
	combout => \despla_M|ShiftRight0~66_combout\);

-- Location: LCCOMB_X32_Y23_N20
\mux_final|Selector22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector22~0_combout\ = (\mux_final|Selector28~19_combout\ & ((\despla_M|ShiftRight0~35_combout\) # ((\mux_final|Selector28~10_combout\)))) # (!\mux_final|Selector28~19_combout\ & (((!\mux_final|Selector28~10_combout\ & 
-- \despla_M|ShiftRight0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~35_combout\,
	datab => \mux_final|Selector28~19_combout\,
	datac => \mux_final|Selector28~10_combout\,
	datad => \despla_M|ShiftRight0~66_combout\,
	combout => \mux_final|Selector22~0_combout\);

-- Location: LCCOMB_X29_Y26_N14
\despla_M|ShiftLeft0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~33_combout\ = (\b[1]~input_o\ & ((\a[7]~input_o\))) # (!\b[1]~input_o\ & (\a[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[9]~input_o\,
	datab => \a[7]~input_o\,
	datac => \b[1]~input_o\,
	combout => \despla_M|ShiftLeft0~33_combout\);

-- Location: LCCOMB_X30_Y26_N24
\despla_M|ShiftLeft0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~34_combout\ = (\b[0]~input_o\ & (\despla_M|ShiftLeft0~29_combout\)) # (!\b[0]~input_o\ & ((\despla_M|ShiftLeft0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~29_combout\,
	datac => \b[0]~input_o\,
	datad => \despla_M|ShiftLeft0~33_combout\,
	combout => \despla_M|ShiftLeft0~34_combout\);

-- Location: LCCOMB_X29_Y24_N2
\despla_M|ShiftLeft0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~35_combout\ = (\b[2]~input_o\ & ((\despla_M|ShiftLeft0~19_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftLeft0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~34_combout\,
	datac => \despla_M|ShiftLeft0~19_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftLeft0~35_combout\);

-- Location: LCCOMB_X29_Y24_N28
\despla_M|ShiftLeft0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~36_combout\ = (\b[3]~input_o\ & (!\b[2]~input_o\ & ((\despla_M|ShiftLeft0~17_combout\)))) # (!\b[3]~input_o\ & (((\despla_M|ShiftLeft0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \despla_M|ShiftLeft0~35_combout\,
	datac => \b[3]~input_o\,
	datad => \despla_M|ShiftLeft0~17_combout\,
	combout => \despla_M|ShiftLeft0~36_combout\);

-- Location: LCCOMB_X32_Y23_N6
\mux_final|Selector22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector22~1_combout\ = (\mux_final|Selector22~0_combout\ & ((\despla_M|ShiftRight1~55_combout\) # ((!\mux_final|Selector28~18_combout\)))) # (!\mux_final|Selector22~0_combout\ & (((\despla_M|ShiftLeft0~36_combout\ & 
-- \mux_final|Selector28~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~55_combout\,
	datab => \mux_final|Selector22~0_combout\,
	datac => \despla_M|ShiftLeft0~36_combout\,
	datad => \mux_final|Selector28~18_combout\,
	combout => \mux_final|Selector22~1_combout\);

-- Location: LCCOMB_X35_Y24_N24
\mux_final|Selector22~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector22~4_combout\ = (\mux_final|Selector28~8_combout\ & ((\mux_final|Selector28~7_combout\ & (\a[9]~input_o\ & \b[9]~input_o\)) # (!\mux_final|Selector28~7_combout\ & ((\a[9]~input_o\) # (\b[9]~input_o\))))) # 
-- (!\mux_final|Selector28~8_combout\ & ((\a[9]~input_o\ $ (\b[9]~input_o\)) # (!\mux_final|Selector28~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~8_combout\,
	datab => \mux_final|Selector28~7_combout\,
	datac => \a[9]~input_o\,
	datad => \b[9]~input_o\,
	combout => \mux_final|Selector22~4_combout\);

-- Location: LCCOMB_X35_Y24_N18
\mux_final|Selector22~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector22~5_combout\ = (\mux_final|Selector22~4_combout\ & ((\mux_final|Selector22~1_combout\) # ((\mux_final|Selector28~7_combout\) # (\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector22~1_combout\,
	datab => \mux_final|Selector28~7_combout\,
	datac => \mux_final|Selector28~8_combout\,
	datad => \mux_final|Selector22~4_combout\,
	combout => \mux_final|Selector22~5_combout\);

-- Location: LCCOMB_X35_Y24_N26
\mux_final|Selector22~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector22~2_combout\ = (\mux_final|Selector23~11_combout\ & (\sumalg_M|Add0~20_combout\ & ((\mux_final|Selector23~7_combout\)))) # (!\mux_final|Selector23~11_combout\ & (((\a[9]~input_o\) # (!\mux_final|Selector23~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|Add0~20_combout\,
	datab => \a[9]~input_o\,
	datac => \mux_final|Selector23~11_combout\,
	datad => \mux_final|Selector23~7_combout\,
	combout => \mux_final|Selector22~2_combout\);

-- Location: LCCOMB_X35_Y24_N20
\mux_final|Selector22~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector22~3_combout\ = (\mux_final|Selector22~2_combout\ & (((\mux_final|Selector22~5_combout\) # (\mux_final|Selector23~10_combout\)))) # (!\mux_final|Selector22~2_combout\ & (\despla_M|ShiftRight0~38_combout\ & 
-- ((!\mux_final|Selector23~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~38_combout\,
	datab => \mux_final|Selector22~5_combout\,
	datac => \mux_final|Selector22~2_combout\,
	datad => \mux_final|Selector23~10_combout\,
	combout => \mux_final|Selector22~3_combout\);

-- Location: LCCOMB_X35_Y24_N0
\mux_final|Selector21~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector21~2_combout\ = (\mux_final|Selector23~7_combout\ & ((\mux_final|Selector23~11_combout\ & ((\sumalg_M|Add0~22_combout\))) # (!\mux_final|Selector23~11_combout\ & (\a[10]~input_o\)))) # (!\mux_final|Selector23~7_combout\ & 
-- (!\mux_final|Selector23~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector23~7_combout\,
	datab => \mux_final|Selector23~11_combout\,
	datac => \a[10]~input_o\,
	datad => \sumalg_M|Add0~22_combout\,
	combout => \mux_final|Selector21~2_combout\);

-- Location: LCCOMB_X34_Y24_N10
\despla_M|ShiftLeft0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~37_combout\ = (\b[1]~input_o\ & ((\a[8]~input_o\))) # (!\b[1]~input_o\ & (\a[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datac => \a[10]~input_o\,
	datad => \a[8]~input_o\,
	combout => \despla_M|ShiftLeft0~37_combout\);

-- Location: LCCOMB_X34_Y24_N12
\despla_M|ShiftLeft0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~38_combout\ = (\b[0]~input_o\ & ((\despla_M|ShiftLeft0~33_combout\))) # (!\b[0]~input_o\ & (\despla_M|ShiftLeft0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~37_combout\,
	datab => \despla_M|ShiftLeft0~33_combout\,
	datac => \b[0]~input_o\,
	combout => \despla_M|ShiftLeft0~38_combout\);

-- Location: LCCOMB_X29_Y25_N10
\despla_M|ShiftLeft0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~39_combout\ = (\b[2]~input_o\ & ((\despla_M|ShiftLeft0~22_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftLeft0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~38_combout\,
	datac => \despla_M|ShiftLeft0~22_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftLeft0~39_combout\);

-- Location: LCCOMB_X29_Y25_N20
\despla_M|ShiftLeft0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~40_combout\ = (\b[3]~input_o\ & (((\despla_M|ShiftLeft0~8_combout\ & !\b[2]~input_o\)))) # (!\b[3]~input_o\ & (\despla_M|ShiftLeft0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~39_combout\,
	datab => \b[3]~input_o\,
	datac => \despla_M|ShiftLeft0~8_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftLeft0~40_combout\);

-- Location: LCCOMB_X31_Y24_N26
\despla_M|ShiftRight1~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~56_combout\ = (!\b[3]~input_o\ & \despla_M|ShiftRight1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[3]~input_o\,
	datad => \despla_M|ShiftRight1~26_combout\,
	combout => \despla_M|ShiftRight1~56_combout\);

-- Location: LCCOMB_X31_Y24_N4
\despla_M|ShiftRight0~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~67_combout\ = (\b[3]~input_o\ & (((\a[31]~input_o\)))) # (!\b[3]~input_o\ & ((\despla_M|ShiftRight0~42_combout\) # ((\despla_M|ShiftRight1~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~42_combout\,
	datab => \b[3]~input_o\,
	datac => \a[31]~input_o\,
	datad => \despla_M|ShiftRight1~25_combout\,
	combout => \despla_M|ShiftRight0~67_combout\);

-- Location: LCCOMB_X31_Y24_N6
\mux_final|Selector21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector21~0_combout\ = (\mux_final|Selector28~10_combout\ & (((\mux_final|Selector28~19_combout\)))) # (!\mux_final|Selector28~10_combout\ & ((\mux_final|Selector28~19_combout\ & ((\despla_M|ShiftRight0~44_combout\))) # 
-- (!\mux_final|Selector28~19_combout\ & (\despla_M|ShiftRight0~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~67_combout\,
	datab => \despla_M|ShiftRight0~44_combout\,
	datac => \mux_final|Selector28~10_combout\,
	datad => \mux_final|Selector28~19_combout\,
	combout => \mux_final|Selector21~0_combout\);

-- Location: LCCOMB_X35_Y24_N30
\mux_final|Selector21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector21~1_combout\ = (\mux_final|Selector21~0_combout\ & (((\despla_M|ShiftRight1~56_combout\) # (!\mux_final|Selector28~18_combout\)))) # (!\mux_final|Selector21~0_combout\ & (\despla_M|ShiftLeft0~40_combout\ & 
-- ((\mux_final|Selector28~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~40_combout\,
	datab => \despla_M|ShiftRight1~56_combout\,
	datac => \mux_final|Selector21~0_combout\,
	datad => \mux_final|Selector28~18_combout\,
	combout => \mux_final|Selector21~1_combout\);

-- Location: LCCOMB_X35_Y24_N12
\mux_final|Selector21~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector21~4_combout\ = (\mux_final|Selector28~8_combout\ & ((\mux_final|Selector28~7_combout\ & (\a[10]~input_o\ & \b[10]~input_o\)) # (!\mux_final|Selector28~7_combout\ & ((\a[10]~input_o\) # (\b[10]~input_o\))))) # 
-- (!\mux_final|Selector28~8_combout\ & ((\a[10]~input_o\ $ (\b[10]~input_o\)) # (!\mux_final|Selector28~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~8_combout\,
	datab => \mux_final|Selector28~7_combout\,
	datac => \a[10]~input_o\,
	datad => \b[10]~input_o\,
	combout => \mux_final|Selector21~4_combout\);

-- Location: LCCOMB_X35_Y24_N22
\mux_final|Selector21~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector21~5_combout\ = (\mux_final|Selector21~4_combout\ & ((\mux_final|Selector21~1_combout\) # ((\mux_final|Selector28~7_combout\) # (\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector21~1_combout\,
	datab => \mux_final|Selector28~7_combout\,
	datac => \mux_final|Selector28~8_combout\,
	datad => \mux_final|Selector21~4_combout\,
	combout => \mux_final|Selector21~5_combout\);

-- Location: LCCOMB_X35_Y24_N2
\mux_final|Selector21~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector21~3_combout\ = (\mux_final|Selector23~10_combout\ & (\mux_final|Selector21~2_combout\)) # (!\mux_final|Selector23~10_combout\ & ((\mux_final|Selector21~2_combout\ & (\mux_final|Selector21~5_combout\)) # 
-- (!\mux_final|Selector21~2_combout\ & ((\despla_M|ShiftRight0~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector23~10_combout\,
	datab => \mux_final|Selector21~2_combout\,
	datac => \mux_final|Selector21~5_combout\,
	datad => \despla_M|ShiftRight0~41_combout\,
	combout => \mux_final|Selector21~3_combout\);

-- Location: LCCOMB_X32_Y23_N4
\mux_final|Selector20~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector20~4_combout\ = (\mux_final|Selector28~8_combout\ & ((\mux_final|Selector28~7_combout\ & (\a[11]~input_o\ & \b[11]~input_o\)) # (!\mux_final|Selector28~7_combout\ & ((\a[11]~input_o\) # (\b[11]~input_o\))))) # 
-- (!\mux_final|Selector28~8_combout\ & ((\a[11]~input_o\ $ (\b[11]~input_o\)) # (!\mux_final|Selector28~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~8_combout\,
	datab => \mux_final|Selector28~7_combout\,
	datac => \a[11]~input_o\,
	datad => \b[11]~input_o\,
	combout => \mux_final|Selector20~4_combout\);

-- Location: LCCOMB_X31_Y23_N14
\despla_M|ShiftRight0~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~71_combout\ = (\b[3]~input_o\ & (\a[31]~input_o\)) # (!\b[3]~input_o\ & ((\b[2]~input_o\ & (\a[31]~input_o\)) # (!\b[2]~input_o\ & ((\despla_M|ShiftRight1~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \despla_M|ShiftRight1~40_combout\,
	datac => \b[3]~input_o\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftRight0~71_combout\);

-- Location: LCCOMB_X31_Y23_N0
\mux_final|Selector20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector20~0_combout\ = (\mux_final|Selector28~10_combout\ & (((\mux_final|Selector28~19_combout\)))) # (!\mux_final|Selector28~10_combout\ & ((\mux_final|Selector28~19_combout\ & ((\despla_M|ShiftRight0~48_combout\))) # 
-- (!\mux_final|Selector28~19_combout\ & (\despla_M|ShiftRight0~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~10_combout\,
	datab => \despla_M|ShiftRight0~71_combout\,
	datac => \mux_final|Selector28~19_combout\,
	datad => \despla_M|ShiftRight0~48_combout\,
	combout => \mux_final|Selector20~0_combout\);

-- Location: LCCOMB_X34_Y24_N14
\despla_M|ShiftLeft0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~41_combout\ = (\b[1]~input_o\ & (\a[9]~input_o\)) # (!\b[1]~input_o\ & ((\a[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[9]~input_o\,
	datac => \a[11]~input_o\,
	datad => \b[1]~input_o\,
	combout => \despla_M|ShiftLeft0~41_combout\);

-- Location: LCCOMB_X34_Y24_N0
\despla_M|ShiftLeft0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~42_combout\ = (\b[0]~input_o\ & (\despla_M|ShiftLeft0~37_combout\)) # (!\b[0]~input_o\ & ((\despla_M|ShiftLeft0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~37_combout\,
	datab => \b[0]~input_o\,
	datac => \despla_M|ShiftLeft0~41_combout\,
	combout => \despla_M|ShiftLeft0~42_combout\);

-- Location: LCCOMB_X27_Y25_N28
\despla_M|ShiftLeft0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~43_combout\ = (\b[2]~input_o\ & (\despla_M|ShiftLeft0~26_combout\)) # (!\b[2]~input_o\ & ((\despla_M|ShiftLeft0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftLeft0~26_combout\,
	datac => \b[2]~input_o\,
	datad => \despla_M|ShiftLeft0~42_combout\,
	combout => \despla_M|ShiftLeft0~43_combout\);

-- Location: LCCOMB_X27_Y25_N30
\despla_M|ShiftLeft0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~44_combout\ = (\b[3]~input_o\ & (\despla_M|ShiftLeft0~24_combout\ & ((!\b[2]~input_o\)))) # (!\b[3]~input_o\ & (((\despla_M|ShiftLeft0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~24_combout\,
	datab => \despla_M|ShiftLeft0~43_combout\,
	datac => \b[2]~input_o\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftLeft0~44_combout\);

-- Location: LCCOMB_X31_Y23_N6
\despla_M|ShiftRight1~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~57_combout\ = (!\b[3]~input_o\ & \despla_M|ShiftRight1~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[3]~input_o\,
	datad => \despla_M|ShiftRight1~41_combout\,
	combout => \despla_M|ShiftRight1~57_combout\);

-- Location: LCCOMB_X32_Y23_N24
\mux_final|Selector20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector20~1_combout\ = (\mux_final|Selector20~0_combout\ & (((\despla_M|ShiftRight1~57_combout\) # (!\mux_final|Selector28~18_combout\)))) # (!\mux_final|Selector20~0_combout\ & (\despla_M|ShiftLeft0~44_combout\ & 
-- ((\mux_final|Selector28~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector20~0_combout\,
	datab => \despla_M|ShiftLeft0~44_combout\,
	datac => \despla_M|ShiftRight1~57_combout\,
	datad => \mux_final|Selector28~18_combout\,
	combout => \mux_final|Selector20~1_combout\);

-- Location: LCCOMB_X32_Y23_N22
\mux_final|Selector20~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector20~5_combout\ = (\mux_final|Selector20~4_combout\ & ((\mux_final|Selector28~8_combout\) # ((\mux_final|Selector28~7_combout\) # (\mux_final|Selector20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~8_combout\,
	datab => \mux_final|Selector20~4_combout\,
	datac => \mux_final|Selector28~7_combout\,
	datad => \mux_final|Selector20~1_combout\,
	combout => \mux_final|Selector20~5_combout\);

-- Location: LCCOMB_X34_Y24_N26
\mux_final|Selector20~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector20~2_combout\ = (\mux_final|Selector23~11_combout\ & (((\mux_final|Selector23~7_combout\ & \sumalg_M|Add0~24_combout\)))) # (!\mux_final|Selector23~11_combout\ & ((\a[11]~input_o\) # ((!\mux_final|Selector23~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector23~11_combout\,
	datab => \a[11]~input_o\,
	datac => \mux_final|Selector23~7_combout\,
	datad => \sumalg_M|Add0~24_combout\,
	combout => \mux_final|Selector20~2_combout\);

-- Location: LCCOMB_X31_Y23_N26
\mux_final|Selector20~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector20~3_combout\ = (\mux_final|Selector23~10_combout\ & (((\mux_final|Selector20~2_combout\)))) # (!\mux_final|Selector23~10_combout\ & ((\mux_final|Selector20~2_combout\ & (\mux_final|Selector20~5_combout\)) # 
-- (!\mux_final|Selector20~2_combout\ & ((\despla_M|ShiftRight0~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector23~10_combout\,
	datab => \mux_final|Selector20~5_combout\,
	datac => \despla_M|ShiftRight0~45_combout\,
	datad => \mux_final|Selector20~2_combout\,
	combout => \mux_final|Selector20~3_combout\);

-- Location: LCCOMB_X34_Y24_N30
\mux_final|Selector19~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector19~2_combout\ = (\mux_final|Selector23~11_combout\ & (\mux_final|Selector23~7_combout\ & ((\sumalg_M|Add0~26_combout\)))) # (!\mux_final|Selector23~11_combout\ & (((\a[12]~input_o\)) # (!\mux_final|Selector23~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector23~11_combout\,
	datab => \mux_final|Selector23~7_combout\,
	datac => \a[12]~input_o\,
	datad => \sumalg_M|Add0~26_combout\,
	combout => \mux_final|Selector19~2_combout\);

-- Location: LCCOMB_X37_Y22_N24
\mux_final|Selector19~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector19~4_combout\ = (\mux_final|Selector28~7_combout\ & ((\b[12]~input_o\ & (\a[12]~input_o\ $ (!\mux_final|Selector28~8_combout\))) # (!\b[12]~input_o\ & (\a[12]~input_o\ & !\mux_final|Selector28~8_combout\)))) # 
-- (!\mux_final|Selector28~7_combout\ & ((\b[12]~input_o\) # ((\a[12]~input_o\) # (!\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~7_combout\,
	datab => \b[12]~input_o\,
	datac => \a[12]~input_o\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector19~4_combout\);

-- Location: LCCOMB_X32_Y26_N10
\despla_M|ShiftRight0~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~72_combout\ = (\b[2]~input_o\ & (((\a[31]~input_o\)))) # (!\b[2]~input_o\ & ((\b[3]~input_o\ & ((\a[31]~input_o\))) # (!\b[3]~input_o\ & (\despla_M|ShiftRight0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[3]~input_o\,
	datac => \despla_M|ShiftRight0~18_combout\,
	datad => \a[31]~input_o\,
	combout => \despla_M|ShiftRight0~72_combout\);

-- Location: LCCOMB_X32_Y26_N14
\mux_final|Selector19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector19~0_combout\ = (\mux_final|Selector28~10_combout\ & (((\mux_final|Selector28~19_combout\)))) # (!\mux_final|Selector28~10_combout\ & ((\mux_final|Selector28~19_combout\ & (\despla_M|ShiftRight0~52_combout\)) # 
-- (!\mux_final|Selector28~19_combout\ & ((\despla_M|ShiftRight0~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~10_combout\,
	datab => \despla_M|ShiftRight0~52_combout\,
	datac => \mux_final|Selector28~19_combout\,
	datad => \despla_M|ShiftRight0~72_combout\,
	combout => \mux_final|Selector19~0_combout\);

-- Location: LCCOMB_X32_Y22_N26
\despla_M|ShiftRight1~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~58_combout\ = (\despla_M|ShiftRight1~23_combout\ & ((\despla_M|ShiftRight0~17_combout\) # ((\despla_M|ShiftRight1~6_combout\ & \b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~23_combout\,
	datab => \despla_M|ShiftRight1~6_combout\,
	datac => \b[1]~input_o\,
	datad => \despla_M|ShiftRight0~17_combout\,
	combout => \despla_M|ShiftRight1~58_combout\);

-- Location: LCCOMB_X30_Y24_N18
\despla_M|ShiftLeft0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~45_combout\ = (\b[1]~input_o\ & (\a[10]~input_o\)) # (!\b[1]~input_o\ & ((\a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[10]~input_o\,
	datad => \a[12]~input_o\,
	combout => \despla_M|ShiftLeft0~45_combout\);

-- Location: LCCOMB_X34_Y24_N4
\despla_M|ShiftLeft0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~46_combout\ = (\b[0]~input_o\ & ((\despla_M|ShiftLeft0~41_combout\))) # (!\b[0]~input_o\ & (\despla_M|ShiftLeft0~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~45_combout\,
	datab => \b[0]~input_o\,
	datac => \despla_M|ShiftLeft0~41_combout\,
	combout => \despla_M|ShiftLeft0~46_combout\);

-- Location: LCCOMB_X28_Y24_N28
\despla_M|ShiftLeft0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~47_combout\ = (\b[2]~input_o\ & (\despla_M|ShiftLeft0~30_combout\)) # (!\b[2]~input_o\ & ((\despla_M|ShiftLeft0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~30_combout\,
	datac => \despla_M|ShiftLeft0~46_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftLeft0~47_combout\);

-- Location: LCCOMB_X28_Y24_N14
\despla_M|ShiftLeft0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~48_combout\ = (\b[3]~input_o\ & ((\despla_M|ShiftLeft0~15_combout\))) # (!\b[3]~input_o\ & (\despla_M|ShiftLeft0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftLeft0~47_combout\,
	datac => \despla_M|ShiftLeft0~15_combout\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftLeft0~48_combout\);

-- Location: LCCOMB_X37_Y22_N18
\mux_final|Selector19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector19~1_combout\ = (\mux_final|Selector19~0_combout\ & ((\despla_M|ShiftRight1~58_combout\) # ((!\mux_final|Selector28~18_combout\)))) # (!\mux_final|Selector19~0_combout\ & (((\despla_M|ShiftLeft0~48_combout\ & 
-- \mux_final|Selector28~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector19~0_combout\,
	datab => \despla_M|ShiftRight1~58_combout\,
	datac => \despla_M|ShiftLeft0~48_combout\,
	datad => \mux_final|Selector28~18_combout\,
	combout => \mux_final|Selector19~1_combout\);

-- Location: LCCOMB_X37_Y22_N26
\mux_final|Selector19~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector19~5_combout\ = (\mux_final|Selector19~4_combout\ & ((\mux_final|Selector28~8_combout\) # ((\mux_final|Selector19~1_combout\) # (\mux_final|Selector28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~8_combout\,
	datab => \mux_final|Selector19~4_combout\,
	datac => \mux_final|Selector19~1_combout\,
	datad => \mux_final|Selector28~7_combout\,
	combout => \mux_final|Selector19~5_combout\);

-- Location: LCCOMB_X34_Y24_N16
\mux_final|Selector19~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector19~3_combout\ = (\mux_final|Selector19~2_combout\ & (((\mux_final|Selector19~5_combout\) # (\mux_final|Selector23~10_combout\)))) # (!\mux_final|Selector19~2_combout\ & (\despla_M|ShiftRight0~49_combout\ & 
-- ((!\mux_final|Selector23~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector19~2_combout\,
	datab => \despla_M|ShiftRight0~49_combout\,
	datac => \mux_final|Selector19~5_combout\,
	datad => \mux_final|Selector23~10_combout\,
	combout => \mux_final|Selector19~3_combout\);

-- Location: LCCOMB_X35_Y23_N12
\mux_final|Selector18~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector18~4_combout\ = (\b[13]~input_o\ & ((\a[13]~input_o\ $ (!\mux_final|Selector28~8_combout\)) # (!\mux_final|Selector28~7_combout\))) # (!\b[13]~input_o\ & ((\a[13]~input_o\ & ((!\mux_final|Selector28~8_combout\) # 
-- (!\mux_final|Selector28~7_combout\))) # (!\a[13]~input_o\ & (!\mux_final|Selector28~7_combout\ & !\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[13]~input_o\,
	datab => \a[13]~input_o\,
	datac => \mux_final|Selector28~7_combout\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector18~4_combout\);

-- Location: LCCOMB_X32_Y22_N12
\despla_M|ShiftRight1~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~59_combout\ = (\despla_M|ShiftRight1~23_combout\ & ((\b[1]~input_o\ & ((\despla_M|ShiftRight1~19_combout\))) # (!\b[1]~input_o\ & (\despla_M|ShiftRight1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~20_combout\,
	datab => \despla_M|ShiftRight1~19_combout\,
	datac => \b[1]~input_o\,
	datad => \despla_M|ShiftRight1~23_combout\,
	combout => \despla_M|ShiftRight1~59_combout\);

-- Location: LCCOMB_X32_Y22_N6
\despla_M|ShiftRight0~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~69_combout\ = (\despla_M|ShiftRight1~23_combout\ & ((\b[1]~input_o\ & (\a[31]~input_o\)) # (!\b[1]~input_o\ & ((\despla_M|ShiftRight1~20_combout\))))) # (!\despla_M|ShiftRight1~23_combout\ & (\a[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~23_combout\,
	datab => \a[31]~input_o\,
	datac => \b[1]~input_o\,
	datad => \despla_M|ShiftRight1~20_combout\,
	combout => \despla_M|ShiftRight0~69_combout\);

-- Location: LCCOMB_X32_Y22_N16
\mux_final|Selector18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector18~0_combout\ = (\mux_final|Selector28~19_combout\ & ((\despla_M|ShiftRight0~57_combout\) # ((\mux_final|Selector28~10_combout\)))) # (!\mux_final|Selector28~19_combout\ & (((!\mux_final|Selector28~10_combout\ & 
-- \despla_M|ShiftRight0~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~57_combout\,
	datab => \mux_final|Selector28~19_combout\,
	datac => \mux_final|Selector28~10_combout\,
	datad => \despla_M|ShiftRight0~69_combout\,
	combout => \mux_final|Selector18~0_combout\);

-- Location: LCCOMB_X29_Y24_N30
\despla_M|ShiftLeft0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~49_combout\ = (\b[2]~input_o\ & (((\despla_M|ShiftLeft0~6_combout\ & !\b[1]~input_o\)))) # (!\b[2]~input_o\ & (\despla_M|ShiftLeft0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~19_combout\,
	datab => \despla_M|ShiftLeft0~6_combout\,
	datac => \b[1]~input_o\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftLeft0~49_combout\);

-- Location: LCCOMB_X30_Y24_N4
\despla_M|ShiftLeft0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~50_combout\ = (\b[1]~input_o\ & ((\a[11]~input_o\))) # (!\b[1]~input_o\ & (\a[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datac => \a[11]~input_o\,
	datad => \b[1]~input_o\,
	combout => \despla_M|ShiftLeft0~50_combout\);

-- Location: LCCOMB_X30_Y24_N6
\despla_M|ShiftLeft0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~51_combout\ = (\b[0]~input_o\ & (\despla_M|ShiftLeft0~45_combout\)) # (!\b[0]~input_o\ & ((\despla_M|ShiftLeft0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftLeft0~45_combout\,
	datac => \despla_M|ShiftLeft0~50_combout\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftLeft0~51_combout\);

-- Location: LCCOMB_X29_Y24_N16
\despla_M|ShiftLeft0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~52_combout\ = (\b[2]~input_o\ & ((\despla_M|ShiftLeft0~34_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftLeft0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~51_combout\,
	datac => \despla_M|ShiftLeft0~34_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftLeft0~52_combout\);

-- Location: LCCOMB_X29_Y24_N18
\despla_M|ShiftLeft0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~53_combout\ = (\b[3]~input_o\ & (\despla_M|ShiftLeft0~49_combout\)) # (!\b[3]~input_o\ & ((\despla_M|ShiftLeft0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~49_combout\,
	datab => \despla_M|ShiftLeft0~52_combout\,
	datac => \b[3]~input_o\,
	combout => \despla_M|ShiftLeft0~53_combout\);

-- Location: LCCOMB_X32_Y22_N10
\mux_final|Selector18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector18~1_combout\ = (\mux_final|Selector18~0_combout\ & ((\despla_M|ShiftRight1~59_combout\) # ((!\mux_final|Selector28~18_combout\)))) # (!\mux_final|Selector18~0_combout\ & (((\despla_M|ShiftLeft0~53_combout\ & 
-- \mux_final|Selector28~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~59_combout\,
	datab => \mux_final|Selector18~0_combout\,
	datac => \despla_M|ShiftLeft0~53_combout\,
	datad => \mux_final|Selector28~18_combout\,
	combout => \mux_final|Selector18~1_combout\);

-- Location: LCCOMB_X35_Y23_N14
\mux_final|Selector18~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector18~5_combout\ = (\mux_final|Selector18~4_combout\ & ((\mux_final|Selector28~7_combout\) # ((\mux_final|Selector18~1_combout\) # (\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector18~4_combout\,
	datab => \mux_final|Selector28~7_combout\,
	datac => \mux_final|Selector18~1_combout\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector18~5_combout\);

-- Location: LCCOMB_X35_Y23_N8
\mux_final|Selector18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector18~2_combout\ = (\mux_final|Selector23~11_combout\ & (((\sumalg_M|Add0~28_combout\ & \mux_final|Selector23~7_combout\)))) # (!\mux_final|Selector23~11_combout\ & ((\a[13]~input_o\) # ((!\mux_final|Selector23~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector23~11_combout\,
	datab => \a[13]~input_o\,
	datac => \sumalg_M|Add0~28_combout\,
	datad => \mux_final|Selector23~7_combout\,
	combout => \mux_final|Selector18~2_combout\);

-- Location: LCCOMB_X35_Y23_N18
\mux_final|Selector18~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector18~3_combout\ = (\mux_final|Selector18~2_combout\ & (((\mux_final|Selector18~5_combout\) # (\mux_final|Selector23~10_combout\)))) # (!\mux_final|Selector18~2_combout\ & (\despla_M|ShiftRight0~54_combout\ & 
-- ((!\mux_final|Selector23~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~54_combout\,
	datab => \mux_final|Selector18~5_combout\,
	datac => \mux_final|Selector18~2_combout\,
	datad => \mux_final|Selector23~10_combout\,
	combout => \mux_final|Selector18~3_combout\);

-- Location: LCCOMB_X29_Y25_N6
\despla_M|ShiftLeft0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~54_combout\ = (\b[3]~input_o\ & ((\b[2]~input_o\ & ((\despla_M|ShiftLeft0~8_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftLeft0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~22_combout\,
	datab => \b[3]~input_o\,
	datac => \despla_M|ShiftLeft0~8_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftLeft0~54_combout\);

-- Location: LCCOMB_X30_Y24_N0
\despla_M|ShiftLeft0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~55_combout\ = (\b[1]~input_o\ & ((\a[12]~input_o\))) # (!\b[1]~input_o\ & (\a[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datac => \a[14]~input_o\,
	datad => \a[12]~input_o\,
	combout => \despla_M|ShiftLeft0~55_combout\);

-- Location: LCCOMB_X30_Y24_N2
\despla_M|ShiftLeft0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~56_combout\ = (\b[0]~input_o\ & ((\despla_M|ShiftLeft0~50_combout\))) # (!\b[0]~input_o\ & (\despla_M|ShiftLeft0~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftLeft0~55_combout\,
	datac => \despla_M|ShiftLeft0~50_combout\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftLeft0~56_combout\);

-- Location: LCCOMB_X29_Y25_N16
\despla_M|ShiftLeft0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~57_combout\ = (\b[2]~input_o\ & (\despla_M|ShiftLeft0~38_combout\)) # (!\b[2]~input_o\ & ((\despla_M|ShiftLeft0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~38_combout\,
	datab => \despla_M|ShiftLeft0~56_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftLeft0~57_combout\);

-- Location: LCCOMB_X29_Y25_N2
\despla_M|ShiftLeft0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~58_combout\ = (\despla_M|ShiftLeft0~54_combout\) # ((\despla_M|ShiftLeft0~57_combout\ & !\b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~54_combout\,
	datab => \despla_M|ShiftLeft0~57_combout\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftLeft0~58_combout\);

-- Location: LCCOMB_X32_Y22_N28
\despla_M|ShiftRight1~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~62_combout\ = (!\b[1]~input_o\ & (!\b[2]~input_o\ & (\despla_M|ShiftRight1~6_combout\ & !\b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \b[2]~input_o\,
	datac => \despla_M|ShiftRight1~6_combout\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftRight1~62_combout\);

-- Location: LCCOMB_X34_Y23_N10
\despla_M|ShiftRight0~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~70_combout\ = (\b[3]~input_o\ & (((\a[31]~input_o\)))) # (!\b[3]~input_o\ & ((\despla_M|ShiftLeft0~4_combout\ & ((\a[31]~input_o\))) # (!\despla_M|ShiftLeft0~4_combout\ & (\a[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \despla_M|ShiftLeft0~4_combout\,
	datac => \a[30]~input_o\,
	datad => \a[31]~input_o\,
	combout => \despla_M|ShiftRight0~70_combout\);

-- Location: LCCOMB_X34_Y23_N28
\mux_final|Selector17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector17~0_combout\ = (\mux_final|Selector28~19_combout\ & ((\despla_M|ShiftRight0~61_combout\) # ((\mux_final|Selector28~10_combout\)))) # (!\mux_final|Selector28~19_combout\ & (((!\mux_final|Selector28~10_combout\ & 
-- \despla_M|ShiftRight0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~19_combout\,
	datab => \despla_M|ShiftRight0~61_combout\,
	datac => \mux_final|Selector28~10_combout\,
	datad => \despla_M|ShiftRight0~70_combout\,
	combout => \mux_final|Selector17~0_combout\);

-- Location: LCCOMB_X34_Y23_N14
\mux_final|Selector17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector17~1_combout\ = (\mux_final|Selector28~18_combout\ & ((\mux_final|Selector17~0_combout\ & ((\despla_M|ShiftRight1~62_combout\))) # (!\mux_final|Selector17~0_combout\ & (\despla_M|ShiftLeft0~58_combout\)))) # 
-- (!\mux_final|Selector28~18_combout\ & (((\mux_final|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~58_combout\,
	datab => \despla_M|ShiftRight1~62_combout\,
	datac => \mux_final|Selector28~18_combout\,
	datad => \mux_final|Selector17~0_combout\,
	combout => \mux_final|Selector17~1_combout\);

-- Location: LCCOMB_X31_Y25_N4
\mux_final|Selector17~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector17~4_combout\ = (\mux_final|Selector28~8_combout\ & ((\b[14]~input_o\ & ((\a[14]~input_o\) # (!\mux_final|Selector28~7_combout\))) # (!\b[14]~input_o\ & (!\mux_final|Selector28~7_combout\ & \a[14]~input_o\)))) # 
-- (!\mux_final|Selector28~8_combout\ & ((\b[14]~input_o\ $ (\a[14]~input_o\)) # (!\mux_final|Selector28~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~8_combout\,
	datab => \b[14]~input_o\,
	datac => \mux_final|Selector28~7_combout\,
	datad => \a[14]~input_o\,
	combout => \mux_final|Selector17~4_combout\);

-- Location: LCCOMB_X35_Y23_N10
\mux_final|Selector17~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector17~5_combout\ = (\mux_final|Selector17~4_combout\ & ((\mux_final|Selector17~1_combout\) # ((\mux_final|Selector28~7_combout\) # (\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector17~1_combout\,
	datab => \mux_final|Selector17~4_combout\,
	datac => \mux_final|Selector28~7_combout\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector17~5_combout\);

-- Location: LCCOMB_X35_Y23_N20
\mux_final|Selector17~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector17~2_combout\ = (\mux_final|Selector23~11_combout\ & (\mux_final|Selector23~7_combout\ & (\sumalg_M|Add0~30_combout\))) # (!\mux_final|Selector23~11_combout\ & (((\a[14]~input_o\)) # (!\mux_final|Selector23~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector23~11_combout\,
	datab => \mux_final|Selector23~7_combout\,
	datac => \sumalg_M|Add0~30_combout\,
	datad => \a[14]~input_o\,
	combout => \mux_final|Selector17~2_combout\);

-- Location: LCCOMB_X35_Y23_N30
\mux_final|Selector17~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector17~3_combout\ = (\mux_final|Selector23~10_combout\ & (((\mux_final|Selector17~2_combout\)))) # (!\mux_final|Selector23~10_combout\ & ((\mux_final|Selector17~2_combout\ & (\mux_final|Selector17~5_combout\)) # 
-- (!\mux_final|Selector17~2_combout\ & ((\despla_M|ShiftRight0~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector17~5_combout\,
	datab => \mux_final|Selector23~10_combout\,
	datac => \despla_M|ShiftRight0~58_combout\,
	datad => \mux_final|Selector17~2_combout\,
	combout => \mux_final|Selector17~3_combout\);

-- Location: LCCOMB_X34_Y23_N26
\mux_final|Selector16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector16~0_combout\ = (\mux_final|Selector28~19_combout\ & ((\despla_M|ShiftRight0~64_combout\) # ((\mux_final|Selector28~10_combout\)))) # (!\mux_final|Selector28~19_combout\ & (((!\mux_final|Selector28~10_combout\ & \a[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~19_combout\,
	datab => \despla_M|ShiftRight0~64_combout\,
	datac => \mux_final|Selector28~10_combout\,
	datad => \a[31]~input_o\,
	combout => \mux_final|Selector16~0_combout\);

-- Location: LCCOMB_X27_Y25_N0
\despla_M|ShiftLeft0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~59_combout\ = (\b[3]~input_o\ & ((\b[2]~input_o\ & (\despla_M|ShiftLeft0~24_combout\)) # (!\b[2]~input_o\ & ((\despla_M|ShiftLeft0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~24_combout\,
	datab => \despla_M|ShiftLeft0~26_combout\,
	datac => \b[2]~input_o\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftLeft0~59_combout\);

-- Location: LCCOMB_X35_Y23_N24
\despla_M|ShiftLeft0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~60_combout\ = (\b[1]~input_o\ & ((\a[13]~input_o\))) # (!\b[1]~input_o\ & (\a[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[13]~input_o\,
	combout => \despla_M|ShiftLeft0~60_combout\);

-- Location: LCCOMB_X30_Y24_N28
\despla_M|ShiftLeft0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~61_combout\ = (\b[0]~input_o\ & (\despla_M|ShiftLeft0~55_combout\)) # (!\b[0]~input_o\ & ((\despla_M|ShiftLeft0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftLeft0~55_combout\,
	datac => \despla_M|ShiftLeft0~60_combout\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftLeft0~61_combout\);

-- Location: LCCOMB_X27_Y25_N26
\despla_M|ShiftLeft0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~62_combout\ = (\b[2]~input_o\ & ((\despla_M|ShiftLeft0~42_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftLeft0~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftLeft0~61_combout\,
	datac => \b[2]~input_o\,
	datad => \despla_M|ShiftLeft0~42_combout\,
	combout => \despla_M|ShiftLeft0~62_combout\);

-- Location: LCCOMB_X27_Y25_N12
\despla_M|ShiftLeft0~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~63_combout\ = (\despla_M|ShiftLeft0~59_combout\) # ((\despla_M|ShiftLeft0~62_combout\ & !\b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftLeft0~59_combout\,
	datac => \despla_M|ShiftLeft0~62_combout\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftLeft0~63_combout\);

-- Location: LCCOMB_X34_Y23_N16
\despla_M|ShiftRight1~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight1~60_combout\ = (!\b[3]~input_o\ & (!\despla_M|ShiftLeft0~4_combout\ & \a[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \despla_M|ShiftLeft0~4_combout\,
	datad => \a[31]~input_o\,
	combout => \despla_M|ShiftRight1~60_combout\);

-- Location: LCCOMB_X34_Y23_N12
\mux_final|Selector16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector16~1_combout\ = (\mux_final|Selector16~0_combout\ & (((\despla_M|ShiftRight1~60_combout\)) # (!\mux_final|Selector28~18_combout\))) # (!\mux_final|Selector16~0_combout\ & (\mux_final|Selector28~18_combout\ & 
-- (\despla_M|ShiftLeft0~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector16~0_combout\,
	datab => \mux_final|Selector28~18_combout\,
	datac => \despla_M|ShiftLeft0~63_combout\,
	datad => \despla_M|ShiftRight1~60_combout\,
	combout => \mux_final|Selector16~1_combout\);

-- Location: LCCOMB_X35_Y23_N22
\mux_final|Selector16~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector16~4_combout\ = (\a[15]~input_o\ & ((\b[15]~input_o\ $ (!\mux_final|Selector28~8_combout\)) # (!\mux_final|Selector28~7_combout\))) # (!\a[15]~input_o\ & ((\mux_final|Selector28~7_combout\ & (\b[15]~input_o\ & 
-- !\mux_final|Selector28~8_combout\)) # (!\mux_final|Selector28~7_combout\ & ((\b[15]~input_o\) # (!\mux_final|Selector28~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \mux_final|Selector28~7_combout\,
	datac => \b[15]~input_o\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector16~4_combout\);

-- Location: LCCOMB_X35_Y23_N16
\mux_final|Selector16~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector16~5_combout\ = (\mux_final|Selector16~4_combout\ & ((\mux_final|Selector16~1_combout\) # ((\mux_final|Selector28~7_combout\) # (\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector16~1_combout\,
	datab => \mux_final|Selector28~7_combout\,
	datac => \mux_final|Selector16~4_combout\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector16~5_combout\);

-- Location: LCCOMB_X35_Y23_N2
\mux_final|Selector16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector16~2_combout\ = (\mux_final|Selector23~7_combout\ & ((\mux_final|Selector23~11_combout\ & ((\sumalg_M|Add0~32_combout\))) # (!\mux_final|Selector23~11_combout\ & (\a[15]~input_o\)))) # (!\mux_final|Selector23~7_combout\ & 
-- (((!\mux_final|Selector23~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \mux_final|Selector23~7_combout\,
	datac => \mux_final|Selector23~11_combout\,
	datad => \sumalg_M|Add0~32_combout\,
	combout => \mux_final|Selector16~2_combout\);

-- Location: LCCOMB_X35_Y23_N28
\mux_final|Selector16~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector16~3_combout\ = (\mux_final|Selector16~2_combout\ & (((\mux_final|Selector16~5_combout\) # (\mux_final|Selector23~10_combout\)))) # (!\mux_final|Selector16~2_combout\ & (\despla_M|ShiftRight0~62_combout\ & 
-- ((!\mux_final|Selector23~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~62_combout\,
	datab => \mux_final|Selector16~5_combout\,
	datac => \mux_final|Selector16~2_combout\,
	datad => \mux_final|Selector23~10_combout\,
	combout => \mux_final|Selector16~3_combout\);

-- Location: LCCOMB_X35_Y22_N26
\mux_final|Selector15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector15~2_combout\ = (\a[16]~input_o\ & (((!\despla_M|Mux31~9_combout\ & !\Mux0~0_combout\)) # (!\opALU[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|Mux31~9_combout\,
	datab => \Mux0~0_combout\,
	datac => \a[16]~input_o\,
	datad => \opALU[4]~input_o\,
	combout => \mux_final|Selector15~2_combout\);

-- Location: LCCOMB_X32_Y26_N8
\despla_M|Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux15~1_combout\ = (!\b[4]~input_o\ & ((\despla_M|ShiftRight0~22_combout\) # ((\despla_M|ShiftRight0~29_combout\ & !\b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~29_combout\,
	datab => \despla_M|ShiftRight0~22_combout\,
	datac => \b[4]~input_o\,
	datad => \b[3]~input_o\,
	combout => \despla_M|Mux15~1_combout\);

-- Location: LCCOMB_X34_Y22_N28
\despla_M|Mux15~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux15~7_combout\ = (\despla_M|Mux15~1_combout\) # ((\b[4]~input_o\ & \a[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|Mux15~1_combout\,
	datac => \b[4]~input_o\,
	datad => \a[31]~input_o\,
	combout => \despla_M|Mux15~7_combout\);

-- Location: LCCOMB_X34_Y22_N14
\despla_M|Mux15~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux15~8_combout\ = (\opALU[3]~input_o\ & ((\mux_des_log|Selector30~2_combout\ & (\despla_M|Mux15~7_combout\)) # (!\mux_des_log|Selector30~2_combout\ & ((\a[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_des_log|Selector30~2_combout\,
	datab => \despla_M|Mux15~7_combout\,
	datac => \opALU[3]~input_o\,
	datad => \a[16]~input_o\,
	combout => \despla_M|Mux15~8_combout\);

-- Location: LCCOMB_X30_Y25_N30
\despla_M|ShiftLeft0~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~64_combout\ = (\b[1]~input_o\ & ((\a[14]~input_o\))) # (!\b[1]~input_o\ & (\a[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[16]~input_o\,
	datab => \a[14]~input_o\,
	datad => \b[1]~input_o\,
	combout => \despla_M|ShiftLeft0~64_combout\);

-- Location: LCCOMB_X30_Y24_N22
\despla_M|ShiftLeft0~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~65_combout\ = (\b[0]~input_o\ & (\despla_M|ShiftLeft0~60_combout\)) # (!\b[0]~input_o\ & ((\despla_M|ShiftLeft0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftLeft0~60_combout\,
	datac => \despla_M|ShiftLeft0~64_combout\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftLeft0~65_combout\);

-- Location: LCCOMB_X28_Y24_N24
\despla_M|ShiftLeft0~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~66_combout\ = (\b[2]~input_o\ & ((\despla_M|ShiftLeft0~46_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftLeft0~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftLeft0~65_combout\,
	datac => \despla_M|ShiftLeft0~46_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftLeft0~66_combout\);

-- Location: LCCOMB_X28_Y24_N10
\despla_M|Mux15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux15~2_combout\ = (!\b[3]~input_o\ & ((\b[4]~input_o\ & ((\despla_M|ShiftLeft0~28_combout\))) # (!\b[4]~input_o\ & (\despla_M|ShiftLeft0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \despla_M|ShiftLeft0~66_combout\,
	datac => \despla_M|ShiftLeft0~28_combout\,
	datad => \b[3]~input_o\,
	combout => \despla_M|Mux15~2_combout\);

-- Location: LCCOMB_X28_Y24_N4
\despla_M|Mux15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux15~3_combout\ = (\b[2]~input_o\ & ((\despla_M|ShiftLeft0~14_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftLeft0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~30_combout\,
	datab => \despla_M|ShiftLeft0~14_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|Mux15~3_combout\);

-- Location: LCCOMB_X28_Y24_N6
\despla_M|Mux15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux15~4_combout\ = (\despla_M|Mux15~2_combout\) # ((\despla_M|Mux15~3_combout\ & (!\b[4]~input_o\ & \b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|Mux15~2_combout\,
	datab => \despla_M|Mux15~3_combout\,
	datac => \b[4]~input_o\,
	datad => \b[3]~input_o\,
	combout => \despla_M|Mux15~4_combout\);

-- Location: LCCOMB_X34_Y22_N2
\despla_M|Mux15~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux15~5_combout\ = (\despla_M|Mux31~6_combout\ & ((\opALU[2]~input_o\ & (\despla_M|Mux15~1_combout\)) # (!\opALU[2]~input_o\ & ((\despla_M|Mux15~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|Mux15~1_combout\,
	datab => \despla_M|Mux15~4_combout\,
	datac => \opALU[2]~input_o\,
	datad => \despla_M|Mux31~6_combout\,
	combout => \despla_M|Mux15~5_combout\);

-- Location: LCCOMB_X35_Y22_N22
\despla_M|Mux15~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux15~6_combout\ = (!\opALU[3]~input_o\ & ((\despla_M|Mux15~5_combout\) # ((!\despla_M|Mux31~6_combout\ & \a[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|Mux31~6_combout\,
	datab => \opALU[3]~input_o\,
	datac => \a[16]~input_o\,
	datad => \despla_M|Mux15~5_combout\,
	combout => \despla_M|Mux15~6_combout\);

-- Location: LCCOMB_X35_Y21_N30
\despla_M|Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux15~0_combout\ = (\a[16]~input_o\ & ((\opALU[1]~input_o\ & ((\b[16]~input_o\) # (!\opALU[0]~input_o\))) # (!\opALU[1]~input_o\ & ((\opALU[0]~input_o\) # (!\b[16]~input_o\))))) # (!\a[16]~input_o\ & (((\b[16]~input_o\ & !\opALU[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[16]~input_o\,
	datab => \opALU[1]~input_o\,
	datac => \b[16]~input_o\,
	datad => \opALU[0]~input_o\,
	combout => \despla_M|Mux15~0_combout\);

-- Location: LCCOMB_X35_Y22_N12
\mux_final|Selector15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector15~3_combout\ = (\despla_M|Mux15~0_combout\ & (\despla_M|Mux31~9_combout\ & ((!\opALU[4]~input_o\) # (!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|Mux15~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \despla_M|Mux31~9_combout\,
	datad => \opALU[4]~input_o\,
	combout => \mux_final|Selector15~3_combout\);

-- Location: LCCOMB_X35_Y22_N8
\mux_final|Selector15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector15~4_combout\ = (\mux_final|Selector15~3_combout\) # ((!\Mux0~1_combout\ & ((\despla_M|Mux15~8_combout\) # (\despla_M|Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|Mux15~8_combout\,
	datab => \Mux0~1_combout\,
	datac => \despla_M|Mux15~6_combout\,
	datad => \mux_final|Selector15~3_combout\,
	combout => \mux_final|Selector15~4_combout\);

-- Location: LCCOMB_X35_Y22_N4
\mux_final|Selector15~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector15~6_combout\ = (\Mux2~0_combout\ & (\opALU[4]~input_o\ & ((\mux_final|Selector15~2_combout\) # (\mux_final|Selector15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector15~2_combout\,
	datab => \Mux2~0_combout\,
	datac => \mux_final|Selector15~4_combout\,
	datad => \opALU[4]~input_o\,
	combout => \mux_final|Selector15~6_combout\);

-- Location: LCCOMB_X35_Y22_N18
\mux_final|Selector15~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector15~5_combout\ = (\mux_final|Selector15~6_combout\) # ((\mux_final|Selector0~0_combout\ & \sumalg_M|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_final|Selector0~0_combout\,
	datac => \mux_final|Selector15~6_combout\,
	datad => \sumalg_M|Add0~34_combout\,
	combout => \mux_final|Selector15~5_combout\);

-- Location: LCCOMB_X35_Y22_N20
\mux_final|Selector11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector11~0_combout\ = (\Mux0~1_combout\ & ((\opALU[3]~input_o\) # ((\despla_M|Mux31~6_combout\) # (!\opALU[2]~input_o\)))) # (!\Mux0~1_combout\ & (((\opALU[3]~input_o\ & !\opALU[2]~input_o\)) # (!\despla_M|Mux31~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \opALU[3]~input_o\,
	datac => \despla_M|Mux31~6_combout\,
	datad => \opALU[2]~input_o\,
	combout => \mux_final|Selector11~0_combout\);

-- Location: LCCOMB_X32_Y25_N0
\mux_final|Selector11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector11~1_combout\ = (!\mux_final|Selector11~0_combout\ & (\opALU[4]~input_o\ & (\Mux0~0_combout\ & \opALU[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector11~0_combout\,
	datab => \opALU[4]~input_o\,
	datac => \Mux0~0_combout\,
	datad => \opALU[3]~input_o\,
	combout => \mux_final|Selector11~1_combout\);

-- Location: LCCOMB_X32_Y25_N26
\mux_final|Selector11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector11~2_combout\ = (\mux_final|Selector11~1_combout\ & (\b[4]~input_o\)) # (!\mux_final|Selector11~1_combout\ & (((\mux_final|Selector11~0_combout\) # (!\opALU[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \mux_final|Selector11~1_combout\,
	datac => \mux_final|Selector11~0_combout\,
	datad => \opALU[4]~input_o\,
	combout => \mux_final|Selector11~2_combout\);

-- Location: LCCOMB_X31_Y25_N2
\mux_final|Selector14~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector14~5_combout\ = (\b[17]~input_o\ & ((\a[17]~input_o\ $ (!\mux_final|Selector28~8_combout\)) # (!\mux_final|Selector28~7_combout\))) # (!\b[17]~input_o\ & ((\a[17]~input_o\ & ((!\mux_final|Selector28~8_combout\) # 
-- (!\mux_final|Selector28~7_combout\))) # (!\a[17]~input_o\ & (!\mux_final|Selector28~7_combout\ & !\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[17]~input_o\,
	datab => \a[17]~input_o\,
	datac => \mux_final|Selector28~7_combout\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector14~5_combout\);

-- Location: LCCOMB_X27_Y25_N8
\mux_final|Selector11~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector11~4_combout\ = (\opALU[2]~input_o\) # ((!\b[4]~input_o\ & \b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \opALU[2]~input_o\,
	datad => \b[3]~input_o\,
	combout => \mux_final|Selector11~4_combout\);

-- Location: LCCOMB_X27_Y25_N22
\mux_final|Selector11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector11~3_combout\ = \opALU[2]~input_o\ $ (!\b[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opALU[2]~input_o\,
	datad => \b[4]~input_o\,
	combout => \mux_final|Selector11~3_combout\);

-- Location: LCCOMB_X28_Y25_N26
\mux_final|Selector14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector14~0_combout\ = (\mux_final|Selector11~4_combout\ & (!\mux_final|Selector11~3_combout\ & (\despla_M|ShiftRight1~22_combout\))) # (!\mux_final|Selector11~4_combout\ & ((\mux_final|Selector11~3_combout\) # 
-- ((\despla_M|ShiftLeft0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector11~4_combout\,
	datab => \mux_final|Selector11~3_combout\,
	datac => \despla_M|ShiftRight1~22_combout\,
	datad => \despla_M|ShiftLeft0~100_combout\,
	combout => \mux_final|Selector14~0_combout\);

-- Location: LCCOMB_X30_Y25_N16
\despla_M|ShiftLeft0~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~67_combout\ = (\b[1]~input_o\ & ((\a[15]~input_o\))) # (!\b[1]~input_o\ & (\a[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[17]~input_o\,
	datac => \a[15]~input_o\,
	datad => \b[1]~input_o\,
	combout => \despla_M|ShiftLeft0~67_combout\);

-- Location: LCCOMB_X30_Y25_N18
\despla_M|ShiftLeft0~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~68_combout\ = (\b[0]~input_o\ & ((\despla_M|ShiftLeft0~64_combout\))) # (!\b[0]~input_o\ & (\despla_M|ShiftLeft0~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftLeft0~67_combout\,
	datac => \despla_M|ShiftLeft0~64_combout\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftLeft0~68_combout\);

-- Location: LCCOMB_X29_Y24_N4
\despla_M|ShiftLeft0~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~69_combout\ = (\b[2]~input_o\ & (\despla_M|ShiftLeft0~51_combout\)) # (!\b[2]~input_o\ & ((\despla_M|ShiftLeft0~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~51_combout\,
	datab => \despla_M|ShiftLeft0~68_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftLeft0~69_combout\);

-- Location: LCCOMB_X29_Y24_N22
\mux_final|Selector14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector14~1_combout\ = (\mux_des_log|Selector30~4_combout\ & ((\mux_final|Selector14~0_combout\ & (\despla_M|ShiftLeft0~69_combout\)) # (!\mux_final|Selector14~0_combout\ & ((\despla_M|ShiftLeft0~35_combout\))))) # 
-- (!\mux_des_log|Selector30~4_combout\ & (\mux_final|Selector14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_des_log|Selector30~4_combout\,
	datab => \mux_final|Selector14~0_combout\,
	datac => \despla_M|ShiftLeft0~69_combout\,
	datad => \despla_M|ShiftLeft0~35_combout\,
	combout => \mux_final|Selector14~1_combout\);

-- Location: LCCOMB_X32_Y25_N30
\mux_final|Selector14~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector14~6_combout\ = (\mux_final|Selector14~5_combout\ & ((\mux_final|Selector28~7_combout\) # ((\mux_final|Selector28~8_combout\) # (\mux_final|Selector14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector14~5_combout\,
	datab => \mux_final|Selector28~7_combout\,
	datac => \mux_final|Selector28~8_combout\,
	datad => \mux_final|Selector14~1_combout\,
	combout => \mux_final|Selector14~6_combout\);

-- Location: LCCOMB_X32_Y25_N4
\mux_final|Selector14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector14~2_combout\ = (\mux_final|Selector11~2_combout\ & (\mux_final|Selector11~1_combout\)) # (!\mux_final|Selector11~2_combout\ & ((\mux_final|Selector11~1_combout\ & ((\despla_M|ShiftRight0~40_combout\))) # 
-- (!\mux_final|Selector11~1_combout\ & (\mux_final|Selector14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector11~2_combout\,
	datab => \mux_final|Selector11~1_combout\,
	datac => \mux_final|Selector14~6_combout\,
	datad => \despla_M|ShiftRight0~40_combout\,
	combout => \mux_final|Selector14~2_combout\);

-- Location: LCCOMB_X36_Y29_N0
\mux_final|Selector14~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector14~3_combout\ = (\mux_final|Selector14~2_combout\ & (((\a[31]~input_o\)) # (!\mux_final|Selector11~2_combout\))) # (!\mux_final|Selector14~2_combout\ & (\mux_final|Selector11~2_combout\ & (\a[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector14~2_combout\,
	datab => \mux_final|Selector11~2_combout\,
	datac => \a[17]~input_o\,
	datad => \a[31]~input_o\,
	combout => \mux_final|Selector14~3_combout\);

-- Location: LCCOMB_X36_Y29_N2
\mux_final|Selector14~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector14~4_combout\ = (\Mux2~1_combout\ & ((\mux_final|Selector14~3_combout\) # ((\mux_final|Selector0~0_combout\ & \sumalg_M|Add0~36_combout\)))) # (!\Mux2~1_combout\ & (\mux_final|Selector0~0_combout\ & (\sumalg_M|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mux_final|Selector0~0_combout\,
	datac => \sumalg_M|Add0~36_combout\,
	datad => \mux_final|Selector14~3_combout\,
	combout => \mux_final|Selector14~4_combout\);

-- Location: LCCOMB_X28_Y25_N20
\mux_final|Selector13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector13~0_combout\ = (\mux_final|Selector11~4_combout\ & (!\mux_final|Selector11~3_combout\ & ((\despla_M|ShiftRight1~31_combout\)))) # (!\mux_final|Selector11~4_combout\ & ((\mux_final|Selector11~3_combout\) # 
-- ((\despla_M|ShiftLeft0~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector11~4_combout\,
	datab => \mux_final|Selector11~3_combout\,
	datac => \despla_M|ShiftLeft0~101_combout\,
	datad => \despla_M|ShiftRight1~31_combout\,
	combout => \mux_final|Selector13~0_combout\);

-- Location: LCCOMB_X30_Y25_N12
\despla_M|ShiftLeft0~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~70_combout\ = (\b[1]~input_o\ & (\a[16]~input_o\)) # (!\b[1]~input_o\ & ((\a[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[16]~input_o\,
	datac => \a[18]~input_o\,
	datad => \b[1]~input_o\,
	combout => \despla_M|ShiftLeft0~70_combout\);

-- Location: LCCOMB_X30_Y25_N22
\despla_M|ShiftLeft0~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~71_combout\ = (\b[0]~input_o\ & ((\despla_M|ShiftLeft0~67_combout\))) # (!\b[0]~input_o\ & (\despla_M|ShiftLeft0~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~70_combout\,
	datab => \despla_M|ShiftLeft0~67_combout\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftLeft0~71_combout\);

-- Location: LCCOMB_X29_Y25_N4
\despla_M|ShiftLeft0~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~72_combout\ = (\b[2]~input_o\ & ((\despla_M|ShiftLeft0~56_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftLeft0~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \despla_M|ShiftLeft0~71_combout\,
	datad => \despla_M|ShiftLeft0~56_combout\,
	combout => \despla_M|ShiftLeft0~72_combout\);

-- Location: LCCOMB_X29_Y25_N22
\mux_final|Selector13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector13~1_combout\ = (\mux_des_log|Selector30~4_combout\ & ((\mux_final|Selector13~0_combout\ & (\despla_M|ShiftLeft0~72_combout\)) # (!\mux_final|Selector13~0_combout\ & ((\despla_M|ShiftLeft0~39_combout\))))) # 
-- (!\mux_des_log|Selector30~4_combout\ & (\mux_final|Selector13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_des_log|Selector30~4_combout\,
	datab => \mux_final|Selector13~0_combout\,
	datac => \despla_M|ShiftLeft0~72_combout\,
	datad => \despla_M|ShiftLeft0~39_combout\,
	combout => \mux_final|Selector13~1_combout\);

-- Location: LCCOMB_X32_Y25_N18
\mux_final|Selector13~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector13~5_combout\ = (\a[18]~input_o\ & ((\mux_final|Selector28~8_combout\ $ (!\b[18]~input_o\)) # (!\mux_final|Selector28~7_combout\))) # (!\a[18]~input_o\ & ((\mux_final|Selector28~7_combout\ & (!\mux_final|Selector28~8_combout\ & 
-- \b[18]~input_o\)) # (!\mux_final|Selector28~7_combout\ & ((\b[18]~input_o\) # (!\mux_final|Selector28~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datab => \mux_final|Selector28~7_combout\,
	datac => \mux_final|Selector28~8_combout\,
	datad => \b[18]~input_o\,
	combout => \mux_final|Selector13~5_combout\);

-- Location: LCCOMB_X32_Y25_N28
\mux_final|Selector13~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector13~6_combout\ = (\mux_final|Selector13~5_combout\ & ((\mux_final|Selector13~1_combout\) # ((\mux_final|Selector28~8_combout\) # (\mux_final|Selector28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector13~1_combout\,
	datab => \mux_final|Selector28~8_combout\,
	datac => \mux_final|Selector28~7_combout\,
	datad => \mux_final|Selector13~5_combout\,
	combout => \mux_final|Selector13~6_combout\);

-- Location: LCCOMB_X32_Y25_N6
\mux_final|Selector13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector13~2_combout\ = (\mux_final|Selector11~2_combout\ & ((\a[18]~input_o\) # ((\mux_final|Selector11~1_combout\)))) # (!\mux_final|Selector11~2_combout\ & (((\mux_final|Selector13~6_combout\ & !\mux_final|Selector11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datab => \mux_final|Selector13~6_combout\,
	datac => \mux_final|Selector11~2_combout\,
	datad => \mux_final|Selector11~1_combout\,
	combout => \mux_final|Selector13~2_combout\);

-- Location: LCCOMB_X34_Y25_N30
\mux_final|Selector13~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector13~3_combout\ = (\mux_final|Selector11~1_combout\ & ((\mux_final|Selector13~2_combout\ & ((\a[31]~input_o\))) # (!\mux_final|Selector13~2_combout\ & (\despla_M|ShiftRight0~43_combout\)))) # (!\mux_final|Selector11~1_combout\ & 
-- (((\mux_final|Selector13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~43_combout\,
	datab => \a[31]~input_o\,
	datac => \mux_final|Selector11~1_combout\,
	datad => \mux_final|Selector13~2_combout\,
	combout => \mux_final|Selector13~3_combout\);

-- Location: LCCOMB_X36_Y29_N28
\mux_final|Selector13~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector13~4_combout\ = (\Mux2~1_combout\ & ((\mux_final|Selector13~3_combout\) # ((\mux_final|Selector0~0_combout\ & \sumalg_M|Add0~38_combout\)))) # (!\Mux2~1_combout\ & (\mux_final|Selector0~0_combout\ & ((\sumalg_M|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mux_final|Selector0~0_combout\,
	datac => \mux_final|Selector13~3_combout\,
	datad => \sumalg_M|Add0~38_combout\,
	combout => \mux_final|Selector13~4_combout\);

-- Location: LCCOMB_X31_Y25_N6
\mux_final|Selector12~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector12~5_combout\ = (\b[19]~input_o\ & ((\a[19]~input_o\ $ (!\mux_final|Selector28~8_combout\)) # (!\mux_final|Selector28~7_combout\))) # (!\b[19]~input_o\ & ((\mux_final|Selector28~7_combout\ & (\a[19]~input_o\ & 
-- !\mux_final|Selector28~8_combout\)) # (!\mux_final|Selector28~7_combout\ & ((\a[19]~input_o\) # (!\mux_final|Selector28~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[19]~input_o\,
	datab => \mux_final|Selector28~7_combout\,
	datac => \a[19]~input_o\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector12~5_combout\);

-- Location: LCCOMB_X28_Y25_N6
\mux_final|Selector12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector12~0_combout\ = (\mux_final|Selector11~4_combout\ & (!\mux_final|Selector11~3_combout\ & (\despla_M|ShiftRight1~44_combout\))) # (!\mux_final|Selector11~4_combout\ & ((\mux_final|Selector11~3_combout\) # 
-- ((\despla_M|ShiftLeft0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector11~4_combout\,
	datab => \mux_final|Selector11~3_combout\,
	datac => \despla_M|ShiftRight1~44_combout\,
	datad => \despla_M|ShiftLeft0~11_combout\,
	combout => \mux_final|Selector12~0_combout\);

-- Location: LCCOMB_X30_Y26_N26
\despla_M|ShiftLeft0~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~73_combout\ = (\b[1]~input_o\ & (\a[17]~input_o\)) # (!\b[1]~input_o\ & ((\a[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[17]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[19]~input_o\,
	combout => \despla_M|ShiftLeft0~73_combout\);

-- Location: LCCOMB_X30_Y25_N8
\despla_M|ShiftLeft0~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~74_combout\ = (\b[0]~input_o\ & (\despla_M|ShiftLeft0~70_combout\)) # (!\b[0]~input_o\ & ((\despla_M|ShiftLeft0~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~70_combout\,
	datab => \despla_M|ShiftLeft0~73_combout\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftLeft0~74_combout\);

-- Location: LCCOMB_X27_Y25_N2
\despla_M|ShiftLeft0~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~75_combout\ = (\b[2]~input_o\ & ((\despla_M|ShiftLeft0~61_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftLeft0~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftLeft0~74_combout\,
	datac => \b[2]~input_o\,
	datad => \despla_M|ShiftLeft0~61_combout\,
	combout => \despla_M|ShiftLeft0~75_combout\);

-- Location: LCCOMB_X27_Y25_N20
\mux_final|Selector12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector12~1_combout\ = (\mux_final|Selector12~0_combout\ & ((\despla_M|ShiftLeft0~75_combout\) # ((!\mux_des_log|Selector30~4_combout\)))) # (!\mux_final|Selector12~0_combout\ & (((\despla_M|ShiftLeft0~43_combout\ & 
-- \mux_des_log|Selector30~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector12~0_combout\,
	datab => \despla_M|ShiftLeft0~75_combout\,
	datac => \despla_M|ShiftLeft0~43_combout\,
	datad => \mux_des_log|Selector30~4_combout\,
	combout => \mux_final|Selector12~1_combout\);

-- Location: LCCOMB_X31_Y25_N8
\mux_final|Selector12~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector12~6_combout\ = (\mux_final|Selector12~5_combout\ & ((\mux_final|Selector28~7_combout\) # ((\mux_final|Selector12~1_combout\) # (\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector12~5_combout\,
	datab => \mux_final|Selector28~7_combout\,
	datac => \mux_final|Selector12~1_combout\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector12~6_combout\);

-- Location: LCCOMB_X32_Y25_N24
\mux_final|Selector12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector12~2_combout\ = (\mux_final|Selector11~1_combout\ & ((\despla_M|ShiftRight0~47_combout\) # ((\mux_final|Selector11~2_combout\)))) # (!\mux_final|Selector11~1_combout\ & (((!\mux_final|Selector11~2_combout\ & 
-- \mux_final|Selector12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~47_combout\,
	datab => \mux_final|Selector11~1_combout\,
	datac => \mux_final|Selector11~2_combout\,
	datad => \mux_final|Selector12~6_combout\,
	combout => \mux_final|Selector12~2_combout\);

-- Location: LCCOMB_X36_Y29_N22
\mux_final|Selector12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector12~3_combout\ = (\mux_final|Selector11~2_combout\ & ((\mux_final|Selector12~2_combout\ & (\a[31]~input_o\)) # (!\mux_final|Selector12~2_combout\ & ((\a[19]~input_o\))))) # (!\mux_final|Selector11~2_combout\ & 
-- (((\mux_final|Selector12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \mux_final|Selector11~2_combout\,
	datac => \a[19]~input_o\,
	datad => \mux_final|Selector12~2_combout\,
	combout => \mux_final|Selector12~3_combout\);

-- Location: LCCOMB_X36_Y29_N24
\mux_final|Selector12~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector12~4_combout\ = (\Mux2~1_combout\ & ((\mux_final|Selector12~3_combout\) # ((\mux_final|Selector0~0_combout\ & \sumalg_M|Add0~40_combout\)))) # (!\Mux2~1_combout\ & (\mux_final|Selector0~0_combout\ & ((\sumalg_M|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mux_final|Selector0~0_combout\,
	datac => \mux_final|Selector12~3_combout\,
	datad => \sumalg_M|Add0~40_combout\,
	combout => \mux_final|Selector12~4_combout\);

-- Location: LCCOMB_X34_Y25_N18
\mux_final|Selector11~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector11~11_combout\ = (\mux_final|Selector28~7_combout\ & ((\a[20]~input_o\ & (\b[20]~input_o\ $ (!\mux_final|Selector28~8_combout\))) # (!\a[20]~input_o\ & (\b[20]~input_o\ & !\mux_final|Selector28~8_combout\)))) # 
-- (!\mux_final|Selector28~7_combout\ & ((\a[20]~input_o\) # ((\b[20]~input_o\) # (!\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~7_combout\,
	datab => \a[20]~input_o\,
	datac => \b[20]~input_o\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector11~11_combout\);

-- Location: LCCOMB_X30_Y25_N26
\despla_M|ShiftLeft0~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~76_combout\ = (\b[1]~input_o\ & ((\a[18]~input_o\))) # (!\b[1]~input_o\ & (\a[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[20]~input_o\,
	datac => \a[18]~input_o\,
	datad => \b[1]~input_o\,
	combout => \despla_M|ShiftLeft0~76_combout\);

-- Location: LCCOMB_X30_Y25_N28
\despla_M|ShiftLeft0~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~77_combout\ = (\b[0]~input_o\ & (\despla_M|ShiftLeft0~73_combout\)) # (!\b[0]~input_o\ & ((\despla_M|ShiftLeft0~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftLeft0~73_combout\,
	datac => \despla_M|ShiftLeft0~76_combout\,
	datad => \b[0]~input_o\,
	combout => \despla_M|ShiftLeft0~77_combout\);

-- Location: LCCOMB_X28_Y24_N16
\despla_M|ShiftLeft0~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~78_combout\ = (\b[2]~input_o\ & ((\despla_M|ShiftLeft0~65_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftLeft0~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~77_combout\,
	datab => \despla_M|ShiftLeft0~65_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftLeft0~78_combout\);

-- Location: LCCOMB_X28_Y25_N16
\mux_final|Selector11~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector11~5_combout\ = (\mux_final|Selector11~4_combout\ & (!\mux_final|Selector11~3_combout\ & (\despla_M|ShiftRight1~48_combout\))) # (!\mux_final|Selector11~4_combout\ & ((\mux_final|Selector11~3_combout\) # 
-- ((\despla_M|ShiftLeft0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector11~4_combout\,
	datab => \mux_final|Selector11~3_combout\,
	datac => \despla_M|ShiftRight1~48_combout\,
	datad => \despla_M|ShiftLeft0~16_combout\,
	combout => \mux_final|Selector11~5_combout\);

-- Location: LCCOMB_X28_Y24_N18
\mux_final|Selector11~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector11~6_combout\ = (\mux_des_log|Selector30~4_combout\ & ((\mux_final|Selector11~5_combout\ & (\despla_M|ShiftLeft0~78_combout\)) # (!\mux_final|Selector11~5_combout\ & ((\despla_M|ShiftLeft0~47_combout\))))) # 
-- (!\mux_des_log|Selector30~4_combout\ & (((\mux_final|Selector11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~78_combout\,
	datab => \mux_des_log|Selector30~4_combout\,
	datac => \mux_final|Selector11~5_combout\,
	datad => \despla_M|ShiftLeft0~47_combout\,
	combout => \mux_final|Selector11~6_combout\);

-- Location: LCCOMB_X34_Y25_N12
\mux_final|Selector11~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector11~12_combout\ = (\mux_final|Selector11~11_combout\ & ((\mux_final|Selector28~7_combout\) # ((\mux_final|Selector11~6_combout\) # (\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~7_combout\,
	datab => \mux_final|Selector11~11_combout\,
	datac => \mux_final|Selector11~6_combout\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector11~12_combout\);

-- Location: LCCOMB_X34_Y25_N0
\mux_final|Selector11~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector11~7_combout\ = (\mux_final|Selector11~1_combout\ & (((\mux_final|Selector11~2_combout\)))) # (!\mux_final|Selector11~1_combout\ & ((\mux_final|Selector11~2_combout\ & ((\a[20]~input_o\))) # (!\mux_final|Selector11~2_combout\ & 
-- (\mux_final|Selector11~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector11~12_combout\,
	datab => \mux_final|Selector11~1_combout\,
	datac => \a[20]~input_o\,
	datad => \mux_final|Selector11~2_combout\,
	combout => \mux_final|Selector11~7_combout\);

-- Location: LCCOMB_X34_Y25_N10
\mux_final|Selector11~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector11~8_combout\ = (\mux_final|Selector11~1_combout\ & ((\mux_final|Selector11~7_combout\ & ((\a[31]~input_o\))) # (!\mux_final|Selector11~7_combout\ & (\despla_M|ShiftRight0~51_combout\)))) # (!\mux_final|Selector11~1_combout\ & 
-- (((\mux_final|Selector11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~51_combout\,
	datab => \mux_final|Selector11~1_combout\,
	datac => \a[31]~input_o\,
	datad => \mux_final|Selector11~7_combout\,
	combout => \mux_final|Selector11~8_combout\);

-- Location: LCCOMB_X36_Y29_N18
\mux_final|Selector11~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector11~9_combout\ = (\Mux2~1_combout\ & ((\mux_final|Selector11~8_combout\) # ((\mux_final|Selector0~0_combout\ & \sumalg_M|Add0~42_combout\)))) # (!\Mux2~1_combout\ & (\mux_final|Selector0~0_combout\ & ((\sumalg_M|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mux_final|Selector0~0_combout\,
	datac => \mux_final|Selector11~8_combout\,
	datad => \sumalg_M|Add0~42_combout\,
	combout => \mux_final|Selector11~9_combout\);

-- Location: LCCOMB_X31_Y25_N12
\mux_final|Selector10~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector10~5_combout\ = (\b[21]~input_o\ & ((\a[21]~input_o\ $ (!\mux_final|Selector28~8_combout\)) # (!\mux_final|Selector28~7_combout\))) # (!\b[21]~input_o\ & ((\a[21]~input_o\ & ((!\mux_final|Selector28~8_combout\) # 
-- (!\mux_final|Selector28~7_combout\))) # (!\a[21]~input_o\ & (!\mux_final|Selector28~7_combout\ & !\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[21]~input_o\,
	datab => \a[21]~input_o\,
	datac => \mux_final|Selector28~7_combout\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector10~5_combout\);

-- Location: LCCOMB_X30_Y26_N12
\despla_M|ShiftLeft0~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~79_combout\ = (\b[1]~input_o\ & ((\a[19]~input_o\))) # (!\b[1]~input_o\ & (\a[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[21]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[19]~input_o\,
	combout => \despla_M|ShiftLeft0~79_combout\);

-- Location: LCCOMB_X29_Y24_N24
\despla_M|ShiftLeft0~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~80_combout\ = (\b[0]~input_o\ & (\despla_M|ShiftLeft0~76_combout\)) # (!\b[0]~input_o\ & ((\despla_M|ShiftLeft0~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftLeft0~76_combout\,
	datac => \b[0]~input_o\,
	datad => \despla_M|ShiftLeft0~79_combout\,
	combout => \despla_M|ShiftLeft0~80_combout\);

-- Location: LCCOMB_X29_Y24_N10
\despla_M|ShiftLeft0~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~81_combout\ = (\b[2]~input_o\ & ((\despla_M|ShiftLeft0~68_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftLeft0~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \despla_M|ShiftLeft0~80_combout\,
	datad => \despla_M|ShiftLeft0~68_combout\,
	combout => \despla_M|ShiftLeft0~81_combout\);

-- Location: LCCOMB_X28_Y25_N18
\mux_final|Selector10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector10~0_combout\ = (\mux_final|Selector11~4_combout\ & (!\mux_final|Selector11~3_combout\ & ((\despla_M|ShiftRight1~49_combout\)))) # (!\mux_final|Selector11~4_combout\ & ((\mux_final|Selector11~3_combout\) # 
-- ((\despla_M|ShiftLeft0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector11~4_combout\,
	datab => \mux_final|Selector11~3_combout\,
	datac => \despla_M|ShiftLeft0~20_combout\,
	datad => \despla_M|ShiftRight1~49_combout\,
	combout => \mux_final|Selector10~0_combout\);

-- Location: LCCOMB_X29_Y24_N20
\mux_final|Selector10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector10~1_combout\ = (\mux_des_log|Selector30~4_combout\ & ((\mux_final|Selector10~0_combout\ & (\despla_M|ShiftLeft0~81_combout\)) # (!\mux_final|Selector10~0_combout\ & ((\despla_M|ShiftLeft0~52_combout\))))) # 
-- (!\mux_des_log|Selector30~4_combout\ & (((\mux_final|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~81_combout\,
	datab => \mux_des_log|Selector30~4_combout\,
	datac => \mux_final|Selector10~0_combout\,
	datad => \despla_M|ShiftLeft0~52_combout\,
	combout => \mux_final|Selector10~1_combout\);

-- Location: LCCOMB_X32_Y25_N8
\mux_final|Selector10~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector10~6_combout\ = (\mux_final|Selector10~5_combout\ & ((\mux_final|Selector28~7_combout\) # ((\mux_final|Selector28~8_combout\) # (\mux_final|Selector10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector10~5_combout\,
	datab => \mux_final|Selector28~7_combout\,
	datac => \mux_final|Selector28~8_combout\,
	datad => \mux_final|Selector10~1_combout\,
	combout => \mux_final|Selector10~6_combout\);

-- Location: LCCOMB_X32_Y25_N2
\mux_final|Selector10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector10~2_combout\ = (\mux_final|Selector11~2_combout\ & (\mux_final|Selector11~1_combout\)) # (!\mux_final|Selector11~2_combout\ & ((\mux_final|Selector11~1_combout\ & ((\despla_M|ShiftRight0~56_combout\))) # 
-- (!\mux_final|Selector11~1_combout\ & (\mux_final|Selector10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector11~2_combout\,
	datab => \mux_final|Selector11~1_combout\,
	datac => \mux_final|Selector10~6_combout\,
	datad => \despla_M|ShiftRight0~56_combout\,
	combout => \mux_final|Selector10~2_combout\);

-- Location: LCCOMB_X36_Y29_N20
\mux_final|Selector10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector10~3_combout\ = (\mux_final|Selector11~2_combout\ & ((\mux_final|Selector10~2_combout\ & (\a[31]~input_o\)) # (!\mux_final|Selector10~2_combout\ & ((\a[21]~input_o\))))) # (!\mux_final|Selector11~2_combout\ & 
-- (((\mux_final|Selector10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \mux_final|Selector11~2_combout\,
	datac => \mux_final|Selector10~2_combout\,
	datad => \a[21]~input_o\,
	combout => \mux_final|Selector10~3_combout\);

-- Location: LCCOMB_X36_Y29_N14
\mux_final|Selector10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector10~4_combout\ = (\Mux2~1_combout\ & ((\mux_final|Selector10~3_combout\) # ((\mux_final|Selector0~0_combout\ & \sumalg_M|Add0~44_combout\)))) # (!\Mux2~1_combout\ & (\mux_final|Selector0~0_combout\ & (\sumalg_M|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mux_final|Selector0~0_combout\,
	datac => \sumalg_M|Add0~44_combout\,
	datad => \mux_final|Selector10~3_combout\,
	combout => \mux_final|Selector10~4_combout\);

-- Location: LCCOMB_X28_Y25_N4
\mux_final|Selector9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector9~0_combout\ = (\mux_final|Selector11~4_combout\ & (!\mux_final|Selector11~3_combout\ & (\despla_M|ShiftRight1~52_combout\))) # (!\mux_final|Selector11~4_combout\ & ((\mux_final|Selector11~3_combout\) # 
-- ((\despla_M|ShiftLeft0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector11~4_combout\,
	datab => \mux_final|Selector11~3_combout\,
	datac => \despla_M|ShiftRight1~52_combout\,
	datad => \despla_M|ShiftLeft0~23_combout\,
	combout => \mux_final|Selector9~0_combout\);

-- Location: LCCOMB_X35_Y27_N28
\despla_M|ShiftLeft0~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~82_combout\ = (\b[1]~input_o\ & (\a[20]~input_o\)) # (!\b[1]~input_o\ & ((\a[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[1]~input_o\,
	datac => \a[20]~input_o\,
	datad => \a[22]~input_o\,
	combout => \despla_M|ShiftLeft0~82_combout\);

-- Location: LCCOMB_X29_Y23_N18
\despla_M|ShiftLeft0~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~83_combout\ = (\b[0]~input_o\ & ((\despla_M|ShiftLeft0~79_combout\))) # (!\b[0]~input_o\ & (\despla_M|ShiftLeft0~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \despla_M|ShiftLeft0~82_combout\,
	datac => \despla_M|ShiftLeft0~79_combout\,
	combout => \despla_M|ShiftLeft0~83_combout\);

-- Location: LCCOMB_X29_Y25_N8
\despla_M|ShiftLeft0~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~84_combout\ = (\b[2]~input_o\ & (\despla_M|ShiftLeft0~71_combout\)) # (!\b[2]~input_o\ & ((\despla_M|ShiftLeft0~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftLeft0~71_combout\,
	datac => \despla_M|ShiftLeft0~83_combout\,
	datad => \b[2]~input_o\,
	combout => \despla_M|ShiftLeft0~84_combout\);

-- Location: LCCOMB_X29_Y25_N18
\mux_final|Selector9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector9~1_combout\ = (\mux_des_log|Selector30~4_combout\ & ((\mux_final|Selector9~0_combout\ & (\despla_M|ShiftLeft0~84_combout\)) # (!\mux_final|Selector9~0_combout\ & ((\despla_M|ShiftLeft0~57_combout\))))) # 
-- (!\mux_des_log|Selector30~4_combout\ & (\mux_final|Selector9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_des_log|Selector30~4_combout\,
	datab => \mux_final|Selector9~0_combout\,
	datac => \despla_M|ShiftLeft0~84_combout\,
	datad => \despla_M|ShiftLeft0~57_combout\,
	combout => \mux_final|Selector9~1_combout\);

-- Location: LCCOMB_X34_Y25_N14
\mux_final|Selector9~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector9~5_combout\ = (\mux_final|Selector28~8_combout\ & ((\a[22]~input_o\ & ((\b[22]~input_o\) # (!\mux_final|Selector28~7_combout\))) # (!\a[22]~input_o\ & (\b[22]~input_o\ & !\mux_final|Selector28~7_combout\)))) # 
-- (!\mux_final|Selector28~8_combout\ & ((\a[22]~input_o\ $ (\b[22]~input_o\)) # (!\mux_final|Selector28~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~8_combout\,
	datab => \a[22]~input_o\,
	datac => \b[22]~input_o\,
	datad => \mux_final|Selector28~7_combout\,
	combout => \mux_final|Selector9~5_combout\);

-- Location: LCCOMB_X34_Y25_N8
\mux_final|Selector9~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector9~6_combout\ = (\mux_final|Selector9~5_combout\ & ((\mux_final|Selector28~7_combout\) # ((\mux_final|Selector9~1_combout\) # (\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~7_combout\,
	datab => \mux_final|Selector9~1_combout\,
	datac => \mux_final|Selector9~5_combout\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector9~6_combout\);

-- Location: LCCOMB_X34_Y25_N20
\mux_final|Selector9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector9~2_combout\ = (\mux_final|Selector11~2_combout\ & (((\mux_final|Selector11~1_combout\) # (\a[22]~input_o\)))) # (!\mux_final|Selector11~2_combout\ & (\mux_final|Selector9~6_combout\ & (!\mux_final|Selector11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector9~6_combout\,
	datab => \mux_final|Selector11~2_combout\,
	datac => \mux_final|Selector11~1_combout\,
	datad => \a[22]~input_o\,
	combout => \mux_final|Selector9~2_combout\);

-- Location: LCCOMB_X34_Y25_N6
\mux_final|Selector9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector9~3_combout\ = (\mux_final|Selector9~2_combout\ & (((\a[31]~input_o\)) # (!\mux_final|Selector11~1_combout\))) # (!\mux_final|Selector9~2_combout\ & (\mux_final|Selector11~1_combout\ & ((\despla_M|ShiftRight0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector9~2_combout\,
	datab => \mux_final|Selector11~1_combout\,
	datac => \a[31]~input_o\,
	datad => \despla_M|ShiftRight0~60_combout\,
	combout => \mux_final|Selector9~3_combout\);

-- Location: LCCOMB_X36_Y29_N16
\mux_final|Selector9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector9~4_combout\ = (\Mux2~1_combout\ & ((\mux_final|Selector9~3_combout\) # ((\sumalg_M|Add0~46_combout\ & \mux_final|Selector0~0_combout\)))) # (!\Mux2~1_combout\ & (((\sumalg_M|Add0~46_combout\ & \mux_final|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mux_final|Selector9~3_combout\,
	datac => \sumalg_M|Add0~46_combout\,
	datad => \mux_final|Selector0~0_combout\,
	combout => \mux_final|Selector9~4_combout\);

-- Location: LCCOMB_X35_Y27_N22
\despla_M|ShiftLeft0~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~85_combout\ = (\b[1]~input_o\ & ((\a[21]~input_o\))) # (!\b[1]~input_o\ & (\a[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[23]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[21]~input_o\,
	combout => \despla_M|ShiftLeft0~85_combout\);

-- Location: LCCOMB_X35_Y27_N8
\despla_M|ShiftLeft0~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~86_combout\ = (\b[0]~input_o\ & ((\despla_M|ShiftLeft0~82_combout\))) # (!\b[0]~input_o\ & (\despla_M|ShiftLeft0~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~85_combout\,
	datac => \b[0]~input_o\,
	datad => \despla_M|ShiftLeft0~82_combout\,
	combout => \despla_M|ShiftLeft0~86_combout\);

-- Location: LCCOMB_X27_Y25_N6
\despla_M|ShiftLeft0~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~87_combout\ = (\b[2]~input_o\ & ((\despla_M|ShiftLeft0~74_combout\))) # (!\b[2]~input_o\ & (\despla_M|ShiftLeft0~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~86_combout\,
	datab => \despla_M|ShiftLeft0~74_combout\,
	datac => \b[2]~input_o\,
	combout => \despla_M|ShiftLeft0~87_combout\);

-- Location: LCCOMB_X28_Y25_N14
\mux_final|Selector8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector8~0_combout\ = (\mux_final|Selector11~3_combout\ & (((!\mux_final|Selector11~4_combout\)))) # (!\mux_final|Selector11~3_combout\ & ((\mux_final|Selector11~4_combout\ & ((\despla_M|ShiftRight1~53_combout\))) # 
-- (!\mux_final|Selector11~4_combout\ & (\despla_M|ShiftLeft0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~27_combout\,
	datab => \mux_final|Selector11~3_combout\,
	datac => \mux_final|Selector11~4_combout\,
	datad => \despla_M|ShiftRight1~53_combout\,
	combout => \mux_final|Selector8~0_combout\);

-- Location: LCCOMB_X27_Y25_N24
\mux_final|Selector8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector8~1_combout\ = (\mux_des_log|Selector30~4_combout\ & ((\mux_final|Selector8~0_combout\ & (\despla_M|ShiftLeft0~87_combout\)) # (!\mux_final|Selector8~0_combout\ & ((\despla_M|ShiftLeft0~62_combout\))))) # 
-- (!\mux_des_log|Selector30~4_combout\ & (((\mux_final|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~87_combout\,
	datab => \mux_des_log|Selector30~4_combout\,
	datac => \despla_M|ShiftLeft0~62_combout\,
	datad => \mux_final|Selector8~0_combout\,
	combout => \mux_final|Selector8~1_combout\);

-- Location: LCCOMB_X34_Y25_N2
\mux_final|Selector8~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector8~5_combout\ = (\mux_final|Selector28~8_combout\ & ((\a[23]~input_o\ & ((\b[23]~input_o\) # (!\mux_final|Selector28~7_combout\))) # (!\a[23]~input_o\ & (\b[23]~input_o\ & !\mux_final|Selector28~7_combout\)))) # 
-- (!\mux_final|Selector28~8_combout\ & ((\a[23]~input_o\ $ (\b[23]~input_o\)) # (!\mux_final|Selector28~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~8_combout\,
	datab => \a[23]~input_o\,
	datac => \b[23]~input_o\,
	datad => \mux_final|Selector28~7_combout\,
	combout => \mux_final|Selector8~5_combout\);

-- Location: LCCOMB_X34_Y25_N4
\mux_final|Selector8~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector8~6_combout\ = (\mux_final|Selector8~5_combout\ & ((\mux_final|Selector28~7_combout\) # ((\mux_final|Selector8~1_combout\) # (\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~7_combout\,
	datab => \mux_final|Selector8~1_combout\,
	datac => \mux_final|Selector8~5_combout\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector8~6_combout\);

-- Location: LCCOMB_X34_Y25_N16
\mux_final|Selector8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector8~2_combout\ = (\mux_final|Selector11~1_combout\ & ((\despla_M|ShiftRight0~63_combout\) # ((\mux_final|Selector11~2_combout\)))) # (!\mux_final|Selector11~1_combout\ & (((\mux_final|Selector8~6_combout\ & 
-- !\mux_final|Selector11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~63_combout\,
	datab => \mux_final|Selector11~1_combout\,
	datac => \mux_final|Selector8~6_combout\,
	datad => \mux_final|Selector11~2_combout\,
	combout => \mux_final|Selector8~2_combout\);

-- Location: LCCOMB_X36_Y29_N10
\mux_final|Selector8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector8~3_combout\ = (\mux_final|Selector11~2_combout\ & ((\mux_final|Selector8~2_combout\ & (\a[31]~input_o\)) # (!\mux_final|Selector8~2_combout\ & ((\a[23]~input_o\))))) # (!\mux_final|Selector11~2_combout\ & 
-- (((\mux_final|Selector8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \mux_final|Selector11~2_combout\,
	datac => \mux_final|Selector8~2_combout\,
	datad => \a[23]~input_o\,
	combout => \mux_final|Selector8~3_combout\);

-- Location: LCCOMB_X36_Y29_N12
\mux_final|Selector8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector8~4_combout\ = (\mux_final|Selector8~3_combout\ & ((\Mux2~1_combout\) # ((\sumalg_M|Add0~48_combout\ & \mux_final|Selector0~0_combout\)))) # (!\mux_final|Selector8~3_combout\ & (\sumalg_M|Add0~48_combout\ & 
-- ((\mux_final|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector8~3_combout\,
	datab => \sumalg_M|Add0~48_combout\,
	datac => \Mux2~1_combout\,
	datad => \mux_final|Selector0~0_combout\,
	combout => \mux_final|Selector8~4_combout\);

-- Location: LCCOMB_X36_Y23_N26
\mux_final|Selector7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector7~6_combout\ = (\mux_final|Selector28~8_combout\ & ((\a[24]~input_o\ & ((\b[24]~input_o\) # (!\mux_final|Selector28~7_combout\))) # (!\a[24]~input_o\ & (!\mux_final|Selector28~7_combout\ & \b[24]~input_o\)))) # 
-- (!\mux_final|Selector28~8_combout\ & ((\a[24]~input_o\ $ (\b[24]~input_o\)) # (!\mux_final|Selector28~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~8_combout\,
	datab => \a[24]~input_o\,
	datac => \mux_final|Selector28~7_combout\,
	datad => \b[24]~input_o\,
	combout => \mux_final|Selector7~6_combout\);

-- Location: LCCOMB_X27_Y25_N4
\mux_final|Selector4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector4~1_combout\ = (\b[4]~input_o\) # ((\b[2]~input_o\ & !\b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datac => \b[2]~input_o\,
	datad => \b[3]~input_o\,
	combout => \mux_final|Selector4~1_combout\);

-- Location: LCCOMB_X35_Y27_N26
\despla_M|ShiftLeft0~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~88_combout\ = (\b[1]~input_o\ & ((\a[22]~input_o\))) # (!\b[1]~input_o\ & (\a[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[24]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[22]~input_o\,
	combout => \despla_M|ShiftLeft0~88_combout\);

-- Location: LCCOMB_X35_Y27_N20
\despla_M|ShiftLeft0~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~89_combout\ = (\b[0]~input_o\ & ((\despla_M|ShiftLeft0~85_combout\))) # (!\b[0]~input_o\ & (\despla_M|ShiftLeft0~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~88_combout\,
	datac => \b[0]~input_o\,
	datad => \despla_M|ShiftLeft0~85_combout\,
	combout => \despla_M|ShiftLeft0~89_combout\);

-- Location: LCCOMB_X27_Y25_N18
\mux_final|Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector4~0_combout\ = (\b[4]~input_o\) # (\b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datad => \b[3]~input_o\,
	combout => \mux_final|Selector4~0_combout\);

-- Location: LCCOMB_X28_Y24_N12
\mux_final|Selector7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector7~0_combout\ = (\mux_final|Selector4~1_combout\ & (((\mux_final|Selector4~0_combout\) # (\despla_M|ShiftLeft0~77_combout\)))) # (!\mux_final|Selector4~1_combout\ & (\despla_M|ShiftLeft0~89_combout\ & (!\mux_final|Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector4~1_combout\,
	datab => \despla_M|ShiftLeft0~89_combout\,
	datac => \mux_final|Selector4~0_combout\,
	datad => \despla_M|ShiftLeft0~77_combout\,
	combout => \mux_final|Selector7~0_combout\);

-- Location: LCCOMB_X28_Y24_N30
\mux_final|Selector7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector7~1_combout\ = (\mux_final|Selector7~0_combout\ & (((\despla_M|ShiftLeft0~32_combout\) # (!\mux_final|Selector4~0_combout\)))) # (!\mux_final|Selector7~0_combout\ & (\despla_M|ShiftLeft0~66_combout\ & (\mux_final|Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector7~0_combout\,
	datab => \despla_M|ShiftLeft0~66_combout\,
	datac => \mux_final|Selector4~0_combout\,
	datad => \despla_M|ShiftLeft0~32_combout\,
	combout => \mux_final|Selector7~1_combout\);

-- Location: LCCOMB_X32_Y23_N28
\mux_final|Selector4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector4~3_combout\ = (\opALU[3]~input_o\ & ((\b[4]~input_o\))) # (!\opALU[3]~input_o\ & (\opALU[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[3]~input_o\,
	datac => \opALU[2]~input_o\,
	datad => \b[4]~input_o\,
	combout => \mux_final|Selector4~3_combout\);

-- Location: LCCOMB_X32_Y23_N26
\mux_final|Selector4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector4~2_combout\ = (!\opALU[3]~input_o\ & ((!\b[4]~input_o\) # (!\opALU[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[3]~input_o\,
	datac => \opALU[2]~input_o\,
	datad => \b[4]~input_o\,
	combout => \mux_final|Selector4~2_combout\);

-- Location: LCCOMB_X32_Y23_N30
\mux_final|Selector7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector7~2_combout\ = (\mux_final|Selector4~3_combout\ & (((\mux_final|Selector4~2_combout\ & \despla_M|ShiftRight1~54_combout\)))) # (!\mux_final|Selector4~3_combout\ & ((\mux_final|Selector7~1_combout\) # 
-- ((!\mux_final|Selector4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector7~1_combout\,
	datab => \mux_final|Selector4~3_combout\,
	datac => \mux_final|Selector4~2_combout\,
	datad => \despla_M|ShiftRight1~54_combout\,
	combout => \mux_final|Selector7~2_combout\);

-- Location: LCCOMB_X36_Y23_N16
\mux_final|Selector7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector7~3_combout\ = (\opALU[3]~input_o\ & ((\mux_final|Selector7~2_combout\ & ((\despla_M|ShiftRight0~65_combout\))) # (!\mux_final|Selector7~2_combout\ & (\a[31]~input_o\)))) # (!\opALU[3]~input_o\ & (\mux_final|Selector7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[3]~input_o\,
	datab => \mux_final|Selector7~2_combout\,
	datac => \a[31]~input_o\,
	datad => \despla_M|ShiftRight0~65_combout\,
	combout => \mux_final|Selector7~3_combout\);

-- Location: LCCOMB_X36_Y23_N4
\mux_final|Selector7~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector7~7_combout\ = (\mux_final|Selector7~6_combout\ & ((\mux_final|Selector28~8_combout\) # ((\mux_final|Selector28~7_combout\) # (\mux_final|Selector7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~8_combout\,
	datab => \mux_final|Selector28~7_combout\,
	datac => \mux_final|Selector7~6_combout\,
	datad => \mux_final|Selector7~3_combout\,
	combout => \mux_final|Selector7~7_combout\);

-- Location: LCCOMB_X35_Y25_N30
\mux_final|Selector11~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector11~10_combout\ = (\opALU[4]~input_o\ & !\mux_final|Selector11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opALU[4]~input_o\,
	datad => \mux_final|Selector11~0_combout\,
	combout => \mux_final|Selector11~10_combout\);

-- Location: LCCOMB_X36_Y23_N10
\mux_final|Selector7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector7~4_combout\ = (\Mux2~1_combout\ & ((\mux_final|Selector11~10_combout\ & (\mux_final|Selector7~7_combout\)) # (!\mux_final|Selector11~10_combout\ & ((\a[24]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mux_final|Selector7~7_combout\,
	datac => \mux_final|Selector11~10_combout\,
	datad => \a[24]~input_o\,
	combout => \mux_final|Selector7~4_combout\);

-- Location: LCCOMB_X36_Y23_N12
\mux_final|Selector7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector7~5_combout\ = (\mux_final|Selector7~4_combout\) # ((\mux_final|Selector0~0_combout\ & \sumalg_M|Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector7~4_combout\,
	datac => \mux_final|Selector0~0_combout\,
	datad => \sumalg_M|Add0~50_combout\,
	combout => \mux_final|Selector7~5_combout\);

-- Location: LCCOMB_X35_Y27_N6
\despla_M|ShiftLeft0~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~90_combout\ = (!\b[0]~input_o\ & ((\b[1]~input_o\ & (\a[23]~input_o\)) # (!\b[1]~input_o\ & ((\a[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[23]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \a[25]~input_o\,
	combout => \despla_M|ShiftLeft0~90_combout\);

-- Location: LCCOMB_X35_Y27_N0
\despla_M|ShiftLeft0~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~91_combout\ = (\despla_M|ShiftLeft0~90_combout\) # ((\despla_M|ShiftLeft0~88_combout\ & \b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~88_combout\,
	datac => \b[0]~input_o\,
	datad => \despla_M|ShiftLeft0~90_combout\,
	combout => \despla_M|ShiftLeft0~91_combout\);

-- Location: LCCOMB_X29_Y24_N6
\mux_final|Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector6~0_combout\ = (\mux_final|Selector4~1_combout\ & (((\mux_final|Selector4~0_combout\)))) # (!\mux_final|Selector4~1_combout\ & ((\mux_final|Selector4~0_combout\ & (\despla_M|ShiftLeft0~69_combout\)) # (!\mux_final|Selector4~0_combout\ & 
-- ((\despla_M|ShiftLeft0~91_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector4~1_combout\,
	datab => \despla_M|ShiftLeft0~69_combout\,
	datac => \despla_M|ShiftLeft0~91_combout\,
	datad => \mux_final|Selector4~0_combout\,
	combout => \mux_final|Selector6~0_combout\);

-- Location: LCCOMB_X29_Y24_N8
\mux_final|Selector6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector6~1_combout\ = (\mux_final|Selector6~0_combout\ & (((\despla_M|ShiftLeft0~36_combout\) # (!\mux_final|Selector4~1_combout\)))) # (!\mux_final|Selector6~0_combout\ & (\despla_M|ShiftLeft0~80_combout\ & (\mux_final|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector6~0_combout\,
	datab => \despla_M|ShiftLeft0~80_combout\,
	datac => \mux_final|Selector4~1_combout\,
	datad => \despla_M|ShiftLeft0~36_combout\,
	combout => \mux_final|Selector6~1_combout\);

-- Location: LCCOMB_X32_Y23_N0
\mux_final|Selector6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector6~2_combout\ = (\mux_final|Selector4~2_combout\ & ((\mux_final|Selector4~3_combout\ & (\despla_M|ShiftRight1~55_combout\)) # (!\mux_final|Selector4~3_combout\ & ((\mux_final|Selector6~1_combout\))))) # (!\mux_final|Selector4~2_combout\ 
-- & (((!\mux_final|Selector4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~55_combout\,
	datab => \mux_final|Selector6~1_combout\,
	datac => \mux_final|Selector4~2_combout\,
	datad => \mux_final|Selector4~3_combout\,
	combout => \mux_final|Selector6~2_combout\);

-- Location: LCCOMB_X36_Y23_N14
\mux_final|Selector6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector6~3_combout\ = (\opALU[3]~input_o\ & ((\mux_final|Selector6~2_combout\ & (\despla_M|ShiftRight0~66_combout\)) # (!\mux_final|Selector6~2_combout\ & ((\a[31]~input_o\))))) # (!\opALU[3]~input_o\ & (((\mux_final|Selector6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[3]~input_o\,
	datab => \despla_M|ShiftRight0~66_combout\,
	datac => \a[31]~input_o\,
	datad => \mux_final|Selector6~2_combout\,
	combout => \mux_final|Selector6~3_combout\);

-- Location: LCCOMB_X36_Y23_N30
\mux_final|Selector6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector6~6_combout\ = (\mux_final|Selector28~8_combout\ & ((\mux_final|Selector28~7_combout\ & (\a[25]~input_o\ & \b[25]~input_o\)) # (!\mux_final|Selector28~7_combout\ & ((\a[25]~input_o\) # (\b[25]~input_o\))))) # 
-- (!\mux_final|Selector28~8_combout\ & ((\a[25]~input_o\ $ (\b[25]~input_o\)) # (!\mux_final|Selector28~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~8_combout\,
	datab => \mux_final|Selector28~7_combout\,
	datac => \a[25]~input_o\,
	datad => \b[25]~input_o\,
	combout => \mux_final|Selector6~6_combout\);

-- Location: LCCOMB_X36_Y23_N8
\mux_final|Selector6~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector6~7_combout\ = (\mux_final|Selector6~6_combout\ & ((\mux_final|Selector28~8_combout\) # ((\mux_final|Selector6~3_combout\) # (\mux_final|Selector28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~8_combout\,
	datab => \mux_final|Selector6~3_combout\,
	datac => \mux_final|Selector6~6_combout\,
	datad => \mux_final|Selector28~7_combout\,
	combout => \mux_final|Selector6~7_combout\);

-- Location: LCCOMB_X36_Y23_N24
\mux_final|Selector6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector6~4_combout\ = (\Mux2~1_combout\ & ((\mux_final|Selector11~10_combout\ & ((\mux_final|Selector6~7_combout\))) # (!\mux_final|Selector11~10_combout\ & (\a[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \a[25]~input_o\,
	datac => \mux_final|Selector11~10_combout\,
	datad => \mux_final|Selector6~7_combout\,
	combout => \mux_final|Selector6~4_combout\);

-- Location: LCCOMB_X36_Y23_N2
\mux_final|Selector6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector6~5_combout\ = (\mux_final|Selector6~4_combout\) # ((\sumalg_M|Add0~52_combout\ & \mux_final|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|Add0~52_combout\,
	datab => \mux_final|Selector6~4_combout\,
	datac => \mux_final|Selector0~0_combout\,
	combout => \mux_final|Selector6~5_combout\);

-- Location: LCCOMB_X36_Y23_N18
\mux_final|Selector5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector5~6_combout\ = (\mux_final|Selector28~8_combout\ & ((\b[26]~input_o\ & ((\a[26]~input_o\) # (!\mux_final|Selector28~7_combout\))) # (!\b[26]~input_o\ & (!\mux_final|Selector28~7_combout\ & \a[26]~input_o\)))) # 
-- (!\mux_final|Selector28~8_combout\ & ((\b[26]~input_o\ $ (\a[26]~input_o\)) # (!\mux_final|Selector28~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~8_combout\,
	datab => \b[26]~input_o\,
	datac => \mux_final|Selector28~7_combout\,
	datad => \a[26]~input_o\,
	combout => \mux_final|Selector5~6_combout\);

-- Location: LCCOMB_X35_Y27_N10
\despla_M|ShiftLeft0~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~92_combout\ = (\b[1]~input_o\ & ((\b[0]~input_o\ & (\a[23]~input_o\)) # (!\b[0]~input_o\ & ((\a[24]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[23]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \a[24]~input_o\,
	combout => \despla_M|ShiftLeft0~92_combout\);

-- Location: LCCOMB_X35_Y27_N4
\despla_M|ShiftLeft0~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~93_combout\ = (\b[0]~input_o\ & ((\a[25]~input_o\))) # (!\b[0]~input_o\ & (\a[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[26]~input_o\,
	datac => \b[0]~input_o\,
	datad => \a[25]~input_o\,
	combout => \despla_M|ShiftLeft0~93_combout\);

-- Location: LCCOMB_X35_Y27_N30
\despla_M|ShiftLeft0~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~94_combout\ = (\despla_M|ShiftLeft0~92_combout\) # ((!\b[1]~input_o\ & \despla_M|ShiftLeft0~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~92_combout\,
	datab => \b[1]~input_o\,
	datac => \despla_M|ShiftLeft0~93_combout\,
	combout => \despla_M|ShiftLeft0~94_combout\);

-- Location: LCCOMB_X29_Y25_N28
\mux_final|Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector5~0_combout\ = (\mux_final|Selector4~1_combout\ & ((\despla_M|ShiftLeft0~83_combout\) # ((\mux_final|Selector4~0_combout\)))) # (!\mux_final|Selector4~1_combout\ & (((!\mux_final|Selector4~0_combout\ & 
-- \despla_M|ShiftLeft0~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector4~1_combout\,
	datab => \despla_M|ShiftLeft0~83_combout\,
	datac => \mux_final|Selector4~0_combout\,
	datad => \despla_M|ShiftLeft0~94_combout\,
	combout => \mux_final|Selector5~0_combout\);

-- Location: LCCOMB_X29_Y25_N30
\mux_final|Selector5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector5~1_combout\ = (\mux_final|Selector4~0_combout\ & ((\mux_final|Selector5~0_combout\ & ((\despla_M|ShiftLeft0~40_combout\))) # (!\mux_final|Selector5~0_combout\ & (\despla_M|ShiftLeft0~72_combout\)))) # (!\mux_final|Selector4~0_combout\ 
-- & (\mux_final|Selector5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector4~0_combout\,
	datab => \mux_final|Selector5~0_combout\,
	datac => \despla_M|ShiftLeft0~72_combout\,
	datad => \despla_M|ShiftLeft0~40_combout\,
	combout => \mux_final|Selector5~1_combout\);

-- Location: LCCOMB_X32_Y23_N2
\mux_final|Selector5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector5~2_combout\ = (\mux_final|Selector4~2_combout\ & ((\mux_final|Selector4~3_combout\ & (\despla_M|ShiftRight1~56_combout\)) # (!\mux_final|Selector4~3_combout\ & ((\mux_final|Selector5~1_combout\))))) # (!\mux_final|Selector4~2_combout\ 
-- & (((!\mux_final|Selector4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector4~2_combout\,
	datab => \despla_M|ShiftRight1~56_combout\,
	datac => \mux_final|Selector5~1_combout\,
	datad => \mux_final|Selector4~3_combout\,
	combout => \mux_final|Selector5~2_combout\);

-- Location: LCCOMB_X36_Y23_N28
\mux_final|Selector5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector5~3_combout\ = (\mux_final|Selector5~2_combout\ & ((\despla_M|ShiftRight0~67_combout\) # ((!\opALU[3]~input_o\)))) # (!\mux_final|Selector5~2_combout\ & (((\a[31]~input_o\ & \opALU[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight0~67_combout\,
	datab => \mux_final|Selector5~2_combout\,
	datac => \a[31]~input_o\,
	datad => \opALU[3]~input_o\,
	combout => \mux_final|Selector5~3_combout\);

-- Location: LCCOMB_X36_Y23_N20
\mux_final|Selector5~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector5~7_combout\ = (\mux_final|Selector5~6_combout\ & ((\mux_final|Selector28~8_combout\) # ((\mux_final|Selector28~7_combout\) # (\mux_final|Selector5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~8_combout\,
	datab => \mux_final|Selector5~6_combout\,
	datac => \mux_final|Selector28~7_combout\,
	datad => \mux_final|Selector5~3_combout\,
	combout => \mux_final|Selector5~7_combout\);

-- Location: LCCOMB_X36_Y23_N6
\mux_final|Selector5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector5~4_combout\ = (\Mux2~1_combout\ & ((\mux_final|Selector11~10_combout\ & (\mux_final|Selector5~7_combout\)) # (!\mux_final|Selector11~10_combout\ & ((\a[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mux_final|Selector5~7_combout\,
	datac => \mux_final|Selector11~10_combout\,
	datad => \a[26]~input_o\,
	combout => \mux_final|Selector5~4_combout\);

-- Location: LCCOMB_X36_Y23_N0
\mux_final|Selector5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector5~5_combout\ = (\mux_final|Selector5~4_combout\) # ((\mux_final|Selector0~0_combout\ & \sumalg_M|Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector5~4_combout\,
	datac => \mux_final|Selector0~0_combout\,
	datad => \sumalg_M|Add0~54_combout\,
	combout => \mux_final|Selector5~5_combout\);

-- Location: LCCOMB_X32_Y24_N4
\despla_M|ShiftLeft0~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~95_combout\ = (\b[1]~input_o\ & ((\b[0]~input_o\ & (\a[24]~input_o\)) # (!\b[0]~input_o\ & ((\a[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[24]~input_o\,
	datad => \a[25]~input_o\,
	combout => \despla_M|ShiftLeft0~95_combout\);

-- Location: LCCOMB_X32_Y24_N14
\despla_M|ShiftLeft0~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~96_combout\ = (\b[0]~input_o\ & (\a[26]~input_o\)) # (!\b[0]~input_o\ & ((\a[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[26]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[27]~input_o\,
	combout => \despla_M|ShiftLeft0~96_combout\);

-- Location: LCCOMB_X32_Y24_N0
\despla_M|ShiftLeft0~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~97_combout\ = (\despla_M|ShiftLeft0~95_combout\) # ((\despla_M|ShiftLeft0~96_combout\ & !\b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \despla_M|ShiftLeft0~95_combout\,
	datac => \despla_M|ShiftLeft0~96_combout\,
	datad => \b[1]~input_o\,
	combout => \despla_M|ShiftLeft0~97_combout\);

-- Location: LCCOMB_X27_Y25_N14
\mux_final|Selector4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector4~4_combout\ = (\mux_final|Selector4~0_combout\ & ((\despla_M|ShiftLeft0~75_combout\) # ((\mux_final|Selector4~1_combout\)))) # (!\mux_final|Selector4~0_combout\ & (((!\mux_final|Selector4~1_combout\ & 
-- \despla_M|ShiftLeft0~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector4~0_combout\,
	datab => \despla_M|ShiftLeft0~75_combout\,
	datac => \mux_final|Selector4~1_combout\,
	datad => \despla_M|ShiftLeft0~97_combout\,
	combout => \mux_final|Selector4~4_combout\);

-- Location: LCCOMB_X32_Y23_N12
\mux_final|Selector4~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector4~5_combout\ = (\mux_final|Selector4~1_combout\ & ((\mux_final|Selector4~4_combout\ & ((\despla_M|ShiftLeft0~44_combout\))) # (!\mux_final|Selector4~4_combout\ & (\despla_M|ShiftLeft0~86_combout\)))) # (!\mux_final|Selector4~1_combout\ 
-- & (((\mux_final|Selector4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~86_combout\,
	datab => \despla_M|ShiftLeft0~44_combout\,
	datac => \mux_final|Selector4~1_combout\,
	datad => \mux_final|Selector4~4_combout\,
	combout => \mux_final|Selector4~5_combout\);

-- Location: LCCOMB_X32_Y23_N14
\mux_final|Selector4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector4~6_combout\ = (\mux_final|Selector4~2_combout\ & ((\mux_final|Selector4~3_combout\ & (\despla_M|ShiftRight1~57_combout\)) # (!\mux_final|Selector4~3_combout\ & ((\mux_final|Selector4~5_combout\))))) # (!\mux_final|Selector4~2_combout\ 
-- & (!\mux_final|Selector4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector4~2_combout\,
	datab => \mux_final|Selector4~3_combout\,
	datac => \despla_M|ShiftRight1~57_combout\,
	datad => \mux_final|Selector4~5_combout\,
	combout => \mux_final|Selector4~6_combout\);

-- Location: LCCOMB_X31_Y23_N12
\mux_final|Selector4~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector4~7_combout\ = (\mux_final|Selector4~6_combout\ & (((\despla_M|ShiftRight0~71_combout\)) # (!\opALU[3]~input_o\))) # (!\mux_final|Selector4~6_combout\ & (\opALU[3]~input_o\ & ((\a[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector4~6_combout\,
	datab => \opALU[3]~input_o\,
	datac => \despla_M|ShiftRight0~71_combout\,
	datad => \a[31]~input_o\,
	combout => \mux_final|Selector4~7_combout\);

-- Location: LCCOMB_X35_Y25_N14
\mux_final|Selector4~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector4~11_combout\ = (\a[27]~input_o\ & ((\b[27]~input_o\ $ (!\mux_final|Selector28~8_combout\)) # (!\mux_final|Selector28~7_combout\))) # (!\a[27]~input_o\ & ((\b[27]~input_o\ & ((!\mux_final|Selector28~8_combout\) # 
-- (!\mux_final|Selector28~7_combout\))) # (!\b[27]~input_o\ & (!\mux_final|Selector28~7_combout\ & !\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[27]~input_o\,
	datab => \b[27]~input_o\,
	datac => \mux_final|Selector28~7_combout\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector4~11_combout\);

-- Location: LCCOMB_X35_Y25_N16
\mux_final|Selector4~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector4~12_combout\ = (\mux_final|Selector4~11_combout\ & ((\mux_final|Selector4~7_combout\) # ((\mux_final|Selector28~7_combout\) # (\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector4~7_combout\,
	datab => \mux_final|Selector4~11_combout\,
	datac => \mux_final|Selector28~7_combout\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector4~12_combout\);

-- Location: LCCOMB_X35_Y25_N0
\mux_final|Selector4~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector4~8_combout\ = (\Mux2~1_combout\ & ((\mux_final|Selector11~10_combout\ & ((\mux_final|Selector4~12_combout\))) # (!\mux_final|Selector11~10_combout\ & (\a[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[27]~input_o\,
	datab => \mux_final|Selector4~12_combout\,
	datac => \mux_final|Selector11~10_combout\,
	datad => \Mux2~1_combout\,
	combout => \mux_final|Selector4~8_combout\);

-- Location: LCCOMB_X35_Y25_N18
\mux_final|Selector4~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector4~9_combout\ = (\mux_final|Selector4~8_combout\) # ((\mux_final|Selector0~0_combout\ & \sumalg_M|Add0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_final|Selector4~8_combout\,
	datac => \mux_final|Selector0~0_combout\,
	datad => \sumalg_M|Add0~56_combout\,
	combout => \mux_final|Selector4~9_combout\);

-- Location: LCCOMB_X32_Y22_N30
\mux_final|Selector2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector2~2_combout\ = (\opALU[3]~input_o\) # ((\opALU[2]~input_o\ & !\b[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opALU[2]~input_o\,
	datac => \b[4]~input_o\,
	datad => \opALU[3]~input_o\,
	combout => \mux_final|Selector2~2_combout\);

-- Location: LCCOMB_X32_Y22_N8
\despla_M|ShiftRight0~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftRight0~68_combout\ = (\a[31]~input_o\ & ((\b[2]~input_o\) # (\b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[2]~input_o\,
	datac => \a[31]~input_o\,
	datad => \b[3]~input_o\,
	combout => \despla_M|ShiftRight0~68_combout\);

-- Location: LCCOMB_X32_Y22_N4
\mux_final|Selector2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector2~1_combout\ = (\opALU[3]~input_o\) # ((!\opALU[2]~input_o\ & \b[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opALU[2]~input_o\,
	datac => \b[4]~input_o\,
	datad => \opALU[3]~input_o\,
	combout => \mux_final|Selector2~1_combout\);

-- Location: LCCOMB_X32_Y22_N24
\mux_final|Selector3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector3~2_combout\ = (\mux_final|Selector2~2_combout\ & ((\despla_M|ShiftRight1~58_combout\) # ((\despla_M|ShiftRight0~68_combout\ & \mux_final|Selector2~1_combout\)))) # (!\mux_final|Selector2~2_combout\ & 
-- (((\mux_final|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector2~2_combout\,
	datab => \despla_M|ShiftRight0~68_combout\,
	datac => \mux_final|Selector2~1_combout\,
	datad => \despla_M|ShiftRight1~58_combout\,
	combout => \mux_final|Selector3~2_combout\);

-- Location: LCCOMB_X32_Y24_N2
\despla_M|ShiftLeft0~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~98_combout\ = (\b[0]~input_o\ & ((\a[27]~input_o\))) # (!\b[0]~input_o\ & (\a[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[27]~input_o\,
	combout => \despla_M|ShiftLeft0~98_combout\);

-- Location: LCCOMB_X30_Y23_N10
\mux_final|Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector3~0_combout\ = (\mux_final|Selector28~9_combout\ & (((!\despla_M|ShiftRight1~23_combout\)))) # (!\mux_final|Selector28~9_combout\ & ((\despla_M|ShiftRight1~23_combout\ & (\despla_M|ShiftLeft0~98_combout\)) # 
-- (!\despla_M|ShiftRight1~23_combout\ & ((\despla_M|ShiftLeft0~89_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~98_combout\,
	datab => \mux_final|Selector28~9_combout\,
	datac => \despla_M|ShiftLeft0~89_combout\,
	datad => \despla_M|ShiftRight1~23_combout\,
	combout => \mux_final|Selector3~0_combout\);

-- Location: LCCOMB_X30_Y23_N28
\mux_final|Selector3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector3~1_combout\ = (\mux_final|Selector3~0_combout\ & (((\despla_M|ShiftLeft0~78_combout\)) # (!\mux_final|Selector28~9_combout\))) # (!\mux_final|Selector3~0_combout\ & (\mux_final|Selector28~9_combout\ & 
-- ((\despla_M|ShiftLeft0~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector3~0_combout\,
	datab => \mux_final|Selector28~9_combout\,
	datac => \despla_M|ShiftLeft0~78_combout\,
	datad => \despla_M|ShiftLeft0~93_combout\,
	combout => \mux_final|Selector3~1_combout\);

-- Location: LCCOMB_X37_Y22_N28
\mux_final|Selector3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector3~3_combout\ = (\mux_final|Selector3~2_combout\ & (((\mux_final|Selector2~0_combout\) # (\despla_M|ShiftLeft0~48_combout\)))) # (!\mux_final|Selector3~2_combout\ & (\mux_final|Selector3~1_combout\ & (!\mux_final|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector3~2_combout\,
	datab => \mux_final|Selector3~1_combout\,
	datac => \mux_final|Selector2~0_combout\,
	datad => \despla_M|ShiftLeft0~48_combout\,
	combout => \mux_final|Selector3~3_combout\);

-- Location: LCCOMB_X37_Y22_N4
\mux_final|Selector3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector3~6_combout\ = (\mux_final|Selector28~7_combout\ & ((\b[28]~input_o\ & (\a[28]~input_o\ $ (!\mux_final|Selector28~8_combout\))) # (!\b[28]~input_o\ & (\a[28]~input_o\ & !\mux_final|Selector28~8_combout\)))) # 
-- (!\mux_final|Selector28~7_combout\ & ((\b[28]~input_o\) # ((\a[28]~input_o\) # (!\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~7_combout\,
	datab => \b[28]~input_o\,
	datac => \a[28]~input_o\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector3~6_combout\);

-- Location: LCCOMB_X37_Y22_N22
\mux_final|Selector3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector3~7_combout\ = (\mux_final|Selector3~6_combout\ & ((\mux_final|Selector28~8_combout\) # ((\mux_final|Selector3~3_combout\) # (\mux_final|Selector28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~8_combout\,
	datab => \mux_final|Selector3~3_combout\,
	datac => \mux_final|Selector3~6_combout\,
	datad => \mux_final|Selector28~7_combout\,
	combout => \mux_final|Selector3~7_combout\);

-- Location: LCCOMB_X36_Y24_N18
\mux_final|Selector2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector2~3_combout\ = ((\mux_final|Selector11~0_combout\) # (!\opALU[4]~input_o\)) # (!\Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datac => \mux_final|Selector11~0_combout\,
	datad => \opALU[4]~input_o\,
	combout => \mux_final|Selector2~3_combout\);

-- Location: LCCOMB_X34_Y23_N6
\mux_final|Selector4~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector4~10_combout\ = (\opALU[3]~input_o\ & \b[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[3]~input_o\,
	datad => \b[4]~input_o\,
	combout => \mux_final|Selector4~10_combout\);

-- Location: LCCOMB_X36_Y24_N28
\mux_final|Selector2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector2~4_combout\ = ((\mux_final|Selector4~10_combout\ & (!\Mux0~1_combout\ & !\mux_final|Selector11~0_combout\))) # (!\Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector4~10_combout\,
	datab => \Mux0~1_combout\,
	datac => \mux_final|Selector11~0_combout\,
	datad => \Mux2~1_combout\,
	combout => \mux_final|Selector2~4_combout\);

-- Location: LCCOMB_X36_Y24_N30
\mux_final|Selector2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector2~5_combout\ = (\mux_final|Selector2~3_combout\ & (((\opALU[4]~input_o\ & !\Mux1~0_combout\)) # (!\mux_final|Selector2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[4]~input_o\,
	datab => \mux_final|Selector2~3_combout\,
	datac => \Mux1~0_combout\,
	datad => \mux_final|Selector2~4_combout\,
	combout => \mux_final|Selector2~5_combout\);

-- Location: LCCOMB_X36_Y24_N24
\mux_final|Selector3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector3~4_combout\ = (\mux_final|Selector2~5_combout\ & ((\mux_final|Selector2~4_combout\ & (\sumalg_M|Add0~58_combout\)) # (!\mux_final|Selector2~4_combout\ & ((\a[28]~input_o\))))) # (!\mux_final|Selector2~5_combout\ & 
-- (!\mux_final|Selector2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector2~5_combout\,
	datab => \mux_final|Selector2~4_combout\,
	datac => \sumalg_M|Add0~58_combout\,
	datad => \a[28]~input_o\,
	combout => \mux_final|Selector3~4_combout\);

-- Location: LCCOMB_X36_Y24_N26
\mux_final|Selector3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector3~5_combout\ = (\mux_final|Selector2~3_combout\ & (((\mux_final|Selector3~4_combout\)))) # (!\mux_final|Selector2~3_combout\ & ((\mux_final|Selector3~4_combout\ & (\mux_final|Selector3~7_combout\)) # (!\mux_final|Selector3~4_combout\ & 
-- ((\a[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector3~7_combout\,
	datab => \mux_final|Selector2~3_combout\,
	datac => \a[31]~input_o\,
	datad => \mux_final|Selector3~4_combout\,
	combout => \mux_final|Selector3~5_combout\);

-- Location: LCCOMB_X37_Y22_N0
\mux_final|Selector2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector2~12_combout\ = (\mux_final|Selector28~7_combout\ & ((\b[29]~input_o\ & (\a[29]~input_o\ $ (!\mux_final|Selector28~8_combout\))) # (!\b[29]~input_o\ & (\a[29]~input_o\ & !\mux_final|Selector28~8_combout\)))) # 
-- (!\mux_final|Selector28~7_combout\ & ((\b[29]~input_o\) # ((\a[29]~input_o\) # (!\mux_final|Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~7_combout\,
	datab => \b[29]~input_o\,
	datac => \a[29]~input_o\,
	datad => \mux_final|Selector28~8_combout\,
	combout => \mux_final|Selector2~12_combout\);

-- Location: LCCOMB_X30_Y26_N30
\despla_M|ShiftLeft0~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|ShiftLeft0~99_combout\ = (\b[0]~input_o\ & (\a[28]~input_o\)) # (!\b[0]~input_o\ & ((\a[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[28]~input_o\,
	datad => \a[29]~input_o\,
	combout => \despla_M|ShiftLeft0~99_combout\);

-- Location: LCCOMB_X29_Y24_N26
\mux_final|Selector2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector2~6_combout\ = (\mux_final|Selector28~9_combout\ & (((!\despla_M|ShiftRight1~23_combout\)))) # (!\mux_final|Selector28~9_combout\ & ((\despla_M|ShiftRight1~23_combout\ & (\despla_M|ShiftLeft0~99_combout\)) # 
-- (!\despla_M|ShiftRight1~23_combout\ & ((\despla_M|ShiftLeft0~91_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~9_combout\,
	datab => \despla_M|ShiftLeft0~99_combout\,
	datac => \despla_M|ShiftLeft0~91_combout\,
	datad => \despla_M|ShiftRight1~23_combout\,
	combout => \mux_final|Selector2~6_combout\);

-- Location: LCCOMB_X29_Y24_N12
\mux_final|Selector2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector2~7_combout\ = (\mux_final|Selector2~6_combout\ & (((\despla_M|ShiftLeft0~81_combout\) # (!\mux_final|Selector28~9_combout\)))) # (!\mux_final|Selector2~6_combout\ & (\despla_M|ShiftLeft0~96_combout\ & 
-- (\mux_final|Selector28~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector2~6_combout\,
	datab => \despla_M|ShiftLeft0~96_combout\,
	datac => \mux_final|Selector28~9_combout\,
	datad => \despla_M|ShiftLeft0~81_combout\,
	combout => \mux_final|Selector2~7_combout\);

-- Location: LCCOMB_X32_Y22_N18
\mux_final|Selector2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector2~8_combout\ = (\mux_final|Selector2~1_combout\ & (((\despla_M|ShiftRight0~69_combout\) # (!\mux_final|Selector2~2_combout\)))) # (!\mux_final|Selector2~1_combout\ & (\despla_M|ShiftRight1~59_combout\ & 
-- (\mux_final|Selector2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftRight1~59_combout\,
	datab => \mux_final|Selector2~1_combout\,
	datac => \mux_final|Selector2~2_combout\,
	datad => \despla_M|ShiftRight0~69_combout\,
	combout => \mux_final|Selector2~8_combout\);

-- Location: LCCOMB_X37_Y22_N30
\mux_final|Selector2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector2~9_combout\ = (\mux_final|Selector2~0_combout\ & (((\mux_final|Selector2~8_combout\)))) # (!\mux_final|Selector2~0_combout\ & ((\mux_final|Selector2~8_combout\ & (\despla_M|ShiftLeft0~53_combout\)) # (!\mux_final|Selector2~8_combout\ & 
-- ((\mux_final|Selector2~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~53_combout\,
	datab => \mux_final|Selector2~0_combout\,
	datac => \mux_final|Selector2~7_combout\,
	datad => \mux_final|Selector2~8_combout\,
	combout => \mux_final|Selector2~9_combout\);

-- Location: LCCOMB_X37_Y22_N2
\mux_final|Selector2~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector2~13_combout\ = (\mux_final|Selector2~12_combout\ & ((\mux_final|Selector28~8_combout\) # ((\mux_final|Selector2~9_combout\) # (\mux_final|Selector28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector28~8_combout\,
	datab => \mux_final|Selector2~12_combout\,
	datac => \mux_final|Selector2~9_combout\,
	datad => \mux_final|Selector28~7_combout\,
	combout => \mux_final|Selector2~13_combout\);

-- Location: LCCOMB_X36_Y24_N20
\mux_final|Selector2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector2~10_combout\ = (\mux_final|Selector2~4_combout\ & (\sumalg_M|Add0~60_combout\ & (\mux_final|Selector2~5_combout\))) # (!\mux_final|Selector2~4_combout\ & (((\a[29]~input_o\) # (!\mux_final|Selector2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sumalg_M|Add0~60_combout\,
	datab => \mux_final|Selector2~4_combout\,
	datac => \mux_final|Selector2~5_combout\,
	datad => \a[29]~input_o\,
	combout => \mux_final|Selector2~10_combout\);

-- Location: LCCOMB_X36_Y24_N22
\mux_final|Selector2~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector2~11_combout\ = (\mux_final|Selector2~3_combout\ & (((\mux_final|Selector2~10_combout\)))) # (!\mux_final|Selector2~3_combout\ & ((\mux_final|Selector2~10_combout\ & (\mux_final|Selector2~13_combout\)) # 
-- (!\mux_final|Selector2~10_combout\ & ((\a[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector2~13_combout\,
	datab => \mux_final|Selector2~3_combout\,
	datac => \a[31]~input_o\,
	datad => \mux_final|Selector2~10_combout\,
	combout => \mux_final|Selector2~11_combout\);

-- Location: LCCOMB_X35_Y22_N14
\despla_M|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux1~0_combout\ = (\a[30]~input_o\ & ((\b[30]~input_o\ & ((\opALU[0]~input_o\) # (\opALU[1]~input_o\))) # (!\b[30]~input_o\ & ((!\opALU[1]~input_o\) # (!\opALU[0]~input_o\))))) # (!\a[30]~input_o\ & (\b[30]~input_o\ & (!\opALU[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[30]~input_o\,
	datab => \b[30]~input_o\,
	datac => \opALU[0]~input_o\,
	datad => \opALU[1]~input_o\,
	combout => \despla_M|Mux1~0_combout\);

-- Location: LCCOMB_X34_Y22_N16
\mux_final|Selector1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector1~4_combout\ = (\mux_des_log|Selector30~2_combout\ & (\despla_M|ShiftLeft0~5_combout\ & (\opALU[3]~input_o\ & \a[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_des_log|Selector30~2_combout\,
	datab => \despla_M|ShiftLeft0~5_combout\,
	datac => \opALU[3]~input_o\,
	datad => \a[31]~input_o\,
	combout => \mux_final|Selector1~4_combout\);

-- Location: LCCOMB_X30_Y23_N6
\mux_final|Selector1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector1~5_combout\ = (\b[1]~input_o\ & (((\despla_M|ShiftLeft0~98_combout\)))) # (!\b[1]~input_o\ & (\a[29]~input_o\ & ((\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[29]~input_o\,
	datac => \despla_M|ShiftLeft0~98_combout\,
	datad => \b[0]~input_o\,
	combout => \mux_final|Selector1~5_combout\);

-- Location: LCCOMB_X29_Y25_N0
\mux_final|Selector1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector1~6_combout\ = (!\b[3]~input_o\ & ((\b[2]~input_o\ & ((\despla_M|ShiftLeft0~94_combout\))) # (!\b[2]~input_o\ & (\mux_final|Selector1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \mux_final|Selector1~5_combout\,
	datac => \despla_M|ShiftLeft0~94_combout\,
	datad => \b[3]~input_o\,
	combout => \mux_final|Selector1~6_combout\);

-- Location: LCCOMB_X29_Y25_N26
\mux_final|Selector1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector1~7_combout\ = (!\opALU[2]~input_o\ & ((\mux_final|Selector1~6_combout\) # ((\despla_M|ShiftLeft0~84_combout\ & \b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[2]~input_o\,
	datab => \mux_final|Selector1~6_combout\,
	datac => \despla_M|ShiftLeft0~84_combout\,
	datad => \b[3]~input_o\,
	combout => \mux_final|Selector1~7_combout\);

-- Location: LCCOMB_X29_Y25_N12
\mux_final|Selector1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector1~8_combout\ = (!\b[4]~input_o\ & ((\mux_final|Selector1~7_combout\) # ((\opALU[2]~input_o\ & \despla_M|ShiftRight1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector1~7_combout\,
	datab => \opALU[2]~input_o\,
	datac => \b[4]~input_o\,
	datad => \despla_M|ShiftRight1~62_combout\,
	combout => \mux_final|Selector1~8_combout\);

-- Location: LCCOMB_X34_Y22_N18
\mux_final|Selector1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector1~9_combout\ = (\mux_final|Selector1~8_combout\) # ((!\opALU[2]~input_o\ & (\b[4]~input_o\ & \despla_M|ShiftLeft0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector1~8_combout\,
	datab => \opALU[2]~input_o\,
	datac => \b[4]~input_o\,
	datad => \despla_M|ShiftLeft0~58_combout\,
	combout => \mux_final|Selector1~9_combout\);

-- Location: LCCOMB_X34_Y22_N12
\mux_final|Selector1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector1~10_combout\ = (\mux_final|Selector1~4_combout\) # ((\despla_M|Mux31~6_combout\ & (!\opALU[3]~input_o\ & \mux_final|Selector1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|Mux31~6_combout\,
	datab => \mux_final|Selector1~4_combout\,
	datac => \opALU[3]~input_o\,
	datad => \mux_final|Selector1~9_combout\,
	combout => \mux_final|Selector1~10_combout\);

-- Location: LCCOMB_X35_Y22_N16
\mux_final|Selector1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector1~11_combout\ = (\Mux0~1_combout\ & (\despla_M|Mux1~0_combout\ & (\despla_M|Mux31~9_combout\))) # (!\Mux0~1_combout\ & (((\mux_final|Selector1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \despla_M|Mux1~0_combout\,
	datac => \despla_M|Mux31~9_combout\,
	datad => \mux_final|Selector1~10_combout\,
	combout => \mux_final|Selector1~11_combout\);

-- Location: LCCOMB_X31_Y22_N4
\mux_final|Selector1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector1~2_combout\ = (!\despla_M|Mux31~9_combout\ & (\despla_M|ShiftLeft0~9_combout\ & (!\b[4]~input_o\ & \despla_M|ShiftRight1~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|Mux31~9_combout\,
	datab => \despla_M|ShiftLeft0~9_combout\,
	datac => \b[4]~input_o\,
	datad => \despla_M|ShiftRight1~23_combout\,
	combout => \mux_final|Selector1~2_combout\);

-- Location: LCCOMB_X31_Y22_N14
\mux_final|Selector1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector1~3_combout\ = (!\Mux0~1_combout\ & (((\sumalg_M|Mux0~0_combout\) # (\mux_final|Selector1~2_combout\)) # (!\despla_M|Mux31~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|Mux31~6_combout\,
	datab => \Mux0~1_combout\,
	datac => \sumalg_M|Mux0~0_combout\,
	datad => \mux_final|Selector1~2_combout\,
	combout => \mux_final|Selector1~3_combout\);

-- Location: LCCOMB_X35_Y22_N30
\mux_final|Selector1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector1~14_combout\ = (\mux_final|Selector1~3_combout\) # (((!\Mux0~0_combout\ & !\despla_M|Mux31~9_combout\)) # (!\opALU[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector1~3_combout\,
	datab => \Mux0~0_combout\,
	datac => \despla_M|Mux31~9_combout\,
	datad => \opALU[4]~input_o\,
	combout => \mux_final|Selector1~14_combout\);

-- Location: LCCOMB_X35_Y22_N10
\mux_final|Selector1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector1~12_combout\ = (\a[30]~input_o\ & ((\mux_final|Selector1~14_combout\) # ((\mux_final|Selector1~11_combout\ & \opALU[4]~input_o\)))) # (!\a[30]~input_o\ & (\mux_final|Selector1~11_combout\ & ((\opALU[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[30]~input_o\,
	datab => \mux_final|Selector1~11_combout\,
	datac => \mux_final|Selector1~14_combout\,
	datad => \opALU[4]~input_o\,
	combout => \mux_final|Selector1~12_combout\);

-- Location: LCCOMB_X36_Y29_N30
\mux_final|Selector1~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector1~13_combout\ = (\Mux2~1_combout\ & ((\mux_final|Selector1~12_combout\) # ((\mux_final|Selector0~0_combout\ & \sumalg_M|Add0~62_combout\)))) # (!\Mux2~1_combout\ & (\mux_final|Selector0~0_combout\ & ((\sumalg_M|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mux_final|Selector0~0_combout\,
	datac => \mux_final|Selector1~12_combout\,
	datad => \sumalg_M|Add0~62_combout\,
	combout => \mux_final|Selector1~13_combout\);

-- Location: LCCOMB_X32_Y25_N12
\mux_des_log|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_des_log|Selector0~0_combout\ = (!\opALU[3]~input_o\ & \opALU[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[3]~input_o\,
	datad => \opALU[4]~input_o\,
	combout => \mux_des_log|Selector0~0_combout\);

-- Location: LCCOMB_X35_Y21_N24
\mux_des_log|Selector0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_des_log|Selector0~1_combout\ = (\mux_des_log|Selector0~0_combout\ & ((\Mux0~1_combout\ & (\opALU[2]~input_o\)) # (!\Mux0~1_combout\ & ((!\opALU[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \opALU[2]~input_o\,
	datac => \mux_des_log|Selector0~0_combout\,
	datad => \opALU[1]~input_o\,
	combout => \mux_des_log|Selector0~1_combout\);

-- Location: LCCOMB_X35_Y21_N16
\despla_M|Mux0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux0~6_combout\ = (\a[31]~input_o\ & ((\opALU[1]~input_o\ & ((\b[31]~input_o\) # (!\opALU[0]~input_o\))) # (!\opALU[1]~input_o\ & ((\opALU[0]~input_o\) # (!\b[31]~input_o\))))) # (!\a[31]~input_o\ & (((\b[31]~input_o\ & !\opALU[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \opALU[1]~input_o\,
	datac => \b[31]~input_o\,
	datad => \opALU[0]~input_o\,
	combout => \despla_M|Mux0~6_combout\);

-- Location: LCCOMB_X35_Y21_N28
\despla_M|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux0~1_combout\ = (\b[0]~input_o\ & (\a[30]~input_o\ & ((\opALU[0]~input_o\)))) # (!\b[0]~input_o\ & (((\a[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[30]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[31]~input_o\,
	datad => \opALU[0]~input_o\,
	combout => \despla_M|Mux0~1_combout\);

-- Location: LCCOMB_X35_Y21_N22
\despla_M|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux0~2_combout\ = (\b[1]~input_o\ & (\despla_M|ShiftLeft0~99_combout\ & ((\opALU[0]~input_o\)))) # (!\b[1]~input_o\ & (((\despla_M|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~99_combout\,
	datab => \despla_M|Mux0~1_combout\,
	datac => \b[1]~input_o\,
	datad => \opALU[0]~input_o\,
	combout => \despla_M|Mux0~2_combout\);

-- Location: LCCOMB_X35_Y21_N0
\despla_M|Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux0~3_combout\ = (\b[2]~input_o\ & (\despla_M|ShiftLeft0~97_combout\ & ((\opALU[0]~input_o\)))) # (!\b[2]~input_o\ & (((\despla_M|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \despla_M|ShiftLeft0~97_combout\,
	datab => \b[2]~input_o\,
	datac => \despla_M|Mux0~2_combout\,
	datad => \opALU[0]~input_o\,
	combout => \despla_M|Mux0~3_combout\);

-- Location: LCCOMB_X35_Y21_N18
\despla_M|Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux0~4_combout\ = (\b[3]~input_o\ & (((\despla_M|ShiftLeft0~87_combout\ & \opALU[0]~input_o\)))) # (!\b[3]~input_o\ & (\despla_M|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \despla_M|Mux0~3_combout\,
	datac => \despla_M|ShiftLeft0~87_combout\,
	datad => \opALU[0]~input_o\,
	combout => \despla_M|Mux0~4_combout\);

-- Location: LCCOMB_X35_Y21_N20
\despla_M|Mux0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux0~5_combout\ = (\b[4]~input_o\ & (\opALU[0]~input_o\ & ((\despla_M|ShiftLeft0~63_combout\)))) # (!\b[4]~input_o\ & (((\despla_M|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opALU[0]~input_o\,
	datab => \despla_M|Mux0~4_combout\,
	datac => \despla_M|ShiftLeft0~63_combout\,
	datad => \b[4]~input_o\,
	combout => \despla_M|Mux0~5_combout\);

-- Location: LCCOMB_X35_Y21_N26
\despla_M|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \despla_M|Mux0~0_combout\ = (\a[31]~input_o\ & (((\opALU[2]~input_o\ & !\despla_M|ShiftLeft0~5_combout\)) # (!\opALU[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \opALU[2]~input_o\,
	datac => \despla_M|ShiftLeft0~5_combout\,
	datad => \opALU[0]~input_o\,
	combout => \despla_M|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y21_N14
\mux_final|Selector0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector0~1_combout\ = (!\Mux0~1_combout\ & ((\despla_M|Mux0~0_combout\) # ((\despla_M|Mux0~5_combout\ & !\opALU[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \despla_M|Mux0~5_combout\,
	datac => \despla_M|Mux0~0_combout\,
	datad => \opALU[2]~input_o\,
	combout => \mux_final|Selector0~1_combout\);

-- Location: LCCOMB_X35_Y21_N2
\mux_final|Selector0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector0~2_combout\ = (\mux_des_log|Selector0~1_combout\ & ((\mux_final|Selector0~1_combout\) # ((\Mux0~1_combout\ & \despla_M|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \despla_M|Mux0~6_combout\,
	datac => \mux_final|Selector0~1_combout\,
	datad => \mux_des_log|Selector0~1_combout\,
	combout => \mux_final|Selector0~2_combout\);

-- Location: LCCOMB_X35_Y21_N12
\mux_final|Selector0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector0~3_combout\ = (\Mux2~1_combout\ & ((\mux_final|Selector0~2_combout\) # ((\a[31]~input_o\ & !\mux_des_log|Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[31]~input_o\,
	datab => \mux_des_log|Selector0~1_combout\,
	datac => \Mux2~1_combout\,
	datad => \mux_final|Selector0~2_combout\,
	combout => \mux_final|Selector0~3_combout\);

-- Location: LCCOMB_X35_Y21_N6
\mux_final|Selector0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux_final|Selector0~4_combout\ = (\mux_final|Selector0~3_combout\) # ((\sumalg_M|Add0~64_combout\ & \mux_final|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_final|Selector0~3_combout\,
	datac => \sumalg_M|Add0~64_combout\,
	datad => \mux_final|Selector0~0_combout\,
	combout => \mux_final|Selector0~4_combout\);

ww_s(0) <= \s[0]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_s(4) <= \s[4]~output_o\;

ww_s(5) <= \s[5]~output_o\;

ww_s(6) <= \s[6]~output_o\;

ww_s(7) <= \s[7]~output_o\;

ww_s(8) <= \s[8]~output_o\;

ww_s(9) <= \s[9]~output_o\;

ww_s(10) <= \s[10]~output_o\;

ww_s(11) <= \s[11]~output_o\;

ww_s(12) <= \s[12]~output_o\;

ww_s(13) <= \s[13]~output_o\;

ww_s(14) <= \s[14]~output_o\;

ww_s(15) <= \s[15]~output_o\;

ww_s(16) <= \s[16]~output_o\;

ww_s(17) <= \s[17]~output_o\;

ww_s(18) <= \s[18]~output_o\;

ww_s(19) <= \s[19]~output_o\;

ww_s(20) <= \s[20]~output_o\;

ww_s(21) <= \s[21]~output_o\;

ww_s(22) <= \s[22]~output_o\;

ww_s(23) <= \s[23]~output_o\;

ww_s(24) <= \s[24]~output_o\;

ww_s(25) <= \s[25]~output_o\;

ww_s(26) <= \s[26]~output_o\;

ww_s(27) <= \s[27]~output_o\;

ww_s(28) <= \s[28]~output_o\;

ww_s(29) <= \s[29]~output_o\;

ww_s(30) <= \s[30]~output_o\;

ww_s(31) <= \s[31]~output_o\;
END structure;


