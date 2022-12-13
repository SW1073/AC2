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

-- DATE "12/13/2022 19:30:13"

-- 
-- Device: Altera EP4CGX30CF23C6 Package FBGA484
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
-- ~ALTERA_NCEO~	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


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
	bloqCP : BUFFER std_logic;
	bloqBDL : BUFFER std_logic;
	inyecBDL : BUFFER std_logic;
	inyecDLA : BUFFER std_logic
	);
END LIB;

-- Design Ports Information
-- instruc[12]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[13]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[14]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[25]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[26]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[27]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[28]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[29]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[30]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[31]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bloqCP	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bloqBDL	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inyecBDL	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inyecDLA	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reloj	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcero	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[0]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[3]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[15]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[16]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[17]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[18]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[19]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[4]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[5]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[2]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[6]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[20]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[21]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[22]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[23]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[24]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[8]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[10]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[9]	=>  Location: PIN_A1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[11]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \bloqCP~output_o\ : std_logic;
SIGNAL \bloqBDL~output_o\ : std_logic;
SIGNAL \inyecBDL~output_o\ : std_logic;
SIGNAL \inyecDLA~output_o\ : std_logic;
SIGNAL \reloj~input_o\ : std_logic;
SIGNAL \reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \I~input_o\ : std_logic;
SIGNAL \instruc[11]~input_o\ : std_logic;
SIGNAL \R_decPBRSEC|RDDL3_instrucDL|s[11]~feeder_combout\ : std_logic;
SIGNAL \pcero~input_o\ : std_logic;
SIGNAL \pcero~inputclkctrl_outclk\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_rd|s~4_combout\ : std_logic;
SIGNAL \instruc[19]~input_o\ : std_logic;
SIGNAL \instruc[1]~input_o\ : std_logic;
SIGNAL \instruc[0]~input_o\ : std_logic;
SIGNAL \instruc[3]~input_o\ : std_logic;
SIGNAL \instruc[2]~input_o\ : std_logic;
SIGNAL \instruc[6]~input_o\ : std_logic;
SIGNAL \instruc[4]~input_o\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_pbr|s~2_combout\ : std_logic;
SIGNAL \instruc[5]~input_o\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_pbr|s~1_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_pbr|s~3_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_pbr|s~q\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDM5_pbr|s~q\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RD6_pbr|s~feeder_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RD6_pbr|s~q\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDE7_pbr|s~feeder_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDE7_pbr|s~q\ : std_logic;
SIGNAL \instruc[10]~input_o\ : std_logic;
SIGNAL \R_decPBRSEC|RDDL3_instrucDL|s[10]~feeder_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_rd|s~2_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RD6_rd|s[3]~feeder_combout\ : std_logic;
SIGNAL \instruc[17]~input_o\ : std_logic;
SIGNAL \R_decPBRSEC|RDDL3_instrucDL|s[17]~feeder_combout\ : std_logic;
SIGNAL \instruc[9]~input_o\ : std_logic;
SIGNAL \R_decPBRSEC|RDDL3_instrucDL|s[9]~feeder_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_rd|s~3_combout\ : std_logic;
SIGNAL \instruc[18]~input_o\ : std_logic;
SIGNAL \R_dat|R_dat|RD~10_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~11_combout\ : std_logic;
SIGNAL \instruc[15]~input_o\ : std_logic;
SIGNAL \R_decPBRSEC|RDDL3_instrucDL|s[15]~feeder_combout\ : std_logic;
SIGNAL \instruc[16]~input_o\ : std_logic;
SIGNAL \instruc[7]~input_o\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_rd|s~1_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RD6_rd|s[0]~feeder_combout\ : std_logic;
SIGNAL \instruc[8]~input_o\ : std_logic;
SIGNAL \R_decPBRSEC|RDDL3_instrucDL|s[8]~feeder_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_rd|s~0_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDM5_rd|s[1]~feeder_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RD6_rd|s[1]~feeder_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~8_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~12_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~13_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~9_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~14_combout\ : std_logic;
SIGNAL \R_dat|genvalreg|Mux0~0_combout\ : std_logic;
SIGNAL \R_dat|LDDat|not_comp1|Equal0~0_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_pbr|s~0_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~0_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~5_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~6_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~1_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~2_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~3_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~4_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~7_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~15_combout\ : std_logic;
SIGNAL \instruc[20]~input_o\ : std_logic;
SIGNAL \R_decPBRSEC|RDDL3_instrucDL|s[20]~feeder_combout\ : std_logic;
SIGNAL \instruc[21]~input_o\ : std_logic;
SIGNAL \R_dat|R_dat|RD~26_combout\ : std_logic;
SIGNAL \instruc[22]~input_o\ : std_logic;
SIGNAL \R_decPBRSEC|RDDL3_instrucDL|s[22]~feeder_combout\ : std_logic;
SIGNAL \instruc[23]~input_o\ : std_logic;
SIGNAL \R_dat|R_dat|RD~29_combout\ : std_logic;
SIGNAL \instruc[24]~input_o\ : std_logic;
SIGNAL \R_dat|R_dat|RD~30_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~27_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~28_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~25_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~31_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~18_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~22_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~23_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~19_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~20_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~21_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~24_combout\ : std_logic;
SIGNAL \R_dat|genvalreg|Mux1~0_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~16_combout\ : std_logic;
SIGNAL \R_dat|LDDat|not_comp2|Equal0~0_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~17_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~32_combout\ : std_logic;
SIGNAL \R_lgr|inyecBDL~0_combout\ : std_logic;
SIGNAL \R_lgr|inyecBDL~1_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_pbr|s~4_combout\ : std_logic;
SIGNAL \R_decPBRSEC|decPBRSEC|Mux0~0_combout\ : std_logic;
SIGNAL \R_Sec|senyales_cntl|RDA4_opsec|s~0_combout\ : std_logic;
SIGNAL \R_lgr|inyecBDL~2_combout\ : std_logic;
SIGNAL \R_Sec|senyales_cntl|RDA4_opsec|s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R_decPBRSEC|RDDL3_instrucDL|s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \R_dat|senyales_cntl|RDE7_rd|s\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \R_dat|senyales_cntl|RDA4_rd|s\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \R_dat|senyales_cntl|RDM5_rd|s\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \R_dat|senyales_cntl|RD6_rd|s\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_pcero~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_B~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

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
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X31_Y67_N9
\bloqCP~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R_dat|R_dat|RD~32_combout\,
	devoe => ww_devoe,
	o => \bloqCP~output_o\);

-- Location: IOOBUF_X31_Y67_N2
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

-- Location: IOOBUF_X17_Y67_N2
\inyecBDL~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R_lgr|inyecBDL~2_combout\,
	devoe => ww_devoe,
	o => \inyecBDL~output_o\);

-- Location: IOOBUF_X31_Y67_N23
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

-- Location: IOIBUF_X26_Y67_N15
\I~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I,
	o => \I~input_o\);

-- Location: IOIBUF_X29_Y67_N8
\instruc[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(11),
	o => \instruc[11]~input_o\);

-- Location: LCCOMB_X25_Y65_N16
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

-- Location: IOIBUF_X26_Y67_N22
\B~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: FF_X25_Y65_N17
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

-- Location: LCCOMB_X25_Y65_N26
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

-- Location: FF_X25_Y65_N27
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

-- Location: FF_X25_Y65_N9
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

-- Location: FF_X25_Y65_N15
\R_dat|senyales_cntl|RD6_rd|s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RDM5_rd|s\(4),
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RD6_rd|s\(4));

-- Location: FF_X25_Y65_N11
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

-- Location: IOIBUF_X31_Y67_N15
\instruc[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(19),
	o => \instruc[19]~input_o\);

-- Location: FF_X26_Y65_N17
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

-- Location: IOIBUF_X22_Y67_N8
\instruc[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(1),
	o => \instruc[1]~input_o\);

-- Location: FF_X23_Y65_N29
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

-- Location: IOIBUF_X19_Y67_N1
\instruc[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(0),
	o => \instruc[0]~input_o\);

-- Location: FF_X23_Y65_N25
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

-- Location: IOIBUF_X19_Y67_N8
\instruc[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(3),
	o => \instruc[3]~input_o\);

-- Location: FF_X23_Y65_N23
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

-- Location: IOIBUF_X19_Y67_N15
\instruc[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(2),
	o => \instruc[2]~input_o\);

-- Location: FF_X23_Y65_N21
\R_decPBRSEC|RDDL3_instrucDL|s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[2]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(2));

-- Location: IOIBUF_X17_Y67_N15
\instruc[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(6),
	o => \instruc[6]~input_o\);

-- Location: FF_X23_Y65_N17
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

-- Location: IOIBUF_X22_Y67_N1
\instruc[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(4),
	o => \instruc[4]~input_o\);

-- Location: FF_X23_Y65_N1
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

-- Location: LCCOMB_X23_Y65_N30
\R_dat|senyales_cntl|RDA4_pbr|s~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_pbr|s~2_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(6) & (((\R_decPBRSEC|RDDL3_instrucDL|s\(2))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(6) & (!\R_decPBRSEC|RDDL3_instrucDL|s\(3) & ((\R_decPBRSEC|RDDL3_instrucDL|s\(4)) # 
-- (!\R_decPBRSEC|RDDL3_instrucDL|s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(3),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(2),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(6),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(4),
	combout => \R_dat|senyales_cntl|RDA4_pbr|s~2_combout\);

-- Location: IOIBUF_X19_Y67_N22
\instruc[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(5),
	o => \instruc[5]~input_o\);

-- Location: FF_X23_Y65_N7
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

-- Location: LCCOMB_X23_Y65_N16
\R_dat|senyales_cntl|RDA4_pbr|s~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_pbr|s~1_combout\ = (!\I~input_o\ & (\R_decPBRSEC|RDDL3_instrucDL|s\(6) $ (((\R_decPBRSEC|RDDL3_instrucDL|s\(4)) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(5),
	datab => \I~input_o\,
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(6),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(4),
	combout => \R_dat|senyales_cntl|RDA4_pbr|s~1_combout\);

-- Location: LCCOMB_X23_Y65_N8
\R_dat|senyales_cntl|RDA4_pbr|s~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_pbr|s~3_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(1) & (\R_decPBRSEC|RDDL3_instrucDL|s\(0) & (\R_dat|senyales_cntl|RDA4_pbr|s~2_combout\ & \R_dat|senyales_cntl|RDA4_pbr|s~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(1),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(0),
	datac => \R_dat|senyales_cntl|RDA4_pbr|s~2_combout\,
	datad => \R_dat|senyales_cntl|RDA4_pbr|s~1_combout\,
	combout => \R_dat|senyales_cntl|RDA4_pbr|s~3_combout\);

-- Location: FF_X23_Y65_N9
\R_dat|senyales_cntl|RDA4_pbr|s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|senyales_cntl|RDA4_pbr|s~3_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDA4_pbr|s~q\);

-- Location: FF_X23_Y65_N19
\R_dat|senyales_cntl|RDM5_pbr|s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RDA4_pbr|s~q\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDM5_pbr|s~q\);

-- Location: LCCOMB_X22_Y65_N18
\R_dat|senyales_cntl|RD6_pbr|s~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RD6_pbr|s~feeder_combout\ = \R_dat|senyales_cntl|RDM5_pbr|s~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R_dat|senyales_cntl|RDM5_pbr|s~q\,
	combout => \R_dat|senyales_cntl|RD6_pbr|s~feeder_combout\);

-- Location: FF_X22_Y65_N19
\R_dat|senyales_cntl|RD6_pbr|s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|senyales_cntl|RD6_pbr|s~feeder_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RD6_pbr|s~q\);

-- Location: LCCOMB_X22_Y65_N20
\R_dat|senyales_cntl|RDE7_pbr|s~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDE7_pbr|s~feeder_combout\ = \R_dat|senyales_cntl|RD6_pbr|s~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R_dat|senyales_cntl|RD6_pbr|s~q\,
	combout => \R_dat|senyales_cntl|RDE7_pbr|s~feeder_combout\);

-- Location: FF_X22_Y65_N21
\R_dat|senyales_cntl|RDE7_pbr|s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|senyales_cntl|RDE7_pbr|s~feeder_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDE7_pbr|s~q\);

-- Location: IOIBUF_X26_Y67_N1
\instruc[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(10),
	o => \instruc[10]~input_o\);

-- Location: LCCOMB_X26_Y65_N24
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

-- Location: FF_X26_Y65_N25
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

-- Location: LCCOMB_X26_Y65_N26
\R_dat|senyales_cntl|RDA4_rd|s~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_rd|s~2_combout\ = (!\I~input_o\ & \R_decPBRSEC|RDDL3_instrucDL|s\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I~input_o\,
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(10),
	combout => \R_dat|senyales_cntl|RDA4_rd|s~2_combout\);

-- Location: FF_X26_Y65_N27
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

-- Location: FF_X26_Y65_N21
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

-- Location: LCCOMB_X26_Y65_N14
\R_dat|senyales_cntl|RD6_rd|s[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RD6_rd|s[3]~feeder_combout\ = \R_dat|senyales_cntl|RDM5_rd|s\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R_dat|senyales_cntl|RDM5_rd|s\(3),
	combout => \R_dat|senyales_cntl|RD6_rd|s[3]~feeder_combout\);

-- Location: FF_X26_Y65_N15
\R_dat|senyales_cntl|RD6_rd|s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|senyales_cntl|RD6_rd|s[3]~feeder_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RD6_rd|s\(3));

-- Location: FF_X26_Y65_N13
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

-- Location: IOIBUF_X33_Y67_N1
\instruc[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(17),
	o => \instruc[17]~input_o\);

-- Location: LCCOMB_X26_Y65_N2
\R_decPBRSEC|RDDL3_instrucDL|s[17]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_decPBRSEC|RDDL3_instrucDL|s[17]~feeder_combout\ = \instruc[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruc[17]~input_o\,
	combout => \R_decPBRSEC|RDDL3_instrucDL|s[17]~feeder_combout\);

-- Location: FF_X26_Y65_N3
\R_decPBRSEC|RDDL3_instrucDL|s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_decPBRSEC|RDDL3_instrucDL|s[17]~feeder_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(17));

-- Location: IOIBUF_X26_Y67_N8
\instruc[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(9),
	o => \instruc[9]~input_o\);

-- Location: LCCOMB_X26_Y65_N18
\R_decPBRSEC|RDDL3_instrucDL|s[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_decPBRSEC|RDDL3_instrucDL|s[9]~feeder_combout\ = \instruc[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruc[9]~input_o\,
	combout => \R_decPBRSEC|RDDL3_instrucDL|s[9]~feeder_combout\);

-- Location: FF_X26_Y65_N19
\R_decPBRSEC|RDDL3_instrucDL|s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_decPBRSEC|RDDL3_instrucDL|s[9]~feeder_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(9));

-- Location: LCCOMB_X26_Y65_N4
\R_dat|senyales_cntl|RDA4_rd|s~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_rd|s~3_combout\ = (!\I~input_o\ & \R_decPBRSEC|RDDL3_instrucDL|s\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I~input_o\,
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(9),
	combout => \R_dat|senyales_cntl|RDA4_rd|s~3_combout\);

-- Location: FF_X26_Y65_N5
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

-- Location: FF_X26_Y65_N9
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

-- Location: FF_X26_Y65_N23
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

-- Location: FF_X26_Y65_N7
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

-- Location: IOIBUF_X33_Y67_N15
\instruc[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(18),
	o => \instruc[18]~input_o\);

-- Location: FF_X26_Y65_N11
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

-- Location: LCCOMB_X26_Y65_N6
\R_dat|R_dat|RD~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~10_combout\ = (\R_dat|senyales_cntl|RDE7_rd|s\(3) & (\R_decPBRSEC|RDDL3_instrucDL|s\(18) & (\R_decPBRSEC|RDDL3_instrucDL|s\(17) $ (!\R_dat|senyales_cntl|RDE7_rd|s\(2))))) # (!\R_dat|senyales_cntl|RDE7_rd|s\(3) & 
-- (!\R_decPBRSEC|RDDL3_instrucDL|s\(18) & (\R_decPBRSEC|RDDL3_instrucDL|s\(17) $ (!\R_dat|senyales_cntl|RDE7_rd|s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RDE7_rd|s\(3),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(17),
	datac => \R_dat|senyales_cntl|RDE7_rd|s\(2),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(18),
	combout => \R_dat|R_dat|RD~10_combout\);

-- Location: LCCOMB_X25_Y65_N6
\R_dat|R_dat|RD~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~11_combout\ = (\R_dat|senyales_cntl|RDE7_pbr|s~q\ & (\R_dat|R_dat|RD~10_combout\ & (\R_dat|senyales_cntl|RDE7_rd|s\(4) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RDE7_rd|s\(4),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(19),
	datac => \R_dat|senyales_cntl|RDE7_pbr|s~q\,
	datad => \R_dat|R_dat|RD~10_combout\,
	combout => \R_dat|R_dat|RD~11_combout\);

-- Location: IOIBUF_X24_Y67_N15
\instruc[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(15),
	o => \instruc[15]~input_o\);

-- Location: LCCOMB_X24_Y65_N22
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

-- Location: FF_X24_Y65_N23
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

-- Location: IOIBUF_X24_Y67_N1
\instruc[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(16),
	o => \instruc[16]~input_o\);

-- Location: FF_X24_Y65_N21
\R_decPBRSEC|RDDL3_instrucDL|s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[16]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(16));

-- Location: IOIBUF_X24_Y67_N22
\instruc[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(7),
	o => \instruc[7]~input_o\);

-- Location: FF_X24_Y65_N25
\R_decPBRSEC|RDDL3_instrucDL|s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[7]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(7));

-- Location: LCCOMB_X24_Y65_N8
\R_dat|senyales_cntl|RDA4_rd|s~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_rd|s~1_combout\ = (!\I~input_o\ & \R_decPBRSEC|RDDL3_instrucDL|s\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I~input_o\,
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(7),
	combout => \R_dat|senyales_cntl|RDA4_rd|s~1_combout\);

-- Location: FF_X24_Y65_N9
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

-- Location: FF_X24_Y65_N29
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

-- Location: LCCOMB_X24_Y65_N30
\R_dat|senyales_cntl|RD6_rd|s[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RD6_rd|s[0]~feeder_combout\ = \R_dat|senyales_cntl|RDM5_rd|s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R_dat|senyales_cntl|RDM5_rd|s\(0),
	combout => \R_dat|senyales_cntl|RD6_rd|s[0]~feeder_combout\);

-- Location: FF_X24_Y65_N31
\R_dat|senyales_cntl|RD6_rd|s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|senyales_cntl|RD6_rd|s[0]~feeder_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RD6_rd|s\(0));

-- Location: IOIBUF_X29_Y67_N1
\instruc[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(8),
	o => \instruc[8]~input_o\);

-- Location: LCCOMB_X25_Y65_N0
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

-- Location: FF_X25_Y65_N1
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

-- Location: LCCOMB_X25_Y65_N24
\R_dat|senyales_cntl|RDA4_rd|s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_rd|s~0_combout\ = (!\I~input_o\ & \R_decPBRSEC|RDDL3_instrucDL|s\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I~input_o\,
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(8),
	combout => \R_dat|senyales_cntl|RDA4_rd|s~0_combout\);

-- Location: FF_X25_Y65_N25
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

-- Location: LCCOMB_X25_Y65_N12
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

-- Location: FF_X25_Y65_N13
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

-- Location: LCCOMB_X25_Y65_N4
\R_dat|senyales_cntl|RD6_rd|s[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RD6_rd|s[1]~feeder_combout\ = \R_dat|senyales_cntl|RDM5_rd|s\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R_dat|senyales_cntl|RDM5_rd|s\(1),
	combout => \R_dat|senyales_cntl|RD6_rd|s[1]~feeder_combout\);

-- Location: FF_X25_Y65_N5
\R_dat|senyales_cntl|RD6_rd|s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|senyales_cntl|RD6_rd|s[1]~feeder_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RD6_rd|s\(1));

-- Location: LCCOMB_X24_Y65_N14
\R_dat|R_dat|RD~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~8_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(15) & (\R_dat|senyales_cntl|RD6_rd|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(16) $ (!\R_dat|senyales_cntl|RD6_rd|s\(1))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(15) & 
-- (!\R_dat|senyales_cntl|RD6_rd|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(16) $ (!\R_dat|senyales_cntl|RD6_rd|s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(15),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(16),
	datac => \R_dat|senyales_cntl|RD6_rd|s\(0),
	datad => \R_dat|senyales_cntl|RD6_rd|s\(1),
	combout => \R_dat|R_dat|RD~8_combout\);

-- Location: LCCOMB_X26_Y65_N22
\R_dat|R_dat|RD~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~12_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(18) & (\R_dat|senyales_cntl|RD6_rd|s\(3) & (\R_decPBRSEC|RDDL3_instrucDL|s\(17) $ (!\R_dat|senyales_cntl|RD6_rd|s\(2))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(18) & 
-- (!\R_dat|senyales_cntl|RD6_rd|s\(3) & (\R_decPBRSEC|RDDL3_instrucDL|s\(17) $ (!\R_dat|senyales_cntl|RD6_rd|s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(18),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(17),
	datac => \R_dat|senyales_cntl|RD6_rd|s\(2),
	datad => \R_dat|senyales_cntl|RD6_rd|s\(3),
	combout => \R_dat|R_dat|RD~12_combout\);

-- Location: LCCOMB_X25_Y65_N20
\R_dat|R_dat|RD~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~13_combout\ = (\R_dat|R_dat|RD~12_combout\ & (\R_dat|senyales_cntl|RD6_pbr|s~q\ & (\R_dat|senyales_cntl|RD6_rd|s\(4) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RD6_rd|s\(4),
	datab => \R_dat|R_dat|RD~12_combout\,
	datac => \R_dat|senyales_cntl|RD6_pbr|s~q\,
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(19),
	combout => \R_dat|R_dat|RD~13_combout\);

-- Location: FF_X24_Y65_N15
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

-- Location: FF_X25_Y65_N23
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

-- Location: LCCOMB_X24_Y65_N16
\R_dat|R_dat|RD~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~9_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(15) & (\R_dat|senyales_cntl|RDE7_rd|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(16) $ (!\R_dat|senyales_cntl|RDE7_rd|s\(1))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(15) & 
-- (!\R_dat|senyales_cntl|RDE7_rd|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(16) $ (!\R_dat|senyales_cntl|RDE7_rd|s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(15),
	datab => \R_dat|senyales_cntl|RDE7_rd|s\(0),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(16),
	datad => \R_dat|senyales_cntl|RDE7_rd|s\(1),
	combout => \R_dat|R_dat|RD~9_combout\);

-- Location: LCCOMB_X24_Y65_N2
\R_dat|R_dat|RD~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~14_combout\ = (\R_dat|R_dat|RD~11_combout\ & ((\R_dat|R_dat|RD~9_combout\) # ((\R_dat|R_dat|RD~8_combout\ & \R_dat|R_dat|RD~13_combout\)))) # (!\R_dat|R_dat|RD~11_combout\ & (\R_dat|R_dat|RD~8_combout\ & (\R_dat|R_dat|RD~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|R_dat|RD~11_combout\,
	datab => \R_dat|R_dat|RD~8_combout\,
	datac => \R_dat|R_dat|RD~13_combout\,
	datad => \R_dat|R_dat|RD~9_combout\,
	combout => \R_dat|R_dat|RD~14_combout\);

-- Location: LCCOMB_X23_Y65_N6
\R_dat|genvalreg|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|genvalreg|Mux0~0_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(6) & ((\R_decPBRSEC|RDDL3_instrucDL|s\(4)) # ((!\R_decPBRSEC|RDDL3_instrucDL|s\(5))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(6) & (((\R_decPBRSEC|RDDL3_instrucDL|s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(4),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(6),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(5),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(2),
	combout => \R_dat|genvalreg|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y65_N16
\R_dat|LDDat|not_comp1|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|not_comp1|Equal0~0_combout\ = (!\R_decPBRSEC|RDDL3_instrucDL|s\(16) & (!\R_decPBRSEC|RDDL3_instrucDL|s\(17) & (!\R_decPBRSEC|RDDL3_instrucDL|s\(19) & !\R_decPBRSEC|RDDL3_instrucDL|s\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(16),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(17),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(19),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(18),
	combout => \R_dat|LDDat|not_comp1|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y65_N18
\R_dat|senyales_cntl|RDA4_pbr|s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_pbr|s~0_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(1) & (\R_decPBRSEC|RDDL3_instrucDL|s\(0) & !\R_decPBRSEC|RDDL3_instrucDL|s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(1),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(0),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(3),
	combout => \R_dat|senyales_cntl|RDA4_pbr|s~0_combout\);

-- Location: LCCOMB_X23_Y65_N2
\R_dat|R_dat|RD~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~0_combout\ = (!\R_dat|genvalreg|Mux0~0_combout\ & (\R_dat|senyales_cntl|RDA4_pbr|s~0_combout\ & ((\R_decPBRSEC|RDDL3_instrucDL|s\(15)) # (!\R_dat|LDDat|not_comp1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|genvalreg|Mux0~0_combout\,
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(15),
	datac => \R_dat|LDDat|not_comp1|Equal0~0_combout\,
	datad => \R_dat|senyales_cntl|RDA4_pbr|s~0_combout\,
	combout => \R_dat|R_dat|RD~0_combout\);

-- Location: LCCOMB_X26_Y65_N10
\R_dat|R_dat|RD~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~5_combout\ = (\R_dat|senyales_cntl|RDA4_rd|s\(2) & (\R_decPBRSEC|RDDL3_instrucDL|s\(17) & (\R_dat|senyales_cntl|RDA4_rd|s\(3) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(18))))) # (!\R_dat|senyales_cntl|RDA4_rd|s\(2) & 
-- (!\R_decPBRSEC|RDDL3_instrucDL|s\(17) & (\R_dat|senyales_cntl|RDA4_rd|s\(3) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RDA4_rd|s\(2),
	datab => \R_dat|senyales_cntl|RDA4_rd|s\(3),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(18),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(17),
	combout => \R_dat|R_dat|RD~5_combout\);

-- Location: LCCOMB_X25_Y65_N30
\R_dat|R_dat|RD~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~6_combout\ = (\R_dat|senyales_cntl|RDA4_pbr|s~q\ & (\R_dat|R_dat|RD~5_combout\ & (\R_dat|senyales_cntl|RDA4_rd|s\(4) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RDA4_pbr|s~q\,
	datab => \R_dat|senyales_cntl|RDA4_rd|s\(4),
	datac => \R_dat|R_dat|RD~5_combout\,
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(19),
	combout => \R_dat|R_dat|RD~6_combout\);

-- Location: LCCOMB_X24_Y65_N20
\R_dat|R_dat|RD~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~1_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(15) & (\R_dat|senyales_cntl|RDA4_rd|s\(0) & (\R_dat|senyales_cntl|RDA4_rd|s\(1) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(16))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(15) & 
-- (!\R_dat|senyales_cntl|RDA4_rd|s\(0) & (\R_dat|senyales_cntl|RDA4_rd|s\(1) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(15),
	datab => \R_dat|senyales_cntl|RDA4_rd|s\(1),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(16),
	datad => \R_dat|senyales_cntl|RDA4_rd|s\(0),
	combout => \R_dat|R_dat|RD~1_combout\);

-- Location: LCCOMB_X24_Y65_N4
\R_dat|R_dat|RD~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~2_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(15) & (\R_dat|senyales_cntl|RDM5_rd|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(16) $ (!\R_dat|senyales_cntl|RDM5_rd|s\(1))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(15) & 
-- (!\R_dat|senyales_cntl|RDM5_rd|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(16) $ (!\R_dat|senyales_cntl|RDM5_rd|s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(15),
	datab => \R_dat|senyales_cntl|RDM5_rd|s\(0),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(16),
	datad => \R_dat|senyales_cntl|RDM5_rd|s\(1),
	combout => \R_dat|R_dat|RD~2_combout\);

-- Location: LCCOMB_X26_Y65_N20
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

-- Location: LCCOMB_X25_Y65_N18
\R_dat|R_dat|RD~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~4_combout\ = (\R_dat|R_dat|RD~3_combout\ & (\R_dat|senyales_cntl|RDM5_pbr|s~q\ & (\R_decPBRSEC|RDDL3_instrucDL|s\(19) $ (!\R_dat|senyales_cntl|RDM5_rd|s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|R_dat|RD~3_combout\,
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(19),
	datac => \R_dat|senyales_cntl|RDM5_pbr|s~q\,
	datad => \R_dat|senyales_cntl|RDM5_rd|s\(4),
	combout => \R_dat|R_dat|RD~4_combout\);

-- Location: LCCOMB_X24_Y65_N26
\R_dat|R_dat|RD~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~7_combout\ = (\R_dat|R_dat|RD~6_combout\ & ((\R_dat|R_dat|RD~1_combout\) # ((\R_dat|R_dat|RD~2_combout\ & \R_dat|R_dat|RD~4_combout\)))) # (!\R_dat|R_dat|RD~6_combout\ & (((\R_dat|R_dat|RD~2_combout\ & \R_dat|R_dat|RD~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|R_dat|RD~6_combout\,
	datab => \R_dat|R_dat|RD~1_combout\,
	datac => \R_dat|R_dat|RD~2_combout\,
	datad => \R_dat|R_dat|RD~4_combout\,
	combout => \R_dat|R_dat|RD~7_combout\);

-- Location: LCCOMB_X23_Y65_N20
\R_dat|R_dat|RD~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~15_combout\ = (\R_dat|R_dat|RD~0_combout\ & ((\R_dat|R_dat|RD~14_combout\) # (\R_dat|R_dat|RD~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|R_dat|RD~14_combout\,
	datab => \R_dat|R_dat|RD~0_combout\,
	datad => \R_dat|R_dat|RD~7_combout\,
	combout => \R_dat|R_dat|RD~15_combout\);

-- Location: IOIBUF_X24_Y67_N8
\instruc[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(20),
	o => \instruc[20]~input_o\);

-- Location: LCCOMB_X24_Y65_N6
\R_decPBRSEC|RDDL3_instrucDL|s[20]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_decPBRSEC|RDDL3_instrucDL|s[20]~feeder_combout\ = \instruc[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruc[20]~input_o\,
	combout => \R_decPBRSEC|RDDL3_instrucDL|s[20]~feeder_combout\);

-- Location: FF_X24_Y65_N7
\R_decPBRSEC|RDDL3_instrucDL|s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_decPBRSEC|RDDL3_instrucDL|s[20]~feeder_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(20));

-- Location: IOIBUF_X29_Y67_N15
\instruc[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(21),
	o => \instruc[21]~input_o\);

-- Location: FF_X25_Y65_N3
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

-- Location: LCCOMB_X25_Y65_N22
\R_dat|R_dat|RD~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~26_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(20) & (\R_dat|senyales_cntl|RDE7_rd|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(21) $ (!\R_dat|senyales_cntl|RDE7_rd|s\(1))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(20) & 
-- (!\R_dat|senyales_cntl|RDE7_rd|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(21) $ (!\R_dat|senyales_cntl|RDE7_rd|s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(20),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(21),
	datac => \R_dat|senyales_cntl|RDE7_rd|s\(1),
	datad => \R_dat|senyales_cntl|RDE7_rd|s\(0),
	combout => \R_dat|R_dat|RD~26_combout\);

-- Location: IOIBUF_X33_Y67_N22
\instruc[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(22),
	o => \instruc[22]~input_o\);

-- Location: LCCOMB_X26_Y65_N30
\R_decPBRSEC|RDDL3_instrucDL|s[22]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_decPBRSEC|RDDL3_instrucDL|s[22]~feeder_combout\ = \instruc[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instruc[22]~input_o\,
	combout => \R_decPBRSEC|RDDL3_instrucDL|s[22]~feeder_combout\);

-- Location: FF_X26_Y65_N31
\R_decPBRSEC|RDDL3_instrucDL|s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_decPBRSEC|RDDL3_instrucDL|s[22]~feeder_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(22));

-- Location: IOIBUF_X33_Y67_N8
\instruc[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(23),
	o => \instruc[23]~input_o\);

-- Location: FF_X26_Y65_N1
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

-- Location: LCCOMB_X26_Y65_N0
\R_dat|R_dat|RD~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~29_combout\ = (\R_dat|senyales_cntl|RD6_rd|s\(2) & (\R_decPBRSEC|RDDL3_instrucDL|s\(22) & (\R_decPBRSEC|RDDL3_instrucDL|s\(23) $ (!\R_dat|senyales_cntl|RD6_rd|s\(3))))) # (!\R_dat|senyales_cntl|RD6_rd|s\(2) & 
-- (!\R_decPBRSEC|RDDL3_instrucDL|s\(22) & (\R_decPBRSEC|RDDL3_instrucDL|s\(23) $ (!\R_dat|senyales_cntl|RD6_rd|s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RD6_rd|s\(2),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(22),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(23),
	datad => \R_dat|senyales_cntl|RD6_rd|s\(3),
	combout => \R_dat|R_dat|RD~29_combout\);

-- Location: IOIBUF_X29_Y67_N22
\instruc[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(24),
	o => \instruc[24]~input_o\);

-- Location: FF_X25_Y65_N29
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

-- Location: LCCOMB_X25_Y65_N14
\R_dat|R_dat|RD~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~30_combout\ = (\R_dat|senyales_cntl|RD6_pbr|s~q\ & (\R_dat|R_dat|RD~29_combout\ & (\R_dat|senyales_cntl|RD6_rd|s\(4) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RD6_pbr|s~q\,
	datab => \R_dat|R_dat|RD~29_combout\,
	datac => \R_dat|senyales_cntl|RD6_rd|s\(4),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(24),
	combout => \R_dat|R_dat|RD~30_combout\);

-- Location: LCCOMB_X26_Y65_N12
\R_dat|R_dat|RD~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~27_combout\ = (\R_dat|senyales_cntl|RDE7_rd|s\(2) & (\R_decPBRSEC|RDDL3_instrucDL|s\(22) & (\R_decPBRSEC|RDDL3_instrucDL|s\(23) $ (!\R_dat|senyales_cntl|RDE7_rd|s\(3))))) # (!\R_dat|senyales_cntl|RDE7_rd|s\(2) & 
-- (!\R_decPBRSEC|RDDL3_instrucDL|s\(22) & (\R_decPBRSEC|RDDL3_instrucDL|s\(23) $ (!\R_dat|senyales_cntl|RDE7_rd|s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RDE7_rd|s\(2),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(23),
	datac => \R_dat|senyales_cntl|RDE7_rd|s\(3),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(22),
	combout => \R_dat|R_dat|RD~27_combout\);

-- Location: LCCOMB_X25_Y65_N10
\R_dat|R_dat|RD~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~28_combout\ = (\R_dat|senyales_cntl|RDE7_pbr|s~q\ & (\R_dat|R_dat|RD~27_combout\ & (\R_dat|senyales_cntl|RDE7_rd|s\(4) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RDE7_pbr|s~q\,
	datab => \R_dat|R_dat|RD~27_combout\,
	datac => \R_dat|senyales_cntl|RDE7_rd|s\(4),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(24),
	combout => \R_dat|R_dat|RD~28_combout\);

-- Location: LCCOMB_X24_Y65_N0
\R_dat|R_dat|RD~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~25_combout\ = (\R_dat|senyales_cntl|RD6_rd|s\(1) & (\R_decPBRSEC|RDDL3_instrucDL|s\(21) & (\R_dat|senyales_cntl|RD6_rd|s\(0) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(20))))) # (!\R_dat|senyales_cntl|RD6_rd|s\(1) & 
-- (!\R_decPBRSEC|RDDL3_instrucDL|s\(21) & (\R_dat|senyales_cntl|RD6_rd|s\(0) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RD6_rd|s\(1),
	datab => \R_dat|senyales_cntl|RD6_rd|s\(0),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(21),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(20),
	combout => \R_dat|R_dat|RD~25_combout\);

-- Location: LCCOMB_X24_Y65_N18
\R_dat|R_dat|RD~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~31_combout\ = (\R_dat|R_dat|RD~26_combout\ & ((\R_dat|R_dat|RD~28_combout\) # ((\R_dat|R_dat|RD~30_combout\ & \R_dat|R_dat|RD~25_combout\)))) # (!\R_dat|R_dat|RD~26_combout\ & (\R_dat|R_dat|RD~30_combout\ & 
-- ((\R_dat|R_dat|RD~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|R_dat|RD~26_combout\,
	datab => \R_dat|R_dat|RD~30_combout\,
	datac => \R_dat|R_dat|RD~28_combout\,
	datad => \R_dat|R_dat|RD~25_combout\,
	combout => \R_dat|R_dat|RD~31_combout\);

-- Location: LCCOMB_X24_Y65_N10
\R_dat|R_dat|RD~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~18_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(20) & (\R_dat|senyales_cntl|RDA4_rd|s\(0) & (\R_dat|senyales_cntl|RDA4_rd|s\(1) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(21))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(20) & 
-- (!\R_dat|senyales_cntl|RDA4_rd|s\(0) & (\R_dat|senyales_cntl|RDA4_rd|s\(1) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(20),
	datab => \R_dat|senyales_cntl|RDA4_rd|s\(1),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(21),
	datad => \R_dat|senyales_cntl|RDA4_rd|s\(0),
	combout => \R_dat|R_dat|RD~18_combout\);

-- Location: LCCOMB_X26_Y65_N28
\R_dat|R_dat|RD~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~22_combout\ = (\R_dat|senyales_cntl|RDA4_rd|s\(2) & (\R_decPBRSEC|RDDL3_instrucDL|s\(22) & (\R_decPBRSEC|RDDL3_instrucDL|s\(23) $ (!\R_dat|senyales_cntl|RDA4_rd|s\(3))))) # (!\R_dat|senyales_cntl|RDA4_rd|s\(2) & 
-- (!\R_decPBRSEC|RDDL3_instrucDL|s\(22) & (\R_decPBRSEC|RDDL3_instrucDL|s\(23) $ (!\R_dat|senyales_cntl|RDA4_rd|s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RDA4_rd|s\(2),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(23),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(22),
	datad => \R_dat|senyales_cntl|RDA4_rd|s\(3),
	combout => \R_dat|R_dat|RD~22_combout\);

-- Location: LCCOMB_X25_Y65_N8
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

-- Location: LCCOMB_X24_Y65_N28
\R_dat|R_dat|RD~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~19_combout\ = (\R_dat|senyales_cntl|RDM5_rd|s\(1) & (\R_decPBRSEC|RDDL3_instrucDL|s\(21) & (\R_dat|senyales_cntl|RDM5_rd|s\(0) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(20))))) # (!\R_dat|senyales_cntl|RDM5_rd|s\(1) & 
-- (!\R_decPBRSEC|RDDL3_instrucDL|s\(21) & (\R_dat|senyales_cntl|RDM5_rd|s\(0) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RDM5_rd|s\(1),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(21),
	datac => \R_dat|senyales_cntl|RDM5_rd|s\(0),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(20),
	combout => \R_dat|R_dat|RD~19_combout\);

-- Location: LCCOMB_X26_Y65_N8
\R_dat|R_dat|RD~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~20_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(22) & (\R_dat|senyales_cntl|RDM5_rd|s\(2) & (\R_decPBRSEC|RDDL3_instrucDL|s\(23) $ (!\R_dat|senyales_cntl|RDM5_rd|s\(3))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(22) & 
-- (!\R_dat|senyales_cntl|RDM5_rd|s\(2) & (\R_decPBRSEC|RDDL3_instrucDL|s\(23) $ (!\R_dat|senyales_cntl|RDM5_rd|s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(22),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(23),
	datac => \R_dat|senyales_cntl|RDM5_rd|s\(2),
	datad => \R_dat|senyales_cntl|RDM5_rd|s\(3),
	combout => \R_dat|R_dat|RD~20_combout\);

-- Location: LCCOMB_X25_Y65_N28
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

-- Location: LCCOMB_X24_Y65_N12
\R_dat|R_dat|RD~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~24_combout\ = (\R_dat|R_dat|RD~18_combout\ & ((\R_dat|R_dat|RD~23_combout\) # ((\R_dat|R_dat|RD~19_combout\ & \R_dat|R_dat|RD~21_combout\)))) # (!\R_dat|R_dat|RD~18_combout\ & (((\R_dat|R_dat|RD~19_combout\ & 
-- \R_dat|R_dat|RD~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|R_dat|RD~18_combout\,
	datab => \R_dat|R_dat|RD~23_combout\,
	datac => \R_dat|R_dat|RD~19_combout\,
	datad => \R_dat|R_dat|RD~21_combout\,
	combout => \R_dat|R_dat|RD~24_combout\);

-- Location: LCCOMB_X23_Y65_N24
\R_dat|genvalreg|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|genvalreg|Mux1~0_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(1) & (\R_decPBRSEC|RDDL3_instrucDL|s\(0) & ((!\R_decPBRSEC|RDDL3_instrucDL|s\(4)) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(1),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(6),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(0),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(4),
	combout => \R_dat|genvalreg|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y65_N22
\R_dat|R_dat|RD~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~16_combout\ = (\R_dat|genvalreg|Mux1~0_combout\ & (!\R_decPBRSEC|RDDL3_instrucDL|s\(2) & (!\R_decPBRSEC|RDDL3_instrucDL|s\(3) & \R_decPBRSEC|RDDL3_instrucDL|s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|genvalreg|Mux1~0_combout\,
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(2),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(3),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(5),
	combout => \R_dat|R_dat|RD~16_combout\);

-- Location: LCCOMB_X25_Y65_N2
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

-- Location: LCCOMB_X24_Y65_N24
\R_dat|R_dat|RD~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~17_combout\ = (\R_dat|R_dat|RD~16_combout\ & ((\R_decPBRSEC|RDDL3_instrucDL|s\(20)) # (!\R_dat|LDDat|not_comp2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(20),
	datab => \R_dat|R_dat|RD~16_combout\,
	datad => \R_dat|LDDat|not_comp2|Equal0~0_combout\,
	combout => \R_dat|R_dat|RD~17_combout\);

-- Location: LCCOMB_X23_Y65_N14
\R_dat|R_dat|RD~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~32_combout\ = (\R_dat|R_dat|RD~15_combout\) # ((\R_dat|R_dat|RD~17_combout\ & ((\R_dat|R_dat|RD~31_combout\) # (\R_dat|R_dat|RD~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|R_dat|RD~15_combout\,
	datab => \R_dat|R_dat|RD~31_combout\,
	datac => \R_dat|R_dat|RD~24_combout\,
	datad => \R_dat|R_dat|RD~17_combout\,
	combout => \R_dat|R_dat|RD~32_combout\);

-- Location: LCCOMB_X23_Y65_N0
\R_lgr|inyecBDL~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_lgr|inyecBDL~0_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(6) & (!\R_decPBRSEC|RDDL3_instrucDL|s\(4) & \R_decPBRSEC|RDDL3_instrucDL|s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(6),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(4),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(5),
	combout => \R_lgr|inyecBDL~0_combout\);

-- Location: LCCOMB_X23_Y65_N26
\R_lgr|inyecBDL~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_lgr|inyecBDL~1_combout\ = (\R_dat|R_dat|RD~15_combout\) # ((\R_dat|R_dat|RD~17_combout\ & ((\R_dat|R_dat|RD~31_combout\) # (\R_dat|R_dat|RD~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|R_dat|RD~15_combout\,
	datab => \R_dat|R_dat|RD~31_combout\,
	datac => \R_dat|R_dat|RD~24_combout\,
	datad => \R_dat|R_dat|RD~17_combout\,
	combout => \R_lgr|inyecBDL~1_combout\);

-- Location: LCCOMB_X23_Y65_N4
\R_dat|senyales_cntl|RDA4_pbr|s~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_pbr|s~4_combout\ = (!\I~input_o\ & (!\R_decPBRSEC|RDDL3_instrucDL|s\(4) & (\R_decPBRSEC|RDDL3_instrucDL|s\(6) & \R_decPBRSEC|RDDL3_instrucDL|s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I~input_o\,
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(4),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(6),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(5),
	combout => \R_dat|senyales_cntl|RDA4_pbr|s~4_combout\);

-- Location: LCCOMB_X23_Y65_N28
\R_decPBRSEC|decPBRSEC|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_decPBRSEC|decPBRSEC|Mux0~0_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(1) & ((\R_decPBRSEC|RDDL3_instrucDL|s\(2)) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(3),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(0),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(1),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(2),
	combout => \R_decPBRSEC|decPBRSEC|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y65_N10
\R_Sec|senyales_cntl|RDA4_opsec|s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_Sec|senyales_cntl|RDA4_opsec|s~0_combout\ = (\R_dat|senyales_cntl|RDA4_pbr|s~4_combout\ & \R_decPBRSEC|decPBRSEC|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R_dat|senyales_cntl|RDA4_pbr|s~4_combout\,
	datad => \R_decPBRSEC|decPBRSEC|Mux0~0_combout\,
	combout => \R_Sec|senyales_cntl|RDA4_opsec|s~0_combout\);

-- Location: FF_X23_Y65_N11
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

-- Location: LCCOMB_X23_Y65_N12
\R_lgr|inyecBDL~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_lgr|inyecBDL~2_combout\ = (!\R_lgr|inyecBDL~1_combout\ & ((\R_Sec|senyales_cntl|RDA4_opsec|s\(3)) # ((\R_lgr|inyecBDL~0_combout\ & \R_decPBRSEC|decPBRSEC|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_lgr|inyecBDL~0_combout\,
	datab => \R_lgr|inyecBDL~1_combout\,
	datac => \R_Sec|senyales_cntl|RDA4_opsec|s\(3),
	datad => \R_decPBRSEC|decPBRSEC|Mux0~0_combout\,
	combout => \R_lgr|inyecBDL~2_combout\);

-- Location: IOIBUF_X63_Y67_N1
\instruc[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(12),
	o => \instruc[12]~input_o\);

-- Location: IOIBUF_X54_Y67_N22
\instruc[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(13),
	o => \instruc[13]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\instruc[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(14),
	o => \instruc[14]~input_o\);

-- Location: IOIBUF_X42_Y0_N8
\instruc[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(25),
	o => \instruc[25]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\instruc[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(26),
	o => \instruc[26]~input_o\);

-- Location: IOIBUF_X81_Y59_N8
\instruc[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(27),
	o => \instruc[27]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\instruc[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(28),
	o => \instruc[28]~input_o\);

-- Location: IOIBUF_X81_Y9_N8
\instruc[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(29),
	o => \instruc[29]~input_o\);

-- Location: IOIBUF_X42_Y0_N1
\instruc[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(30),
	o => \instruc[30]~input_o\);

-- Location: IOIBUF_X81_Y23_N8
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


