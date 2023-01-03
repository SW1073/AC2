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

-- DATE "01/03/2023 21:27:12"

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

ENTITY 	LIB_C IS
    PORT (
	reloj : IN std_logic;
	pcero : IN std_logic;
	B : IN std_logic;
	I : IN std_logic;
	instruc : IN std_logic_vector(31 DOWNTO 0);
	C1L1 : OUT std_logic;
	C2L1 : OUT std_logic;
	C3L1 : OUT std_logic;
	C4L1 : OUT std_logic;
	C1L2 : OUT std_logic;
	C2L2 : OUT std_logic;
	C3L2 : OUT std_logic;
	C4L2 : OUT std_logic;
	bloqCP : OUT std_logic;
	bloqBDL : OUT std_logic;
	inyecBDL : OUT std_logic;
	inyecDLA : OUT std_logic
	);
END LIB_C;

-- Design Ports Information
-- instruc[12]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[13]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[14]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[25]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[26]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[27]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[28]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[29]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[30]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[31]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C1L1	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C2L1	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C3L1	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C4L1	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C1L2	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C2L2	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C3L2	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C4L2	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bloqCP	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bloqBDL	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inyecBDL	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inyecDLA	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reloj	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcero	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[1]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[0]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[4]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[5]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[6]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[15]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[19]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[18]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[17]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[16]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[20]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[24]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[23]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[22]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[21]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[8]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[9]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[10]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruc[11]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LIB_C IS
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
SIGNAL ww_C1L1 : std_logic;
SIGNAL ww_C2L1 : std_logic;
SIGNAL ww_C3L1 : std_logic;
SIGNAL ww_C4L1 : std_logic;
SIGNAL ww_C1L2 : std_logic;
SIGNAL ww_C2L2 : std_logic;
SIGNAL ww_C3L2 : std_logic;
SIGNAL ww_C4L2 : std_logic;
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
SIGNAL \C1L1~output_o\ : std_logic;
SIGNAL \C2L1~output_o\ : std_logic;
SIGNAL \C3L1~output_o\ : std_logic;
SIGNAL \C4L1~output_o\ : std_logic;
SIGNAL \C1L2~output_o\ : std_logic;
SIGNAL \C2L2~output_o\ : std_logic;
SIGNAL \C3L2~output_o\ : std_logic;
SIGNAL \C4L2~output_o\ : std_logic;
SIGNAL \bloqCP~output_o\ : std_logic;
SIGNAL \bloqBDL~output_o\ : std_logic;
SIGNAL \inyecBDL~output_o\ : std_logic;
SIGNAL \inyecDLA~output_o\ : std_logic;
SIGNAL \reloj~input_o\ : std_logic;
SIGNAL \reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \instruc[18]~input_o\ : std_logic;
SIGNAL \pcero~input_o\ : std_logic;
SIGNAL \pcero~inputclkctrl_outclk\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \instruc[16]~input_o\ : std_logic;
SIGNAL \instruc[19]~input_o\ : std_logic;
SIGNAL \instruc[17]~input_o\ : std_logic;
SIGNAL \R_decPBRSEC|RDDL3_instrucDL|s[17]~feeder_combout\ : std_logic;
SIGNAL \R_dat|LDDat|not_comp1|Equal0~0_combout\ : std_logic;
SIGNAL \instruc[15]~input_o\ : std_logic;
SIGNAL \instruc[10]~input_o\ : std_logic;
SIGNAL \I~input_o\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_rd|s~3_combout\ : std_logic;
SIGNAL \instruc[9]~input_o\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_rd|s~2_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL1A~1_combout\ : std_logic;
SIGNAL \instruc[8]~input_o\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_rd|s~0_combout\ : std_logic;
SIGNAL \instruc[7]~input_o\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_rd|s~1_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL1A~0_combout\ : std_logic;
SIGNAL \instruc[11]~input_o\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_rd|s~4_combout\ : std_logic;
SIGNAL \instruc[6]~input_o\ : std_logic;
SIGNAL \instruc[3]~input_o\ : std_logic;
SIGNAL \instruc[1]~input_o\ : std_logic;
SIGNAL \instruc[0]~input_o\ : std_logic;
SIGNAL \R_dat|pos_laph|reg_dl_a|s~0_combout\ : std_logic;
SIGNAL \instruc[2]~input_o\ : std_logic;
SIGNAL \instruc[4]~input_o\ : std_logic;
SIGNAL \instruc[5]~input_o\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_pbr|s~0_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_pbr|s~1_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDA4_pbr|s~q\ : std_logic;
SIGNAL \R_dat|LDDat|IDL1A~2_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL1A~3_combout\ : std_logic;
SIGNAL \R_dat|genvalreg|Mux0~0_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL1E~0_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL1A~4_combout\ : std_logic;
SIGNAL \R_dat|cortos|reg_idl1a|s~q\ : std_logic;
SIGNAL \R_dat|LDDat|IDL1M~0_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDM5_pbr|s~q\ : std_logic;
SIGNAL \R_dat|LDDat|IDL1M~2_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL1M~1_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL1M~3_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL1M~4_combout\ : std_logic;
SIGNAL \R_dat|cortos|reg_idl1m|s~q\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RD6_pbr|s~feeder_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RD6_pbr|s~q\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RD6_rd|s[4]~feeder_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL1F~2_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL1E~1_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RD6_rd|s[2]~feeder_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL1F~1_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RD6_rd|s[1]~feeder_combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RD6_rd|s[0]~feeder_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL1F~0_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL1F~combout\ : std_logic;
SIGNAL \R_dat|senyales_cntl|RDE7_pbr|s~q\ : std_logic;
SIGNAL \R_dat|LDDat|IDL1E~4_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL1E~2_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL1E~3_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL1E~combout\ : std_logic;
SIGNAL \instruc[20]~input_o\ : std_logic;
SIGNAL \instruc[23]~input_o\ : std_logic;
SIGNAL \instruc[22]~input_o\ : std_logic;
SIGNAL \instruc[24]~input_o\ : std_logic;
SIGNAL \instruc[21]~input_o\ : std_logic;
SIGNAL \R_dat|LDDat|not_comp2|Equal0~0_combout\ : std_logic;
SIGNAL \R_dat|genvalreg|Mux1~0_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL2E~0_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL2A~1_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL2A~2_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL2A~0_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL2A~3_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL2A~4_combout\ : std_logic;
SIGNAL \R_dat|cortos|reg_idl2a|s~q\ : std_logic;
SIGNAL \R_dat|LDDat|IDL2M~2_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL2M~1_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL2M~0_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL2M~3_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL2M~4_combout\ : std_logic;
SIGNAL \R_dat|cortos|reg_idl2m|s~q\ : std_logic;
SIGNAL \R_dat|LDDat|IDL2F~0_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL2F~2_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL2F~1_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL2E~1_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL2F~combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL2E~3_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL2E~2_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL2E~4_combout\ : std_logic;
SIGNAL \R_dat|LDDat|IDL2E~combout\ : std_logic;
SIGNAL \R_dat|ins_laph|Mux0~0_combout\ : std_logic;
SIGNAL \R_dat|pos_laph|reg_dl_a|s~1_combout\ : std_logic;
SIGNAL \R_dat|pos_laph|reg_dl_a|s~q\ : std_logic;
SIGNAL \R_dat|pos_laph|reg_a_m|s~q\ : std_logic;
SIGNAL \R_dat|R_dat|RD~1_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~0_combout\ : std_logic;
SIGNAL \R_dat|R_dat|RD~2_combout\ : std_logic;
SIGNAL \R_decPBRSEC|decPBRSEC|Mux0~0_combout\ : std_logic;
SIGNAL \R_Sec|senyales_cntl|RDA4_opsec|s~0_combout\ : std_logic;
SIGNAL \R_Sec|senyales_cntl|RDA4_opsec|s~1_combout\ : std_logic;
SIGNAL \R_lgr|inyecBDL~0_combout\ : std_logic;
SIGNAL \R_Sec|senyales_cntl|RDA4_opsec|s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R_dat|senyales_cntl|RDA4_rd|s\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \R_decPBRSEC|RDDL3_instrucDL|s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \R_dat|senyales_cntl|RD6_rd|s\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \R_dat|senyales_cntl|RDE7_rd|s\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \R_dat|senyales_cntl|RDM5_rd|s\ : std_logic_vector(4 DOWNTO 0);
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
C1L1 <= ww_C1L1;
C2L1 <= ww_C2L1;
C3L1 <= ww_C3L1;
C4L1 <= ww_C4L1;
C1L2 <= ww_C1L2;
C2L2 <= ww_C2L2;
C3L2 <= ww_C3L2;
C4L2 <= ww_C4L2;
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

-- Location: IOOBUF_X81_Y59_N2
\C1L1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R_dat|cortos|reg_idl1a|s~q\,
	devoe => ww_devoe,
	o => \C1L1~output_o\);

-- Location: IOOBUF_X81_Y58_N2
\C2L1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R_dat|cortos|reg_idl1m|s~q\,
	devoe => ww_devoe,
	o => \C2L1~output_o\);

-- Location: IOOBUF_X81_Y62_N9
\C3L1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R_dat|LDDat|IDL1F~combout\,
	devoe => ww_devoe,
	o => \C3L1~output_o\);

-- Location: IOOBUF_X81_Y62_N2
\C4L1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R_dat|LDDat|IDL1E~combout\,
	devoe => ww_devoe,
	o => \C4L1~output_o\);

-- Location: IOOBUF_X81_Y59_N16
\C1L2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R_dat|cortos|reg_idl2a|s~q\,
	devoe => ww_devoe,
	o => \C1L2~output_o\);

-- Location: IOOBUF_X81_Y56_N9
\C2L2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R_dat|cortos|reg_idl2m|s~q\,
	devoe => ww_devoe,
	o => \C2L2~output_o\);

-- Location: IOOBUF_X81_Y61_N16
\C3L2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R_dat|LDDat|IDL2F~combout\,
	devoe => ww_devoe,
	o => \C3L2~output_o\);

-- Location: IOOBUF_X81_Y62_N16
\C4L2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R_dat|LDDat|IDL2E~combout\,
	devoe => ww_devoe,
	o => \C4L2~output_o\);

-- Location: IOOBUF_X81_Y64_N2
\bloqCP~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R_dat|R_dat|RD~2_combout\,
	devoe => ww_devoe,
	o => \bloqCP~output_o\);

-- Location: IOOBUF_X81_Y64_N9
\bloqBDL~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R_dat|R_dat|RD~2_combout\,
	devoe => ww_devoe,
	o => \bloqBDL~output_o\);

-- Location: IOOBUF_X81_Y61_N9
\inyecBDL~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R_lgr|inyecBDL~0_combout\,
	devoe => ww_devoe,
	o => \inyecBDL~output_o\);

-- Location: IOOBUF_X81_Y64_N23
\inyecDLA~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R_dat|R_dat|RD~2_combout\,
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

-- Location: IOIBUF_X81_Y58_N8
\instruc[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(18),
	o => \instruc[18]~input_o\);

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

-- Location: IOIBUF_X81_Y52_N15
\B~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: FF_X77_Y51_N11
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

-- Location: IOIBUF_X81_Y44_N1
\instruc[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(16),
	o => \instruc[16]~input_o\);

-- Location: FF_X77_Y51_N15
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

-- Location: IOIBUF_X81_Y50_N1
\instruc[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(19),
	o => \instruc[19]~input_o\);

-- Location: FF_X77_Y51_N31
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

-- Location: IOIBUF_X81_Y61_N1
\instruc[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(17),
	o => \instruc[17]~input_o\);

-- Location: LCCOMB_X76_Y51_N6
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

-- Location: FF_X76_Y51_N7
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

-- Location: LCCOMB_X77_Y51_N30
\R_dat|LDDat|not_comp1|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|not_comp1|Equal0~0_combout\ = (!\R_decPBRSEC|RDDL3_instrucDL|s\(18) & (!\R_decPBRSEC|RDDL3_instrucDL|s\(16) & (!\R_decPBRSEC|RDDL3_instrucDL|s\(19) & !\R_decPBRSEC|RDDL3_instrucDL|s\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(18),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(16),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(19),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(17),
	combout => \R_dat|LDDat|not_comp1|Equal0~0_combout\);

-- Location: IOIBUF_X81_Y53_N1
\instruc[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(15),
	o => \instruc[15]~input_o\);

-- Location: FF_X77_Y51_N27
\R_decPBRSEC|RDDL3_instrucDL|s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[15]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(15));

-- Location: IOIBUF_X81_Y46_N8
\instruc[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(10),
	o => \instruc[10]~input_o\);

-- Location: FF_X76_Y51_N17
\R_decPBRSEC|RDDL3_instrucDL|s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[10]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(10));

-- Location: IOIBUF_X81_Y52_N8
\I~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I,
	o => \I~input_o\);

-- Location: LCCOMB_X76_Y51_N16
\R_dat|senyales_cntl|RDA4_rd|s~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_rd|s~3_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(10) & !\I~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(10),
	datad => \I~input_o\,
	combout => \R_dat|senyales_cntl|RDA4_rd|s~3_combout\);

-- Location: FF_X77_Y51_N17
\R_dat|senyales_cntl|RDA4_rd|s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RDA4_rd|s~3_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDA4_rd|s\(3));

-- Location: IOIBUF_X81_Y56_N1
\instruc[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(9),
	o => \instruc[9]~input_o\);

-- Location: FF_X79_Y51_N21
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

-- Location: LCCOMB_X79_Y51_N20
\R_dat|senyales_cntl|RDA4_rd|s~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_rd|s~2_combout\ = (!\I~input_o\ & \R_decPBRSEC|RDDL3_instrucDL|s\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I~input_o\,
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(9),
	combout => \R_dat|senyales_cntl|RDA4_rd|s~2_combout\);

-- Location: FF_X78_Y51_N13
\R_dat|senyales_cntl|RDA4_rd|s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RDA4_rd|s~2_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDA4_rd|s\(2));

-- Location: LCCOMB_X77_Y51_N10
\R_dat|LDDat|IDL1A~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL1A~1_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(17) & (\R_dat|senyales_cntl|RDA4_rd|s\(2) & (\R_dat|senyales_cntl|RDA4_rd|s\(3) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(18))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(17) & 
-- (!\R_dat|senyales_cntl|RDA4_rd|s\(2) & (\R_dat|senyales_cntl|RDA4_rd|s\(3) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(17),
	datab => \R_dat|senyales_cntl|RDA4_rd|s\(3),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(18),
	datad => \R_dat|senyales_cntl|RDA4_rd|s\(2),
	combout => \R_dat|LDDat|IDL1A~1_combout\);

-- Location: IOIBUF_X81_Y43_N1
\instruc[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(8),
	o => \instruc[8]~input_o\);

-- Location: FF_X76_Y51_N27
\R_decPBRSEC|RDDL3_instrucDL|s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[8]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(8));

-- Location: LCCOMB_X76_Y51_N26
\R_dat|senyales_cntl|RDA4_rd|s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_rd|s~0_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(8) & !\I~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(8),
	datad => \I~input_o\,
	combout => \R_dat|senyales_cntl|RDA4_rd|s~0_combout\);

-- Location: FF_X77_Y51_N23
\R_dat|senyales_cntl|RDA4_rd|s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RDA4_rd|s~0_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDA4_rd|s\(1));

-- Location: IOIBUF_X81_Y49_N15
\instruc[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(7),
	o => \instruc[7]~input_o\);

-- Location: FF_X79_Y51_N15
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

-- Location: LCCOMB_X79_Y51_N14
\R_dat|senyales_cntl|RDA4_rd|s~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_rd|s~1_combout\ = (!\I~input_o\ & \R_decPBRSEC|RDDL3_instrucDL|s\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I~input_o\,
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(7),
	combout => \R_dat|senyales_cntl|RDA4_rd|s~1_combout\);

-- Location: FF_X78_Y51_N23
\R_dat|senyales_cntl|RDA4_rd|s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RDA4_rd|s~1_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDA4_rd|s\(0));

-- Location: LCCOMB_X77_Y51_N22
\R_dat|LDDat|IDL1A~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL1A~0_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(15) & (\R_dat|senyales_cntl|RDA4_rd|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(16) $ (!\R_dat|senyales_cntl|RDA4_rd|s\(1))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(15) & 
-- (!\R_dat|senyales_cntl|RDA4_rd|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(16) $ (!\R_dat|senyales_cntl|RDA4_rd|s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(15),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(16),
	datac => \R_dat|senyales_cntl|RDA4_rd|s\(1),
	datad => \R_dat|senyales_cntl|RDA4_rd|s\(0),
	combout => \R_dat|LDDat|IDL1A~0_combout\);

-- Location: IOIBUF_X81_Y55_N1
\instruc[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(11),
	o => \instruc[11]~input_o\);

-- Location: FF_X79_Y51_N1
\R_decPBRSEC|RDDL3_instrucDL|s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \instruc[11]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_B~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_decPBRSEC|RDDL3_instrucDL|s\(11));

-- Location: LCCOMB_X79_Y51_N0
\R_dat|senyales_cntl|RDA4_rd|s~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_rd|s~4_combout\ = (!\I~input_o\ & \R_decPBRSEC|RDDL3_instrucDL|s\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I~input_o\,
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(11),
	combout => \R_dat|senyales_cntl|RDA4_rd|s~4_combout\);

-- Location: FF_X78_Y51_N31
\R_dat|senyales_cntl|RDA4_rd|s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RDA4_rd|s~4_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDA4_rd|s\(4));

-- Location: IOIBUF_X81_Y44_N8
\instruc[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(6),
	o => \instruc[6]~input_o\);

-- Location: FF_X77_Y51_N29
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

-- Location: IOIBUF_X81_Y47_N8
\instruc[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(3),
	o => \instruc[3]~input_o\);

-- Location: FF_X77_Y51_N9
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

-- Location: IOIBUF_X81_Y47_N1
\instruc[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(1),
	o => \instruc[1]~input_o\);

-- Location: FF_X78_Y51_N3
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

-- Location: IOIBUF_X81_Y46_N1
\instruc[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(0),
	o => \instruc[0]~input_o\);

-- Location: FF_X78_Y51_N29
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

-- Location: LCCOMB_X78_Y51_N16
\R_dat|pos_laph|reg_dl_a|s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|pos_laph|reg_dl_a|s~0_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(1) & (!\I~input_o\ & \R_decPBRSEC|RDDL3_instrucDL|s\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(1),
	datab => \I~input_o\,
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(0),
	combout => \R_dat|pos_laph|reg_dl_a|s~0_combout\);

-- Location: IOIBUF_X81_Y52_N1
\instruc[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(2),
	o => \instruc[2]~input_o\);

-- Location: FF_X77_Y51_N1
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

-- Location: IOIBUF_X81_Y53_N8
\instruc[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(4),
	o => \instruc[4]~input_o\);

-- Location: FF_X79_Y51_N17
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

-- Location: IOIBUF_X81_Y59_N8
\instruc[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(5),
	o => \instruc[5]~input_o\);

-- Location: FF_X77_Y51_N3
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

-- Location: LCCOMB_X79_Y51_N10
\R_dat|senyales_cntl|RDA4_pbr|s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_pbr|s~0_combout\ = (!\R_decPBRSEC|RDDL3_instrucDL|s\(4) & ((\R_decPBRSEC|RDDL3_instrucDL|s\(2) & ((\R_decPBRSEC|RDDL3_instrucDL|s\(5)) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(6)))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(2) & 
-- (\R_decPBRSEC|RDDL3_instrucDL|s\(5) & !\R_decPBRSEC|RDDL3_instrucDL|s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(2),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(4),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(5),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(6),
	combout => \R_dat|senyales_cntl|RDA4_pbr|s~0_combout\);

-- Location: LCCOMB_X79_Y51_N18
\R_dat|senyales_cntl|RDA4_pbr|s~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RDA4_pbr|s~1_combout\ = (\R_dat|pos_laph|reg_dl_a|s~0_combout\ & ((\R_decPBRSEC|RDDL3_instrucDL|s\(6) & ((\R_dat|senyales_cntl|RDA4_pbr|s~0_combout\))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(6) & (!\R_decPBRSEC|RDDL3_instrucDL|s\(3) & 
-- !\R_dat|senyales_cntl|RDA4_pbr|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(6),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(3),
	datac => \R_dat|pos_laph|reg_dl_a|s~0_combout\,
	datad => \R_dat|senyales_cntl|RDA4_pbr|s~0_combout\,
	combout => \R_dat|senyales_cntl|RDA4_pbr|s~1_combout\);

-- Location: FF_X79_Y51_N19
\R_dat|senyales_cntl|RDA4_pbr|s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|senyales_cntl|RDA4_pbr|s~1_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDA4_pbr|s~q\);

-- Location: LCCOMB_X77_Y51_N14
\R_dat|LDDat|IDL1A~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL1A~2_combout\ = (\R_dat|senyales_cntl|RDA4_pbr|s~q\ & (\R_dat|senyales_cntl|RDA4_rd|s\(4) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RDA4_rd|s\(4),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(19),
	datad => \R_dat|senyales_cntl|RDA4_pbr|s~q\,
	combout => \R_dat|LDDat|IDL1A~2_combout\);

-- Location: LCCOMB_X77_Y51_N26
\R_dat|LDDat|IDL1A~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL1A~3_combout\ = (\R_dat|LDDat|IDL1A~1_combout\ & (\R_dat|LDDat|IDL1A~0_combout\ & \R_dat|LDDat|IDL1A~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|LDDat|IDL1A~1_combout\,
	datab => \R_dat|LDDat|IDL1A~0_combout\,
	datad => \R_dat|LDDat|IDL1A~2_combout\,
	combout => \R_dat|LDDat|IDL1A~3_combout\);

-- Location: LCCOMB_X77_Y51_N28
\R_dat|genvalreg|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|genvalreg|Mux0~0_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(6) & (((\R_decPBRSEC|RDDL3_instrucDL|s\(4))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(5)))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(6) & (((\R_decPBRSEC|RDDL3_instrucDL|s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(5),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(2),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(6),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(4),
	combout => \R_dat|genvalreg|Mux0~0_combout\);

-- Location: LCCOMB_X77_Y51_N8
\R_dat|LDDat|IDL1E~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL1E~0_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(1) & (\R_decPBRSEC|RDDL3_instrucDL|s\(0) & (!\R_decPBRSEC|RDDL3_instrucDL|s\(3) & !\R_dat|genvalreg|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(1),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(0),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(3),
	datad => \R_dat|genvalreg|Mux0~0_combout\,
	combout => \R_dat|LDDat|IDL1E~0_combout\);

-- Location: LCCOMB_X77_Y51_N4
\R_dat|LDDat|IDL1A~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL1A~4_combout\ = (\R_dat|LDDat|IDL1A~3_combout\ & (\R_dat|LDDat|IDL1E~0_combout\ & ((\R_decPBRSEC|RDDL3_instrucDL|s\(15)) # (!\R_dat|LDDat|not_comp1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|LDDat|not_comp1|Equal0~0_combout\,
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(15),
	datac => \R_dat|LDDat|IDL1A~3_combout\,
	datad => \R_dat|LDDat|IDL1E~0_combout\,
	combout => \R_dat|LDDat|IDL1A~4_combout\);

-- Location: FF_X77_Y51_N5
\R_dat|cortos|reg_idl1a|s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|LDDat|IDL1A~4_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|cortos|reg_idl1a|s~q\);

-- Location: FF_X77_Y51_N13
\R_dat|senyales_cntl|RDM5_rd|s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|senyales_cntl|RDA4_rd|s\(1),
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RDM5_rd|s\(1));

-- Location: FF_X78_Y51_N7
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

-- Location: LCCOMB_X77_Y51_N12
\R_dat|LDDat|IDL1M~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL1M~0_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(15) & (\R_dat|senyales_cntl|RDM5_rd|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(16) $ (!\R_dat|senyales_cntl|RDM5_rd|s\(1))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(15) & 
-- (!\R_dat|senyales_cntl|RDM5_rd|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(16) $ (!\R_dat|senyales_cntl|RDM5_rd|s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(15),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(16),
	datac => \R_dat|senyales_cntl|RDM5_rd|s\(1),
	datad => \R_dat|senyales_cntl|RDM5_rd|s\(0),
	combout => \R_dat|LDDat|IDL1M~0_combout\);

-- Location: FF_X77_Y51_N25
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

-- Location: FF_X78_Y51_N17
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

-- Location: LCCOMB_X77_Y51_N24
\R_dat|LDDat|IDL1M~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL1M~2_combout\ = (\R_dat|senyales_cntl|RDM5_pbr|s~q\ & (\R_decPBRSEC|RDDL3_instrucDL|s\(19) $ (!\R_dat|senyales_cntl|RDM5_rd|s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(19),
	datac => \R_dat|senyales_cntl|RDM5_rd|s\(4),
	datad => \R_dat|senyales_cntl|RDM5_pbr|s~q\,
	combout => \R_dat|LDDat|IDL1M~2_combout\);

-- Location: FF_X77_Y51_N21
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

-- Location: FF_X78_Y51_N19
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

-- Location: LCCOMB_X77_Y51_N20
\R_dat|LDDat|IDL1M~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL1M~1_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(18) & (\R_dat|senyales_cntl|RDM5_rd|s\(3) & (\R_decPBRSEC|RDDL3_instrucDL|s\(17) $ (!\R_dat|senyales_cntl|RDM5_rd|s\(2))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(18) & 
-- (!\R_dat|senyales_cntl|RDM5_rd|s\(3) & (\R_decPBRSEC|RDDL3_instrucDL|s\(17) $ (!\R_dat|senyales_cntl|RDM5_rd|s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(18),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(17),
	datac => \R_dat|senyales_cntl|RDM5_rd|s\(2),
	datad => \R_dat|senyales_cntl|RDM5_rd|s\(3),
	combout => \R_dat|LDDat|IDL1M~1_combout\);

-- Location: LCCOMB_X77_Y51_N16
\R_dat|LDDat|IDL1M~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL1M~3_combout\ = (\R_dat|LDDat|IDL1M~0_combout\ & (\R_dat|LDDat|IDL1M~2_combout\ & \R_dat|LDDat|IDL1M~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|LDDat|IDL1M~0_combout\,
	datab => \R_dat|LDDat|IDL1M~2_combout\,
	datad => \R_dat|LDDat|IDL1M~1_combout\,
	combout => \R_dat|LDDat|IDL1M~3_combout\);

-- Location: LCCOMB_X77_Y51_N6
\R_dat|LDDat|IDL1M~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL1M~4_combout\ = (\R_dat|LDDat|IDL1E~0_combout\ & (\R_dat|LDDat|IDL1M~3_combout\ & ((\R_decPBRSEC|RDDL3_instrucDL|s\(15)) # (!\R_dat|LDDat|not_comp1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|LDDat|not_comp1|Equal0~0_combout\,
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(15),
	datac => \R_dat|LDDat|IDL1E~0_combout\,
	datad => \R_dat|LDDat|IDL1M~3_combout\,
	combout => \R_dat|LDDat|IDL1M~4_combout\);

-- Location: FF_X77_Y51_N7
\R_dat|cortos|reg_idl1m|s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|LDDat|IDL1M~4_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|cortos|reg_idl1m|s~q\);

-- Location: LCCOMB_X76_Y51_N20
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

-- Location: FF_X76_Y51_N21
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

-- Location: LCCOMB_X76_Y51_N12
\R_dat|senyales_cntl|RD6_rd|s[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RD6_rd|s[4]~feeder_combout\ = \R_dat|senyales_cntl|RDM5_rd|s\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R_dat|senyales_cntl|RDM5_rd|s\(4),
	combout => \R_dat|senyales_cntl|RD6_rd|s[4]~feeder_combout\);

-- Location: FF_X76_Y51_N13
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

-- Location: LCCOMB_X75_Y51_N24
\R_dat|LDDat|IDL1F~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL1F~2_combout\ = (\R_dat|senyales_cntl|RD6_pbr|s~q\ & (\R_dat|senyales_cntl|RD6_rd|s\(4) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RD6_pbr|s~q\,
	datac => \R_dat|senyales_cntl|RD6_rd|s\(4),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(19),
	combout => \R_dat|LDDat|IDL1F~2_combout\);

-- Location: LCCOMB_X78_Y51_N30
\R_dat|LDDat|IDL1E~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL1E~1_combout\ = (\R_dat|LDDat|IDL1E~0_combout\ & ((\R_decPBRSEC|RDDL3_instrucDL|s\(15)) # (!\R_dat|LDDat|not_comp1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|LDDat|not_comp1|Equal0~0_combout\,
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(15),
	datad => \R_dat|LDDat|IDL1E~0_combout\,
	combout => \R_dat|LDDat|IDL1E~1_combout\);

-- Location: LCCOMB_X76_Y51_N22
\R_dat|senyales_cntl|RD6_rd|s[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RD6_rd|s[2]~feeder_combout\ = \R_dat|senyales_cntl|RDM5_rd|s\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R_dat|senyales_cntl|RDM5_rd|s\(2),
	combout => \R_dat|senyales_cntl|RD6_rd|s[2]~feeder_combout\);

-- Location: FF_X76_Y51_N23
\R_dat|senyales_cntl|RD6_rd|s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|senyales_cntl|RD6_rd|s[2]~feeder_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|senyales_cntl|RD6_rd|s\(2));

-- Location: FF_X76_Y51_N9
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

-- Location: LCCOMB_X76_Y51_N28
\R_dat|LDDat|IDL1F~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL1F~1_combout\ = (\R_dat|senyales_cntl|RD6_rd|s\(2) & (\R_decPBRSEC|RDDL3_instrucDL|s\(17) & (\R_dat|senyales_cntl|RD6_rd|s\(3) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(18))))) # (!\R_dat|senyales_cntl|RD6_rd|s\(2) & 
-- (!\R_decPBRSEC|RDDL3_instrucDL|s\(17) & (\R_dat|senyales_cntl|RD6_rd|s\(3) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RD6_rd|s\(2),
	datab => \R_dat|senyales_cntl|RD6_rd|s\(3),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(17),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(18),
	combout => \R_dat|LDDat|IDL1F~1_combout\);

-- Location: LCCOMB_X79_Y51_N30
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

-- Location: FF_X79_Y51_N31
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

-- Location: LCCOMB_X79_Y51_N8
\R_dat|senyales_cntl|RD6_rd|s[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|senyales_cntl|RD6_rd|s[0]~feeder_combout\ = \R_dat|senyales_cntl|RDM5_rd|s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R_dat|senyales_cntl|RDM5_rd|s\(0),
	combout => \R_dat|senyales_cntl|RD6_rd|s[0]~feeder_combout\);

-- Location: FF_X79_Y51_N9
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

-- Location: LCCOMB_X79_Y51_N22
\R_dat|LDDat|IDL1F~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL1F~0_combout\ = (\R_dat|senyales_cntl|RD6_rd|s\(1) & (\R_decPBRSEC|RDDL3_instrucDL|s\(16) & (\R_dat|senyales_cntl|RD6_rd|s\(0) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(15))))) # (!\R_dat|senyales_cntl|RD6_rd|s\(1) & 
-- (!\R_decPBRSEC|RDDL3_instrucDL|s\(16) & (\R_dat|senyales_cntl|RD6_rd|s\(0) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RD6_rd|s\(1),
	datab => \R_dat|senyales_cntl|RD6_rd|s\(0),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(15),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(16),
	combout => \R_dat|LDDat|IDL1F~0_combout\);

-- Location: LCCOMB_X79_Y51_N12
\R_dat|LDDat|IDL1F\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL1F~combout\ = (\R_dat|LDDat|IDL1F~2_combout\ & (\R_dat|LDDat|IDL1E~1_combout\ & (\R_dat|LDDat|IDL1F~1_combout\ & \R_dat|LDDat|IDL1F~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|LDDat|IDL1F~2_combout\,
	datab => \R_dat|LDDat|IDL1E~1_combout\,
	datac => \R_dat|LDDat|IDL1F~1_combout\,
	datad => \R_dat|LDDat|IDL1F~0_combout\,
	combout => \R_dat|LDDat|IDL1F~combout\);

-- Location: FF_X75_Y51_N29
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

-- Location: FF_X75_Y51_N19
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

-- Location: LCCOMB_X75_Y51_N18
\R_dat|LDDat|IDL1E~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL1E~4_combout\ = (\R_dat|senyales_cntl|RDE7_pbr|s~q\ & (\R_dat|senyales_cntl|RDE7_rd|s\(4) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R_dat|senyales_cntl|RDE7_rd|s\(4),
	datac => \R_dat|senyales_cntl|RDE7_pbr|s~q\,
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(19),
	combout => \R_dat|LDDat|IDL1E~4_combout\);

-- Location: FF_X79_Y51_N27
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

-- Location: FF_X79_Y51_N29
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

-- Location: LCCOMB_X79_Y51_N26
\R_dat|LDDat|IDL1E~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL1E~2_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(15) & (\R_dat|senyales_cntl|RDE7_rd|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(16) $ (!\R_dat|senyales_cntl|RDE7_rd|s\(1))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(15) & 
-- (!\R_dat|senyales_cntl|RDE7_rd|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(16) $ (!\R_dat|senyales_cntl|RDE7_rd|s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(15),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(16),
	datac => \R_dat|senyales_cntl|RDE7_rd|s\(1),
	datad => \R_dat|senyales_cntl|RDE7_rd|s\(0),
	combout => \R_dat|LDDat|IDL1E~2_combout\);

-- Location: FF_X76_Y51_N31
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

-- Location: FF_X76_Y51_N3
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

-- Location: LCCOMB_X76_Y51_N2
\R_dat|LDDat|IDL1E~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL1E~3_combout\ = (\R_dat|senyales_cntl|RDE7_rd|s\(2) & (\R_decPBRSEC|RDDL3_instrucDL|s\(17) & (\R_decPBRSEC|RDDL3_instrucDL|s\(18) $ (!\R_dat|senyales_cntl|RDE7_rd|s\(3))))) # (!\R_dat|senyales_cntl|RDE7_rd|s\(2) & 
-- (!\R_decPBRSEC|RDDL3_instrucDL|s\(17) & (\R_decPBRSEC|RDDL3_instrucDL|s\(18) $ (!\R_dat|senyales_cntl|RDE7_rd|s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RDE7_rd|s\(2),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(18),
	datac => \R_dat|senyales_cntl|RDE7_rd|s\(3),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(17),
	combout => \R_dat|LDDat|IDL1E~3_combout\);

-- Location: LCCOMB_X79_Y51_N2
\R_dat|LDDat|IDL1E\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL1E~combout\ = (\R_dat|LDDat|IDL1E~4_combout\ & (\R_dat|LDDat|IDL1E~1_combout\ & (\R_dat|LDDat|IDL1E~2_combout\ & \R_dat|LDDat|IDL1E~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|LDDat|IDL1E~4_combout\,
	datab => \R_dat|LDDat|IDL1E~1_combout\,
	datac => \R_dat|LDDat|IDL1E~2_combout\,
	datad => \R_dat|LDDat|IDL1E~3_combout\,
	combout => \R_dat|LDDat|IDL1E~combout\);

-- Location: IOIBUF_X81_Y49_N8
\instruc[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(20),
	o => \instruc[20]~input_o\);

-- Location: FF_X78_Y51_N11
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

-- Location: IOIBUF_X81_Y50_N8
\instruc[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(23),
	o => \instruc[23]~input_o\);

-- Location: FF_X78_Y51_N21
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

-- Location: IOIBUF_X81_Y55_N8
\instruc[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(22),
	o => \instruc[22]~input_o\);

-- Location: FF_X78_Y51_N1
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

-- Location: IOIBUF_X81_Y46_N15
\instruc[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(24),
	o => \instruc[24]~input_o\);

-- Location: FF_X78_Y51_N27
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

-- Location: IOIBUF_X81_Y49_N1
\instruc[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(21),
	o => \instruc[21]~input_o\);

-- Location: FF_X78_Y51_N25
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

-- Location: LCCOMB_X78_Y51_N26
\R_dat|LDDat|not_comp2|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|not_comp2|Equal0~0_combout\ = (!\R_decPBRSEC|RDDL3_instrucDL|s\(23) & (!\R_decPBRSEC|RDDL3_instrucDL|s\(22) & (!\R_decPBRSEC|RDDL3_instrucDL|s\(24) & !\R_decPBRSEC|RDDL3_instrucDL|s\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(23),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(22),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(24),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(21),
	combout => \R_dat|LDDat|not_comp2|Equal0~0_combout\);

-- Location: LCCOMB_X78_Y51_N2
\R_dat|genvalreg|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|genvalreg|Mux1~0_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(1) & ((!\R_decPBRSEC|RDDL3_instrucDL|s\(4)) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(6),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(0),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(1),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(4),
	combout => \R_dat|genvalreg|Mux1~0_combout\);

-- Location: LCCOMB_X78_Y51_N14
\R_dat|LDDat|IDL2E~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL2E~0_combout\ = (!\R_decPBRSEC|RDDL3_instrucDL|s\(3) & (\R_decPBRSEC|RDDL3_instrucDL|s\(5) & (!\R_decPBRSEC|RDDL3_instrucDL|s\(2) & \R_dat|genvalreg|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(3),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(5),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(2),
	datad => \R_dat|genvalreg|Mux1~0_combout\,
	combout => \R_dat|LDDat|IDL2E~0_combout\);

-- Location: LCCOMB_X78_Y51_N12
\R_dat|LDDat|IDL2A~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL2A~1_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(23) & (\R_dat|senyales_cntl|RDA4_rd|s\(3) & (\R_decPBRSEC|RDDL3_instrucDL|s\(22) $ (!\R_dat|senyales_cntl|RDA4_rd|s\(2))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(23) & 
-- (!\R_dat|senyales_cntl|RDA4_rd|s\(3) & (\R_decPBRSEC|RDDL3_instrucDL|s\(22) $ (!\R_dat|senyales_cntl|RDA4_rd|s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(23),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(22),
	datac => \R_dat|senyales_cntl|RDA4_rd|s\(2),
	datad => \R_dat|senyales_cntl|RDA4_rd|s\(3),
	combout => \R_dat|LDDat|IDL2A~1_combout\);

-- Location: LCCOMB_X78_Y51_N20
\R_dat|LDDat|IDL2A~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL2A~2_combout\ = (\R_dat|senyales_cntl|RDA4_pbr|s~q\ & (\R_decPBRSEC|RDDL3_instrucDL|s\(24) $ (!\R_dat|senyales_cntl|RDA4_rd|s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(24),
	datab => \R_dat|senyales_cntl|RDA4_rd|s\(4),
	datad => \R_dat|senyales_cntl|RDA4_pbr|s~q\,
	combout => \R_dat|LDDat|IDL2A~2_combout\);

-- Location: LCCOMB_X78_Y51_N10
\R_dat|LDDat|IDL2A~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL2A~0_combout\ = (\R_dat|senyales_cntl|RDA4_rd|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(20) & (\R_decPBRSEC|RDDL3_instrucDL|s\(21) $ (!\R_dat|senyales_cntl|RDA4_rd|s\(1))))) # (!\R_dat|senyales_cntl|RDA4_rd|s\(0) & 
-- (!\R_decPBRSEC|RDDL3_instrucDL|s\(20) & (\R_decPBRSEC|RDDL3_instrucDL|s\(21) $ (!\R_dat|senyales_cntl|RDA4_rd|s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RDA4_rd|s\(0),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(21),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(20),
	datad => \R_dat|senyales_cntl|RDA4_rd|s\(1),
	combout => \R_dat|LDDat|IDL2A~0_combout\);

-- Location: LCCOMB_X78_Y51_N24
\R_dat|LDDat|IDL2A~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL2A~3_combout\ = (\R_dat|LDDat|IDL2A~1_combout\ & (\R_dat|LDDat|IDL2A~2_combout\ & \R_dat|LDDat|IDL2A~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|LDDat|IDL2A~1_combout\,
	datab => \R_dat|LDDat|IDL2A~2_combout\,
	datad => \R_dat|LDDat|IDL2A~0_combout\,
	combout => \R_dat|LDDat|IDL2A~3_combout\);

-- Location: LCCOMB_X78_Y51_N8
\R_dat|LDDat|IDL2A~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL2A~4_combout\ = (\R_dat|LDDat|IDL2E~0_combout\ & (\R_dat|LDDat|IDL2A~3_combout\ & ((\R_decPBRSEC|RDDL3_instrucDL|s\(20)) # (!\R_dat|LDDat|not_comp2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(20),
	datab => \R_dat|LDDat|not_comp2|Equal0~0_combout\,
	datac => \R_dat|LDDat|IDL2E~0_combout\,
	datad => \R_dat|LDDat|IDL2A~3_combout\,
	combout => \R_dat|LDDat|IDL2A~4_combout\);

-- Location: FF_X78_Y51_N9
\R_dat|cortos|reg_idl2a|s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|LDDat|IDL2A~4_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|cortos|reg_idl2a|s~q\);

-- Location: LCCOMB_X78_Y51_N22
\R_dat|LDDat|IDL2M~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL2M~2_combout\ = (\R_dat|senyales_cntl|RDM5_pbr|s~q\ & (\R_decPBRSEC|RDDL3_instrucDL|s\(24) $ (!\R_dat|senyales_cntl|RDM5_rd|s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(24),
	datab => \R_dat|senyales_cntl|RDM5_pbr|s~q\,
	datad => \R_dat|senyales_cntl|RDM5_rd|s\(4),
	combout => \R_dat|LDDat|IDL2M~2_combout\);

-- Location: LCCOMB_X78_Y51_N18
\R_dat|LDDat|IDL2M~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL2M~1_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(23) & (\R_dat|senyales_cntl|RDM5_rd|s\(3) & (\R_decPBRSEC|RDDL3_instrucDL|s\(22) $ (!\R_dat|senyales_cntl|RDM5_rd|s\(2))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(23) & 
-- (!\R_dat|senyales_cntl|RDM5_rd|s\(3) & (\R_decPBRSEC|RDDL3_instrucDL|s\(22) $ (!\R_dat|senyales_cntl|RDM5_rd|s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(23),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(22),
	datac => \R_dat|senyales_cntl|RDM5_rd|s\(3),
	datad => \R_dat|senyales_cntl|RDM5_rd|s\(2),
	combout => \R_dat|LDDat|IDL2M~1_combout\);

-- Location: LCCOMB_X78_Y51_N6
\R_dat|LDDat|IDL2M~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL2M~0_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(20) & (\R_dat|senyales_cntl|RDM5_rd|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(21) $ (!\R_dat|senyales_cntl|RDM5_rd|s\(1))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(20) & 
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
	combout => \R_dat|LDDat|IDL2M~0_combout\);

-- Location: LCCOMB_X78_Y51_N0
\R_dat|LDDat|IDL2M~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL2M~3_combout\ = (\R_dat|LDDat|IDL2M~2_combout\ & (\R_dat|LDDat|IDL2M~1_combout\ & \R_dat|LDDat|IDL2M~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|LDDat|IDL2M~2_combout\,
	datab => \R_dat|LDDat|IDL2M~1_combout\,
	datad => \R_dat|LDDat|IDL2M~0_combout\,
	combout => \R_dat|LDDat|IDL2M~3_combout\);

-- Location: LCCOMB_X78_Y51_N4
\R_dat|LDDat|IDL2M~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL2M~4_combout\ = (\R_dat|LDDat|IDL2E~0_combout\ & (\R_dat|LDDat|IDL2M~3_combout\ & ((\R_decPBRSEC|RDDL3_instrucDL|s\(20)) # (!\R_dat|LDDat|not_comp2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(20),
	datab => \R_dat|LDDat|not_comp2|Equal0~0_combout\,
	datac => \R_dat|LDDat|IDL2E~0_combout\,
	datad => \R_dat|LDDat|IDL2M~3_combout\,
	combout => \R_dat|LDDat|IDL2M~4_combout\);

-- Location: FF_X78_Y51_N5
\R_dat|cortos|reg_idl2m|s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|LDDat|IDL2M~4_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|cortos|reg_idl2m|s~q\);

-- Location: LCCOMB_X79_Y51_N4
\R_dat|LDDat|IDL2F~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL2F~0_combout\ = (\R_dat|senyales_cntl|RD6_rd|s\(1) & (\R_decPBRSEC|RDDL3_instrucDL|s\(21) & (\R_dat|senyales_cntl|RD6_rd|s\(0) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(20))))) # (!\R_dat|senyales_cntl|RD6_rd|s\(1) & 
-- (!\R_decPBRSEC|RDDL3_instrucDL|s\(21) & (\R_dat|senyales_cntl|RD6_rd|s\(0) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|senyales_cntl|RD6_rd|s\(1),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(21),
	datac => \R_dat|senyales_cntl|RD6_rd|s\(0),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(20),
	combout => \R_dat|LDDat|IDL2F~0_combout\);

-- Location: LCCOMB_X75_Y51_N30
\R_dat|LDDat|IDL2F~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL2F~2_combout\ = (\R_dat|senyales_cntl|RD6_pbr|s~q\ & (\R_dat|senyales_cntl|RD6_rd|s\(4) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R_dat|senyales_cntl|RD6_rd|s\(4),
	datac => \R_dat|senyales_cntl|RD6_pbr|s~q\,
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(24),
	combout => \R_dat|LDDat|IDL2F~2_combout\);

-- Location: LCCOMB_X76_Y51_N8
\R_dat|LDDat|IDL2F~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL2F~1_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(23) & (\R_dat|senyales_cntl|RD6_rd|s\(3) & (\R_dat|senyales_cntl|RD6_rd|s\(2) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(22))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(23) & 
-- (!\R_dat|senyales_cntl|RD6_rd|s\(3) & (\R_dat|senyales_cntl|RD6_rd|s\(2) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(23),
	datab => \R_dat|senyales_cntl|RD6_rd|s\(2),
	datac => \R_dat|senyales_cntl|RD6_rd|s\(3),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(22),
	combout => \R_dat|LDDat|IDL2F~1_combout\);

-- Location: LCCOMB_X78_Y51_N28
\R_dat|LDDat|IDL2E~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL2E~1_combout\ = (\R_dat|LDDat|IDL2E~0_combout\ & ((\R_decPBRSEC|RDDL3_instrucDL|s\(20)) # (!\R_dat|LDDat|not_comp2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(20),
	datab => \R_dat|LDDat|IDL2E~0_combout\,
	datad => \R_dat|LDDat|not_comp2|Equal0~0_combout\,
	combout => \R_dat|LDDat|IDL2E~1_combout\);

-- Location: LCCOMB_X76_Y51_N24
\R_dat|LDDat|IDL2F\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL2F~combout\ = (\R_dat|LDDat|IDL2F~0_combout\ & (\R_dat|LDDat|IDL2F~2_combout\ & (\R_dat|LDDat|IDL2F~1_combout\ & \R_dat|LDDat|IDL2E~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|LDDat|IDL2F~0_combout\,
	datab => \R_dat|LDDat|IDL2F~2_combout\,
	datac => \R_dat|LDDat|IDL2F~1_combout\,
	datad => \R_dat|LDDat|IDL2E~1_combout\,
	combout => \R_dat|LDDat|IDL2F~combout\);

-- Location: LCCOMB_X76_Y51_N30
\R_dat|LDDat|IDL2E~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL2E~3_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(23) & (\R_dat|senyales_cntl|RDE7_rd|s\(3) & (\R_dat|senyales_cntl|RDE7_rd|s\(2) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(22))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(23) & 
-- (!\R_dat|senyales_cntl|RDE7_rd|s\(3) & (\R_dat|senyales_cntl|RDE7_rd|s\(2) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(23),
	datab => \R_dat|senyales_cntl|RDE7_rd|s\(3),
	datac => \R_dat|senyales_cntl|RDE7_rd|s\(2),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(22),
	combout => \R_dat|LDDat|IDL2E~3_combout\);

-- Location: LCCOMB_X79_Y51_N28
\R_dat|LDDat|IDL2E~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL2E~2_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(20) & (\R_dat|senyales_cntl|RDE7_rd|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(21) $ (!\R_dat|senyales_cntl|RDE7_rd|s\(1))))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(20) & 
-- (!\R_dat|senyales_cntl|RDE7_rd|s\(0) & (\R_decPBRSEC|RDDL3_instrucDL|s\(21) $ (!\R_dat|senyales_cntl|RDE7_rd|s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(20),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(21),
	datac => \R_dat|senyales_cntl|RDE7_rd|s\(0),
	datad => \R_dat|senyales_cntl|RDE7_rd|s\(1),
	combout => \R_dat|LDDat|IDL2E~2_combout\);

-- Location: LCCOMB_X75_Y51_N28
\R_dat|LDDat|IDL2E~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL2E~4_combout\ = (\R_dat|senyales_cntl|RDE7_pbr|s~q\ & (\R_dat|senyales_cntl|RDE7_rd|s\(4) $ (!\R_decPBRSEC|RDDL3_instrucDL|s\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R_dat|senyales_cntl|RDE7_pbr|s~q\,
	datac => \R_dat|senyales_cntl|RDE7_rd|s\(4),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(24),
	combout => \R_dat|LDDat|IDL2E~4_combout\);

-- Location: LCCOMB_X76_Y51_N14
\R_dat|LDDat|IDL2E\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|LDDat|IDL2E~combout\ = (\R_dat|LDDat|IDL2E~3_combout\ & (\R_dat|LDDat|IDL2E~2_combout\ & (\R_dat|LDDat|IDL2E~4_combout\ & \R_dat|LDDat|IDL2E~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|LDDat|IDL2E~3_combout\,
	datab => \R_dat|LDDat|IDL2E~2_combout\,
	datac => \R_dat|LDDat|IDL2E~4_combout\,
	datad => \R_dat|LDDat|IDL2E~1_combout\,
	combout => \R_dat|LDDat|IDL2E~combout\);

-- Location: LCCOMB_X76_Y51_N10
\R_dat|ins_laph|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|ins_laph|Mux0~0_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(5) & (((!\R_decPBRSEC|RDDL3_instrucDL|s\(6))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(2)))) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(5) & ((\R_decPBRSEC|RDDL3_instrucDL|s\(2)) # 
-- ((\R_decPBRSEC|RDDL3_instrucDL|s\(3)) # (\R_decPBRSEC|RDDL3_instrucDL|s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(5),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(2),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(3),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(6),
	combout => \R_dat|ins_laph|Mux0~0_combout\);

-- Location: LCCOMB_X76_Y51_N4
\R_dat|pos_laph|reg_dl_a|s~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|pos_laph|reg_dl_a|s~1_combout\ = (!\R_dat|ins_laph|Mux0~0_combout\ & (!\R_decPBRSEC|RDDL3_instrucDL|s\(4) & \R_dat|pos_laph|reg_dl_a|s~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|ins_laph|Mux0~0_combout\,
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(4),
	datac => \R_dat|pos_laph|reg_dl_a|s~0_combout\,
	combout => \R_dat|pos_laph|reg_dl_a|s~1_combout\);

-- Location: FF_X76_Y51_N5
\R_dat|pos_laph|reg_dl_a|s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_dat|pos_laph|reg_dl_a|s~1_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|pos_laph|reg_dl_a|s~q\);

-- Location: FF_X76_Y51_N19
\R_dat|pos_laph|reg_a_m|s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \R_dat|pos_laph|reg_dl_a|s~q\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_dat|pos_laph|reg_a_m|s~q\);

-- Location: LCCOMB_X76_Y51_N18
\R_dat|R_dat|RD~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~1_combout\ = (\R_dat|LDDat|IDL1A~3_combout\ & ((\R_dat|pos_laph|reg_dl_a|s~q\) # ((\R_dat|pos_laph|reg_a_m|s~q\ & \R_dat|LDDat|IDL1M~3_combout\)))) # (!\R_dat|LDDat|IDL1A~3_combout\ & (((\R_dat|pos_laph|reg_a_m|s~q\ & 
-- \R_dat|LDDat|IDL1M~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|LDDat|IDL1A~3_combout\,
	datab => \R_dat|pos_laph|reg_dl_a|s~q\,
	datac => \R_dat|pos_laph|reg_a_m|s~q\,
	datad => \R_dat|LDDat|IDL1M~3_combout\,
	combout => \R_dat|R_dat|RD~1_combout\);

-- Location: LCCOMB_X79_Y51_N24
\R_dat|R_dat|RD~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~0_combout\ = (\R_dat|pos_laph|reg_a_m|s~q\ & ((\R_dat|LDDat|IDL2M~3_combout\) # ((\R_dat|pos_laph|reg_dl_a|s~q\ & \R_dat|LDDat|IDL2A~3_combout\)))) # (!\R_dat|pos_laph|reg_a_m|s~q\ & (\R_dat|pos_laph|reg_dl_a|s~q\ & 
-- ((\R_dat|LDDat|IDL2A~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|pos_laph|reg_a_m|s~q\,
	datab => \R_dat|pos_laph|reg_dl_a|s~q\,
	datac => \R_dat|LDDat|IDL2M~3_combout\,
	datad => \R_dat|LDDat|IDL2A~3_combout\,
	combout => \R_dat|R_dat|RD~0_combout\);

-- Location: LCCOMB_X80_Y51_N0
\R_dat|R_dat|RD~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_dat|R_dat|RD~2_combout\ = (\R_dat|LDDat|IDL2E~1_combout\ & ((\R_dat|R_dat|RD~0_combout\) # ((\R_dat|LDDat|IDL1E~1_combout\ & \R_dat|R_dat|RD~1_combout\)))) # (!\R_dat|LDDat|IDL2E~1_combout\ & (\R_dat|LDDat|IDL1E~1_combout\ & 
-- (\R_dat|R_dat|RD~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_dat|LDDat|IDL2E~1_combout\,
	datab => \R_dat|LDDat|IDL1E~1_combout\,
	datac => \R_dat|R_dat|RD~1_combout\,
	datad => \R_dat|R_dat|RD~0_combout\,
	combout => \R_dat|R_dat|RD~2_combout\);

-- Location: LCCOMB_X77_Y51_N0
\R_decPBRSEC|decPBRSEC|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_decPBRSEC|decPBRSEC|Mux0~0_combout\ = (\R_decPBRSEC|RDDL3_instrucDL|s\(1) & (\R_decPBRSEC|RDDL3_instrucDL|s\(0) & ((\R_decPBRSEC|RDDL3_instrucDL|s\(2)) # (!\R_decPBRSEC|RDDL3_instrucDL|s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(1),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(3),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(2),
	datad => \R_decPBRSEC|RDDL3_instrucDL|s\(0),
	combout => \R_decPBRSEC|decPBRSEC|Mux0~0_combout\);

-- Location: LCCOMB_X77_Y51_N2
\R_Sec|senyales_cntl|RDA4_opsec|s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_Sec|senyales_cntl|RDA4_opsec|s~0_combout\ = (!\R_decPBRSEC|RDDL3_instrucDL|s\(4) & (\R_decPBRSEC|RDDL3_instrucDL|s\(6) & (\R_decPBRSEC|RDDL3_instrucDL|s\(5) & \R_decPBRSEC|decPBRSEC|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_decPBRSEC|RDDL3_instrucDL|s\(4),
	datab => \R_decPBRSEC|RDDL3_instrucDL|s\(6),
	datac => \R_decPBRSEC|RDDL3_instrucDL|s\(5),
	datad => \R_decPBRSEC|decPBRSEC|Mux0~0_combout\,
	combout => \R_Sec|senyales_cntl|RDA4_opsec|s~0_combout\);

-- Location: LCCOMB_X77_Y51_N18
\R_Sec|senyales_cntl|RDA4_opsec|s~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_Sec|senyales_cntl|RDA4_opsec|s~1_combout\ = (!\I~input_o\ & \R_Sec|senyales_cntl|RDA4_opsec|s~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I~input_o\,
	datad => \R_Sec|senyales_cntl|RDA4_opsec|s~0_combout\,
	combout => \R_Sec|senyales_cntl|RDA4_opsec|s~1_combout\);

-- Location: FF_X77_Y51_N19
\R_Sec|senyales_cntl|RDA4_opsec|s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \R_Sec|senyales_cntl|RDA4_opsec|s~1_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_Sec|senyales_cntl|RDA4_opsec|s\(3));

-- Location: LCCOMB_X80_Y51_N2
\R_lgr|inyecBDL~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \R_lgr|inyecBDL~0_combout\ = (!\R_dat|R_dat|RD~2_combout\ & ((\R_Sec|senyales_cntl|RDA4_opsec|s\(3)) # (\R_Sec|senyales_cntl|RDA4_opsec|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_Sec|senyales_cntl|RDA4_opsec|s\(3),
	datac => \R_Sec|senyales_cntl|RDA4_opsec|s~0_combout\,
	datad => \R_dat|R_dat|RD~2_combout\,
	combout => \R_lgr|inyecBDL~0_combout\);

-- Location: IOIBUF_X29_Y67_N8
\instruc[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(12),
	o => \instruc[12]~input_o\);

-- Location: IOIBUF_X31_Y67_N1
\instruc[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(13),
	o => \instruc[13]~input_o\);

-- Location: IOIBUF_X33_Y67_N1
\instruc[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(14),
	o => \instruc[14]~input_o\);

-- Location: IOIBUF_X54_Y67_N1
\instruc[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(25),
	o => \instruc[25]~input_o\);

-- Location: IOIBUF_X81_Y4_N8
\instruc[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(26),
	o => \instruc[26]~input_o\);

-- Location: IOIBUF_X81_Y7_N15
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

-- Location: IOIBUF_X47_Y0_N1
\instruc[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(29),
	o => \instruc[29]~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\instruc[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(30),
	o => \instruc[30]~input_o\);

-- Location: IOIBUF_X33_Y0_N22
\instruc[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruc(31),
	o => \instruc[31]~input_o\);

ww_C1L1 <= \C1L1~output_o\;

ww_C2L1 <= \C2L1~output_o\;

ww_C3L1 <= \C3L1~output_o\;

ww_C4L1 <= \C4L1~output_o\;

ww_C1L2 <= \C1L2~output_o\;

ww_C2L2 <= \C2L2~output_o\;

ww_C3L2 <= \C3L2~output_o\;

ww_C4L2 <= \C4L2~output_o\;

ww_bloqCP <= \bloqCP~output_o\;

ww_bloqBDL <= \bloqBDL~output_o\;

ww_inyecBDL <= \inyecBDL~output_o\;

ww_inyecDLA <= \inyecDLA~output_o\;
END structure;


