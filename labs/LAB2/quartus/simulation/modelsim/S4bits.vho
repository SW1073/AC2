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

-- DATE "10/04/2022 19:01:14"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	S4bits IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	cen : IN std_logic;
	SUM : BUFFER std_logic_vector(3 DOWNTO 0);
	csal : BUFFER std_logic
	);
END S4bits;

-- Design Ports Information
-- SUM[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[1]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[3]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- csal	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cen	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF S4bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cen : std_logic;
SIGNAL ww_SUM : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_csal : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \cen~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \S1bit0|s~combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S1bit1|s~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \S1bit1|csal~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \S1bit2|s~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \S1bit3|s~combout\ : std_logic;
SIGNAL \S1bit3|csal~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_cen~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \S1bit1|ALT_INV_csal~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_cen <= cen;
SUM <= ww_SUM;
csal <= ww_csal;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_cen~input_o\ <= NOT \cen~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\S1bit1|ALT_INV_csal~0_combout\ <= NOT \S1bit1|csal~0_combout\;

-- Location: IOOBUF_X89_Y38_N5
\SUM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1bit0|s~combout\,
	devoe => ww_devoe,
	o => ww_SUM(0));

-- Location: IOOBUF_X89_Y37_N5
\SUM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1bit1|s~combout\,
	devoe => ww_devoe,
	o => ww_SUM(1));

-- Location: IOOBUF_X89_Y35_N96
\SUM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1bit2|s~combout\,
	devoe => ww_devoe,
	o => ww_SUM(2));

-- Location: IOOBUF_X89_Y38_N56
\SUM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1bit3|s~combout\,
	devoe => ww_devoe,
	o => ww_SUM(3));

-- Location: IOOBUF_X89_Y35_N62
\csal~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1bit3|csal~0_combout\,
	devoe => ww_devoe,
	o => ww_csal);

-- Location: IOIBUF_X89_Y36_N21
\cen~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cen,
	o => \cen~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LABCELL_X88_Y36_N30
\S1bit0|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1bit0|s~combout\ = ( \A[0]~input_o\ & ( \B[0]~input_o\ & ( \cen~input_o\ ) ) ) # ( !\A[0]~input_o\ & ( \B[0]~input_o\ & ( !\cen~input_o\ ) ) ) # ( \A[0]~input_o\ & ( !\B[0]~input_o\ & ( !\cen~input_o\ ) ) ) # ( !\A[0]~input_o\ & ( !\B[0]~input_o\ & ( 
-- \cen~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cen~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \S1bit0|s~combout\);

-- Location: IOIBUF_X89_Y36_N4
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X88_Y36_N9
\S1bit1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1bit1|s~combout\ = ( \A[0]~input_o\ & ( \B[0]~input_o\ & ( !\B[1]~input_o\ $ (\A[1]~input_o\) ) ) ) # ( !\A[0]~input_o\ & ( \B[0]~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\ $ (\cen~input_o\)) ) ) ) # ( \A[0]~input_o\ & ( !\B[0]~input_o\ & ( 
-- !\B[1]~input_o\ $ (!\A[1]~input_o\ $ (\cen~input_o\)) ) ) ) # ( !\A[0]~input_o\ & ( !\B[0]~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110101010010101011010101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_cen~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \S1bit1|s~combout\);

-- Location: IOIBUF_X89_Y36_N55
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X88_Y36_N42
\S1bit1|csal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1bit1|csal~0_combout\ = ( \A[0]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[1]~input_o\) ) ) ) # ( !\A[0]~input_o\ & ( \B[0]~input_o\ & ( (!\cen~input_o\ & (\A[1]~input_o\ & \B[1]~input_o\)) # (\cen~input_o\ & ((\B[1]~input_o\) # 
-- (\A[1]~input_o\))) ) ) ) # ( \A[0]~input_o\ & ( !\B[0]~input_o\ & ( (!\cen~input_o\ & (\A[1]~input_o\ & \B[1]~input_o\)) # (\cen~input_o\ & ((\B[1]~input_o\) # (\A[1]~input_o\))) ) ) ) # ( !\A[0]~input_o\ & ( !\B[0]~input_o\ & ( (\A[1]~input_o\ & 
-- \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000101110001011100010111000101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cen~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \S1bit1|csal~0_combout\);

-- Location: IOIBUF_X89_Y35_N44
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X88_Y36_N51
\S1bit2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1bit2|s~combout\ = ( \B[2]~input_o\ & ( !\A[2]~input_o\ $ (\S1bit1|csal~0_combout\) ) ) # ( !\B[2]~input_o\ & ( !\A[2]~input_o\ $ (!\S1bit1|csal~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010101011010010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datac => \S1bit1|ALT_INV_csal~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	combout => \S1bit2|s~combout\);

-- Location: IOIBUF_X89_Y36_N38
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X88_Y36_N54
\S1bit3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1bit3|s~combout\ = ( \B[2]~input_o\ & ( \A[3]~input_o\ & ( !\B[3]~input_o\ $ (((\A[2]~input_o\) # (\S1bit1|csal~0_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \A[3]~input_o\ & ( !\B[3]~input_o\ $ (((\S1bit1|csal~0_combout\ & \A[2]~input_o\))) ) ) ) # ( 
-- \B[2]~input_o\ & ( !\A[3]~input_o\ & ( !\B[3]~input_o\ $ (((!\S1bit1|csal~0_combout\ & !\A[2]~input_o\))) ) ) ) # ( !\B[2]~input_o\ & ( !\A[3]~input_o\ & ( !\B[3]~input_o\ $ (((!\S1bit1|csal~0_combout\) # (!\A[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100001111111100000011111100000000111100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \S1bit1|ALT_INV_csal~0_combout\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \S1bit3|s~combout\);

-- Location: LABCELL_X88_Y36_N3
\S1bit3|csal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1bit3|csal~0_combout\ = ( \B[2]~input_o\ & ( \A[3]~input_o\ & ( ((\S1bit1|csal~0_combout\) # (\B[3]~input_o\)) # (\A[2]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( \A[3]~input_o\ & ( ((\A[2]~input_o\ & \S1bit1|csal~0_combout\)) # (\B[3]~input_o\) ) ) ) # ( 
-- \B[2]~input_o\ & ( !\A[3]~input_o\ & ( (\B[3]~input_o\ & ((\S1bit1|csal~0_combout\) # (\A[2]~input_o\))) ) ) ) # ( !\B[2]~input_o\ & ( !\A[3]~input_o\ & ( (\A[2]~input_o\ & (\B[3]~input_o\ & \S1bit1|csal~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000100110001001100110111001101110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \S1bit1|ALT_INV_csal~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \S1bit3|csal~0_combout\);

-- Location: LABCELL_X57_Y28_N3
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


