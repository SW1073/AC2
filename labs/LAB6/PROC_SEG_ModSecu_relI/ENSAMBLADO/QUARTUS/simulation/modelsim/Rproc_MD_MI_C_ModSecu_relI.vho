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

-- DATE "01/07/2023 15:16:22"

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

ENTITY 	Rproc_MD_MI_C_ModSecu_relI IS
    PORT (
	reloj : IN std_logic;
	Pcero : IN std_logic;
	parar : BUFFER std_logic
	);
END Rproc_MD_MI_C_ModSecu_relI;

-- Design Ports Information
-- parar	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reloj	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pcero	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Rproc_MD_MI_C_ModSecu_relI IS
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
SIGNAL ww_Pcero : std_logic;
SIGNAL ww_parar : std_logic;
SIGNAL \reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Pcero~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \parar~output_o\ : std_logic;
SIGNAL \reloj~input_o\ : std_logic;
SIGNAL \reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \Pcero~input_o\ : std_logic;
SIGNAL \Pcero~inputclkctrl_outclk\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~0_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~1\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~2_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~3\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~4_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~5\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~6_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~7\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~8_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~9\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~10_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~11\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~12_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~13\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~14_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~15\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~16_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~17\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~18_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~19\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~20_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~21\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~22_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~23\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~24_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~25\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~26_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~27\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~28_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~29\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~30_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~31\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~32_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~33\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~34_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~35\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~36_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~37\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~38_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~39\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~40_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~41\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~42_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~43\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~44_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~45\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~46_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~47\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~48_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~49\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~50_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~51\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~52_combout\ : std_logic;
SIGNAL \parar~3_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~53\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~54_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~55\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~56_combout\ : std_logic;
SIGNAL \parar~2_combout\ : std_logic;
SIGNAL \parar~4_combout\ : std_logic;
SIGNAL \procesa|deco|RDL3_instr|s[1]~feeder_combout\ : std_logic;
SIGNAL \parar~0_combout\ : std_logic;
SIGNAL \parar~1_combout\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~57\ : std_logic;
SIGNAL \procesa|cam_secuen|sumcuatro|Add0~58_combout\ : std_logic;
SIGNAL \parar~5_combout\ : std_logic;
SIGNAL \procesa|deco|RDL3_instr|s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regis_CP|s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Pcero~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reloj <= reloj;
ww_Pcero <= Pcero;
parar <= ww_parar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reloj~input_o\);

\Pcero~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Pcero~input_o\);
\ALT_INV_Pcero~inputclkctrl_outclk\ <= NOT \Pcero~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X8_Y67_N9
\parar~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \parar~5_combout\,
	devoe => ww_devoe,
	o => \parar~output_o\);

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

-- Location: IOIBUF_X38_Y0_N22
\Pcero~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pcero,
	o => \Pcero~input_o\);

-- Location: CLKCTRL_G28
\Pcero~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Pcero~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Pcero~inputclkctrl_outclk\);

-- Location: FF_X10_Y57_N21
\regis_CP|s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~50_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(27));

-- Location: LCCOMB_X10_Y58_N2
\procesa|cam_secuen|sumcuatro|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~0_combout\ = \regis_CP|s\(2) $ (VCC)
-- \procesa|cam_secuen|sumcuatro|Add0~1\ = CARRY(\regis_CP|s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regis_CP|s\(2),
	datad => VCC,
	combout => \procesa|cam_secuen|sumcuatro|Add0~0_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~1\);

-- Location: FF_X10_Y58_N3
\regis_CP|s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~0_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(2));

-- Location: LCCOMB_X10_Y58_N4
\procesa|cam_secuen|sumcuatro|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~2_combout\ = (\regis_CP|s\(3) & (!\procesa|cam_secuen|sumcuatro|Add0~1\)) # (!\regis_CP|s\(3) & ((\procesa|cam_secuen|sumcuatro|Add0~1\) # (GND)))
-- \procesa|cam_secuen|sumcuatro|Add0~3\ = CARRY((!\procesa|cam_secuen|sumcuatro|Add0~1\) # (!\regis_CP|s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \regis_CP|s\(3),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~1\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~2_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~3\);

-- Location: FF_X10_Y58_N5
\regis_CP|s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~2_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(3));

-- Location: LCCOMB_X10_Y58_N6
\procesa|cam_secuen|sumcuatro|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~4_combout\ = (\regis_CP|s\(4) & (\procesa|cam_secuen|sumcuatro|Add0~3\ $ (GND))) # (!\regis_CP|s\(4) & (!\procesa|cam_secuen|sumcuatro|Add0~3\ & VCC))
-- \procesa|cam_secuen|sumcuatro|Add0~5\ = CARRY((\regis_CP|s\(4) & !\procesa|cam_secuen|sumcuatro|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regis_CP|s\(4),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~3\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~4_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~5\);

-- Location: FF_X10_Y58_N7
\regis_CP|s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~4_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(4));

-- Location: LCCOMB_X10_Y58_N8
\procesa|cam_secuen|sumcuatro|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~6_combout\ = (\regis_CP|s\(5) & (!\procesa|cam_secuen|sumcuatro|Add0~5\)) # (!\regis_CP|s\(5) & ((\procesa|cam_secuen|sumcuatro|Add0~5\) # (GND)))
-- \procesa|cam_secuen|sumcuatro|Add0~7\ = CARRY((!\procesa|cam_secuen|sumcuatro|Add0~5\) # (!\regis_CP|s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \regis_CP|s\(5),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~5\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~6_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~7\);

-- Location: FF_X10_Y58_N9
\regis_CP|s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~6_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(5));

-- Location: LCCOMB_X10_Y58_N10
\procesa|cam_secuen|sumcuatro|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~8_combout\ = (\regis_CP|s\(6) & (\procesa|cam_secuen|sumcuatro|Add0~7\ $ (GND))) # (!\regis_CP|s\(6) & (!\procesa|cam_secuen|sumcuatro|Add0~7\ & VCC))
-- \procesa|cam_secuen|sumcuatro|Add0~9\ = CARRY((\regis_CP|s\(6) & !\procesa|cam_secuen|sumcuatro|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regis_CP|s\(6),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~7\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~8_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~9\);

-- Location: FF_X10_Y58_N11
\regis_CP|s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~8_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(6));

-- Location: LCCOMB_X10_Y58_N12
\procesa|cam_secuen|sumcuatro|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~10_combout\ = (\regis_CP|s\(7) & (!\procesa|cam_secuen|sumcuatro|Add0~9\)) # (!\regis_CP|s\(7) & ((\procesa|cam_secuen|sumcuatro|Add0~9\) # (GND)))
-- \procesa|cam_secuen|sumcuatro|Add0~11\ = CARRY((!\procesa|cam_secuen|sumcuatro|Add0~9\) # (!\regis_CP|s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regis_CP|s\(7),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~9\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~10_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~11\);

-- Location: FF_X10_Y58_N13
\regis_CP|s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~10_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(7));

-- Location: LCCOMB_X10_Y58_N14
\procesa|cam_secuen|sumcuatro|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~12_combout\ = (\regis_CP|s\(8) & (\procesa|cam_secuen|sumcuatro|Add0~11\ $ (GND))) # (!\regis_CP|s\(8) & (!\procesa|cam_secuen|sumcuatro|Add0~11\ & VCC))
-- \procesa|cam_secuen|sumcuatro|Add0~13\ = CARRY((\regis_CP|s\(8) & !\procesa|cam_secuen|sumcuatro|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \regis_CP|s\(8),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~11\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~12_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~13\);

-- Location: FF_X10_Y58_N15
\regis_CP|s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~12_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(8));

-- Location: LCCOMB_X10_Y58_N16
\procesa|cam_secuen|sumcuatro|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~14_combout\ = (\regis_CP|s\(9) & (!\procesa|cam_secuen|sumcuatro|Add0~13\)) # (!\regis_CP|s\(9) & ((\procesa|cam_secuen|sumcuatro|Add0~13\) # (GND)))
-- \procesa|cam_secuen|sumcuatro|Add0~15\ = CARRY((!\procesa|cam_secuen|sumcuatro|Add0~13\) # (!\regis_CP|s\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \regis_CP|s\(9),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~13\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~14_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~15\);

-- Location: FF_X10_Y58_N17
\regis_CP|s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~14_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(9));

-- Location: LCCOMB_X10_Y58_N18
\procesa|cam_secuen|sumcuatro|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~16_combout\ = (\regis_CP|s\(10) & (\procesa|cam_secuen|sumcuatro|Add0~15\ $ (GND))) # (!\regis_CP|s\(10) & (!\procesa|cam_secuen|sumcuatro|Add0~15\ & VCC))
-- \procesa|cam_secuen|sumcuatro|Add0~17\ = CARRY((\regis_CP|s\(10) & !\procesa|cam_secuen|sumcuatro|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \regis_CP|s\(10),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~15\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~16_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~17\);

-- Location: FF_X10_Y58_N19
\regis_CP|s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~16_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(10));

-- Location: LCCOMB_X10_Y58_N20
\procesa|cam_secuen|sumcuatro|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~18_combout\ = (\regis_CP|s\(11) & (!\procesa|cam_secuen|sumcuatro|Add0~17\)) # (!\regis_CP|s\(11) & ((\procesa|cam_secuen|sumcuatro|Add0~17\) # (GND)))
-- \procesa|cam_secuen|sumcuatro|Add0~19\ = CARRY((!\procesa|cam_secuen|sumcuatro|Add0~17\) # (!\regis_CP|s\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \regis_CP|s\(11),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~17\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~18_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~19\);

-- Location: FF_X10_Y58_N21
\regis_CP|s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~18_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(11));

-- Location: LCCOMB_X10_Y58_N22
\procesa|cam_secuen|sumcuatro|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~20_combout\ = (\regis_CP|s\(12) & (\procesa|cam_secuen|sumcuatro|Add0~19\ $ (GND))) # (!\regis_CP|s\(12) & (!\procesa|cam_secuen|sumcuatro|Add0~19\ & VCC))
-- \procesa|cam_secuen|sumcuatro|Add0~21\ = CARRY((\regis_CP|s\(12) & !\procesa|cam_secuen|sumcuatro|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regis_CP|s\(12),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~19\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~20_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~21\);

-- Location: FF_X10_Y58_N23
\regis_CP|s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~20_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(12));

-- Location: LCCOMB_X10_Y58_N24
\procesa|cam_secuen|sumcuatro|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~22_combout\ = (\regis_CP|s\(13) & (!\procesa|cam_secuen|sumcuatro|Add0~21\)) # (!\regis_CP|s\(13) & ((\procesa|cam_secuen|sumcuatro|Add0~21\) # (GND)))
-- \procesa|cam_secuen|sumcuatro|Add0~23\ = CARRY((!\procesa|cam_secuen|sumcuatro|Add0~21\) # (!\regis_CP|s\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \regis_CP|s\(13),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~21\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~22_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~23\);

-- Location: FF_X10_Y58_N25
\regis_CP|s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~22_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(13));

-- Location: LCCOMB_X10_Y58_N26
\procesa|cam_secuen|sumcuatro|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~24_combout\ = (\regis_CP|s\(14) & (\procesa|cam_secuen|sumcuatro|Add0~23\ $ (GND))) # (!\regis_CP|s\(14) & (!\procesa|cam_secuen|sumcuatro|Add0~23\ & VCC))
-- \procesa|cam_secuen|sumcuatro|Add0~25\ = CARRY((\regis_CP|s\(14) & !\procesa|cam_secuen|sumcuatro|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regis_CP|s\(14),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~23\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~24_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~25\);

-- Location: FF_X10_Y58_N27
\regis_CP|s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~24_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(14));

-- Location: LCCOMB_X10_Y58_N28
\procesa|cam_secuen|sumcuatro|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~26_combout\ = (\regis_CP|s\(15) & (!\procesa|cam_secuen|sumcuatro|Add0~25\)) # (!\regis_CP|s\(15) & ((\procesa|cam_secuen|sumcuatro|Add0~25\) # (GND)))
-- \procesa|cam_secuen|sumcuatro|Add0~27\ = CARRY((!\procesa|cam_secuen|sumcuatro|Add0~25\) # (!\regis_CP|s\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \regis_CP|s\(15),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~25\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~26_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~27\);

-- Location: FF_X10_Y58_N29
\regis_CP|s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~26_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(15));

-- Location: LCCOMB_X10_Y58_N30
\procesa|cam_secuen|sumcuatro|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~28_combout\ = (\regis_CP|s\(16) & (\procesa|cam_secuen|sumcuatro|Add0~27\ $ (GND))) # (!\regis_CP|s\(16) & (!\procesa|cam_secuen|sumcuatro|Add0~27\ & VCC))
-- \procesa|cam_secuen|sumcuatro|Add0~29\ = CARRY((\regis_CP|s\(16) & !\procesa|cam_secuen|sumcuatro|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regis_CP|s\(16),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~27\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~28_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~29\);

-- Location: FF_X10_Y58_N31
\regis_CP|s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~28_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(16));

-- Location: LCCOMB_X10_Y57_N0
\procesa|cam_secuen|sumcuatro|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~30_combout\ = (\regis_CP|s\(17) & (!\procesa|cam_secuen|sumcuatro|Add0~29\)) # (!\regis_CP|s\(17) & ((\procesa|cam_secuen|sumcuatro|Add0~29\) # (GND)))
-- \procesa|cam_secuen|sumcuatro|Add0~31\ = CARRY((!\procesa|cam_secuen|sumcuatro|Add0~29\) # (!\regis_CP|s\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \regis_CP|s\(17),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~29\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~30_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~31\);

-- Location: FF_X10_Y57_N1
\regis_CP|s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~30_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(17));

-- Location: LCCOMB_X10_Y57_N2
\procesa|cam_secuen|sumcuatro|Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~32_combout\ = (\regis_CP|s\(18) & (\procesa|cam_secuen|sumcuatro|Add0~31\ $ (GND))) # (!\regis_CP|s\(18) & (!\procesa|cam_secuen|sumcuatro|Add0~31\ & VCC))
-- \procesa|cam_secuen|sumcuatro|Add0~33\ = CARRY((\regis_CP|s\(18) & !\procesa|cam_secuen|sumcuatro|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \regis_CP|s\(18),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~31\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~32_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~33\);

-- Location: FF_X10_Y57_N3
\regis_CP|s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~32_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(18));

-- Location: LCCOMB_X10_Y57_N4
\procesa|cam_secuen|sumcuatro|Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~34_combout\ = (\regis_CP|s\(19) & (!\procesa|cam_secuen|sumcuatro|Add0~33\)) # (!\regis_CP|s\(19) & ((\procesa|cam_secuen|sumcuatro|Add0~33\) # (GND)))
-- \procesa|cam_secuen|sumcuatro|Add0~35\ = CARRY((!\procesa|cam_secuen|sumcuatro|Add0~33\) # (!\regis_CP|s\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \regis_CP|s\(19),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~33\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~34_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~35\);

-- Location: FF_X10_Y57_N5
\regis_CP|s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~34_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(19));

-- Location: LCCOMB_X10_Y57_N6
\procesa|cam_secuen|sumcuatro|Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~36_combout\ = (\regis_CP|s\(20) & (\procesa|cam_secuen|sumcuatro|Add0~35\ $ (GND))) # (!\regis_CP|s\(20) & (!\procesa|cam_secuen|sumcuatro|Add0~35\ & VCC))
-- \procesa|cam_secuen|sumcuatro|Add0~37\ = CARRY((\regis_CP|s\(20) & !\procesa|cam_secuen|sumcuatro|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regis_CP|s\(20),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~35\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~36_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~37\);

-- Location: FF_X10_Y57_N7
\regis_CP|s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~36_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(20));

-- Location: LCCOMB_X10_Y57_N8
\procesa|cam_secuen|sumcuatro|Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~38_combout\ = (\regis_CP|s\(21) & (!\procesa|cam_secuen|sumcuatro|Add0~37\)) # (!\regis_CP|s\(21) & ((\procesa|cam_secuen|sumcuatro|Add0~37\) # (GND)))
-- \procesa|cam_secuen|sumcuatro|Add0~39\ = CARRY((!\procesa|cam_secuen|sumcuatro|Add0~37\) # (!\regis_CP|s\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \regis_CP|s\(21),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~37\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~38_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~39\);

-- Location: FF_X10_Y57_N9
\regis_CP|s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~38_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(21));

-- Location: LCCOMB_X10_Y57_N10
\procesa|cam_secuen|sumcuatro|Add0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~40_combout\ = (\regis_CP|s\(22) & (\procesa|cam_secuen|sumcuatro|Add0~39\ $ (GND))) # (!\regis_CP|s\(22) & (!\procesa|cam_secuen|sumcuatro|Add0~39\ & VCC))
-- \procesa|cam_secuen|sumcuatro|Add0~41\ = CARRY((\regis_CP|s\(22) & !\procesa|cam_secuen|sumcuatro|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regis_CP|s\(22),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~39\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~40_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~41\);

-- Location: FF_X10_Y57_N11
\regis_CP|s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~40_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(22));

-- Location: LCCOMB_X10_Y57_N12
\procesa|cam_secuen|sumcuatro|Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~42_combout\ = (\regis_CP|s\(23) & (!\procesa|cam_secuen|sumcuatro|Add0~41\)) # (!\regis_CP|s\(23) & ((\procesa|cam_secuen|sumcuatro|Add0~41\) # (GND)))
-- \procesa|cam_secuen|sumcuatro|Add0~43\ = CARRY((!\procesa|cam_secuen|sumcuatro|Add0~41\) # (!\regis_CP|s\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \regis_CP|s\(23),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~41\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~42_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~43\);

-- Location: FF_X10_Y57_N13
\regis_CP|s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~42_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(23));

-- Location: LCCOMB_X10_Y57_N14
\procesa|cam_secuen|sumcuatro|Add0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~44_combout\ = (\regis_CP|s\(24) & (\procesa|cam_secuen|sumcuatro|Add0~43\ $ (GND))) # (!\regis_CP|s\(24) & (!\procesa|cam_secuen|sumcuatro|Add0~43\ & VCC))
-- \procesa|cam_secuen|sumcuatro|Add0~45\ = CARRY((\regis_CP|s\(24) & !\procesa|cam_secuen|sumcuatro|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regis_CP|s\(24),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~43\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~44_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~45\);

-- Location: FF_X10_Y57_N15
\regis_CP|s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~44_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(24));

-- Location: LCCOMB_X10_Y57_N16
\procesa|cam_secuen|sumcuatro|Add0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~46_combout\ = (\regis_CP|s\(25) & (!\procesa|cam_secuen|sumcuatro|Add0~45\)) # (!\regis_CP|s\(25) & ((\procesa|cam_secuen|sumcuatro|Add0~45\) # (GND)))
-- \procesa|cam_secuen|sumcuatro|Add0~47\ = CARRY((!\procesa|cam_secuen|sumcuatro|Add0~45\) # (!\regis_CP|s\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regis_CP|s\(25),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~45\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~46_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~47\);

-- Location: FF_X10_Y57_N17
\regis_CP|s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~46_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(25));

-- Location: LCCOMB_X10_Y57_N18
\procesa|cam_secuen|sumcuatro|Add0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~48_combout\ = (\regis_CP|s\(26) & (\procesa|cam_secuen|sumcuatro|Add0~47\ $ (GND))) # (!\regis_CP|s\(26) & (!\procesa|cam_secuen|sumcuatro|Add0~47\ & VCC))
-- \procesa|cam_secuen|sumcuatro|Add0~49\ = CARRY((\regis_CP|s\(26) & !\procesa|cam_secuen|sumcuatro|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regis_CP|s\(26),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~47\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~48_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~49\);

-- Location: FF_X10_Y57_N19
\regis_CP|s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~48_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(26));

-- Location: LCCOMB_X10_Y57_N20
\procesa|cam_secuen|sumcuatro|Add0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~50_combout\ = (\regis_CP|s\(27) & (!\procesa|cam_secuen|sumcuatro|Add0~49\)) # (!\regis_CP|s\(27) & ((\procesa|cam_secuen|sumcuatro|Add0~49\) # (GND)))
-- \procesa|cam_secuen|sumcuatro|Add0~51\ = CARRY((!\procesa|cam_secuen|sumcuatro|Add0~49\) # (!\regis_CP|s\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \regis_CP|s\(27),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~49\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~50_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~51\);

-- Location: FF_X10_Y57_N23
\regis_CP|s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~52_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(28));

-- Location: LCCOMB_X10_Y57_N22
\procesa|cam_secuen|sumcuatro|Add0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~52_combout\ = (\regis_CP|s\(28) & (\procesa|cam_secuen|sumcuatro|Add0~51\ $ (GND))) # (!\regis_CP|s\(28) & (!\procesa|cam_secuen|sumcuatro|Add0~51\ & VCC))
-- \procesa|cam_secuen|sumcuatro|Add0~53\ = CARRY((\regis_CP|s\(28) & !\procesa|cam_secuen|sumcuatro|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regis_CP|s\(28),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~51\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~52_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~53\);

-- Location: LCCOMB_X9_Y57_N10
\parar~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \parar~3_combout\ = (\procesa|cam_secuen|sumcuatro|Add0~50_combout\) # (\procesa|cam_secuen|sumcuatro|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \procesa|cam_secuen|sumcuatro|Add0~50_combout\,
	datad => \procesa|cam_secuen|sumcuatro|Add0~52_combout\,
	combout => \parar~3_combout\);

-- Location: FF_X10_Y57_N27
\regis_CP|s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~56_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(30));

-- Location: LCCOMB_X10_Y57_N24
\procesa|cam_secuen|sumcuatro|Add0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~54_combout\ = (\regis_CP|s\(29) & (!\procesa|cam_secuen|sumcuatro|Add0~53\)) # (!\regis_CP|s\(29) & ((\procesa|cam_secuen|sumcuatro|Add0~53\) # (GND)))
-- \procesa|cam_secuen|sumcuatro|Add0~55\ = CARRY((!\procesa|cam_secuen|sumcuatro|Add0~53\) # (!\regis_CP|s\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \regis_CP|s\(29),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~53\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~54_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~55\);

-- Location: FF_X10_Y57_N25
\regis_CP|s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~54_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(29));

-- Location: LCCOMB_X10_Y57_N26
\procesa|cam_secuen|sumcuatro|Add0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~56_combout\ = (\regis_CP|s\(30) & (\procesa|cam_secuen|sumcuatro|Add0~55\ $ (GND))) # (!\regis_CP|s\(30) & (!\procesa|cam_secuen|sumcuatro|Add0~55\ & VCC))
-- \procesa|cam_secuen|sumcuatro|Add0~57\ = CARRY((\regis_CP|s\(30) & !\procesa|cam_secuen|sumcuatro|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \regis_CP|s\(30),
	datad => VCC,
	cin => \procesa|cam_secuen|sumcuatro|Add0~55\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~56_combout\,
	cout => \procesa|cam_secuen|sumcuatro|Add0~57\);

-- Location: LCCOMB_X10_Y57_N30
\parar~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \parar~2_combout\ = (\procesa|cam_secuen|sumcuatro|Add0~42_combout\) # ((\procesa|cam_secuen|sumcuatro|Add0~46_combout\) # ((\procesa|cam_secuen|sumcuatro|Add0~44_combout\) # (\procesa|cam_secuen|sumcuatro|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \procesa|cam_secuen|sumcuatro|Add0~42_combout\,
	datab => \procesa|cam_secuen|sumcuatro|Add0~46_combout\,
	datac => \procesa|cam_secuen|sumcuatro|Add0~44_combout\,
	datad => \procesa|cam_secuen|sumcuatro|Add0~48_combout\,
	combout => \parar~2_combout\);

-- Location: LCCOMB_X9_Y57_N12
\parar~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \parar~4_combout\ = (\parar~3_combout\) # ((\procesa|cam_secuen|sumcuatro|Add0~56_combout\) # ((\parar~2_combout\) # (\procesa|cam_secuen|sumcuatro|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parar~3_combout\,
	datab => \procesa|cam_secuen|sumcuatro|Add0~56_combout\,
	datac => \parar~2_combout\,
	datad => \procesa|cam_secuen|sumcuatro|Add0~54_combout\,
	combout => \parar~4_combout\);

-- Location: LCCOMB_X9_Y57_N4
\procesa|deco|RDL3_instr|s[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|deco|RDL3_instr|s[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \procesa|deco|RDL3_instr|s[1]~feeder_combout\);

-- Location: FF_X9_Y57_N5
\procesa|deco|RDL3_instr|s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|deco|RDL3_instr|s[1]~feeder_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \procesa|deco|RDL3_instr|s\(1));

-- Location: LCCOMB_X9_Y57_N18
\parar~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \parar~0_combout\ = (\procesa|cam_secuen|sumcuatro|Add0~28_combout\) # ((\procesa|cam_secuen|sumcuatro|Add0~30_combout\) # ((\procesa|deco|RDL3_instr|s\(1)) # (\procesa|cam_secuen|sumcuatro|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \procesa|cam_secuen|sumcuatro|Add0~28_combout\,
	datab => \procesa|cam_secuen|sumcuatro|Add0~30_combout\,
	datac => \procesa|deco|RDL3_instr|s\(1),
	datad => \procesa|cam_secuen|sumcuatro|Add0~32_combout\,
	combout => \parar~0_combout\);

-- Location: LCCOMB_X9_Y57_N8
\parar~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \parar~1_combout\ = (\procesa|cam_secuen|sumcuatro|Add0~36_combout\) # ((\procesa|cam_secuen|sumcuatro|Add0~40_combout\) # ((\procesa|cam_secuen|sumcuatro|Add0~38_combout\) # (\procesa|cam_secuen|sumcuatro|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \procesa|cam_secuen|sumcuatro|Add0~36_combout\,
	datab => \procesa|cam_secuen|sumcuatro|Add0~40_combout\,
	datac => \procesa|cam_secuen|sumcuatro|Add0~38_combout\,
	datad => \procesa|cam_secuen|sumcuatro|Add0~34_combout\,
	combout => \parar~1_combout\);

-- Location: FF_X10_Y57_N29
\regis_CP|s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \procesa|cam_secuen|sumcuatro|Add0~58_combout\,
	clrn => \ALT_INV_Pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regis_CP|s\(31));

-- Location: LCCOMB_X10_Y57_N28
\procesa|cam_secuen|sumcuatro|Add0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \procesa|cam_secuen|sumcuatro|Add0~58_combout\ = \procesa|cam_secuen|sumcuatro|Add0~57\ $ (\regis_CP|s\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \regis_CP|s\(31),
	cin => \procesa|cam_secuen|sumcuatro|Add0~57\,
	combout => \procesa|cam_secuen|sumcuatro|Add0~58_combout\);

-- Location: LCCOMB_X9_Y57_N22
\parar~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \parar~5_combout\ = (\parar~4_combout\) # ((\parar~0_combout\) # ((\parar~1_combout\) # (\procesa|cam_secuen|sumcuatro|Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parar~4_combout\,
	datab => \parar~0_combout\,
	datac => \parar~1_combout\,
	datad => \procesa|cam_secuen|sumcuatro|Add0~58_combout\,
	combout => \parar~5_combout\);

ww_parar <= \parar~output_o\;
END structure;


