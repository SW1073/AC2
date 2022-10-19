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

-- DATE "10/19/2022 09:42:57"

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

ENTITY 	camino_control IS
    PORT (
	reloj : IN std_logic;
	PEini : IN std_logic;
	Pcero : IN std_logic;
	ini : IN std_logic;
	IDEini : IN std_logic_vector(4 DOWNTO 0);
	DEini : IN std_logic_vector(7 DOWNTO 0);
	IDL1ini : IN std_logic_vector(4 DOWNTO 0);
	finalop : BUFFER std_logic
	);
END camino_control;

-- Design Ports Information
-- PEini	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDEini[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDEini[1]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDEini[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDEini[3]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDEini[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEini[0]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEini[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEini[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEini[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEini[4]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEini[5]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEini[6]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEini[7]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDL1ini[0]	=>  Location: PIN_A1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDL1ini[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDL1ini[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDL1ini[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDL1ini[4]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- finalop	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pcero	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reloj	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ini	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF camino_control IS
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
SIGNAL ww_PEini : std_logic;
SIGNAL ww_Pcero : std_logic;
SIGNAL ww_ini : std_logic;
SIGNAL ww_IDEini : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_DEini : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_IDL1ini : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_finalop : std_logic;
SIGNAL \reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PEini~input_o\ : std_logic;
SIGNAL \IDEini[0]~input_o\ : std_logic;
SIGNAL \IDEini[1]~input_o\ : std_logic;
SIGNAL \IDEini[2]~input_o\ : std_logic;
SIGNAL \IDEini[3]~input_o\ : std_logic;
SIGNAL \IDEini[4]~input_o\ : std_logic;
SIGNAL \DEini[0]~input_o\ : std_logic;
SIGNAL \DEini[1]~input_o\ : std_logic;
SIGNAL \DEini[2]~input_o\ : std_logic;
SIGNAL \DEini[3]~input_o\ : std_logic;
SIGNAL \DEini[4]~input_o\ : std_logic;
SIGNAL \DEini[5]~input_o\ : std_logic;
SIGNAL \DEini[6]~input_o\ : std_logic;
SIGNAL \DEini[7]~input_o\ : std_logic;
SIGNAL \IDL1ini[0]~input_o\ : std_logic;
SIGNAL \IDL1ini[1]~input_o\ : std_logic;
SIGNAL \IDL1ini[2]~input_o\ : std_logic;
SIGNAL \IDL1ini[3]~input_o\ : std_logic;
SIGNAL \IDL1ini[4]~input_o\ : std_logic;
SIGNAL \finalop~output_o\ : std_logic;
SIGNAL \reloj~input_o\ : std_logic;
SIGNAL \reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \Pcero~input_o\ : std_logic;
SIGNAL \controlDE|prxestado~0_combout\ : std_logic;
SIGNAL \controlDE|contador|s[0]~5_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \controlDE|contador|s[0]~6\ : std_logic;
SIGNAL \controlDE|contador|s[1]~7_combout\ : std_logic;
SIGNAL \controlDE|contador|s[1]~8\ : std_logic;
SIGNAL \controlDE|contador|s[2]~9_combout\ : std_logic;
SIGNAL \controlDE|contador|s[2]~10\ : std_logic;
SIGNAL \controlDE|contador|s[3]~11_combout\ : std_logic;
SIGNAL \controlDE|contador|s[3]~12\ : std_logic;
SIGNAL \controlDE|contador|s[4]~13_combout\ : std_logic;
SIGNAL \controlDE|t_finalop~1_combout\ : std_logic;
SIGNAL \ini~input_o\ : std_logic;
SIGNAL \controlDE|prxestado~1_combout\ : std_logic;
SIGNAL \controlDE|prxestado~2_combout\ : std_logic;
SIGNAL \controlDE|estadoreg|s~q\ : std_logic;
SIGNAL \controlDE|t_finalop~0_combout\ : std_logic;
SIGNAL \controlDE|finalop~4_combout\ : std_logic;
SIGNAL \controlDE|contador|s\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \controlDE|ALT_INV_finalop~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reloj <= reloj;
ww_PEini <= PEini;
ww_Pcero <= Pcero;
ww_ini <= ini;
ww_IDEini <= IDEini;
ww_DEini <= DEini;
ww_IDL1ini <= IDL1ini;
finalop <= ww_finalop;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reloj~input_o\);
\controlDE|ALT_INV_finalop~4_combout\ <= NOT \controlDE|finalop~4_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X15_Y67_N16
\finalop~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlDE|ALT_INV_finalop~4_combout\,
	devoe => ww_devoe,
	o => \finalop~output_o\);

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

-- Location: IOIBUF_X15_Y67_N22
\Pcero~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pcero,
	o => \Pcero~input_o\);

-- Location: LCCOMB_X15_Y66_N2
\controlDE|prxestado~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controlDE|prxestado~0_combout\ = (\Pcero~input_o\) # (!\controlDE|estadoreg|s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pcero~input_o\,
	datad => \controlDE|estadoreg|s~q\,
	combout => \controlDE|prxestado~0_combout\);

-- Location: LCCOMB_X15_Y66_N14
\controlDE|contador|s[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controlDE|contador|s[0]~5_combout\ = \controlDE|contador|s\(0) $ (VCC)
-- \controlDE|contador|s[0]~6\ = CARRY(\controlDE|contador|s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlDE|contador|s\(0),
	datad => VCC,
	combout => \controlDE|contador|s[0]~5_combout\,
	cout => \controlDE|contador|s[0]~6\);

-- Location: LCCOMB_X15_Y66_N8
\~GND\ : cycloneiv_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X15_Y66_N15
\controlDE|contador|s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \controlDE|contador|s[0]~5_combout\,
	asdata => \~GND~combout\,
	sload => \controlDE|prxestado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlDE|contador|s\(0));

-- Location: LCCOMB_X15_Y66_N16
\controlDE|contador|s[1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controlDE|contador|s[1]~7_combout\ = (\controlDE|contador|s\(1) & (\controlDE|contador|s[0]~6\ & VCC)) # (!\controlDE|contador|s\(1) & (!\controlDE|contador|s[0]~6\))
-- \controlDE|contador|s[1]~8\ = CARRY((!\controlDE|contador|s\(1) & !\controlDE|contador|s[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlDE|contador|s\(1),
	datad => VCC,
	cin => \controlDE|contador|s[0]~6\,
	combout => \controlDE|contador|s[1]~7_combout\,
	cout => \controlDE|contador|s[1]~8\);

-- Location: FF_X15_Y66_N17
\controlDE|contador|s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \controlDE|contador|s[1]~7_combout\,
	asdata => \~GND~combout\,
	sload => \controlDE|prxestado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlDE|contador|s\(1));

-- Location: LCCOMB_X15_Y66_N18
\controlDE|contador|s[2]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controlDE|contador|s[2]~9_combout\ = (\controlDE|contador|s\(2) & ((GND) # (!\controlDE|contador|s[1]~8\))) # (!\controlDE|contador|s\(2) & (\controlDE|contador|s[1]~8\ $ (GND)))
-- \controlDE|contador|s[2]~10\ = CARRY((\controlDE|contador|s\(2)) # (!\controlDE|contador|s[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlDE|contador|s\(2),
	datad => VCC,
	cin => \controlDE|contador|s[1]~8\,
	combout => \controlDE|contador|s[2]~9_combout\,
	cout => \controlDE|contador|s[2]~10\);

-- Location: FF_X15_Y66_N19
\controlDE|contador|s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \controlDE|contador|s[2]~9_combout\,
	asdata => \~GND~combout\,
	sload => \controlDE|prxestado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlDE|contador|s\(2));

-- Location: LCCOMB_X15_Y66_N20
\controlDE|contador|s[3]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controlDE|contador|s[3]~11_combout\ = (\controlDE|contador|s\(3) & (\controlDE|contador|s[2]~10\ & VCC)) # (!\controlDE|contador|s\(3) & (!\controlDE|contador|s[2]~10\))
-- \controlDE|contador|s[3]~12\ = CARRY((!\controlDE|contador|s\(3) & !\controlDE|contador|s[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controlDE|contador|s\(3),
	datad => VCC,
	cin => \controlDE|contador|s[2]~10\,
	combout => \controlDE|contador|s[3]~11_combout\,
	cout => \controlDE|contador|s[3]~12\);

-- Location: FF_X15_Y66_N21
\controlDE|contador|s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \controlDE|contador|s[3]~11_combout\,
	asdata => VCC,
	sload => \controlDE|prxestado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlDE|contador|s\(3));

-- Location: LCCOMB_X15_Y66_N22
\controlDE|contador|s[4]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controlDE|contador|s[4]~13_combout\ = \controlDE|contador|s\(4) $ (\controlDE|contador|s[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controlDE|contador|s\(4),
	cin => \controlDE|contador|s[3]~12\,
	combout => \controlDE|contador|s[4]~13_combout\);

-- Location: FF_X15_Y66_N23
\controlDE|contador|s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \controlDE|contador|s[4]~13_combout\,
	asdata => \~GND~combout\,
	sload => \controlDE|prxestado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlDE|contador|s\(4));

-- Location: LCCOMB_X15_Y66_N4
\controlDE|t_finalop~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controlDE|t_finalop~1_combout\ = (\controlDE|contador|s\(4)) # (\controlDE|contador|s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlDE|contador|s\(4),
	datad => \controlDE|contador|s\(3),
	combout => \controlDE|t_finalop~1_combout\);

-- Location: IOIBUF_X15_Y67_N1
\ini~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ini,
	o => \ini~input_o\);

-- Location: LCCOMB_X15_Y66_N28
\controlDE|prxestado~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controlDE|prxestado~1_combout\ = (!\Pcero~input_o\ & (\ini~input_o\ & !\controlDE|estadoreg|s~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pcero~input_o\,
	datac => \ini~input_o\,
	datad => \controlDE|estadoreg|s~q\,
	combout => \controlDE|prxestado~1_combout\);

-- Location: LCCOMB_X15_Y66_N12
\controlDE|prxestado~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controlDE|prxestado~2_combout\ = (\controlDE|prxestado~1_combout\) # ((!\controlDE|prxestado~0_combout\ & ((\controlDE|t_finalop~0_combout\) # (\controlDE|t_finalop~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlDE|t_finalop~0_combout\,
	datab => \controlDE|prxestado~0_combout\,
	datac => \controlDE|t_finalop~1_combout\,
	datad => \controlDE|prxestado~1_combout\,
	combout => \controlDE|prxestado~2_combout\);

-- Location: FF_X15_Y66_N13
\controlDE|estadoreg|s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \controlDE|prxestado~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlDE|estadoreg|s~q\);

-- Location: LCCOMB_X15_Y66_N26
\controlDE|t_finalop~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controlDE|t_finalop~0_combout\ = ((\controlDE|contador|s\(2)) # ((\controlDE|contador|s\(0)) # (\controlDE|contador|s\(1)))) # (!\controlDE|estadoreg|s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlDE|estadoreg|s~q\,
	datab => \controlDE|contador|s\(2),
	datac => \controlDE|contador|s\(0),
	datad => \controlDE|contador|s\(1),
	combout => \controlDE|t_finalop~0_combout\);

-- Location: LCCOMB_X15_Y66_N10
\controlDE|finalop~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controlDE|finalop~4_combout\ = (\controlDE|t_finalop~0_combout\) # ((\controlDE|contador|s\(3)) # ((\controlDE|contador|s\(4)) # (\controlDE|prxestado~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlDE|t_finalop~0_combout\,
	datab => \controlDE|contador|s\(3),
	datac => \controlDE|contador|s\(4),
	datad => \controlDE|prxestado~0_combout\,
	combout => \controlDE|finalop~4_combout\);

-- Location: IOIBUF_X70_Y0_N1
\PEini~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PEini,
	o => \PEini~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\IDEini[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDEini(0),
	o => \IDEini[0]~input_o\);

-- Location: IOIBUF_X49_Y67_N22
\IDEini[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDEini(1),
	o => \IDEini[1]~input_o\);

-- Location: IOIBUF_X31_Y0_N15
\IDEini[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDEini(2),
	o => \IDEini[2]~input_o\);

-- Location: IOIBUF_X68_Y0_N15
\IDEini[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDEini(3),
	o => \IDEini[3]~input_o\);

-- Location: IOIBUF_X24_Y67_N8
\IDEini[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDEini(4),
	o => \IDEini[4]~input_o\);

-- Location: IOIBUF_X33_Y0_N15
\DEini[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DEini(0),
	o => \DEini[0]~input_o\);

-- Location: IOIBUF_X40_Y67_N1
\DEini[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DEini(1),
	o => \DEini[1]~input_o\);

-- Location: IOIBUF_X81_Y65_N15
\DEini[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DEini(2),
	o => \DEini[2]~input_o\);

-- Location: IOIBUF_X54_Y67_N15
\DEini[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DEini(3),
	o => \DEini[3]~input_o\);

-- Location: IOIBUF_X13_Y67_N1
\DEini[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DEini(4),
	o => \DEini[4]~input_o\);

-- Location: IOIBUF_X81_Y39_N1
\DEini[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DEini(5),
	o => \DEini[5]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\DEini[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DEini(6),
	o => \DEini[6]~input_o\);

-- Location: IOIBUF_X81_Y20_N1
\DEini[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DEini(7),
	o => \DEini[7]~input_o\);

-- Location: IOIBUF_X26_Y67_N8
\IDL1ini[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDL1ini(0),
	o => \IDL1ini[0]~input_o\);

-- Location: IOIBUF_X54_Y67_N22
\IDL1ini[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDL1ini(1),
	o => \IDL1ini[1]~input_o\);

-- Location: IOIBUF_X31_Y67_N1
\IDL1ini[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDL1ini(2),
	o => \IDL1ini[2]~input_o\);

-- Location: IOIBUF_X44_Y67_N1
\IDL1ini[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDL1ini(3),
	o => \IDL1ini[3]~input_o\);

-- Location: IOIBUF_X63_Y0_N1
\IDL1ini[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDL1ini(4),
	o => \IDL1ini[4]~input_o\);

ww_finalop <= \finalop~output_o\;
END structure;


