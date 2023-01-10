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

-- DATE "11/09/2022 21:13:34"

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


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alinearE IS
    PORT (
	ent : IN std_logic_vector(31 DOWNTO 0);
	opMD : IN std_logic_vector(4 DOWNTO 0);
	sal : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END alinearE;

-- Design Ports Information
-- ent[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[2]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[3]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[5]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[6]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[7]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[9]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[10]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[11]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[12]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[13]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[14]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[15]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[16]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[17]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[18]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[19]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[20]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[21]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[22]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[23]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[24]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[25]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[26]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[27]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[28]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[29]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[30]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[31]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opMD[0]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opMD[1]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opMD[2]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opMD[3]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opMD[4]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[2]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[4]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[5]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[7]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[8]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[9]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[10]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[11]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[12]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[13]	=>  Location: PIN_A1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[14]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[15]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[16]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[17]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[18]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[19]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[20]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[21]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[22]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[23]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[24]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[25]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[26]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[27]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[28]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[29]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[30]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[31]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alinearE IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ent : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_opMD : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_sal : std_logic_vector(31 DOWNTO 0);
SIGNAL \ent[0]~input_o\ : std_logic;
SIGNAL \ent[1]~input_o\ : std_logic;
SIGNAL \ent[2]~input_o\ : std_logic;
SIGNAL \ent[3]~input_o\ : std_logic;
SIGNAL \ent[4]~input_o\ : std_logic;
SIGNAL \ent[5]~input_o\ : std_logic;
SIGNAL \ent[6]~input_o\ : std_logic;
SIGNAL \ent[7]~input_o\ : std_logic;
SIGNAL \ent[8]~input_o\ : std_logic;
SIGNAL \ent[9]~input_o\ : std_logic;
SIGNAL \ent[10]~input_o\ : std_logic;
SIGNAL \ent[11]~input_o\ : std_logic;
SIGNAL \ent[12]~input_o\ : std_logic;
SIGNAL \ent[13]~input_o\ : std_logic;
SIGNAL \ent[14]~input_o\ : std_logic;
SIGNAL \ent[15]~input_o\ : std_logic;
SIGNAL \ent[16]~input_o\ : std_logic;
SIGNAL \ent[17]~input_o\ : std_logic;
SIGNAL \ent[18]~input_o\ : std_logic;
SIGNAL \ent[19]~input_o\ : std_logic;
SIGNAL \ent[20]~input_o\ : std_logic;
SIGNAL \ent[21]~input_o\ : std_logic;
SIGNAL \ent[22]~input_o\ : std_logic;
SIGNAL \ent[23]~input_o\ : std_logic;
SIGNAL \ent[24]~input_o\ : std_logic;
SIGNAL \ent[25]~input_o\ : std_logic;
SIGNAL \ent[26]~input_o\ : std_logic;
SIGNAL \ent[27]~input_o\ : std_logic;
SIGNAL \ent[28]~input_o\ : std_logic;
SIGNAL \ent[29]~input_o\ : std_logic;
SIGNAL \ent[30]~input_o\ : std_logic;
SIGNAL \ent[31]~input_o\ : std_logic;
SIGNAL \opMD[0]~input_o\ : std_logic;
SIGNAL \opMD[1]~input_o\ : std_logic;
SIGNAL \opMD[2]~input_o\ : std_logic;
SIGNAL \opMD[3]~input_o\ : std_logic;
SIGNAL \opMD[4]~input_o\ : std_logic;
SIGNAL \sal[0]~output_o\ : std_logic;
SIGNAL \sal[1]~output_o\ : std_logic;
SIGNAL \sal[2]~output_o\ : std_logic;
SIGNAL \sal[3]~output_o\ : std_logic;
SIGNAL \sal[4]~output_o\ : std_logic;
SIGNAL \sal[5]~output_o\ : std_logic;
SIGNAL \sal[6]~output_o\ : std_logic;
SIGNAL \sal[7]~output_o\ : std_logic;
SIGNAL \sal[8]~output_o\ : std_logic;
SIGNAL \sal[9]~output_o\ : std_logic;
SIGNAL \sal[10]~output_o\ : std_logic;
SIGNAL \sal[11]~output_o\ : std_logic;
SIGNAL \sal[12]~output_o\ : std_logic;
SIGNAL \sal[13]~output_o\ : std_logic;
SIGNAL \sal[14]~output_o\ : std_logic;
SIGNAL \sal[15]~output_o\ : std_logic;
SIGNAL \sal[16]~output_o\ : std_logic;
SIGNAL \sal[17]~output_o\ : std_logic;
SIGNAL \sal[18]~output_o\ : std_logic;
SIGNAL \sal[19]~output_o\ : std_logic;
SIGNAL \sal[20]~output_o\ : std_logic;
SIGNAL \sal[21]~output_o\ : std_logic;
SIGNAL \sal[22]~output_o\ : std_logic;
SIGNAL \sal[23]~output_o\ : std_logic;
SIGNAL \sal[24]~output_o\ : std_logic;
SIGNAL \sal[25]~output_o\ : std_logic;
SIGNAL \sal[26]~output_o\ : std_logic;
SIGNAL \sal[27]~output_o\ : std_logic;
SIGNAL \sal[28]~output_o\ : std_logic;
SIGNAL \sal[29]~output_o\ : std_logic;
SIGNAL \sal[30]~output_o\ : std_logic;
SIGNAL \sal[31]~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ent <= ent;
ww_opMD <= opMD;
sal <= ww_sal;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X70_Y67_N23
\sal[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\sal[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[1]~output_o\);

-- Location: IOOBUF_X81_Y16_N9
\sal[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[2]~output_o\);

-- Location: IOOBUF_X70_Y67_N16
\sal[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[3]~output_o\);

-- Location: IOOBUF_X81_Y6_N16
\sal[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[4]~output_o\);

-- Location: IOOBUF_X10_Y67_N16
\sal[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\sal[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[6]~output_o\);

-- Location: IOOBUF_X68_Y0_N9
\sal[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[7]~output_o\);

-- Location: IOOBUF_X29_Y67_N23
\sal[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[8]~output_o\);

-- Location: IOOBUF_X81_Y65_N2
\sal[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[9]~output_o\);

-- Location: IOOBUF_X44_Y67_N16
\sal[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[10]~output_o\);

-- Location: IOOBUF_X17_Y67_N9
\sal[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[11]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\sal[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[12]~output_o\);

-- Location: IOOBUF_X26_Y67_N9
\sal[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[13]~output_o\);

-- Location: IOOBUF_X17_Y0_N9
\sal[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[14]~output_o\);

-- Location: IOOBUF_X33_Y0_N16
\sal[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[15]~output_o\);

-- Location: IOOBUF_X42_Y67_N16
\sal[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[16]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\sal[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[17]~output_o\);

-- Location: IOOBUF_X81_Y2_N2
\sal[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[18]~output_o\);

-- Location: IOOBUF_X54_Y67_N16
\sal[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[19]~output_o\);

-- Location: IOOBUF_X81_Y61_N2
\sal[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[20]~output_o\);

-- Location: IOOBUF_X15_Y0_N9
\sal[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[21]~output_o\);

-- Location: IOOBUF_X6_Y67_N23
\sal[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[22]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\sal[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[23]~output_o\);

-- Location: IOOBUF_X15_Y0_N16
\sal[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[24]~output_o\);

-- Location: IOOBUF_X31_Y67_N16
\sal[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[25]~output_o\);

-- Location: IOOBUF_X68_Y0_N16
\sal[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[26]~output_o\);

-- Location: IOOBUF_X81_Y62_N9
\sal[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[27]~output_o\);

-- Location: IOOBUF_X81_Y62_N2
\sal[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[28]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\sal[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[29]~output_o\);

-- Location: IOOBUF_X81_Y6_N2
\sal[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[30]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\sal[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal[31]~output_o\);

-- Location: IOIBUF_X44_Y67_N8
\ent[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(0),
	o => \ent[0]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\ent[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(1),
	o => \ent[1]~input_o\);

-- Location: IOIBUF_X10_Y67_N22
\ent[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(2),
	o => \ent[2]~input_o\);

-- Location: IOIBUF_X81_Y7_N15
\ent[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(3),
	o => \ent[3]~input_o\);

-- Location: IOIBUF_X49_Y67_N1
\ent[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(4),
	o => \ent[4]~input_o\);

-- Location: IOIBUF_X8_Y67_N8
\ent[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(5),
	o => \ent[5]~input_o\);

-- Location: IOIBUF_X17_Y67_N22
\ent[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(6),
	o => \ent[6]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\ent[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(7),
	o => \ent[7]~input_o\);

-- Location: IOIBUF_X70_Y67_N8
\ent[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(8),
	o => \ent[8]~input_o\);

-- Location: IOIBUF_X81_Y39_N8
\ent[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(9),
	o => \ent[9]~input_o\);

-- Location: IOIBUF_X81_Y16_N1
\ent[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(10),
	o => \ent[10]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\ent[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(11),
	o => \ent[11]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\ent[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(12),
	o => \ent[12]~input_o\);

-- Location: IOIBUF_X26_Y67_N22
\ent[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(13),
	o => \ent[13]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\ent[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(14),
	o => \ent[14]~input_o\);

-- Location: IOIBUF_X63_Y67_N8
\ent[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(15),
	o => \ent[15]~input_o\);

-- Location: IOIBUF_X63_Y67_N1
\ent[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(16),
	o => \ent[16]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\ent[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(17),
	o => \ent[17]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\ent[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(18),
	o => \ent[18]~input_o\);

-- Location: IOIBUF_X54_Y67_N8
\ent[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(19),
	o => \ent[19]~input_o\);

-- Location: IOIBUF_X54_Y67_N22
\ent[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(20),
	o => \ent[20]~input_o\);

-- Location: IOIBUF_X8_Y0_N15
\ent[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(21),
	o => \ent[21]~input_o\);

-- Location: IOIBUF_X42_Y0_N1
\ent[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(22),
	o => \ent[22]~input_o\);

-- Location: IOIBUF_X65_Y67_N8
\ent[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(23),
	o => \ent[23]~input_o\);

-- Location: IOIBUF_X81_Y2_N8
\ent[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(24),
	o => \ent[24]~input_o\);

-- Location: IOIBUF_X8_Y67_N15
\ent[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(25),
	o => \ent[25]~input_o\);

-- Location: IOIBUF_X33_Y67_N8
\ent[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(26),
	o => \ent[26]~input_o\);

-- Location: IOIBUF_X81_Y56_N1
\ent[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(27),
	o => \ent[27]~input_o\);

-- Location: IOIBUF_X54_Y67_N1
\ent[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(28),
	o => \ent[28]~input_o\);

-- Location: IOIBUF_X42_Y67_N22
\ent[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(29),
	o => \ent[29]~input_o\);

-- Location: IOIBUF_X81_Y25_N1
\ent[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(30),
	o => \ent[30]~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\ent[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(31),
	o => \ent[31]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\opMD[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opMD(0),
	o => \opMD[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N22
\opMD[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opMD(1),
	o => \opMD[1]~input_o\);

-- Location: IOIBUF_X81_Y61_N15
\opMD[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opMD(2),
	o => \opMD[2]~input_o\);

-- Location: IOIBUF_X81_Y6_N8
\opMD[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opMD(3),
	o => \opMD[3]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\opMD[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opMD(4),
	o => \opMD[4]~input_o\);

ww_sal(0) <= \sal[0]~output_o\;

ww_sal(1) <= \sal[1]~output_o\;

ww_sal(2) <= \sal[2]~output_o\;

ww_sal(3) <= \sal[3]~output_o\;

ww_sal(4) <= \sal[4]~output_o\;

ww_sal(5) <= \sal[5]~output_o\;

ww_sal(6) <= \sal[6]~output_o\;

ww_sal(7) <= \sal[7]~output_o\;

ww_sal(8) <= \sal[8]~output_o\;

ww_sal(9) <= \sal[9]~output_o\;

ww_sal(10) <= \sal[10]~output_o\;

ww_sal(11) <= \sal[11]~output_o\;

ww_sal(12) <= \sal[12]~output_o\;

ww_sal(13) <= \sal[13]~output_o\;

ww_sal(14) <= \sal[14]~output_o\;

ww_sal(15) <= \sal[15]~output_o\;

ww_sal(16) <= \sal[16]~output_o\;

ww_sal(17) <= \sal[17]~output_o\;

ww_sal(18) <= \sal[18]~output_o\;

ww_sal(19) <= \sal[19]~output_o\;

ww_sal(20) <= \sal[20]~output_o\;

ww_sal(21) <= \sal[21]~output_o\;

ww_sal(22) <= \sal[22]~output_o\;

ww_sal(23) <= \sal[23]~output_o\;

ww_sal(24) <= \sal[24]~output_o\;

ww_sal(25) <= \sal[25]~output_o\;

ww_sal(26) <= \sal[26]~output_o\;

ww_sal(27) <= \sal[27]~output_o\;

ww_sal(28) <= \sal[28]~output_o\;

ww_sal(29) <= \sal[29]~output_o\;

ww_sal(30) <= \sal[30]~output_o\;

ww_sal(31) <= \sal[31]~output_o\;
END structure;


