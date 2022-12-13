-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/13/2022 16:59:53"

-- 
-- Device: Altera EP4CGX30CF23C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LIB IS
    PORT (
	reloj : IN std_logic;
	pcero : IN std_logic;
	B : IN std_logic;
	I : IN std_logic;
	instruc : IN std_logic_vector(31 DOWNTO 0);
	bloqCP : OUT std_logic;
	bloqBDL : OUT std_logic;
	inyecBDL : OUT std_logic;
	inyecDLA : OUT std_logic
	);
END LIB;

-- Design Ports Information
-- instruc[12]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[13]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[14]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[25]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[26]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[27]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[28]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[29]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[30]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[31]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bloqCP	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bloqBDL	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inyecBDL	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inyecDLA	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reloj	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcero	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[0]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[1]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[2]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[6]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[5]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[4]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[15]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[16]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[17]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[18]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[19]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[20]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[21]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[22]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[23]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[24]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[8]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[10]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[9]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[11]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LIB IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reloj : std_logic;
SIGNAL ww_pcero : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_I : std_logic;
SIGNAL ww_instruc : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_bloqCP : std_logic;
SIGNAL ww_bloqBDL : std_logic;
SIGNAL ww_inyecBDL : std_logic;
SIGNAL ww_inyecDLA : std_logic;
SIGNAL \reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pcero~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R_dat|senyales_cntl|RDA4_pbr|s~1_combout\ : std_logic;
SIGNAL \R_dat|LDDat|not_comp1|Equal0~0_combout\ : std_logic;
SIGNAL \R_dat|genvalreg|Mux0~0_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~0_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~3_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~4_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~9_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDE7_pbr|s~q\ : std_logic;
SIGNAL \R_dat|R_dat|RD~18_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~26_combout\ : std_logic;
SIGNAL \instruc[12]~input_o\ : std_logic;
SIGNAL \instruc[13]~input_o\ : std_logic;
SIGNAL \instruc[14]~input_o\ : std_logic;
SIGNAL \instruc[25]~input_o\ : std_logic;
SIGNAL \instruc[26]~input_o\ : std_logic;
SIGNAL \instruc[27]~input_o\ : std_logic;
SIGNAL \instruc[28]~input_o\ : std_logic;
SIGNAL \instruc[29]~input_o\ : std_logic;
SIGNAL \instruc[30]~input_o\ : std_logic;
SIGNAL \instruc[31]~input_o\ : std_logic;
SIGNAL \reloj~input_o\ : std_logic;
SIGNAL \instruc[18]~input_o\ : std_logic;
SIGNAL \instruc[22]~input_o\ : std_logic;
SIGNAL \reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \bloqCP~output_o\ : std_logic;
SIGNAL \bloqBDL~output_o\ : std_logic;
SIGNAL \inyecBDL~output_o\ : std_logic;
SIGNAL \inyecDLA~output_o\ : std_logic;
SIGNAL \instruc[2]~input_o\ : std_logic;
SIGNAL \R_decPBRSEC|RDDL3_instrucDL|s[2]~feeder_combout\ : std_logic;
SIGNAL \pcero~input_o\ : std_logic;
SIGNAL \pcero~inputclkctrl_outclk\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \instruc[1]~input_o\ : std_logic;
SIGNAL \instruc[3]~input_o\ : std_logic;
SIGNAL \R_decPBRSEC|decPBRSEC|Mux0~0_combout\ : std_logic;
SIGNAL \instruc[6]~input_o\ : std_logic;
SIGNAL \instruc[5]~input_o\ : std_logic;
SIGNAL \instruc[4]~input_o\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_pbr|s~2_combout\ : std_logic;
SIGNAL \R_Sec|senyales_cntl|RDA4_opsec|s~0_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_pbr|s~0_combout\ : std_logic;
SIGNAL \R_Sec|R_sec|RS~combout\ : std_logic;
SIGNAL \instruc[19]~input_o\ : std_logic;
SIGNAL \I~input_o\ : std_logic;
SIGNAL \instruc[10]~input_o\ : std_logic;
SIGNAL \R_decPBRSEC|RDDL3_instrucDL|s[10]~feeder_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_rd|s~2_combout\ : std_logic;
SIGNAL \instruc[17]~input_o\ : std_logic;
SIGNAL \instruc[9]~input_o\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_rd|s~3_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~5_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_pbr|s~4_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_pbr|s~3_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_pbr|s~5_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_pbr|s~q\ : std_logic;
SIGNAL \R_dat|R_dat|RD~6_combout\ : std_logic;
SIGNAL \instruc[7]~input_o\ : std_logic;
SIGNAL \R_decPBRSEC|RDDL3_instrucDL|s[7]~feeder_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_rd|s~1_combout\ : std_logic;
SIGNAL \instruc[15]~input_o\ : std_logic;
SIGNAL \R_decPBRSEC|RDDL3_instrucDL|s[15]~feeder_combout\ : std_logic;
SIGNAL \instruc[8]~input_o\ : std_logic;
SIGNAL \R_decPBRSEC|RDDL3_instrucDL|s[8]~feeder_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_rd|s~0_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~1_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDM5_rd|s[1]~feeder_combout\ : std_logic;
SIGNAL \instruc[16]~input_o\ : std_logic;
SIGNAL \R_decPBRSEC|RDDL3_instrucDL|s[16]~feeder_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~2_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~7_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDM5_pbr|s~feeder_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDM5_pbr|s~q\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RD6_pbr|s~q\ : std_logic;
SIGNAL \R_dat|R_dat|RD~12_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~13_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~8_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~10_combout\ : std_logic;
SIGNAL \instruc[11]~input_o\ : std_logic;
SIGNAL \R_decPBRSEC|RDDL3_instrucDL|s[11]~feeder_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_rd|s~4_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RD6_rd|s[4]~feeder_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~11_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~14_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~15_combout\ : std_logic;
SIGNAL \instruc[24]~input_o\ : std_logic;
SIGNAL \instruc[23]~input_o\ : std_logic;
SIGNAL \R_dat|R_dat|RD~29_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~30_combout\ : std_logic;
SIGNAL \instruc[20]~input_o\ : std_logic;
SIGNAL \R_dat|R_dat|RD~25_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~27_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~28_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~31_combout\ : std_logic;
SIGNAL \instruc[21]~input_o\ : std_logic;
SIGNAL \R_dat|LDDat|not_comp2|Equal0~0_combout\ : std_logic;
SIGNAL \instruc[0]~input_o\ : std_logic;
SIGNAL \R_dat|genvalreg|Mux1~0_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~16_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~17_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~22_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~23_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~20_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~21_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~19_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~24_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~32_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~33_combout\ : std_logic;
SIGNAL \R_lgr|inyecBDL~combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDE7_rd|s\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \R_dat|senyales_cntl|RDA4_rd|s\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \R_dat|senyales_cntl|RD6_rd|s\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \R_decPBRSEC|RDDL3_instrucDL|s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \R_Sec|senyales_cntl|RDA4_opsec|s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R_dat|senyales_cntl|RDM5_rd|s\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_pcero~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_B~input_o\ : std_logic;

BEGIN

ww_reloj <= reloj;
ww_pcero <= pcero;
ww_B <= B;
ww_I <= I;
ww_instruc <= instruc;
bloqCP <= ww_bloqCP;
bloqBDL <= ww_bloqBDL;
inyecBDL <= ww_inyecBDL;
inyecDLA <= ww_inyecDLA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reloj~input_o\);

\pcero~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pcero~input_o\);
\ALT_INV_pcero~inputclkctrl_outclk\ <= NOT \pcero~inputclkctrl_outclk\;
\ALT_INV_B~input_o\ <= NOT \B~input_o\;

-- Location: LCCOMB_X70_Y66_N24
\R_dat|senyales_cntl|RDA4_pbr|s~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_pbr|s~1_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(1) & !\R_decPBRSEC|RDDL3_instrucDL|s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(0),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(1),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(3),
	combout => \R_dat|senyales_cntl|RDA4_pbr|s~1_combout\);

-- Location: FF_X70_Y66_N27
\R_decPBRSEC|RDDL3_instrucDL|s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[18]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(18));

-- Location: LCCOMB_X69_Y66_N0
\R_dat|LDDat|not_comp1|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|not_comp1|Equal0~0_combout\ = (!\R_decPBRSEC|RDDL3_instrucDL|s\(16) & (!\R_decPBRSEC|RDDL3_instrucDL|s\(18) & (!\R_decPBRSEC|RDDL3_instrucDL|s\(19) & !\R_decPBRSEC|RDDL3_instrucDL|s\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(16),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(18),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(19),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(17),
	combout => \R_dat|LDDat|not_comp1|Equal0~0_combout\);

-- Location: LCCOMB_X70_Y66_N8
\R_dat|genvalreg|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|genvalreg|Mux0~0_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(6) & ((\R_decPBRSEC|RDDL3_instrucDL|s\(4)) # ((!\R_decPBRSEC|RDDL3_instrucDL|s\(5))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(6) & (((\R_decPBRSEC|RDDL3_instrucDL|s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(4),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(5),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(6),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(2),
	combout => \R_dat|genvalreg|Mux0~0_combout\);

-- Location: LCCOMB_X70_Y66_N2
\R_dat|R_dat|RD~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~0_combout\ = (!\R_dat|genvalreg|Mux0~0_combout\ & (\R_dat|senyales_cntl|RDA4_pbr|s~1_combout\ & ((\R_decPBRSEC|RDDL3_instrucDL|s\(15)) # (!\R_dat|LDDat|not_comp1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|genvalreg|Mux0~0_combout\,
	datab => \R_dat|senyales_cntl|RDA4_pbr|s~1_combout\,
	datac => \R_dat|LDDat|not_comp1|Equal0~0_combout\,
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(15),
	combout => \R_dat|R_dat|RD~0_combout\);

-- Location: LCCOMB_X68_Y66_N30
\R_dat|R_dat|RD~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~3_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(18) & (\R_dat|senyales_cntl|RDM5_rd|s\(3) & (\R_dat|senyales_cntl|RDM5_rd|s\(2) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(17))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(18) & 
-- (!\R_dat|senyales_cntl|RDM5_rd|s\(3) & (\R_dat|senyales_cntl|RDM5_rd|s\(2) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(18),
	datab => \R_dat|senyales_cntl|RDM5_rd|s\(2),
	datac => \R_dat|senyales_cntl|RDM5_rd|s\(3),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(17),
	combout => \R_dat|R_dat|RD~3_combout\);

-- Location: LCCOMB_X69_Y66_N6
\R_dat|R_dat|RD~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~4_combout\ = (\R_dat|senyales_cntl|RDM5_pbr|s~q\ & (\R_dat|R_dat|RD~3_combout\ & (\R_dat|senyales_cntl|RDM5_rd|s\(4) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RDM5_pbr|s~q\,
	datab => \R_dat|senyales_cntl|RDM5_rd|s\(4),
	datac => \R_dat|R_dat|RD~3_combout\,
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(19),
	combout => \R_dat|R_dat|RD~4_combout\);

-- Location: FF_X66_Y66_N31
\R_dat|senyales_cntl|RDE7_rd|s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RD6_rd|s\(1),
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDE7_rd|s\(1));

-- Location: FF_X66_Y66_N19
\R_dat|senyales_cntl|RDE7_rd|s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RD6_rd|s\(0),
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDE7_rd|s\(0));

-- Location: LCCOMB_X66_Y66_N30
\R_dat|R_dat|RD~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~9_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(15) & (\R_dat|senyales_cntl|RDE7_rd|s\(0) & (\R_dat|senyales_cntl|RDE7_rd|s\(1) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(16))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(15) & 
-- (!\R_dat|senyales_cntl|RDE7_rd|s\(0) & (\R_dat|senyales_cntl|RDE7_rd|s\(1) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(15),
	datab => \R_dat|senyales_cntl|RDE7_rd|s\(0),
	datac => \R_dat|senyales_cntl|RDE7_rd|s\(1),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(16),
	combout => \R_dat|R_dat|RD~9_combout\);

-- Location: FF_X70_Y66_N25
\R_dat|senyales_cntl|RDE7_pbr|s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RD6_pbr|s~q\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDE7_pbr|s~q\);

-- Location: FF_X69_Y66_N31
\R_decPBRSEC|RDDL3_instrucDL|s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[22]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(22));

-- Location: LCCOMB_X66_Y66_N28
\R_dat|R_dat|RD~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~18_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(21) & (\R_dat|senyales_cntl|RDA4_rd|s\(1) & (\R_dat|senyales_cntl|RDA4_rd|s\(0) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(20))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(21) & 
-- (!\R_dat|senyales_cntl|RDA4_rd|s\(1) & (\R_dat|senyales_cntl|RDA4_rd|s\(0) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(21),
	datab => \R_dat|senyales_cntl|RDA4_rd|s\(0),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(20),
	datad => \R_dat|senyales_cntl|RDA4_rd|s\(1),
	combout => \R_dat|R_dat|RD~18_combout\);

-- Location: LCCOMB_X66_Y66_N18
\R_dat|R_dat|RD~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~26_combout\ = (\R_dat|senyales_cntl|RDE7_rd|s\(1) & (\R_decPBRSEC|RDDL3_instrucDL|s\(21) & (\R_dat|senyales_cntl|RDE7_rd|s\(0) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(20))))) # (!\R_dat|senyales_cntl|RDE7_rd|s\(1) & 
-- (!\R_decPBRSEC|RDDL3_instrucDL|s\(21) & (\R_dat|senyales_cntl|RDE7_rd|s\(0) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RDE7_rd|s\(1),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(21),
	datac => \R_dat|senyales_cntl|RDE7_rd|s\(0),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(20),
	combout => \R_dat|R_dat|RD~26_combout\);

-- Location: IOIBUF_X38_Y0_N15
\reloj~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reloj,
	o => \reloj~input_o\);

-- Location: IOIBUF_X81_Y64_N22
\instruc[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(18),
	o => \instruc[18]~input_o\);

-- Location: IOIBUF_X81_Y64_N1
\instruc[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(22),
	o => \instruc[22]~input_o\);

-- Location: CLKCTRL_G29
\reloj~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reloj~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reloj~inputclkctrl_outclk\);

-- Location: IOOBUF_X65_Y67_N2
\bloqCP~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R_Sec|R_sec|RS~combout\,
	devoe => ww_devoe,
	o => \bloqCP~output_o\);

-- Location: IOOBUF_X58_Y67_N2
\bloqBDL~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R_dat|R_dat|RD~32_combout\,
	devoe => ww_devoe,
	o => \bloqBDL~output_o\);

-- Location: IOOBUF_X63_Y67_N9
\inyecBDL~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R_lgr|inyecBDL~combout\,
	devoe => ww_devoe,
	o => \inyecBDL~output_o\);

-- Location: IOOBUF_X58_Y67_N9
\inyecDLA~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R_dat|R_dat|RD~32_combout\,
	devoe => ww_devoe,
	o => \inyecDLA~output_o\);

-- Location: IOIBUF_X81_Y64_N15
\instruc[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(2),
	o => \instruc[2]~input_o\);

-- Location: LCCOMB_X70_Y66_N20
\R_decPBRSEC|RDDL3_instrucDL|s[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_decPBRSEC|RDDL3_instrucDL|s[2]~feeder_combout\ = \instruc[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruc[2]~input_o\,
	combout => \R_decPBRSEC|RDDL3_instrucDL|s[2]~feeder_combout\);

-- Location: IOIBUF_X38_Y0_N22
\pcero~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pcero,
	o => \pcero~input_o\);

-- Location: CLKCTRL_G28
\pcero~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pcero~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pcero~inputclkctrl_outclk\);

-- Location: IOIBUF_X70_Y67_N8
\B~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: FF_X70_Y66_N21
\R_decPBRSEC|RDDL3_instrucDL|s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_decPBRSEC|RDDL3_instrucDL|s[2]~feeder_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(2));

-- Location: IOIBUF_X81_Y65_N1
\instruc[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(1),
	o => \instruc[1]~input_o\);

-- Location: FF_X70_Y66_N1
\R_decPBRSEC|RDDL3_instrucDL|s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[1]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(1));

-- Location: IOIBUF_X81_Y63_N1
\instruc[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(3),
	o => \instruc[3]~input_o\);

-- Location: FF_X70_Y66_N13
\R_decPBRSEC|RDDL3_instrucDL|s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[3]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(3));

-- Location: LCCOMB_X70_Y66_N0
\R_decPBRSEC|decPBRSEC|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_decPBRSEC|decPBRSEC|Mux0~0_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(1) & ((\R_decPBRSEC|RDDL3_instrucDL|s\(2)) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(0),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(2),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(1),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(3),
	combout => \R_decPBRSEC|decPBRSEC|Mux0~0_combout\);

-- Location: IOIBUF_X81_Y64_N8
\instruc[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(6),
	o => \instruc[6]~input_o\);

-- Location: FF_X70_Y66_N9
\R_decPBRSEC|RDDL3_instrucDL|s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[6]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(6));

-- Location: IOIBUF_X81_Y62_N15
\instruc[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(5),
	o => \instruc[5]~input_o\);

-- Location: FF_X70_Y66_N29
\R_decPBRSEC|RDDL3_instrucDL|s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[5]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(5));

-- Location: IOIBUF_X81_Y65_N8
\instruc[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(4),
	o => \instruc[4]~input_o\);

-- Location: FF_X70_Y66_N5
\R_decPBRSEC|RDDL3_instrucDL|s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[4]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(4));

-- Location: LCCOMB_X70_Y66_N28
\R_dat|senyales_cntl|RDA4_pbr|s~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_pbr|s~2_combout\ = (!\I~input_o\ & (\R_decPBRSEC|RDDL3_instrucDL|s\(6) & (\R_decPBRSEC|RDDL3_instrucDL|s\(5) & !\R_decPBRSEC|RDDL3_instrucDL|s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I~input_o\,
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(6),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(5),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(4),
	combout => \R_dat|senyales_cntl|RDA4_pbr|s~2_combout\);

-- Location: LCCOMB_X70_Y66_N18
\R_Sec|senyales_cntl|RDA4_opsec|s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_Sec|senyales_cntl|RDA4_opsec|s~0_combout\ = (\R_dat|senyales_cntl|RDA4_pbr|s~2_combout\ & \R_decPBRSEC|decPBRSEC|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R_dat|senyales_cntl|RDA4_pbr|s~2_combout\,
	datad => \R_decPBRSEC|decPBRSEC|Mux0~0_combout\,
	combout => \R_Sec|senyales_cntl|RDA4_opsec|s~0_combout\);

-- Location: FF_X70_Y66_N19
\R_Sec|senyales_cntl|RDA4_opsec|s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_Sec|senyales_cntl|RDA4_opsec|s~0_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_Sec|senyales_cntl|RDA4_opsec|s\(3));

-- Location: LCCOMB_X70_Y66_N30
\R_dat|senyales_cntl|RDA4_pbr|s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_pbr|s~0_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(6) & (!\R_decPBRSEC|RDDL3_instrucDL|s\(4) & \R_decPBRSEC|RDDL3_instrucDL|s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(6),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(4),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(5),
	combout => \R_dat|senyales_cntl|RDA4_pbr|s~0_combout\);

-- Location: LCCOMB_X70_Y66_N26
\R_Sec|R_sec|RS\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_Sec|R_sec|RS~combout\ = (\R_Sec|senyales_cntl|RDA4_opsec|s\(3)) # ((\R_decPBRSEC|decPBRSEC|Mux0~0_combout\ & \R_dat|senyales_cntl|RDA4_pbr|s~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|decPBRSEC|Mux0~0_combout\,
	datab => \R_Sec|senyales_cntl|RDA4_opsec|s\(3),
	datad => \R_dat|senyales_cntl|RDA4_pbr|s~0_combout\,
	combout => \R_Sec|R_sec|RS~combout\);

-- Location: IOIBUF_X70_Y67_N1
\instruc[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(19),
	o => \instruc[19]~input_o\);

-- Location: FF_X69_Y66_N1
\R_decPBRSEC|RDDL3_instrucDL|s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[19]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(19));

-- Location: IOIBUF_X65_Y67_N15
\I~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I,
	o => \I~input_o\);

-- Location: IOIBUF_X61_Y67_N8
\instruc[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(10),
	o => \instruc[10]~input_o\);

-- Location: LCCOMB_X68_Y66_N10
\R_decPBRSEC|RDDL3_instrucDL|s[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_decPBRSEC|RDDL3_instrucDL|s[10]~feeder_combout\ = \instruc[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruc[10]~input_o\,
	combout => \R_decPBRSEC|RDDL3_instrucDL|s[10]~feeder_combout\);

-- Location: FF_X68_Y66_N11
\R_decPBRSEC|RDDL3_instrucDL|s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_decPBRSEC|RDDL3_instrucDL|s[10]~feeder_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(10));

-- Location: LCCOMB_X68_Y66_N22
\R_dat|senyales_cntl|RDA4_rd|s~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_rd|s~2_combout\ = (!\I~input_o\ & \R_decPBRSEC|RDDL3_instrucDL|s\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I~input_o\,
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(10),
	combout => \R_dat|senyales_cntl|RDA4_rd|s~2_combout\);

-- Location: FF_X68_Y66_N23
\R_dat|senyales_cntl|RDA4_rd|s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|senyales_cntl|RDA4_rd|s~2_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDA4_rd|s\(3));

-- Location: IOIBUF_X68_Y67_N1
\instruc[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(17),
	o => \instruc[17]~input_o\);

-- Location: FF_X68_Y66_N29
\R_decPBRSEC|RDDL3_instrucDL|s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[17]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(17));

-- Location: IOIBUF_X61_Y67_N1
\instruc[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(9),
	o => \instruc[9]~input_o\);

-- Location: FF_X68_Y66_N25
\R_decPBRSEC|RDDL3_instrucDL|s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[9]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(9));

-- Location: LCCOMB_X68_Y66_N8
\R_dat|senyales_cntl|RDA4_rd|s~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_rd|s~3_combout\ = (!\I~input_o\ & \R_decPBRSEC|RDDL3_instrucDL|s\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I~input_o\,
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(9),
	combout => \R_dat|senyales_cntl|RDA4_rd|s~3_combout\);

-- Location: FF_X68_Y66_N9
\R_dat|senyales_cntl|RDA4_rd|s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|senyales_cntl|RDA4_rd|s~3_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDA4_rd|s\(2));

-- Location: LCCOMB_X68_Y66_N28
\R_dat|R_dat|RD~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~5_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(18) & (\R_dat|senyales_cntl|RDA4_rd|s\(3) & (\R_decPBRSEC|RDDL3_instrucDL|s\(17) $ (!\R_dat|senyales_cntl|RDA4_rd|s\(2))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(18) & 
-- (!\R_dat|senyales_cntl|RDA4_rd|s\(3) & (\R_decPBRSEC|RDDL3_instrucDL|s\(17) $ (!\R_dat|senyales_cntl|RDA4_rd|s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(18),
	datab => \R_dat|senyales_cntl|RDA4_rd|s\(3),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(17),
	datad => \R_dat|senyales_cntl|RDA4_rd|s\(2),
	combout => \R_dat|R_dat|RD~5_combout\);

-- Location: LCCOMB_X70_Y66_N4
\R_dat|senyales_cntl|RDA4_pbr|s~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_pbr|s~4_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(6) & (((\R_decPBRSEC|RDDL3_instrucDL|s\(2))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(6) & (!\R_decPBRSEC|RDDL3_instrucDL|s\(3) & ((\R_decPBRSEC|RDDL3_instrucDL|s\(4)) # 
-- (!\R_decPBRSEC|RDDL3_instrucDL|s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(3),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(2),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(4),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(6),
	combout => \R_dat|senyales_cntl|RDA4_pbr|s~4_combout\);

-- Location: LCCOMB_X70_Y66_N16
\R_dat|senyales_cntl|RDA4_pbr|s~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_pbr|s~3_combout\ = (!\I~input_o\ & (\R_decPBRSEC|RDDL3_instrucDL|s\(6) $ (((\R_decPBRSEC|RDDL3_instrucDL|s\(4)) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(5),
	datab => \I~input_o\,
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(4),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(6),
	combout => \R_dat|senyales_cntl|RDA4_pbr|s~3_combout\);

-- Location: LCCOMB_X70_Y66_N6
\R_dat|senyales_cntl|RDA4_pbr|s~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_pbr|s~5_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(1) & (\R_dat|senyales_cntl|RDA4_pbr|s~4_combout\ & \R_dat|senyales_cntl|RDA4_pbr|s~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(0),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(1),
	datac => \R_dat|senyales_cntl|RDA4_pbr|s~4_combout\,
	datad => \R_dat|senyales_cntl|RDA4_pbr|s~3_combout\,
	combout => \R_dat|senyales_cntl|RDA4_pbr|s~5_combout\);

-- Location: FF_X70_Y66_N7
\R_dat|senyales_cntl|RDA4_pbr|s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|senyales_cntl|RDA4_pbr|s~5_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDA4_pbr|s~q\);

-- Location: LCCOMB_X69_Y66_N16
\R_dat|R_dat|RD~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~6_combout\ = (\R_dat|R_dat|RD~5_combout\ & (\R_dat|senyales_cntl|RDA4_pbr|s~q\ & (\R_dat|senyales_cntl|RDA4_rd|s\(4) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RDA4_rd|s\(4),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(19),
	datac => \R_dat|R_dat|RD~5_combout\,
	datad => \R_dat|senyales_cntl|RDA4_pbr|s~q\,
	combout => \R_dat|R_dat|RD~6_combout\);

-- Location: IOIBUF_X58_Y67_N15
\instruc[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(7),
	o => \instruc[7]~input_o\);

-- Location: LCCOMB_X66_Y66_N0
\R_decPBRSEC|RDDL3_instrucDL|s[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_decPBRSEC|RDDL3_instrucDL|s[7]~feeder_combout\ = \instruc[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruc[7]~input_o\,
	combout => \R_decPBRSEC|RDDL3_instrucDL|s[7]~feeder_combout\);

-- Location: FF_X66_Y66_N1
\R_decPBRSEC|RDDL3_instrucDL|s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_decPBRSEC|RDDL3_instrucDL|s[7]~feeder_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(7));

-- Location: LCCOMB_X66_Y66_N4
\R_dat|senyales_cntl|RDA4_rd|s~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_rd|s~1_combout\ = (!\I~input_o\ & \R_decPBRSEC|RDDL3_instrucDL|s\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I~input_o\,
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(7),
	combout => \R_dat|senyales_cntl|RDA4_rd|s~1_combout\);

-- Location: FF_X66_Y66_N5
\R_dat|senyales_cntl|RDA4_rd|s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|senyales_cntl|RDA4_rd|s~1_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDA4_rd|s\(0));

-- Location: IOIBUF_X81_Y65_N15
\instruc[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(15),
	o => \instruc[15]~input_o\);

-- Location: LCCOMB_X70_Y66_N22
\R_decPBRSEC|RDDL3_instrucDL|s[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_decPBRSEC|RDDL3_instrucDL|s[15]~feeder_combout\ = \instruc[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruc[15]~input_o\,
	combout => \R_decPBRSEC|RDDL3_instrucDL|s[15]~feeder_combout\);

-- Location: FF_X70_Y66_N23
\R_decPBRSEC|RDDL3_instrucDL|s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_decPBRSEC|RDDL3_instrucDL|s[15]~feeder_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(15));

-- Location: IOIBUF_X63_Y67_N15
\instruc[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(8),
	o => \instruc[8]~input_o\);

-- Location: LCCOMB_X66_Y66_N16
\R_decPBRSEC|RDDL3_instrucDL|s[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_decPBRSEC|RDDL3_instrucDL|s[8]~feeder_combout\ = \instruc[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruc[8]~input_o\,
	combout => \R_decPBRSEC|RDDL3_instrucDL|s[8]~feeder_combout\);

-- Location: FF_X66_Y66_N17
\R_decPBRSEC|RDDL3_instrucDL|s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_decPBRSEC|RDDL3_instrucDL|s[8]~feeder_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(8));

-- Location: LCCOMB_X66_Y66_N20
\R_dat|senyales_cntl|RDA4_rd|s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_rd|s~0_combout\ = (!\I~input_o\ & \R_decPBRSEC|RDDL3_instrucDL|s\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I~input_o\,
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(8),
	combout => \R_dat|senyales_cntl|RDA4_rd|s~0_combout\);

-- Location: FF_X66_Y66_N21
\R_dat|senyales_cntl|RDA4_rd|s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|senyales_cntl|RDA4_rd|s~0_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDA4_rd|s\(1));

-- Location: LCCOMB_X66_Y66_N24
\R_dat|R_dat|RD~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~1_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(16) & (\R_dat|senyales_cntl|RDA4_rd|s\(1) & (\R_dat|senyales_cntl|RDA4_rd|s\(0) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(15))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(16) & 
-- (!\R_dat|senyales_cntl|RDA4_rd|s\(1) & (\R_dat|senyales_cntl|RDA4_rd|s\(0) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(16),
	datab => \R_dat|senyales_cntl|RDA4_rd|s\(0),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(15),
	datad => \R_dat|senyales_cntl|RDA4_rd|s\(1),
	combout => \R_dat|R_dat|RD~1_combout\);

-- Location: LCCOMB_X66_Y66_N14
\R_dat|senyales_cntl|RDM5_rd|s[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDM5_rd|s[1]~feeder_combout\ = \R_dat|senyales_cntl|RDA4_rd|s\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R_dat|senyales_cntl|RDA4_rd|s\(1),
	combout => \R_dat|senyales_cntl|RDM5_rd|s[1]~feeder_combout\);

-- Location: FF_X66_Y66_N15
\R_dat|senyales_cntl|RDM5_rd|s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|senyales_cntl|RDM5_rd|s[1]~feeder_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDM5_rd|s\(1));

-- Location: FF_X66_Y66_N27
\R_dat|senyales_cntl|RDM5_rd|s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RDA4_rd|s\(0),
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDM5_rd|s\(0));

-- Location: IOIBUF_X58_Y67_N22
\instruc[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(16),
	o => \instruc[16]~input_o\);

-- Location: LCCOMB_X66_Y66_N10
\R_decPBRSEC|RDDL3_instrucDL|s[16]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_decPBRSEC|RDDL3_instrucDL|s[16]~feeder_combout\ = \instruc[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruc[16]~input_o\,
	combout => \R_decPBRSEC|RDDL3_instrucDL|s[16]~feeder_combout\);

-- Location: FF_X66_Y66_N11
\R_decPBRSEC|RDDL3_instrucDL|s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_decPBRSEC|RDDL3_instrucDL|s[16]~feeder_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(16));

-- Location: LCCOMB_X66_Y66_N2
\R_dat|R_dat|RD~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~2_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(15) & (\R_dat|senyales_cntl|RDM5_rd|s\(0) & (\R_dat|senyales_cntl|RDM5_rd|s\(1) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(16))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(15) & 
-- (!\R_dat|senyales_cntl|RDM5_rd|s\(0) & (\R_dat|senyales_cntl|RDM5_rd|s\(1) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(15),
	datab => \R_dat|senyales_cntl|RDM5_rd|s\(1),
	datac => \R_dat|senyales_cntl|RDM5_rd|s\(0),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(16),
	combout => \R_dat|R_dat|RD~2_combout\);

-- Location: LCCOMB_X69_Y66_N8
\R_dat|R_dat|RD~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~7_combout\ = (\R_dat|R_dat|RD~4_combout\ & ((\R_dat|R_dat|RD~2_combout\) # ((\R_dat|R_dat|RD~6_combout\ & \R_dat|R_dat|RD~1_combout\)))) # (!\R_dat|R_dat|RD~4_combout\ & (\R_dat|R_dat|RD~6_combout\ & (\R_dat|R_dat|RD~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|R_dat|RD~4_combout\,
	datab => \R_dat|R_dat|RD~6_combout\,
	datac => \R_dat|R_dat|RD~1_combout\,
	datad => \R_dat|R_dat|RD~2_combout\,
	combout => \R_dat|R_dat|RD~7_combout\);

-- Location: LCCOMB_X70_Y66_N14
\R_dat|senyales_cntl|RDM5_pbr|s~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDM5_pbr|s~feeder_combout\ = \R_dat|senyales_cntl|RDA4_pbr|s~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R_dat|senyales_cntl|RDA4_pbr|s~q\,
	combout => \R_dat|senyales_cntl|RDM5_pbr|s~feeder_combout\);

-- Location: FF_X70_Y66_N15
\R_dat|senyales_cntl|RDM5_pbr|s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|senyales_cntl|RDM5_pbr|s~feeder_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDM5_pbr|s~q\);

-- Location: FF_X70_Y66_N31
\R_dat|senyales_cntl|RD6_pbr|s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RDM5_pbr|s~q\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RD6_pbr|s~q\);

-- Location: FF_X68_Y66_N31
\R_dat|senyales_cntl|RDM5_rd|s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RDA4_rd|s\(3),
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDM5_rd|s\(3));

-- Location: FF_X68_Y66_N27
\R_dat|senyales_cntl|RD6_rd|s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RDM5_rd|s\(3),
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RD6_rd|s\(3));

-- Location: FF_X68_Y66_N5
\R_dat|senyales_cntl|RDM5_rd|s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RDA4_rd|s\(2),
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDM5_rd|s\(2));

-- Location: FF_X68_Y66_N15
\R_dat|senyales_cntl|RD6_rd|s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RDM5_rd|s\(2),
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RD6_rd|s\(2));

-- Location: LCCOMB_X68_Y66_N26
\R_dat|R_dat|RD~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~12_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(18) & (\R_dat|senyales_cntl|RD6_rd|s\(3) & (\R_decPBRSEC|RDDL3_instrucDL|s\(17) $ (!\R_dat|senyales_cntl|RD6_rd|s\(2))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(18) & 
-- (!\R_dat|senyales_cntl|RD6_rd|s\(3) & (\R_decPBRSEC|RDDL3_instrucDL|s\(17) $ (!\R_dat|senyales_cntl|RD6_rd|s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(18),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(17),
	datac => \R_dat|senyales_cntl|RD6_rd|s\(3),
	datad => \R_dat|senyales_cntl|RD6_rd|s\(2),
	combout => \R_dat|R_dat|RD~12_combout\);

-- Location: LCCOMB_X69_Y66_N24
\R_dat|R_dat|RD~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~13_combout\ = (\R_dat|senyales_cntl|RD6_pbr|s~q\ & (\R_dat|R_dat|RD~12_combout\ & (\R_dat|senyales_cntl|RD6_rd|s\(4) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RD6_rd|s\(4),
	datab => \R_dat|senyales_cntl|RD6_pbr|s~q\,
	datac => \R_dat|R_dat|RD~12_combout\,
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(19),
	combout => \R_dat|R_dat|RD~13_combout\);

-- Location: FF_X66_Y66_N23
\R_dat|senyales_cntl|RD6_rd|s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RDM5_rd|s\(0),
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RD6_rd|s\(0));

-- Location: FF_X66_Y66_N9
\R_dat|senyales_cntl|RD6_rd|s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RDM5_rd|s\(1),
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RD6_rd|s\(1));

-- Location: LCCOMB_X66_Y66_N8
\R_dat|R_dat|RD~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~8_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(15) & (\R_dat|senyales_cntl|RD6_rd|s\(0) & (\R_dat|senyales_cntl|RD6_rd|s\(1) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(16))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(15) & 
-- (!\R_dat|senyales_cntl|RD6_rd|s\(0) & (\R_dat|senyales_cntl|RD6_rd|s\(1) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(15),
	datab => \R_dat|senyales_cntl|RD6_rd|s\(0),
	datac => \R_dat|senyales_cntl|RD6_rd|s\(1),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(16),
	combout => \R_dat|R_dat|RD~8_combout\);

-- Location: FF_X68_Y66_N7
\R_dat|senyales_cntl|RDE7_rd|s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RD6_rd|s\(3),
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDE7_rd|s\(3));

-- Location: FF_X68_Y66_N17
\R_dat|senyales_cntl|RDE7_rd|s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RD6_rd|s\(2),
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDE7_rd|s\(2));

-- Location: LCCOMB_X68_Y66_N6
\R_dat|R_dat|RD~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~10_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(18) & (\R_dat|senyales_cntl|RDE7_rd|s\(3) & (\R_decPBRSEC|RDDL3_instrucDL|s\(17) $ (!\R_dat|senyales_cntl|RDE7_rd|s\(2))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(18) & 
-- (!\R_dat|senyales_cntl|RDE7_rd|s\(3) & (\R_decPBRSEC|RDDL3_instrucDL|s\(17) $ (!\R_dat|senyales_cntl|RDE7_rd|s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(18),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(17),
	datac => \R_dat|senyales_cntl|RDE7_rd|s\(3),
	datad => \R_dat|senyales_cntl|RDE7_rd|s\(2),
	combout => \R_dat|R_dat|RD~10_combout\);

-- Location: IOIBUF_X70_Y67_N22
\instruc[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(11),
	o => \instruc[11]~input_o\);

-- Location: LCCOMB_X69_Y66_N12
\R_decPBRSEC|RDDL3_instrucDL|s[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_decPBRSEC|RDDL3_instrucDL|s[11]~feeder_combout\ = \instruc[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruc[11]~input_o\,
	combout => \R_decPBRSEC|RDDL3_instrucDL|s[11]~feeder_combout\);

-- Location: FF_X69_Y66_N13
\R_decPBRSEC|RDDL3_instrucDL|s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_decPBRSEC|RDDL3_instrucDL|s[11]~feeder_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(11));

-- Location: LCCOMB_X69_Y66_N22
\R_dat|senyales_cntl|RDA4_rd|s~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_rd|s~4_combout\ = (!\I~input_o\ & \R_decPBRSEC|RDDL3_instrucDL|s\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I~input_o\,
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(11),
	combout => \R_dat|senyales_cntl|RDA4_rd|s~4_combout\);

-- Location: FF_X69_Y66_N23
\R_dat|senyales_cntl|RDA4_rd|s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|senyales_cntl|RDA4_rd|s~4_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDA4_rd|s\(4));

-- Location: FF_X69_Y66_N21
\R_dat|senyales_cntl|RDM5_rd|s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RDA4_rd|s\(4),
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDM5_rd|s\(4));

-- Location: LCCOMB_X69_Y66_N14
\R_dat|senyales_cntl|RD6_rd|s[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RD6_rd|s[4]~feeder_combout\ = \R_dat|senyales_cntl|RDM5_rd|s\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R_dat|senyales_cntl|RDM5_rd|s\(4),
	combout => \R_dat|senyales_cntl|RD6_rd|s[4]~feeder_combout\);

-- Location: FF_X69_Y66_N15
\R_dat|senyales_cntl|RD6_rd|s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|senyales_cntl|RD6_rd|s[4]~feeder_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RD6_rd|s\(4));

-- Location: FF_X69_Y66_N11
\R_dat|senyales_cntl|RDE7_rd|s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RD6_rd|s\(4),
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDE7_rd|s\(4));

-- Location: LCCOMB_X69_Y66_N28
\R_dat|R_dat|RD~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~11_combout\ = (\R_dat|senyales_cntl|RDE7_pbr|s~q\ & (\R_dat|R_dat|RD~10_combout\ & (\R_decPBRSEC|RDDL3_instrucDL|s\(19) $ (!\R_dat|senyales_cntl|RDE7_rd|s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RDE7_pbr|s~q\,
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(19),
	datac => \R_dat|R_dat|RD~10_combout\,
	datad => \R_dat|senyales_cntl|RDE7_rd|s\(4),
	combout => \R_dat|R_dat|RD~11_combout\);

-- Location: LCCOMB_X69_Y66_N18
\R_dat|R_dat|RD~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~14_combout\ = (\R_dat|R_dat|RD~9_combout\ & ((\R_dat|R_dat|RD~11_combout\) # ((\R_dat|R_dat|RD~13_combout\ & \R_dat|R_dat|RD~8_combout\)))) # (!\R_dat|R_dat|RD~9_combout\ & (\R_dat|R_dat|RD~13_combout\ & (\R_dat|R_dat|RD~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|R_dat|RD~9_combout\,
	datab => \R_dat|R_dat|RD~13_combout\,
	datac => \R_dat|R_dat|RD~8_combout\,
	datad => \R_dat|R_dat|RD~11_combout\,
	combout => \R_dat|R_dat|RD~14_combout\);

-- Location: LCCOMB_X69_Y66_N30
\R_dat|R_dat|RD~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~15_combout\ = (\R_dat|R_dat|RD~0_combout\ & ((\R_dat|R_dat|RD~7_combout\) # (\R_dat|R_dat|RD~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|R_dat|RD~0_combout\,
	datab => \R_dat|R_dat|RD~7_combout\,
	datad => \R_dat|R_dat|RD~14_combout\,
	combout => \R_dat|R_dat|RD~15_combout\);

-- Location: IOIBUF_X70_Y67_N15
\instruc[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(24),
	o => \instruc[24]~input_o\);

-- Location: FF_X69_Y66_N5
\R_decPBRSEC|RDDL3_instrucDL|s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[24]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(24));

-- Location: IOIBUF_X56_Y67_N1
\instruc[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(23),
	o => \instruc[23]~input_o\);

-- Location: FF_X68_Y66_N13
\R_decPBRSEC|RDDL3_instrucDL|s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[23]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(23));

-- Location: LCCOMB_X68_Y66_N14
\R_dat|R_dat|RD~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~29_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(22) & (\R_dat|senyales_cntl|RD6_rd|s\(2) & (\R_decPBRSEC|RDDL3_instrucDL|s\(23) $ (!\R_dat|senyales_cntl|RD6_rd|s\(3))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(22) & 
-- (!\R_dat|senyales_cntl|RD6_rd|s\(2) & (\R_decPBRSEC|RDDL3_instrucDL|s\(23) $ (!\R_dat|senyales_cntl|RD6_rd|s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(22),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(23),
	datac => \R_dat|senyales_cntl|RD6_rd|s\(2),
	datad => \R_dat|senyales_cntl|RD6_rd|s\(3),
	combout => \R_dat|R_dat|RD~29_combout\);

-- Location: LCCOMB_X69_Y66_N26
\R_dat|R_dat|RD~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~30_combout\ = (\R_dat|senyales_cntl|RD6_pbr|s~q\ & (\R_dat|R_dat|RD~29_combout\ & (\R_dat|senyales_cntl|RD6_rd|s\(4) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RD6_rd|s\(4),
	datab => \R_dat|senyales_cntl|RD6_pbr|s~q\,
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(24),
	datad => \R_dat|R_dat|RD~29_combout\,
	combout => \R_dat|R_dat|RD~30_combout\);

-- Location: IOIBUF_X65_Y67_N8
\instruc[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(20),
	o => \instruc[20]~input_o\);

-- Location: FF_X66_Y66_N29
\R_decPBRSEC|RDDL3_instrucDL|s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[20]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(20));

-- Location: LCCOMB_X66_Y66_N22
\R_dat|R_dat|RD~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~25_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(21) & (\R_dat|senyales_cntl|RD6_rd|s\(1) & (\R_dat|senyales_cntl|RD6_rd|s\(0) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(20))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(21) & 
-- (!\R_dat|senyales_cntl|RD6_rd|s\(1) & (\R_dat|senyales_cntl|RD6_rd|s\(0) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(21),
	datab => \R_dat|senyales_cntl|RD6_rd|s\(1),
	datac => \R_dat|senyales_cntl|RD6_rd|s\(0),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(20),
	combout => \R_dat|R_dat|RD~25_combout\);

-- Location: LCCOMB_X68_Y66_N16
\R_dat|R_dat|RD~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~27_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(22) & (\R_dat|senyales_cntl|RDE7_rd|s\(2) & (\R_decPBRSEC|RDDL3_instrucDL|s\(23) $ (!\R_dat|senyales_cntl|RDE7_rd|s\(3))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(22) & 
-- (!\R_dat|senyales_cntl|RDE7_rd|s\(2) & (\R_decPBRSEC|RDDL3_instrucDL|s\(23) $ (!\R_dat|senyales_cntl|RDE7_rd|s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(22),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(23),
	datac => \R_dat|senyales_cntl|RDE7_rd|s\(2),
	datad => \R_dat|senyales_cntl|RDE7_rd|s\(3),
	combout => \R_dat|R_dat|RD~27_combout\);

-- Location: LCCOMB_X69_Y66_N2
\R_dat|R_dat|RD~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~28_combout\ = (\R_dat|senyales_cntl|RDE7_pbr|s~q\ & (\R_dat|R_dat|RD~27_combout\ & (\R_decPBRSEC|RDDL3_instrucDL|s\(24) $ (!\R_dat|senyales_cntl|RDE7_rd|s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RDE7_pbr|s~q\,
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(24),
	datac => \R_dat|R_dat|RD~27_combout\,
	datad => \R_dat|senyales_cntl|RDE7_rd|s\(4),
	combout => \R_dat|R_dat|RD~28_combout\);

-- Location: LCCOMB_X68_Y66_N18
\R_dat|R_dat|RD~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~31_combout\ = (\R_dat|R_dat|RD~26_combout\ & ((\R_dat|R_dat|RD~28_combout\) # ((\R_dat|R_dat|RD~30_combout\ & \R_dat|R_dat|RD~25_combout\)))) # (!\R_dat|R_dat|RD~26_combout\ & (\R_dat|R_dat|RD~30_combout\ & (\R_dat|R_dat|RD~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|R_dat|RD~26_combout\,
	datab => \R_dat|R_dat|RD~30_combout\,
	datac => \R_dat|R_dat|RD~25_combout\,
	datad => \R_dat|R_dat|RD~28_combout\,
	combout => \R_dat|R_dat|RD~31_combout\);

-- Location: IOIBUF_X63_Y67_N1
\instruc[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(21),
	o => \instruc[21]~input_o\);

-- Location: FF_X66_Y66_N13
\R_decPBRSEC|RDDL3_instrucDL|s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[21]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(21));

-- Location: LCCOMB_X68_Y66_N20
\R_dat|LDDat|not_comp2|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|not_comp2|Equal0~0_combout\ = (!\R_decPBRSEC|RDDL3_instrucDL|s\(22) & (!\R_decPBRSEC|RDDL3_instrucDL|s\(23) & (!\R_decPBRSEC|RDDL3_instrucDL|s\(21) & !\R_decPBRSEC|RDDL3_instrucDL|s\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(22),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(23),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(21),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(24),
	combout => \R_dat|LDDat|not_comp2|Equal0~0_combout\);

-- Location: IOIBUF_X81_Y65_N22
\instruc[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(0),
	o => \instruc[0]~input_o\);

-- Location: FF_X70_Y66_N11
\R_decPBRSEC|RDDL3_instrucDL|s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[0]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(0));

-- Location: LCCOMB_X70_Y66_N10
\R_dat|genvalreg|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|genvalreg|Mux1~0_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(1) & (\R_decPBRSEC|RDDL3_instrucDL|s\(0) & ((!\R_decPBRSEC|RDDL3_instrucDL|s\(4)) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(6),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(1),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(0),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(4),
	combout => \R_dat|genvalreg|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y66_N12
\R_dat|R_dat|RD~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~16_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(5) & (\R_dat|genvalreg|Mux1~0_combout\ & (!\R_decPBRSEC|RDDL3_instrucDL|s\(3) & !\R_decPBRSEC|RDDL3_instrucDL|s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(5),
	datab => \R_dat|genvalreg|Mux1~0_combout\,
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(3),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(2),
	combout => \R_dat|R_dat|RD~16_combout\);

-- Location: LCCOMB_X69_Y66_N10
\R_dat|R_dat|RD~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~17_combout\ = (\R_dat|R_dat|RD~16_combout\ & ((\R_decPBRSEC|RDDL3_instrucDL|s\(20)) # (!\R_dat|LDDat|not_comp2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(20),
	datab => \R_dat|LDDat|not_comp2|Equal0~0_combout\,
	datad => \R_dat|R_dat|RD~16_combout\,
	combout => \R_dat|R_dat|RD~17_combout\);

-- Location: LCCOMB_X68_Y66_N12
\R_dat|R_dat|RD~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~22_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(22) & (\R_dat|senyales_cntl|RDA4_rd|s\(2) & (\R_dat|senyales_cntl|RDA4_rd|s\(3) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(23))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(22) & 
-- (!\R_dat|senyales_cntl|RDA4_rd|s\(2) & (\R_dat|senyales_cntl|RDA4_rd|s\(3) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(22),
	datab => \R_dat|senyales_cntl|RDA4_rd|s\(3),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(23),
	datad => \R_dat|senyales_cntl|RDA4_rd|s\(2),
	combout => \R_dat|R_dat|RD~22_combout\);

-- Location: LCCOMB_X69_Y66_N20
\R_dat|R_dat|RD~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~23_combout\ = (\R_dat|senyales_cntl|RDA4_pbr|s~q\ & (\R_dat|R_dat|RD~22_combout\ & (\R_decPBRSEC|RDDL3_instrucDL|s\(24) $ (!\R_dat|senyales_cntl|RDA4_rd|s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RDA4_pbr|s~q\,
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(24),
	datac => \R_dat|senyales_cntl|RDA4_rd|s\(4),
	datad => \R_dat|R_dat|RD~22_combout\,
	combout => \R_dat|R_dat|RD~23_combout\);

-- Location: LCCOMB_X68_Y66_N4
\R_dat|R_dat|RD~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~20_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(22) & (\R_dat|senyales_cntl|RDM5_rd|s\(2) & (\R_dat|senyales_cntl|RDM5_rd|s\(3) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(23))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(22) & 
-- (!\R_dat|senyales_cntl|RDM5_rd|s\(2) & (\R_dat|senyales_cntl|RDM5_rd|s\(3) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(22),
	datab => \R_dat|senyales_cntl|RDM5_rd|s\(3),
	datac => \R_dat|senyales_cntl|RDM5_rd|s\(2),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(23),
	combout => \R_dat|R_dat|RD~20_combout\);

-- Location: LCCOMB_X69_Y66_N4
\R_dat|R_dat|RD~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~21_combout\ = (\R_dat|senyales_cntl|RDM5_pbr|s~q\ & (\R_dat|R_dat|RD~20_combout\ & (\R_decPBRSEC|RDDL3_instrucDL|s\(24) $ (!\R_dat|senyales_cntl|RDM5_rd|s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RDM5_pbr|s~q\,
	datab => \R_dat|R_dat|RD~20_combout\,
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(24),
	datad => \R_dat|senyales_cntl|RDM5_rd|s\(4),
	combout => \R_dat|R_dat|RD~21_combout\);

-- Location: LCCOMB_X66_Y66_N26
\R_dat|R_dat|RD~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~19_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(20) & (\R_dat|senyales_cntl|RDM5_rd|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(21) $ (!\R_dat|senyales_cntl|RDM5_rd|s\(1))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(20) & 
-- (!\R_dat|senyales_cntl|RDM5_rd|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(21) $ (!\R_dat|senyales_cntl|RDM5_rd|s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(20),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(21),
	datac => \R_dat|senyales_cntl|RDM5_rd|s\(0),
	datad => \R_dat|senyales_cntl|RDM5_rd|s\(1),
	combout => \R_dat|R_dat|RD~19_combout\);

-- Location: LCCOMB_X66_Y66_N6
\R_dat|R_dat|RD~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~24_combout\ = (\R_dat|R_dat|RD~18_combout\ & ((\R_dat|R_dat|RD~23_combout\) # ((\R_dat|R_dat|RD~21_combout\ & \R_dat|R_dat|RD~19_combout\)))) # (!\R_dat|R_dat|RD~18_combout\ & (((\R_dat|R_dat|RD~21_combout\ & 
-- \R_dat|R_dat|RD~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|R_dat|RD~18_combout\,
	datab => \R_dat|R_dat|RD~23_combout\,
	datac => \R_dat|R_dat|RD~21_combout\,
	datad => \R_dat|R_dat|RD~19_combout\,
	combout => \R_dat|R_dat|RD~24_combout\);

-- Location: LCCOMB_X68_Y66_N0
\R_dat|R_dat|RD~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~32_combout\ = (\R_dat|R_dat|RD~15_combout\) # ((\R_dat|R_dat|RD~17_combout\ & ((\R_dat|R_dat|RD~31_combout\) # (\R_dat|R_dat|RD~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|R_dat|RD~15_combout\,
	datab => \R_dat|R_dat|RD~31_combout\,
	datac => \R_dat|R_dat|RD~17_combout\,
	datad => \R_dat|R_dat|RD~24_combout\,
	combout => \R_dat|R_dat|RD~32_combout\);

-- Location: LCCOMB_X68_Y66_N24
\R_dat|R_dat|RD~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~33_combout\ = (\R_dat|R_dat|RD~24_combout\) # (\R_dat|R_dat|RD~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|R_dat|RD~24_combout\,
	datad => \R_dat|R_dat|RD~31_combout\,
	combout => \R_dat|R_dat|RD~33_combout\);

-- Location: LCCOMB_X68_Y66_N2
\R_lgr|inyecBDL\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_lgr|inyecBDL~combout\ = (!\R_dat|R_dat|RD~15_combout\ & (\R_Sec|R_sec|RS~combout\ & ((!\R_dat|R_dat|RD~33_combout\) # (!\R_dat|R_dat|RD~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|R_dat|RD~15_combout\,
	datab => \R_dat|R_dat|RD~17_combout\,
	datac => \R_Sec|R_sec|RS~combout\,
	datad => \R_dat|R_dat|RD~33_combout\,
	combout => \R_lgr|inyecBDL~combout\);

-- Location: IOIBUF_X68_Y0_N1
\instruc[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(12),
	o => \instruc[12]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\instruc[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(13),
	o => \instruc[13]~input_o\);

-- Location: IOIBUF_X81_Y49_N8
\instruc[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(14),
	o => \instruc[14]~input_o\);

-- Location: IOIBUF_X8_Y67_N8
\instruc[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(25),
	o => \instruc[25]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\instruc[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(26),
	o => \instruc[26]~input_o\);

-- Location: IOIBUF_X58_Y0_N15
\instruc[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(27),
	o => \instruc[27]~input_o\);

-- Location: IOIBUF_X44_Y0_N22
\instruc[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(28),
	o => \instruc[28]~input_o\);

-- Location: IOIBUF_X81_Y16_N1
\instruc[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(29),
	o => \instruc[29]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\instruc[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(30),
	o => \instruc[30]~input_o\);

-- Location: IOIBUF_X61_Y0_N1
\instruc[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(31),
	o => \instruc[31]~input_o\);

ww_bloqCP <= \bloqCP~output_o\;

ww_bloqBDL <= \bloqBDL~output_o\;

ww_inyecBDL <= \inyecBDL~output_o\;

ww_inyecDLA <= \inyecDLA~output_o\;
END structure;


