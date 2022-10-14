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

-- DATE "10/14/2022 14:25:43"

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

ENTITY 	BR IS
    PORT (
	reloj : IN std_logic;
	PE : IN std_logic;
	IDL1 : IN std_logic_vector(4 DOWNTO 0);
	IDL2 : IN std_logic_vector(4 DOWNTO 0);
	IDE : IN std_logic_vector(4 DOWNTO 0);
	DE : IN std_logic_vector(7 DOWNTO 0);
	LE1 : BUFFER std_logic_vector(7 DOWNTO 0);
	LE2 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END BR;

-- Design Ports Information
-- LE1[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LE1[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LE1[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LE1[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LE1[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LE1[5]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LE1[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LE1[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LE2[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LE2[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LE2[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LE2[3]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LE2[4]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LE2[5]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LE2[6]	=>  Location: PIN_A1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LE2[7]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDL1[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDL1[3]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDL1[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDL1[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDL1[4]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDL2[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDL2[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDL2[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDL2[0]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDL2[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DE[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reloj	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDE[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDE[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDE[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDE[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PE	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDE[4]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DE[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DE[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DE[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DE[4]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DE[5]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DE[6]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DE[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BR IS
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
SIGNAL ww_PE : std_logic;
SIGNAL ww_IDL1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_IDL2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_IDE : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_DE : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LE1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LE2 : std_logic_vector(7 DOWNTO 0);
SIGNAL \reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LE1[0]~output_o\ : std_logic;
SIGNAL \LE1[1]~output_o\ : std_logic;
SIGNAL \LE1[2]~output_o\ : std_logic;
SIGNAL \LE1[3]~output_o\ : std_logic;
SIGNAL \LE1[4]~output_o\ : std_logic;
SIGNAL \LE1[5]~output_o\ : std_logic;
SIGNAL \LE1[6]~output_o\ : std_logic;
SIGNAL \LE1[7]~output_o\ : std_logic;
SIGNAL \LE2[0]~output_o\ : std_logic;
SIGNAL \LE2[1]~output_o\ : std_logic;
SIGNAL \LE2[2]~output_o\ : std_logic;
SIGNAL \LE2[3]~output_o\ : std_logic;
SIGNAL \LE2[4]~output_o\ : std_logic;
SIGNAL \LE2[5]~output_o\ : std_logic;
SIGNAL \LE2[6]~output_o\ : std_logic;
SIGNAL \LE2[7]~output_o\ : std_logic;
SIGNAL \reloj~input_o\ : std_logic;
SIGNAL \reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \DE[0]~input_o\ : std_logic;
SIGNAL \IDE[4]~input_o\ : std_logic;
SIGNAL \IDE[0]~input_o\ : std_logic;
SIGNAL \IDE[3]~input_o\ : std_logic;
SIGNAL \IDE[2]~input_o\ : std_logic;
SIGNAL \IDE[1]~input_o\ : std_logic;
SIGNAL \mem~612_combout\ : std_logic;
SIGNAL \PE~input_o\ : std_logic;
SIGNAL \mem~613_combout\ : std_logic;
SIGNAL \mem~254_q\ : std_logic;
SIGNAL \IDL1[2]~input_o\ : std_logic;
SIGNAL \mem~606_combout\ : std_logic;
SIGNAL \mem~607_combout\ : std_logic;
SIGNAL \mem~190_q\ : std_logic;
SIGNAL \mem~610_combout\ : std_logic;
SIGNAL \mem~611_combout\ : std_logic;
SIGNAL \mem~158_q\ : std_logic;
SIGNAL \mem~608_combout\ : std_logic;
SIGNAL \mem~609_combout\ : std_logic;
SIGNAL \mem~222_q\ : std_logic;
SIGNAL \IDL1[3]~input_o\ : std_logic;
SIGNAL \mem~270_combout\ : std_logic;
SIGNAL \mem~271_combout\ : std_logic;
SIGNAL \IDL1[0]~input_o\ : std_logic;
SIGNAL \mem~618_combout\ : std_logic;
SIGNAL \mem~619_combout\ : std_logic;
SIGNAL \mem~150_q\ : std_logic;
SIGNAL \mem~616_combout\ : std_logic;
SIGNAL \mem~617_combout\ : std_logic;
SIGNAL \mem~182_q\ : std_logic;
SIGNAL \mem~272_combout\ : std_logic;
SIGNAL \mem~620_combout\ : std_logic;
SIGNAL \mem~621_combout\ : std_logic;
SIGNAL \mem~246_q\ : std_logic;
SIGNAL \mem~614_combout\ : std_logic;
SIGNAL \mem~615_combout\ : std_logic;
SIGNAL \mem~214_q\ : std_logic;
SIGNAL \mem~273_combout\ : std_logic;
SIGNAL \mem~624_combout\ : std_logic;
SIGNAL \mem~625_combout\ : std_logic;
SIGNAL \mem~206_q\ : std_logic;
SIGNAL \mem~626_combout\ : std_logic;
SIGNAL \mem~627_combout\ : std_logic;
SIGNAL \mem~142_q\ : std_logic;
SIGNAL \mem~274_combout\ : std_logic;
SIGNAL \mem~622_combout\ : std_logic;
SIGNAL \mem~623_combout\ : std_logic;
SIGNAL \mem~174_q\ : std_logic;
SIGNAL \mem~628_combout\ : std_logic;
SIGNAL \mem~629_combout\ : std_logic;
SIGNAL \mem~238_q\ : std_logic;
SIGNAL \mem~275_combout\ : std_logic;
SIGNAL \IDL1[1]~input_o\ : std_logic;
SIGNAL \mem~276_combout\ : std_logic;
SIGNAL \mem~634_combout\ : std_logic;
SIGNAL \mem~635_combout\ : std_logic;
SIGNAL \mem~166_q\ : std_logic;
SIGNAL \mem~632_combout\ : std_logic;
SIGNAL \mem~633_combout\ : std_logic;
SIGNAL \mem~198_q\ : std_logic;
SIGNAL \mem~277_combout\ : std_logic;
SIGNAL \mem~636_combout\ : std_logic;
SIGNAL \mem~637_combout\ : std_logic;
SIGNAL \mem~262_q\ : std_logic;
SIGNAL \mem~630_combout\ : std_logic;
SIGNAL \mem~631_combout\ : std_logic;
SIGNAL \mem~230_q\ : std_logic;
SIGNAL \mem~278_combout\ : std_logic;
SIGNAL \mem~279_combout\ : std_logic;
SIGNAL \IDL1[4]~input_o\ : std_logic;
SIGNAL \mem~638_combout\ : std_logic;
SIGNAL \mem~649_combout\ : std_logic;
SIGNAL \mem~14_q\ : std_logic;
SIGNAL \mem~648_combout\ : std_logic;
SIGNAL \mem~22_q\ : std_logic;
SIGNAL \mem~284_combout\ : std_logic;
SIGNAL \mem~647_combout\ : std_logic;
SIGNAL \mem~30_q\ : std_logic;
SIGNAL \mem~650_combout\ : std_logic;
SIGNAL \mem~38_q\ : std_logic;
SIGNAL \mem~285_combout\ : std_logic;
SIGNAL \mem~646_combout\ : std_logic;
SIGNAL \mem~70_q\ : std_logic;
SIGNAL \mem~643_combout\ : std_logic;
SIGNAL \mem~54_q\ : std_logic;
SIGNAL \mem~645_combout\ : std_logic;
SIGNAL \mem~46_q\ : std_logic;
SIGNAL \mem~644_combout\ : std_logic;
SIGNAL \mem~62_q\ : std_logic;
SIGNAL \mem~282_combout\ : std_logic;
SIGNAL \mem~283_combout\ : std_logic;
SIGNAL \mem~286_combout\ : std_logic;
SIGNAL \mem~641_combout\ : std_logic;
SIGNAL \mem~78_q\ : std_logic;
SIGNAL \mem~640_combout\ : std_logic;
SIGNAL \mem~86_q\ : std_logic;
SIGNAL \mem~280_combout\ : std_logic;
SIGNAL \mem~642_combout\ : std_logic;
SIGNAL \mem~102_q\ : std_logic;
SIGNAL \mem~639_combout\ : std_logic;
SIGNAL \mem~94_q\ : std_logic;
SIGNAL \mem~281_combout\ : std_logic;
SIGNAL \mem~654_combout\ : std_logic;
SIGNAL \mem~134_q\ : std_logic;
SIGNAL \mem~651_combout\ : std_logic;
SIGNAL \mem~118_q\ : std_logic;
SIGNAL \mem~653_combout\ : std_logic;
SIGNAL \mem~110_q\ : std_logic;
SIGNAL \mem~652_combout\ : std_logic;
SIGNAL \mem~126_q\ : std_logic;
SIGNAL \mem~287_combout\ : std_logic;
SIGNAL \mem~288_combout\ : std_logic;
SIGNAL \mem~289_combout\ : std_logic;
SIGNAL \mem~290_combout\ : std_logic;
SIGNAL \DE[1]~input_o\ : std_logic;
SIGNAL \mem~47_q\ : std_logic;
SIGNAL \mem~55_q\ : std_logic;
SIGNAL \mem~301_combout\ : std_logic;
SIGNAL \mem~71_q\ : std_logic;
SIGNAL \mem~63_q\ : std_logic;
SIGNAL \mem~302_combout\ : std_logic;
SIGNAL \mem~15_q\ : std_logic;
SIGNAL \mem~31_q\ : std_logic;
SIGNAL \mem~305_combout\ : std_logic;
SIGNAL \mem~23_q\ : std_logic;
SIGNAL \mem~39_q\ : std_logic;
SIGNAL \mem~306_combout\ : std_logic;
SIGNAL \mem~103_q\ : std_logic;
SIGNAL \mem~87_q\ : std_logic;
SIGNAL \mem~79_q\ : std_logic;
SIGNAL \mem~95_q\ : std_logic;
SIGNAL \mem~303_combout\ : std_logic;
SIGNAL \mem~304_combout\ : std_logic;
SIGNAL \mem~307_combout\ : std_logic;
SIGNAL \mem~111_q\ : std_logic;
SIGNAL \mem~119_q\ : std_logic;
SIGNAL \mem~308_combout\ : std_logic;
SIGNAL \mem~135_q\ : std_logic;
SIGNAL \mem~127_q\ : std_logic;
SIGNAL \mem~309_combout\ : std_logic;
SIGNAL \mem~310_combout\ : std_logic;
SIGNAL \mem~247_q\ : std_logic;
SIGNAL \mem~183_q\ : std_logic;
SIGNAL \mem~151_q\ : std_logic;
SIGNAL \mem~215_q\ : std_logic;
SIGNAL \mem~291_combout\ : std_logic;
SIGNAL \mem~292_combout\ : std_logic;
SIGNAL \mem~167_q\ : std_logic;
SIGNAL \mem~231_q\ : std_logic;
SIGNAL \mem~298_combout\ : std_logic;
SIGNAL \mem~263_q\ : std_logic;
SIGNAL \mem~199_q\ : std_logic;
SIGNAL \mem~299_combout\ : std_logic;
SIGNAL \mem~255_q\ : std_logic;
SIGNAL \mem~159_q\ : std_logic;
SIGNAL \mem~191_q\ : std_logic;
SIGNAL \mem~293_combout\ : std_logic;
SIGNAL \mem~223_q\ : std_logic;
SIGNAL \mem~294_combout\ : std_logic;
SIGNAL \mem~143_q\ : std_logic;
SIGNAL \mem~175_q\ : std_logic;
SIGNAL \mem~295_combout\ : std_logic;
SIGNAL \mem~239_q\ : std_logic;
SIGNAL \mem~207_q\ : std_logic;
SIGNAL \mem~296_combout\ : std_logic;
SIGNAL \mem~297_combout\ : std_logic;
SIGNAL \mem~300_combout\ : std_logic;
SIGNAL \mem~311_combout\ : std_logic;
SIGNAL \DE[2]~input_o\ : std_logic;
SIGNAL \mem~112_q\ : std_logic;
SIGNAL \mem~128_q\ : std_logic;
SIGNAL \mem~329_combout\ : std_logic;
SIGNAL \mem~120_q\ : std_logic;
SIGNAL \mem~136_q\ : std_logic;
SIGNAL \mem~330_combout\ : std_logic;
SIGNAL \mem~40_q\ : std_logic;
SIGNAL \mem~24_q\ : std_logic;
SIGNAL \mem~16_q\ : std_logic;
SIGNAL \mem~326_combout\ : std_logic;
SIGNAL \mem~32_q\ : std_logic;
SIGNAL \mem~327_combout\ : std_logic;
SIGNAL \mem~72_q\ : std_logic;
SIGNAL \mem~64_q\ : std_logic;
SIGNAL \mem~48_q\ : std_logic;
SIGNAL \mem~324_combout\ : std_logic;
SIGNAL \mem~56_q\ : std_logic;
SIGNAL \mem~325_combout\ : std_logic;
SIGNAL \mem~328_combout\ : std_logic;
SIGNAL \mem~80_q\ : std_logic;
SIGNAL \mem~88_q\ : std_logic;
SIGNAL \mem~322_combout\ : std_logic;
SIGNAL \mem~104_q\ : std_logic;
SIGNAL \mem~96_q\ : std_logic;
SIGNAL \mem~323_combout\ : std_logic;
SIGNAL \mem~331_combout\ : std_logic;
SIGNAL \mem~264_q\ : std_logic;
SIGNAL \mem~200_q\ : std_logic;
SIGNAL \mem~168_q\ : std_logic;
SIGNAL \mem~319_combout\ : std_logic;
SIGNAL \mem~232_q\ : std_logic;
SIGNAL \mem~320_combout\ : std_logic;
SIGNAL \mem~256_q\ : std_logic;
SIGNAL \mem~192_q\ : std_logic;
SIGNAL \mem~160_q\ : std_logic;
SIGNAL \mem~224_q\ : std_logic;
SIGNAL \mem~312_combout\ : std_logic;
SIGNAL \mem~313_combout\ : std_logic;
SIGNAL \mem~248_q\ : std_logic;
SIGNAL \mem~152_q\ : std_logic;
SIGNAL \mem~184_q\ : std_logic;
SIGNAL \mem~314_combout\ : std_logic;
SIGNAL \mem~216_q\ : std_logic;
SIGNAL \mem~315_combout\ : std_logic;
SIGNAL \mem~240_q\ : std_logic;
SIGNAL \mem~176_q\ : std_logic;
SIGNAL \mem~144_q\ : std_logic;
SIGNAL \mem~208_q\ : std_logic;
SIGNAL \mem~316_combout\ : std_logic;
SIGNAL \mem~317_combout\ : std_logic;
SIGNAL \mem~318_combout\ : std_logic;
SIGNAL \mem~321_combout\ : std_logic;
SIGNAL \mem~332_combout\ : std_logic;
SIGNAL \DE[3]~input_o\ : std_logic;
SIGNAL \mem~169_q\ : std_logic;
SIGNAL \mem~233_q\ : std_logic;
SIGNAL \mem~340_combout\ : std_logic;
SIGNAL \mem~201_q\ : std_logic;
SIGNAL \mem~265_q\ : std_logic;
SIGNAL \mem~341_combout\ : std_logic;
SIGNAL \mem~241_q\ : std_logic;
SIGNAL \mem~145_q\ : std_logic;
SIGNAL \mem~177_q\ : std_logic;
SIGNAL \mem~337_combout\ : std_logic;
SIGNAL \mem~209_q\ : std_logic;
SIGNAL \mem~338_combout\ : std_logic;
SIGNAL \mem~161_q\ : std_logic;
SIGNAL \mem~193_q\ : std_logic;
SIGNAL \mem~335_combout\ : std_logic;
SIGNAL \mem~257_q\ : std_logic;
SIGNAL \mem~225_q\ : std_logic;
SIGNAL \mem~336_combout\ : std_logic;
SIGNAL \mem~339_combout\ : std_logic;
SIGNAL \mem~153_q\ : std_logic;
SIGNAL \mem~217_q\ : std_logic;
SIGNAL \mem~333_combout\ : std_logic;
SIGNAL \mem~249_q\ : std_logic;
SIGNAL \mem~185_q\ : std_logic;
SIGNAL \mem~334_combout\ : std_logic;
SIGNAL \mem~342_combout\ : std_logic;
SIGNAL \mem~105_q\ : std_logic;
SIGNAL \mem~89_q\ : std_logic;
SIGNAL \mem~81_q\ : std_logic;
SIGNAL \mem~97_q\ : std_logic;
SIGNAL \mem~345_combout\ : std_logic;
SIGNAL \mem~346_combout\ : std_logic;
SIGNAL \mem~41_q\ : std_logic;
SIGNAL \mem~25_q\ : std_logic;
SIGNAL \mem~17_q\ : std_logic;
SIGNAL \mem~33_q\ : std_logic;
SIGNAL \mem~347_combout\ : std_logic;
SIGNAL \mem~348_combout\ : std_logic;
SIGNAL \mem~349_combout\ : std_logic;
SIGNAL \mem~137_q\ : std_logic;
SIGNAL \mem~121_q\ : std_logic;
SIGNAL \mem~113_q\ : std_logic;
SIGNAL \mem~350_combout\ : std_logic;
SIGNAL \mem~129_q\ : std_logic;
SIGNAL \mem~351_combout\ : std_logic;
SIGNAL \mem~73_q\ : std_logic;
SIGNAL \mem~49_q\ : std_logic;
SIGNAL \mem~57_q\ : std_logic;
SIGNAL \mem~343_combout\ : std_logic;
SIGNAL \mem~65_q\ : std_logic;
SIGNAL \mem~344_combout\ : std_logic;
SIGNAL \mem~352_combout\ : std_logic;
SIGNAL \mem~353_combout\ : std_logic;
SIGNAL \DE[4]~input_o\ : std_logic;
SIGNAL \mem~82_q\ : std_logic;
SIGNAL \mem~90_q\ : std_logic;
SIGNAL \mem~364_combout\ : std_logic;
SIGNAL \mem~106_q\ : std_logic;
SIGNAL \mem~98_q\ : std_logic;
SIGNAL \mem~365_combout\ : std_logic;
SIGNAL \mem~138_q\ : std_logic;
SIGNAL \mem~114_q\ : std_logic;
SIGNAL \mem~130_q\ : std_logic;
SIGNAL \mem~371_combout\ : std_logic;
SIGNAL \mem~122_q\ : std_logic;
SIGNAL \mem~372_combout\ : std_logic;
SIGNAL \mem~50_q\ : std_logic;
SIGNAL \mem~66_q\ : std_logic;
SIGNAL \mem~366_combout\ : std_logic;
SIGNAL \mem~58_q\ : std_logic;
SIGNAL \mem~74_q\ : std_logic;
SIGNAL \mem~367_combout\ : std_logic;
SIGNAL \mem~42_q\ : std_logic;
SIGNAL \mem~26_q\ : std_logic;
SIGNAL \mem~18_q\ : std_logic;
SIGNAL \mem~368_combout\ : std_logic;
SIGNAL \mem~34_q\ : std_logic;
SIGNAL \mem~369_combout\ : std_logic;
SIGNAL \mem~370_combout\ : std_logic;
SIGNAL \mem~373_combout\ : std_logic;
SIGNAL \mem~146_q\ : std_logic;
SIGNAL \mem~210_q\ : std_logic;
SIGNAL \mem~358_combout\ : std_logic;
SIGNAL \mem~178_q\ : std_logic;
SIGNAL \mem~242_q\ : std_logic;
SIGNAL \mem~359_combout\ : std_logic;
SIGNAL \mem~154_q\ : std_logic;
SIGNAL \mem~186_q\ : std_logic;
SIGNAL \mem~356_combout\ : std_logic;
SIGNAL \mem~250_q\ : std_logic;
SIGNAL \mem~218_q\ : std_logic;
SIGNAL \mem~357_combout\ : std_logic;
SIGNAL \mem~360_combout\ : std_logic;
SIGNAL \mem~258_q\ : std_logic;
SIGNAL \mem~194_q\ : std_logic;
SIGNAL \mem~162_q\ : std_logic;
SIGNAL \mem~226_q\ : std_logic;
SIGNAL \mem~354_combout\ : std_logic;
SIGNAL \mem~355_combout\ : std_logic;
SIGNAL \mem~266_q\ : std_logic;
SIGNAL \mem~202_q\ : std_logic;
SIGNAL \mem~170_q\ : std_logic;
SIGNAL \mem~361_combout\ : std_logic;
SIGNAL \mem~234_q\ : std_logic;
SIGNAL \mem~362_combout\ : std_logic;
SIGNAL \mem~363_combout\ : std_logic;
SIGNAL \mem~374_combout\ : std_logic;
SIGNAL \DE[5]~input_o\ : std_logic;
SIGNAL \mem~123_q\ : std_logic;
SIGNAL \mem~115_q\ : std_logic;
SIGNAL \mem~392_combout\ : std_logic;
SIGNAL \mem~139_q\ : std_logic;
SIGNAL \mem~131_q\ : std_logic;
SIGNAL \mem~393_combout\ : std_logic;
SIGNAL \mem~107_q\ : std_logic;
SIGNAL \mem~91_q\ : std_logic;
SIGNAL \mem~83_q\ : std_logic;
SIGNAL \mem~99_q\ : std_logic;
SIGNAL \mem~387_combout\ : std_logic;
SIGNAL \mem~388_combout\ : std_logic;
SIGNAL \mem~19_q\ : std_logic;
SIGNAL \mem~35_q\ : std_logic;
SIGNAL \mem~389_combout\ : std_logic;
SIGNAL \mem~27_q\ : std_logic;
SIGNAL \mem~43_q\ : std_logic;
SIGNAL \mem~390_combout\ : std_logic;
SIGNAL \mem~391_combout\ : std_logic;
SIGNAL \mem~75_q\ : std_logic;
SIGNAL \mem~67_q\ : std_logic;
SIGNAL \mem~51_q\ : std_logic;
SIGNAL \mem~59_q\ : std_logic;
SIGNAL \mem~385_combout\ : std_logic;
SIGNAL \mem~386_combout\ : std_logic;
SIGNAL \mem~394_combout\ : std_logic;
SIGNAL \mem~235_q\ : std_logic;
SIGNAL \mem~171_q\ : std_logic;
SIGNAL \mem~382_combout\ : std_logic;
SIGNAL \mem~203_q\ : std_logic;
SIGNAL \mem~267_q\ : std_logic;
SIGNAL \mem~383_combout\ : std_logic;
SIGNAL \mem~147_q\ : std_logic;
SIGNAL \mem~179_q\ : std_logic;
SIGNAL \mem~379_combout\ : std_logic;
SIGNAL \mem~243_q\ : std_logic;
SIGNAL \mem~211_q\ : std_logic;
SIGNAL \mem~380_combout\ : std_logic;
SIGNAL \mem~259_q\ : std_logic;
SIGNAL \mem~163_q\ : std_logic;
SIGNAL \mem~195_q\ : std_logic;
SIGNAL \mem~377_combout\ : std_logic;
SIGNAL \mem~227_q\ : std_logic;
SIGNAL \mem~378_combout\ : std_logic;
SIGNAL \mem~381_combout\ : std_logic;
SIGNAL \mem~155_q\ : std_logic;
SIGNAL \mem~219_q\ : std_logic;
SIGNAL \mem~375_combout\ : std_logic;
SIGNAL \mem~187_q\ : std_logic;
SIGNAL \mem~251_q\ : std_logic;
SIGNAL \mem~376_combout\ : std_logic;
SIGNAL \mem~384_combout\ : std_logic;
SIGNAL \mem~395_combout\ : std_logic;
SIGNAL \DE[6]~input_o\ : std_logic;
SIGNAL \mem~84_q\ : std_logic;
SIGNAL \mem~92_q\ : std_logic;
SIGNAL \mem~406_combout\ : std_logic;
SIGNAL \mem~100_q\ : std_logic;
SIGNAL \mem~108_q\ : std_logic;
SIGNAL \mem~407_combout\ : std_logic;
SIGNAL \mem~68_q\ : std_logic;
SIGNAL \mem~52_q\ : std_logic;
SIGNAL \mem~408_combout\ : std_logic;
SIGNAL \mem~60_q\ : std_logic;
SIGNAL \mem~76_q\ : std_logic;
SIGNAL \mem~409_combout\ : std_logic;
SIGNAL \mem~44_q\ : std_logic;
SIGNAL \mem~20_q\ : std_logic;
SIGNAL \mem~28_q\ : std_logic;
SIGNAL \mem~410_combout\ : std_logic;
SIGNAL \mem~36_q\ : std_logic;
SIGNAL \mem~411_combout\ : std_logic;
SIGNAL \mem~412_combout\ : std_logic;
SIGNAL \mem~116_q\ : std_logic;
SIGNAL \mem~132_q\ : std_logic;
SIGNAL \mem~413_combout\ : std_logic;
SIGNAL \mem~140_q\ : std_logic;
SIGNAL \mem~124_q\ : std_logic;
SIGNAL \mem~414_combout\ : std_logic;
SIGNAL \mem~415_combout\ : std_logic;
SIGNAL \mem~244_q\ : std_logic;
SIGNAL \mem~180_q\ : std_logic;
SIGNAL \mem~148_q\ : std_logic;
SIGNAL \mem~212_q\ : std_logic;
SIGNAL \mem~400_combout\ : std_logic;
SIGNAL \mem~401_combout\ : std_logic;
SIGNAL \mem~252_q\ : std_logic;
SIGNAL \mem~156_q\ : std_logic;
SIGNAL \mem~188_q\ : std_logic;
SIGNAL \mem~398_combout\ : std_logic;
SIGNAL \mem~220_q\ : std_logic;
SIGNAL \mem~399_combout\ : std_logic;
SIGNAL \mem~402_combout\ : std_logic;
SIGNAL \mem~172_q\ : std_logic;
SIGNAL \mem~204_q\ : std_logic;
SIGNAL \mem~403_combout\ : std_logic;
SIGNAL \mem~268_q\ : std_logic;
SIGNAL \mem~236_q\ : std_logic;
SIGNAL \mem~404_combout\ : std_logic;
SIGNAL \mem~260_q\ : std_logic;
SIGNAL \mem~196_q\ : std_logic;
SIGNAL \mem~164_q\ : std_logic;
SIGNAL \mem~228_q\ : std_logic;
SIGNAL \mem~396_combout\ : std_logic;
SIGNAL \mem~397_combout\ : std_logic;
SIGNAL \mem~405_combout\ : std_logic;
SIGNAL \mem~416_combout\ : std_logic;
SIGNAL \DE[7]~input_o\ : std_logic;
SIGNAL \mem~221_q\ : std_logic;
SIGNAL \mem~157_q\ : std_logic;
SIGNAL \mem~417_combout\ : std_logic;
SIGNAL \mem~189_q\ : std_logic;
SIGNAL \mem~253_q\ : std_logic;
SIGNAL \mem~418_combout\ : std_logic;
SIGNAL \mem~173_q\ : std_logic;
SIGNAL \mem~237_q\ : std_logic;
SIGNAL \mem~424_combout\ : std_logic;
SIGNAL \mem~205_q\ : std_logic;
SIGNAL \mem~269_q\ : std_logic;
SIGNAL \mem~425_combout\ : std_logic;
SIGNAL \mem~165_q\ : std_logic;
SIGNAL \mem~197_q\ : std_logic;
SIGNAL \mem~419_combout\ : std_logic;
SIGNAL \mem~261_q\ : std_logic;
SIGNAL \mem~229_q\ : std_logic;
SIGNAL \mem~420_combout\ : std_logic;
SIGNAL \mem~245_q\ : std_logic;
SIGNAL \mem~149_q\ : std_logic;
SIGNAL \mem~181_q\ : std_logic;
SIGNAL \mem~421_combout\ : std_logic;
SIGNAL \mem~213_q\ : std_logic;
SIGNAL \mem~422_combout\ : std_logic;
SIGNAL \mem~423_combout\ : std_logic;
SIGNAL \mem~426_combout\ : std_logic;
SIGNAL \mem~61_q\ : std_logic;
SIGNAL \mem~53_q\ : std_logic;
SIGNAL \mem~427_combout\ : std_logic;
SIGNAL \mem~69_q\ : std_logic;
SIGNAL \mem~77_q\ : std_logic;
SIGNAL \mem~428_combout\ : std_logic;
SIGNAL \mem~125_q\ : std_logic;
SIGNAL \mem~117_q\ : std_logic;
SIGNAL \mem~434_combout\ : std_logic;
SIGNAL \mem~141_q\ : std_logic;
SIGNAL \mem~133_q\ : std_logic;
SIGNAL \mem~435_combout\ : std_logic;
SIGNAL \mem~85_q\ : std_logic;
SIGNAL \mem~101_q\ : std_logic;
SIGNAL \mem~429_combout\ : std_logic;
SIGNAL \mem~93_q\ : std_logic;
SIGNAL \mem~109_q\ : std_logic;
SIGNAL \mem~430_combout\ : std_logic;
SIGNAL \mem~45_q\ : std_logic;
SIGNAL \mem~29_q\ : std_logic;
SIGNAL \mem~21_q\ : std_logic;
SIGNAL \mem~37_q\ : std_logic;
SIGNAL \mem~431_combout\ : std_logic;
SIGNAL \mem~432_combout\ : std_logic;
SIGNAL \mem~433_combout\ : std_logic;
SIGNAL \mem~436_combout\ : std_logic;
SIGNAL \mem~437_combout\ : std_logic;
SIGNAL \IDL2[0]~input_o\ : std_logic;
SIGNAL \IDL2[1]~input_o\ : std_logic;
SIGNAL \mem~455_combout\ : std_logic;
SIGNAL \mem~456_combout\ : std_logic;
SIGNAL \IDL2[3]~input_o\ : std_logic;
SIGNAL \mem~452_combout\ : std_logic;
SIGNAL \mem~453_combout\ : std_logic;
SIGNAL \IDL2[2]~input_o\ : std_logic;
SIGNAL \mem~450_combout\ : std_logic;
SIGNAL \mem~451_combout\ : std_logic;
SIGNAL \mem~454_combout\ : std_logic;
SIGNAL \mem~448_combout\ : std_logic;
SIGNAL \mem~449_combout\ : std_logic;
SIGNAL \mem~457_combout\ : std_logic;
SIGNAL \IDL2[4]~input_o\ : std_logic;
SIGNAL \mem~445_combout\ : std_logic;
SIGNAL \mem~446_combout\ : std_logic;
SIGNAL \mem~440_combout\ : std_logic;
SIGNAL \mem~441_combout\ : std_logic;
SIGNAL \mem~442_combout\ : std_logic;
SIGNAL \mem~443_combout\ : std_logic;
SIGNAL \mem~444_combout\ : std_logic;
SIGNAL \mem~438_combout\ : std_logic;
SIGNAL \mem~439_combout\ : std_logic;
SIGNAL \mem~447_combout\ : std_logic;
SIGNAL \mem~458_combout\ : std_logic;
SIGNAL \mem~469_combout\ : std_logic;
SIGNAL \mem~470_combout\ : std_logic;
SIGNAL \mem~471_combout\ : std_logic;
SIGNAL \mem~472_combout\ : std_logic;
SIGNAL \mem~473_combout\ : std_logic;
SIGNAL \mem~474_combout\ : std_logic;
SIGNAL \mem~475_combout\ : std_logic;
SIGNAL \mem~476_combout\ : std_logic;
SIGNAL \mem~477_combout\ : std_logic;
SIGNAL \mem~478_combout\ : std_logic;
SIGNAL \mem~459_combout\ : std_logic;
SIGNAL \mem~460_combout\ : std_logic;
SIGNAL \mem~466_combout\ : std_logic;
SIGNAL \mem~467_combout\ : std_logic;
SIGNAL \mem~461_combout\ : std_logic;
SIGNAL \mem~462_combout\ : std_logic;
SIGNAL \mem~463_combout\ : std_logic;
SIGNAL \mem~464_combout\ : std_logic;
SIGNAL \mem~465_combout\ : std_logic;
SIGNAL \mem~468_combout\ : std_logic;
SIGNAL \mem~479_combout\ : std_logic;
SIGNAL \mem~494_combout\ : std_logic;
SIGNAL \mem~495_combout\ : std_logic;
SIGNAL \mem~492_combout\ : std_logic;
SIGNAL \mem~493_combout\ : std_logic;
SIGNAL \mem~496_combout\ : std_logic;
SIGNAL \mem~490_combout\ : std_logic;
SIGNAL \mem~491_combout\ : std_logic;
SIGNAL \mem~497_combout\ : std_logic;
SIGNAL \mem~498_combout\ : std_logic;
SIGNAL \mem~499_combout\ : std_logic;
SIGNAL \mem~480_combout\ : std_logic;
SIGNAL \mem~481_combout\ : std_logic;
SIGNAL \mem~487_combout\ : std_logic;
SIGNAL \mem~488_combout\ : std_logic;
SIGNAL \mem~484_combout\ : std_logic;
SIGNAL \mem~485_combout\ : std_logic;
SIGNAL \mem~482_combout\ : std_logic;
SIGNAL \mem~483_combout\ : std_logic;
SIGNAL \mem~486_combout\ : std_logic;
SIGNAL \mem~489_combout\ : std_logic;
SIGNAL \mem~500_combout\ : std_logic;
SIGNAL \mem~501_combout\ : std_logic;
SIGNAL \mem~502_combout\ : std_logic;
SIGNAL \mem~508_combout\ : std_logic;
SIGNAL \mem~509_combout\ : std_logic;
SIGNAL \mem~505_combout\ : std_logic;
SIGNAL \mem~506_combout\ : std_logic;
SIGNAL \mem~503_combout\ : std_logic;
SIGNAL \mem~504_combout\ : std_logic;
SIGNAL \mem~507_combout\ : std_logic;
SIGNAL \mem~510_combout\ : std_logic;
SIGNAL \mem~511_combout\ : std_logic;
SIGNAL \mem~512_combout\ : std_logic;
SIGNAL \mem~518_combout\ : std_logic;
SIGNAL \mem~519_combout\ : std_logic;
SIGNAL \mem~513_combout\ : std_logic;
SIGNAL \mem~514_combout\ : std_logic;
SIGNAL \mem~515_combout\ : std_logic;
SIGNAL \mem~516_combout\ : std_logic;
SIGNAL \mem~517_combout\ : std_logic;
SIGNAL \mem~520_combout\ : std_logic;
SIGNAL \mem~521_combout\ : std_logic;
SIGNAL \mem~532_combout\ : std_logic;
SIGNAL \mem~533_combout\ : std_logic;
SIGNAL \mem~534_combout\ : std_logic;
SIGNAL \mem~535_combout\ : std_logic;
SIGNAL \mem~536_combout\ : std_logic;
SIGNAL \mem~537_combout\ : std_logic;
SIGNAL \mem~538_combout\ : std_logic;
SIGNAL \mem~539_combout\ : std_logic;
SIGNAL \mem~540_combout\ : std_logic;
SIGNAL \mem~541_combout\ : std_logic;
SIGNAL \mem~522_combout\ : std_logic;
SIGNAL \mem~523_combout\ : std_logic;
SIGNAL \mem~524_combout\ : std_logic;
SIGNAL \mem~525_combout\ : std_logic;
SIGNAL \mem~526_combout\ : std_logic;
SIGNAL \mem~527_combout\ : std_logic;
SIGNAL \mem~528_combout\ : std_logic;
SIGNAL \mem~529_combout\ : std_logic;
SIGNAL \mem~530_combout\ : std_logic;
SIGNAL \mem~531_combout\ : std_logic;
SIGNAL \mem~542_combout\ : std_logic;
SIGNAL \mem~560_combout\ : std_logic;
SIGNAL \mem~561_combout\ : std_logic;
SIGNAL \mem~557_combout\ : std_logic;
SIGNAL \mem~558_combout\ : std_logic;
SIGNAL \mem~555_combout\ : std_logic;
SIGNAL \mem~556_combout\ : std_logic;
SIGNAL \mem~559_combout\ : std_logic;
SIGNAL \mem~553_combout\ : std_logic;
SIGNAL \mem~554_combout\ : std_logic;
SIGNAL \mem~562_combout\ : std_logic;
SIGNAL \mem~550_combout\ : std_logic;
SIGNAL \mem~551_combout\ : std_logic;
SIGNAL \mem~543_combout\ : std_logic;
SIGNAL \mem~544_combout\ : std_logic;
SIGNAL \mem~547_combout\ : std_logic;
SIGNAL \mem~548_combout\ : std_logic;
SIGNAL \mem~545_combout\ : std_logic;
SIGNAL \mem~546_combout\ : std_logic;
SIGNAL \mem~549_combout\ : std_logic;
SIGNAL \mem~552_combout\ : std_logic;
SIGNAL \mem~563_combout\ : std_logic;
SIGNAL \mem~581_combout\ : std_logic;
SIGNAL \mem~582_combout\ : std_logic;
SIGNAL \mem~574_combout\ : std_logic;
SIGNAL \mem~575_combout\ : std_logic;
SIGNAL \mem~576_combout\ : std_logic;
SIGNAL \mem~577_combout\ : std_logic;
SIGNAL \mem~578_combout\ : std_logic;
SIGNAL \mem~579_combout\ : std_logic;
SIGNAL \mem~580_combout\ : std_logic;
SIGNAL \mem~583_combout\ : std_logic;
SIGNAL \mem~564_combout\ : std_logic;
SIGNAL \mem~565_combout\ : std_logic;
SIGNAL \mem~571_combout\ : std_logic;
SIGNAL \mem~572_combout\ : std_logic;
SIGNAL \mem~568_combout\ : std_logic;
SIGNAL \mem~569_combout\ : std_logic;
SIGNAL \mem~566_combout\ : std_logic;
SIGNAL \mem~567_combout\ : std_logic;
SIGNAL \mem~570_combout\ : std_logic;
SIGNAL \mem~573_combout\ : std_logic;
SIGNAL \mem~584_combout\ : std_logic;
SIGNAL \mem~599_combout\ : std_logic;
SIGNAL \mem~600_combout\ : std_logic;
SIGNAL \mem~597_combout\ : std_logic;
SIGNAL \mem~598_combout\ : std_logic;
SIGNAL \mem~601_combout\ : std_logic;
SIGNAL \mem~595_combout\ : std_logic;
SIGNAL \mem~596_combout\ : std_logic;
SIGNAL \mem~602_combout\ : std_logic;
SIGNAL \mem~603_combout\ : std_logic;
SIGNAL \mem~604_combout\ : std_logic;
SIGNAL \mem~592_combout\ : std_logic;
SIGNAL \mem~593_combout\ : std_logic;
SIGNAL \mem~585_combout\ : std_logic;
SIGNAL \mem~586_combout\ : std_logic;
SIGNAL \mem~589_combout\ : std_logic;
SIGNAL \mem~590_combout\ : std_logic;
SIGNAL \mem~587_combout\ : std_logic;
SIGNAL \mem~588_combout\ : std_logic;
SIGNAL \mem~591_combout\ : std_logic;
SIGNAL \mem~594_combout\ : std_logic;
SIGNAL \mem~605_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reloj <= reloj;
ww_PE <= PE;
ww_IDL1 <= IDL1;
ww_IDL2 <= IDL2;
ww_IDE <= IDE;
ww_DE <= DE;
LE1 <= ww_LE1;
LE2 <= ww_LE2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reloj~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X44_Y67_N16
\LE1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~290_combout\,
	devoe => ww_devoe,
	o => \LE1[0]~output_o\);

-- Location: IOOBUF_X31_Y67_N2
\LE1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~311_combout\,
	devoe => ww_devoe,
	o => \LE1[1]~output_o\);

-- Location: IOOBUF_X22_Y67_N2
\LE1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~332_combout\,
	devoe => ww_devoe,
	o => \LE1[2]~output_o\);

-- Location: IOOBUF_X31_Y67_N16
\LE1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~353_combout\,
	devoe => ww_devoe,
	o => \LE1[3]~output_o\);

-- Location: IOOBUF_X33_Y67_N9
\LE1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~374_combout\,
	devoe => ww_devoe,
	o => \LE1[4]~output_o\);

-- Location: IOOBUF_X40_Y67_N2
\LE1[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~395_combout\,
	devoe => ww_devoe,
	o => \LE1[5]~output_o\);

-- Location: IOOBUF_X42_Y67_N16
\LE1[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~416_combout\,
	devoe => ww_devoe,
	o => \LE1[6]~output_o\);

-- Location: IOOBUF_X42_Y67_N2
\LE1[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~437_combout\,
	devoe => ww_devoe,
	o => \LE1[7]~output_o\);

-- Location: IOOBUF_X26_Y67_N2
\LE2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~458_combout\,
	devoe => ww_devoe,
	o => \LE2[0]~output_o\);

-- Location: IOOBUF_X29_Y67_N2
\LE2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~479_combout\,
	devoe => ww_devoe,
	o => \LE2[1]~output_o\);

-- Location: IOOBUF_X26_Y67_N23
\LE2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~500_combout\,
	devoe => ww_devoe,
	o => \LE2[2]~output_o\);

-- Location: IOOBUF_X22_Y67_N9
\LE2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~521_combout\,
	devoe => ww_devoe,
	o => \LE2[3]~output_o\);

-- Location: IOOBUF_X26_Y67_N16
\LE2[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~542_combout\,
	devoe => ww_devoe,
	o => \LE2[4]~output_o\);

-- Location: IOOBUF_X29_Y67_N9
\LE2[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~563_combout\,
	devoe => ww_devoe,
	o => \LE2[5]~output_o\);

-- Location: IOOBUF_X26_Y67_N9
\LE2[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~584_combout\,
	devoe => ww_devoe,
	o => \LE2[6]~output_o\);

-- Location: IOOBUF_X19_Y67_N2
\LE2[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem~605_combout\,
	devoe => ww_devoe,
	o => \LE2[7]~output_o\);

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

-- Location: IOIBUF_X31_Y67_N8
\DE[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DE(0),
	o => \DE[0]~input_o\);

-- Location: IOIBUF_X29_Y67_N22
\IDE[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDE(4),
	o => \IDE[4]~input_o\);

-- Location: IOIBUF_X47_Y67_N8
\IDE[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDE(0),
	o => \IDE[0]~input_o\);

-- Location: IOIBUF_X44_Y67_N8
\IDE[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDE(3),
	o => \IDE[3]~input_o\);

-- Location: IOIBUF_X47_Y67_N1
\IDE[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDE(2),
	o => \IDE[2]~input_o\);

-- Location: IOIBUF_X49_Y67_N1
\IDE[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDE(1),
	o => \IDE[1]~input_o\);

-- Location: LCCOMB_X37_Y57_N14
\mem~612\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~612_combout\ = (!\IDE[0]~input_o\ & (\IDE[3]~input_o\ & (\IDE[2]~input_o\ & \IDE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[0]~input_o\,
	datab => \IDE[3]~input_o\,
	datac => \IDE[2]~input_o\,
	datad => \IDE[1]~input_o\,
	combout => \mem~612_combout\);

-- Location: IOIBUF_X42_Y67_N8
\PE~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PE,
	o => \PE~input_o\);

-- Location: LCCOMB_X33_Y57_N2
\mem~613\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~613_combout\ = (\IDE[4]~input_o\ & (\mem~612_combout\ & \PE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datac => \mem~612_combout\,
	datad => \PE~input_o\,
	combout => \mem~613_combout\);

-- Location: FF_X33_Y60_N9
\mem~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~254_q\);

-- Location: IOIBUF_X24_Y67_N1
\IDL1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDL1(2),
	o => \IDL1[2]~input_o\);

-- Location: LCCOMB_X37_Y57_N24
\mem~606\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~606_combout\ = (!\IDE[0]~input_o\ & (!\IDE[3]~input_o\ & (\IDE[2]~input_o\ & \IDE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[0]~input_o\,
	datab => \IDE[3]~input_o\,
	datac => \IDE[2]~input_o\,
	datad => \IDE[1]~input_o\,
	combout => \mem~606_combout\);

-- Location: LCCOMB_X36_Y57_N0
\mem~607\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~607_combout\ = (\IDE[4]~input_o\ & (\PE~input_o\ & \mem~606_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datac => \PE~input_o\,
	datad => \mem~606_combout\,
	combout => \mem~607_combout\);

-- Location: FF_X34_Y60_N9
\mem~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~190_q\);

-- Location: LCCOMB_X37_Y57_N20
\mem~610\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~610_combout\ = (!\IDE[0]~input_o\ & (!\IDE[3]~input_o\ & (!\IDE[2]~input_o\ & \IDE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[0]~input_o\,
	datab => \IDE[3]~input_o\,
	datac => \IDE[2]~input_o\,
	datad => \IDE[1]~input_o\,
	combout => \mem~610_combout\);

-- Location: LCCOMB_X33_Y57_N16
\mem~611\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~611_combout\ = (\IDE[4]~input_o\ & (\mem~610_combout\ & \PE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datac => \mem~610_combout\,
	datad => \PE~input_o\,
	combout => \mem~611_combout\);

-- Location: FF_X32_Y60_N3
\mem~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~158_q\);

-- Location: LCCOMB_X37_Y57_N18
\mem~608\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~608_combout\ = (!\IDE[0]~input_o\ & (\IDE[3]~input_o\ & (!\IDE[2]~input_o\ & \IDE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[0]~input_o\,
	datab => \IDE[3]~input_o\,
	datac => \IDE[2]~input_o\,
	datad => \IDE[1]~input_o\,
	combout => \mem~608_combout\);

-- Location: LCCOMB_X36_Y57_N18
\mem~609\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~609_combout\ = (\IDE[4]~input_o\ & (\PE~input_o\ & \mem~608_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datac => \PE~input_o\,
	datad => \mem~608_combout\,
	combout => \mem~609_combout\);

-- Location: FF_X32_Y60_N25
\mem~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~222_q\);

-- Location: IOIBUF_X42_Y67_N22
\IDL1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDL1(3),
	o => \IDL1[3]~input_o\);

-- Location: LCCOMB_X32_Y60_N24
\mem~270\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~270_combout\ = (\IDL1[2]~input_o\ & (((\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & ((\IDL1[3]~input_o\ & ((\mem~222_q\))) # (!\IDL1[3]~input_o\ & (\mem~158_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \mem~158_q\,
	datac => \mem~222_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~270_combout\);

-- Location: LCCOMB_X34_Y60_N8
\mem~271\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~271_combout\ = (\IDL1[2]~input_o\ & ((\mem~270_combout\ & (\mem~254_q\)) # (!\mem~270_combout\ & ((\mem~190_q\))))) # (!\IDL1[2]~input_o\ & (((\mem~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~254_q\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~190_q\,
	datad => \mem~270_combout\,
	combout => \mem~271_combout\);

-- Location: IOIBUF_X17_Y67_N15
\IDL1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDL1(0),
	o => \IDL1[0]~input_o\);

-- Location: LCCOMB_X37_Y57_N4
\mem~618\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~618_combout\ = (\IDE[0]~input_o\ & (!\IDE[3]~input_o\ & (!\IDE[2]~input_o\ & !\IDE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[0]~input_o\,
	datab => \IDE[3]~input_o\,
	datac => \IDE[2]~input_o\,
	datad => \IDE[1]~input_o\,
	combout => \mem~618_combout\);

-- Location: LCCOMB_X33_Y57_N28
\mem~619\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~619_combout\ = (\IDE[4]~input_o\ & (\mem~618_combout\ & \PE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datac => \mem~618_combout\,
	datad => \PE~input_o\,
	combout => \mem~619_combout\);

-- Location: FF_X31_Y63_N11
\mem~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~150_q\);

-- Location: LCCOMB_X37_Y57_N10
\mem~616\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~616_combout\ = (\IDE[0]~input_o\ & (!\IDE[3]~input_o\ & (\IDE[2]~input_o\ & !\IDE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[0]~input_o\,
	datab => \IDE[3]~input_o\,
	datac => \IDE[2]~input_o\,
	datad => \IDE[1]~input_o\,
	combout => \mem~616_combout\);

-- Location: LCCOMB_X36_Y57_N6
\mem~617\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~617_combout\ = (\IDE[4]~input_o\ & (\mem~616_combout\ & \PE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~616_combout\,
	datac => \PE~input_o\,
	combout => \mem~617_combout\);

-- Location: FF_X31_Y63_N25
\mem~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~182_q\);

-- Location: LCCOMB_X31_Y63_N24
\mem~272\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~272_combout\ = (\IDL1[2]~input_o\ & (((\mem~182_q\) # (\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & (\mem~150_q\ & ((!\IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~150_q\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~182_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~272_combout\);

-- Location: LCCOMB_X37_Y57_N30
\mem~620\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~620_combout\ = (\IDE[0]~input_o\ & (\IDE[3]~input_o\ & (\IDE[2]~input_o\ & !\IDE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[0]~input_o\,
	datab => \IDE[3]~input_o\,
	datac => \IDE[2]~input_o\,
	datad => \IDE[1]~input_o\,
	combout => \mem~620_combout\);

-- Location: LCCOMB_X33_Y57_N6
\mem~621\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~621_combout\ = (\IDE[4]~input_o\ & (\mem~620_combout\ & \PE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~620_combout\,
	datad => \PE~input_o\,
	combout => \mem~621_combout\);

-- Location: FF_X30_Y63_N3
\mem~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~246_q\);

-- Location: LCCOMB_X37_Y57_N0
\mem~614\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~614_combout\ = (\IDE[0]~input_o\ & (\IDE[3]~input_o\ & (!\IDE[2]~input_o\ & !\IDE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[0]~input_o\,
	datab => \IDE[3]~input_o\,
	datac => \IDE[2]~input_o\,
	datad => \IDE[1]~input_o\,
	combout => \mem~614_combout\);

-- Location: LCCOMB_X36_Y57_N20
\mem~615\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~615_combout\ = (\IDE[4]~input_o\ & (\mem~614_combout\ & \PE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~614_combout\,
	datac => \PE~input_o\,
	combout => \mem~615_combout\);

-- Location: FF_X30_Y63_N1
\mem~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~214_q\);

-- Location: LCCOMB_X30_Y63_N0
\mem~273\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~273_combout\ = (\mem~272_combout\ & ((\mem~246_q\) # ((!\IDL1[3]~input_o\)))) # (!\mem~272_combout\ & (((\mem~214_q\ & \IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~272_combout\,
	datab => \mem~246_q\,
	datac => \mem~214_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~273_combout\);

-- Location: LCCOMB_X37_Y57_N8
\mem~624\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~624_combout\ = (!\IDE[0]~input_o\ & (\IDE[3]~input_o\ & (!\IDE[2]~input_o\ & !\IDE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[0]~input_o\,
	datab => \IDE[3]~input_o\,
	datac => \IDE[2]~input_o\,
	datad => \IDE[1]~input_o\,
	combout => \mem~624_combout\);

-- Location: LCCOMB_X36_Y57_N10
\mem~625\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~625_combout\ = (\IDE[4]~input_o\ & (\mem~624_combout\ & \PE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~624_combout\,
	datac => \PE~input_o\,
	combout => \mem~625_combout\);

-- Location: FF_X32_Y61_N25
\mem~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~206_q\);

-- Location: LCCOMB_X37_Y57_N2
\mem~626\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~626_combout\ = (!\IDE[0]~input_o\ & (!\IDE[3]~input_o\ & (!\IDE[2]~input_o\ & !\IDE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[0]~input_o\,
	datab => \IDE[3]~input_o\,
	datac => \IDE[2]~input_o\,
	datad => \IDE[1]~input_o\,
	combout => \mem~626_combout\);

-- Location: LCCOMB_X33_Y57_N24
\mem~627\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~627_combout\ = (\IDE[4]~input_o\ & (\mem~626_combout\ & \PE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datac => \mem~626_combout\,
	datad => \PE~input_o\,
	combout => \mem~627_combout\);

-- Location: FF_X32_Y61_N11
\mem~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~142_q\);

-- Location: LCCOMB_X32_Y61_N24
\mem~274\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~274_combout\ = (\IDL1[2]~input_o\ & (\IDL1[3]~input_o\)) # (!\IDL1[2]~input_o\ & ((\IDL1[3]~input_o\ & (\mem~206_q\)) # (!\IDL1[3]~input_o\ & ((\mem~142_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \IDL1[3]~input_o\,
	datac => \mem~206_q\,
	datad => \mem~142_q\,
	combout => \mem~274_combout\);

-- Location: LCCOMB_X40_Y59_N16
\mem~622\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~622_combout\ = (\IDE[2]~input_o\ & (!\IDE[0]~input_o\ & (!\IDE[1]~input_o\ & !\IDE[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[2]~input_o\,
	datab => \IDE[0]~input_o\,
	datac => \IDE[1]~input_o\,
	datad => \IDE[3]~input_o\,
	combout => \mem~622_combout\);

-- Location: LCCOMB_X36_Y57_N16
\mem~623\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~623_combout\ = (\IDE[4]~input_o\ & (\PE~input_o\ & \mem~622_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datac => \PE~input_o\,
	datad => \mem~622_combout\,
	combout => \mem~623_combout\);

-- Location: FF_X33_Y61_N9
\mem~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~174_q\);

-- Location: LCCOMB_X37_Y57_N28
\mem~628\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~628_combout\ = (!\IDE[0]~input_o\ & (\IDE[3]~input_o\ & (\IDE[2]~input_o\ & !\IDE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[0]~input_o\,
	datab => \IDE[3]~input_o\,
	datac => \IDE[2]~input_o\,
	datad => \IDE[1]~input_o\,
	combout => \mem~628_combout\);

-- Location: LCCOMB_X33_Y57_N10
\mem~629\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~629_combout\ = (\IDE[4]~input_o\ & (\mem~628_combout\ & \PE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~628_combout\,
	datad => \PE~input_o\,
	combout => \mem~629_combout\);

-- Location: FF_X33_Y60_N3
\mem~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~238_q\);

-- Location: LCCOMB_X33_Y61_N8
\mem~275\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~275_combout\ = (\mem~274_combout\ & (((\mem~238_q\)) # (!\IDL1[2]~input_o\))) # (!\mem~274_combout\ & (\IDL1[2]~input_o\ & (\mem~174_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~274_combout\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~174_q\,
	datad => \mem~238_q\,
	combout => \mem~275_combout\);

-- Location: IOIBUF_X44_Y67_N1
\IDL1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDL1(1),
	o => \IDL1[1]~input_o\);

-- Location: LCCOMB_X33_Y61_N18
\mem~276\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~276_combout\ = (\IDL1[0]~input_o\ & ((\mem~273_combout\) # ((\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & (((\mem~275_combout\ & !\IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~273_combout\,
	datac => \mem~275_combout\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~276_combout\);

-- Location: LCCOMB_X37_Y57_N26
\mem~634\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~634_combout\ = (\IDE[0]~input_o\ & (!\IDE[3]~input_o\ & (!\IDE[2]~input_o\ & \IDE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[0]~input_o\,
	datab => \IDE[3]~input_o\,
	datac => \IDE[2]~input_o\,
	datad => \IDE[1]~input_o\,
	combout => \mem~634_combout\);

-- Location: LCCOMB_X33_Y57_N4
\mem~635\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~635_combout\ = (\IDE[4]~input_o\ & (\mem~634_combout\ & \PE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~634_combout\,
	datad => \PE~input_o\,
	combout => \mem~635_combout\);

-- Location: FF_X31_Y54_N27
\mem~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~166_q\);

-- Location: LCCOMB_X37_Y57_N16
\mem~632\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~632_combout\ = (\IDE[0]~input_o\ & (!\IDE[3]~input_o\ & (\IDE[2]~input_o\ & \IDE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[0]~input_o\,
	datab => \IDE[3]~input_o\,
	datac => \IDE[2]~input_o\,
	datad => \IDE[1]~input_o\,
	combout => \mem~632_combout\);

-- Location: LCCOMB_X36_Y57_N22
\mem~633\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~633_combout\ = (\IDE[4]~input_o\ & (\PE~input_o\ & \mem~632_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datac => \PE~input_o\,
	datad => \mem~632_combout\,
	combout => \mem~633_combout\);

-- Location: FF_X31_Y54_N25
\mem~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~198_q\);

-- Location: LCCOMB_X31_Y54_N24
\mem~277\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~277_combout\ = (\IDL1[2]~input_o\ & (((\mem~198_q\) # (\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & (\mem~166_q\ & ((!\IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~166_q\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~198_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~277_combout\);

-- Location: LCCOMB_X37_Y57_N12
\mem~636\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~636_combout\ = (\IDE[0]~input_o\ & (\IDE[3]~input_o\ & (\IDE[2]~input_o\ & \IDE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[0]~input_o\,
	datab => \IDE[3]~input_o\,
	datac => \IDE[2]~input_o\,
	datad => \IDE[1]~input_o\,
	combout => \mem~636_combout\);

-- Location: LCCOMB_X33_Y57_N30
\mem~637\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~637_combout\ = (\IDE[4]~input_o\ & (\mem~636_combout\ & \PE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~636_combout\,
	datad => \PE~input_o\,
	combout => \mem~637_combout\);

-- Location: FF_X31_Y56_N3
\mem~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~262_q\);

-- Location: LCCOMB_X37_Y57_N22
\mem~630\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~630_combout\ = (\IDE[0]~input_o\ & (\IDE[3]~input_o\ & (!\IDE[2]~input_o\ & \IDE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[0]~input_o\,
	datab => \IDE[3]~input_o\,
	datac => \IDE[2]~input_o\,
	datad => \IDE[1]~input_o\,
	combout => \mem~630_combout\);

-- Location: LCCOMB_X36_Y57_N12
\mem~631\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~631_combout\ = (\IDE[4]~input_o\ & (\PE~input_o\ & \mem~630_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datac => \PE~input_o\,
	datad => \mem~630_combout\,
	combout => \mem~631_combout\);

-- Location: FF_X31_Y56_N9
\mem~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~230_q\);

-- Location: LCCOMB_X31_Y56_N8
\mem~278\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~278_combout\ = (\mem~277_combout\ & ((\mem~262_q\) # ((!\IDL1[3]~input_o\)))) # (!\mem~277_combout\ & (((\mem~230_q\ & \IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~277_combout\,
	datab => \mem~262_q\,
	datac => \mem~230_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~278_combout\);

-- Location: LCCOMB_X32_Y60_N20
\mem~279\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~279_combout\ = (\mem~276_combout\ & (((\mem~278_combout\) # (!\IDL1[1]~input_o\)))) # (!\mem~276_combout\ & (\mem~271_combout\ & ((\IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~271_combout\,
	datab => \mem~276_combout\,
	datac => \mem~278_combout\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~279_combout\);

-- Location: IOIBUF_X31_Y67_N22
\IDL1[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDL1(4),
	o => \IDL1[4]~input_o\);

-- Location: LCCOMB_X37_Y57_N6
\mem~638\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~638_combout\ = (\IDE[0]~input_o\) # ((\IDE[3]~input_o\) # ((\IDE[2]~input_o\) # (\IDE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[0]~input_o\,
	datab => \IDE[3]~input_o\,
	datac => \IDE[2]~input_o\,
	datad => \IDE[1]~input_o\,
	combout => \mem~638_combout\);

-- Location: LCCOMB_X33_Y57_N20
\mem~649\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~649_combout\ = (!\IDE[4]~input_o\ & (\mem~626_combout\ & (\mem~638_combout\ & \PE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~626_combout\,
	datac => \mem~638_combout\,
	datad => \PE~input_o\,
	combout => \mem~649_combout\);

-- Location: FF_X32_Y41_N11
\mem~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~14_q\);

-- Location: LCCOMB_X33_Y57_N18
\mem~648\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~648_combout\ = (!\IDE[4]~input_o\ & (\mem~618_combout\ & (\mem~638_combout\ & \PE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~618_combout\,
	datac => \mem~638_combout\,
	datad => \PE~input_o\,
	combout => \mem~648_combout\);

-- Location: FF_X32_Y41_N9
\mem~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~22_q\);

-- Location: LCCOMB_X32_Y41_N8
\mem~284\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~284_combout\ = (\IDL1[0]~input_o\ & (((\mem~22_q\) # (\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & (\mem~14_q\ & ((!\IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~14_q\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~22_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~284_combout\);

-- Location: LCCOMB_X33_Y57_N8
\mem~647\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~647_combout\ = (!\IDE[4]~input_o\ & (\mem~638_combout\ & (\mem~610_combout\ & \PE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~638_combout\,
	datac => \mem~610_combout\,
	datad => \PE~input_o\,
	combout => \mem~647_combout\);

-- Location: FF_X34_Y57_N9
\mem~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~30_q\);

-- Location: LCCOMB_X33_Y57_N22
\mem~650\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~650_combout\ = (!\IDE[4]~input_o\ & (\mem~634_combout\ & (\mem~638_combout\ & \PE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~634_combout\,
	datac => \mem~638_combout\,
	datad => \PE~input_o\,
	combout => \mem~650_combout\);

-- Location: FF_X34_Y57_N19
\mem~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~38_q\);

-- Location: LCCOMB_X34_Y57_N8
\mem~285\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~285_combout\ = (\IDL1[1]~input_o\ & ((\mem~284_combout\ & ((\mem~38_q\))) # (!\mem~284_combout\ & (\mem~30_q\)))) # (!\IDL1[1]~input_o\ & (\mem~284_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[1]~input_o\,
	datab => \mem~284_combout\,
	datac => \mem~30_q\,
	datad => \mem~38_q\,
	combout => \mem~285_combout\);

-- Location: LCCOMB_X36_Y57_N14
\mem~646\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~646_combout\ = (!\IDE[4]~input_o\ & (\mem~638_combout\ & (\PE~input_o\ & \mem~632_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~638_combout\,
	datac => \PE~input_o\,
	datad => \mem~632_combout\,
	combout => \mem~646_combout\);

-- Location: FF_X31_Y57_N11
\mem~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~70_q\);

-- Location: LCCOMB_X36_Y57_N24
\mem~643\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~643_combout\ = (!\IDE[4]~input_o\ & (\mem~616_combout\ & (\PE~input_o\ & \mem~638_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~616_combout\,
	datac => \PE~input_o\,
	datad => \mem~638_combout\,
	combout => \mem~643_combout\);

-- Location: FF_X31_Y57_N25
\mem~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~54_q\);

-- Location: LCCOMB_X36_Y57_N4
\mem~645\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~645_combout\ = (!\IDE[4]~input_o\ & (\mem~638_combout\ & (\PE~input_o\ & \mem~622_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~638_combout\,
	datac => \PE~input_o\,
	datad => \mem~622_combout\,
	combout => \mem~645_combout\);

-- Location: FF_X32_Y57_N19
\mem~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~46_q\);

-- Location: LCCOMB_X36_Y57_N26
\mem~644\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~644_combout\ = (!\IDE[4]~input_o\ & (\mem~638_combout\ & (\PE~input_o\ & \mem~606_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~638_combout\,
	datac => \PE~input_o\,
	datad => \mem~606_combout\,
	combout => \mem~644_combout\);

-- Location: FF_X32_Y57_N25
\mem~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~62_q\);

-- Location: LCCOMB_X32_Y57_N24
\mem~282\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~282_combout\ = (\IDL1[0]~input_o\ & (((\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & ((\IDL1[1]~input_o\ & ((\mem~62_q\))) # (!\IDL1[1]~input_o\ & (\mem~46_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~46_q\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~62_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~282_combout\);

-- Location: LCCOMB_X31_Y57_N24
\mem~283\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~283_combout\ = (\IDL1[0]~input_o\ & ((\mem~282_combout\ & (\mem~70_q\)) # (!\mem~282_combout\ & ((\mem~54_q\))))) # (!\IDL1[0]~input_o\ & (((\mem~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~70_q\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~54_q\,
	datad => \mem~282_combout\,
	combout => \mem~283_combout\);

-- Location: LCCOMB_X32_Y60_N30
\mem~286\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~286_combout\ = (\IDL1[2]~input_o\ & (((\mem~283_combout\) # (\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & (\mem~285_combout\ & ((!\IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~285_combout\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~283_combout\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~286_combout\);

-- Location: LCCOMB_X36_Y57_N28
\mem~641\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~641_combout\ = (!\IDE[4]~input_o\ & (\mem~624_combout\ & (\PE~input_o\ & \mem~638_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~624_combout\,
	datac => \PE~input_o\,
	datad => \mem~638_combout\,
	combout => \mem~641_combout\);

-- Location: FF_X29_Y55_N19
\mem~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~78_q\);

-- Location: LCCOMB_X36_Y57_N2
\mem~640\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~640_combout\ = (!\IDE[4]~input_o\ & (\mem~614_combout\ & (\PE~input_o\ & \mem~638_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~614_combout\,
	datac => \PE~input_o\,
	datad => \mem~638_combout\,
	combout => \mem~640_combout\);

-- Location: FF_X29_Y55_N17
\mem~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~86_q\);

-- Location: LCCOMB_X29_Y55_N16
\mem~280\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~280_combout\ = (\IDL1[0]~input_o\ & (((\mem~86_q\) # (\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & (\mem~78_q\ & ((!\IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~78_q\,
	datac => \mem~86_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~280_combout\);

-- Location: LCCOMB_X36_Y57_N30
\mem~642\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~642_combout\ = (!\IDE[4]~input_o\ & (\mem~638_combout\ & (\PE~input_o\ & \mem~630_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~638_combout\,
	datac => \PE~input_o\,
	datad => \mem~630_combout\,
	combout => \mem~642_combout\);

-- Location: FF_X31_Y60_N11
\mem~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~102_q\);

-- Location: LCCOMB_X36_Y57_N8
\mem~639\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~639_combout\ = (!\IDE[4]~input_o\ & (\mem~638_combout\ & (\PE~input_o\ & \mem~608_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~638_combout\,
	datac => \PE~input_o\,
	datad => \mem~608_combout\,
	combout => \mem~639_combout\);

-- Location: FF_X31_Y60_N1
\mem~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~94_q\);

-- Location: LCCOMB_X31_Y60_N0
\mem~281\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~281_combout\ = (\mem~280_combout\ & ((\mem~102_q\) # ((!\IDL1[1]~input_o\)))) # (!\mem~280_combout\ & (((\mem~94_q\ & \IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~280_combout\,
	datab => \mem~102_q\,
	datac => \mem~94_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~281_combout\);

-- Location: LCCOMB_X33_Y57_N14
\mem~654\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~654_combout\ = (!\IDE[4]~input_o\ & (\mem~636_combout\ & (\mem~638_combout\ & \PE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~636_combout\,
	datac => \mem~638_combout\,
	datad => \PE~input_o\,
	combout => \mem~654_combout\);

-- Location: FF_X30_Y57_N11
\mem~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~134_q\);

-- Location: LCCOMB_X33_Y57_N0
\mem~651\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~651_combout\ = (!\IDE[4]~input_o\ & (\mem~620_combout\ & (\mem~638_combout\ & \PE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~620_combout\,
	datac => \mem~638_combout\,
	datad => \PE~input_o\,
	combout => \mem~651_combout\);

-- Location: FF_X30_Y57_N9
\mem~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~118_q\);

-- Location: LCCOMB_X33_Y57_N12
\mem~653\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~653_combout\ = (!\IDE[4]~input_o\ & (\mem~628_combout\ & (\mem~638_combout\ & \PE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~628_combout\,
	datac => \mem~638_combout\,
	datad => \PE~input_o\,
	combout => \mem~653_combout\);

-- Location: FF_X29_Y57_N11
\mem~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~110_q\);

-- Location: LCCOMB_X33_Y57_N26
\mem~652\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~652_combout\ = (!\IDE[4]~input_o\ & (\mem~612_combout\ & (\mem~638_combout\ & \PE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDE[4]~input_o\,
	datab => \mem~612_combout\,
	datac => \mem~638_combout\,
	datad => \PE~input_o\,
	combout => \mem~652_combout\);

-- Location: FF_X29_Y57_N25
\mem~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[0]~input_o\,
	sload => VCC,
	ena => \mem~652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~126_q\);

-- Location: LCCOMB_X29_Y57_N24
\mem~287\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~287_combout\ = (\IDL1[0]~input_o\ & (((\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & ((\IDL1[1]~input_o\ & ((\mem~126_q\))) # (!\IDL1[1]~input_o\ & (\mem~110_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~110_q\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~126_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~287_combout\);

-- Location: LCCOMB_X30_Y57_N8
\mem~288\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~288_combout\ = (\IDL1[0]~input_o\ & ((\mem~287_combout\ & (\mem~134_q\)) # (!\mem~287_combout\ & ((\mem~118_q\))))) # (!\IDL1[0]~input_o\ & (((\mem~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~134_q\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~118_q\,
	datad => \mem~287_combout\,
	combout => \mem~288_combout\);

-- Location: LCCOMB_X32_Y60_N16
\mem~289\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~289_combout\ = (\mem~286_combout\ & (((\mem~288_combout\)) # (!\IDL1[3]~input_o\))) # (!\mem~286_combout\ & (\IDL1[3]~input_o\ & (\mem~281_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~286_combout\,
	datab => \IDL1[3]~input_o\,
	datac => \mem~281_combout\,
	datad => \mem~288_combout\,
	combout => \mem~289_combout\);

-- Location: LCCOMB_X32_Y60_N26
\mem~290\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~290_combout\ = (\IDL1[4]~input_o\ & (\mem~279_combout\)) # (!\IDL1[4]~input_o\ & ((\mem~289_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem~279_combout\,
	datac => \IDL1[4]~input_o\,
	datad => \mem~289_combout\,
	combout => \mem~290_combout\);

-- Location: IOIBUF_X33_Y67_N22
\DE[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DE(1),
	o => \DE[1]~input_o\);

-- Location: FF_X32_Y57_N23
\mem~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~47_q\);

-- Location: FF_X31_Y57_N13
\mem~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~55_q\);

-- Location: LCCOMB_X31_Y57_N12
\mem~301\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~301_combout\ = (\IDL1[1]~input_o\ & (((\IDL1[0]~input_o\)))) # (!\IDL1[1]~input_o\ & ((\IDL1[0]~input_o\ & ((\mem~55_q\))) # (!\IDL1[0]~input_o\ & (\mem~47_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~47_q\,
	datab => \IDL1[1]~input_o\,
	datac => \mem~55_q\,
	datad => \IDL1[0]~input_o\,
	combout => \mem~301_combout\);

-- Location: FF_X31_Y57_N31
\mem~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~71_q\);

-- Location: FF_X32_Y57_N5
\mem~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~63_q\);

-- Location: LCCOMB_X32_Y57_N4
\mem~302\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~302_combout\ = (\mem~301_combout\ & ((\mem~71_q\) # ((!\IDL1[1]~input_o\)))) # (!\mem~301_combout\ & (((\mem~63_q\ & \IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~301_combout\,
	datab => \mem~71_q\,
	datac => \mem~63_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~302_combout\);

-- Location: FF_X32_Y41_N15
\mem~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~15_q\);

-- Location: FF_X31_Y41_N9
\mem~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~31_q\);

-- Location: LCCOMB_X31_Y41_N8
\mem~305\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~305_combout\ = (\IDL1[0]~input_o\ & (((\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & ((\IDL1[1]~input_o\ & ((\mem~31_q\))) # (!\IDL1[1]~input_o\ & (\mem~15_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~15_q\,
	datac => \mem~31_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~305_combout\);

-- Location: FF_X32_Y41_N5
\mem~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~23_q\);

-- Location: FF_X31_Y41_N19
\mem~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~39_q\);

-- Location: LCCOMB_X32_Y41_N4
\mem~306\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~306_combout\ = (\IDL1[0]~input_o\ & ((\mem~305_combout\ & ((\mem~39_q\))) # (!\mem~305_combout\ & (\mem~23_q\)))) # (!\IDL1[0]~input_o\ & (\mem~305_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~305_combout\,
	datac => \mem~23_q\,
	datad => \mem~39_q\,
	combout => \mem~306_combout\);

-- Location: FF_X30_Y59_N17
\mem~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~103_q\);

-- Location: FF_X29_Y55_N29
\mem~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~87_q\);

-- Location: FF_X30_Y56_N17
\mem~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~79_q\);

-- Location: FF_X31_Y60_N5
\mem~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~95_q\);

-- Location: LCCOMB_X31_Y60_N4
\mem~303\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~303_combout\ = (\IDL1[0]~input_o\ & (((\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & ((\IDL1[1]~input_o\ & ((\mem~95_q\))) # (!\IDL1[1]~input_o\ & (\mem~79_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~79_q\,
	datac => \mem~95_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~303_combout\);

-- Location: LCCOMB_X29_Y55_N28
\mem~304\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~304_combout\ = (\IDL1[0]~input_o\ & ((\mem~303_combout\ & (\mem~103_q\)) # (!\mem~303_combout\ & ((\mem~87_q\))))) # (!\IDL1[0]~input_o\ & (((\mem~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~103_q\,
	datac => \mem~87_q\,
	datad => \mem~303_combout\,
	combout => \mem~304_combout\);

-- Location: LCCOMB_X32_Y60_N4
\mem~307\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~307_combout\ = (\IDL1[2]~input_o\ & (((\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & ((\IDL1[3]~input_o\ & ((\mem~304_combout\))) # (!\IDL1[3]~input_o\ & (\mem~306_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~306_combout\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~304_combout\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~307_combout\);

-- Location: FF_X29_Y57_N7
\mem~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~111_q\);

-- Location: FF_X30_Y57_N29
\mem~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~119_q\);

-- Location: LCCOMB_X30_Y57_N28
\mem~308\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~308_combout\ = (\IDL1[1]~input_o\ & (((\IDL1[0]~input_o\)))) # (!\IDL1[1]~input_o\ & ((\IDL1[0]~input_o\ & ((\mem~119_q\))) # (!\IDL1[0]~input_o\ & (\mem~111_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[1]~input_o\,
	datab => \mem~111_q\,
	datac => \mem~119_q\,
	datad => \IDL1[0]~input_o\,
	combout => \mem~308_combout\);

-- Location: FF_X30_Y57_N31
\mem~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~135_q\);

-- Location: FF_X29_Y57_N13
\mem~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~127_q\);

-- Location: LCCOMB_X29_Y57_N12
\mem~309\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~309_combout\ = (\mem~308_combout\ & ((\mem~135_q\) # ((!\IDL1[1]~input_o\)))) # (!\mem~308_combout\ & (((\mem~127_q\ & \IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~308_combout\,
	datab => \mem~135_q\,
	datac => \mem~127_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~309_combout\);

-- Location: LCCOMB_X32_Y60_N14
\mem~310\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~310_combout\ = (\IDL1[2]~input_o\ & ((\mem~307_combout\ & ((\mem~309_combout\))) # (!\mem~307_combout\ & (\mem~302_combout\)))) # (!\IDL1[2]~input_o\ & (((\mem~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~302_combout\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~307_combout\,
	datad => \mem~309_combout\,
	combout => \mem~310_combout\);

-- Location: FF_X30_Y63_N15
\mem~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~247_q\);

-- Location: FF_X31_Y63_N5
\mem~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~183_q\);

-- Location: FF_X31_Y63_N15
\mem~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~151_q\);

-- Location: FF_X30_Y63_N13
\mem~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~215_q\);

-- Location: LCCOMB_X30_Y63_N12
\mem~291\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~291_combout\ = (\IDL1[2]~input_o\ & (((\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & ((\IDL1[3]~input_o\ & ((\mem~215_q\))) # (!\IDL1[3]~input_o\ & (\mem~151_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~151_q\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~215_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~291_combout\);

-- Location: LCCOMB_X31_Y63_N4
\mem~292\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~292_combout\ = (\IDL1[2]~input_o\ & ((\mem~291_combout\ & (\mem~247_q\)) # (!\mem~291_combout\ & ((\mem~183_q\))))) # (!\IDL1[2]~input_o\ & (((\mem~291_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~247_q\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~183_q\,
	datad => \mem~291_combout\,
	combout => \mem~292_combout\);

-- Location: FF_X31_Y54_N31
\mem~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~167_q\);

-- Location: FF_X31_Y56_N21
\mem~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~231_q\);

-- Location: LCCOMB_X31_Y56_N20
\mem~298\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~298_combout\ = (\IDL1[2]~input_o\ & (((\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & ((\IDL1[3]~input_o\ & ((\mem~231_q\))) # (!\IDL1[3]~input_o\ & (\mem~167_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \mem~167_q\,
	datac => \mem~231_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~298_combout\);

-- Location: FF_X31_Y56_N23
\mem~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~263_q\);

-- Location: FF_X31_Y54_N29
\mem~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~199_q\);

-- Location: LCCOMB_X31_Y54_N28
\mem~299\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~299_combout\ = (\mem~298_combout\ & ((\mem~263_q\) # ((!\IDL1[2]~input_o\)))) # (!\mem~298_combout\ & (((\mem~199_q\ & \IDL1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~298_combout\,
	datab => \mem~263_q\,
	datac => \mem~199_q\,
	datad => \IDL1[2]~input_o\,
	combout => \mem~299_combout\);

-- Location: FF_X33_Y60_N5
\mem~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~255_q\);

-- Location: FF_X32_Y60_N23
\mem~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~159_q\);

-- Location: FF_X34_Y60_N3
\mem~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~191_q\);

-- Location: LCCOMB_X34_Y60_N2
\mem~293\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~293_combout\ = (\IDL1[2]~input_o\ & (((\mem~191_q\) # (\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & (\mem~159_q\ & ((!\IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~159_q\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~191_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~293_combout\);

-- Location: FF_X32_Y60_N13
\mem~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~223_q\);

-- Location: LCCOMB_X32_Y60_N12
\mem~294\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~294_combout\ = (\mem~293_combout\ & ((\mem~255_q\) # ((!\IDL1[3]~input_o\)))) # (!\mem~293_combout\ & (((\mem~223_q\ & \IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~255_q\,
	datab => \mem~293_combout\,
	datac => \mem~223_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~294_combout\);

-- Location: FF_X32_Y61_N15
\mem~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~143_q\);

-- Location: FF_X33_Y61_N5
\mem~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~175_q\);

-- Location: LCCOMB_X33_Y61_N4
\mem~295\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~295_combout\ = (\IDL1[2]~input_o\ & (((\mem~175_q\) # (\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & (\mem~143_q\ & ((!\IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~143_q\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~175_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~295_combout\);

-- Location: FF_X33_Y60_N31
\mem~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~239_q\);

-- Location: FF_X32_Y61_N21
\mem~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[1]~input_o\,
	sload => VCC,
	ena => \mem~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~207_q\);

-- Location: LCCOMB_X32_Y61_N20
\mem~296\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~296_combout\ = (\mem~295_combout\ & ((\mem~239_q\) # ((!\IDL1[3]~input_o\)))) # (!\mem~295_combout\ & (((\mem~207_q\ & \IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~295_combout\,
	datab => \mem~239_q\,
	datac => \mem~207_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~296_combout\);

-- Location: LCCOMB_X32_Y60_N8
\mem~297\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~297_combout\ = (\IDL1[0]~input_o\ & (((\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & ((\IDL1[1]~input_o\ & (\mem~294_combout\)) # (!\IDL1[1]~input_o\ & ((\mem~296_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~294_combout\,
	datab => \mem~296_combout\,
	datac => \IDL1[0]~input_o\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~297_combout\);

-- Location: LCCOMB_X32_Y60_N10
\mem~300\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~300_combout\ = (\mem~297_combout\ & (((\mem~299_combout\) # (!\IDL1[0]~input_o\)))) # (!\mem~297_combout\ & (\mem~292_combout\ & ((\IDL1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~292_combout\,
	datab => \mem~299_combout\,
	datac => \mem~297_combout\,
	datad => \IDL1[0]~input_o\,
	combout => \mem~300_combout\);

-- Location: LCCOMB_X32_Y60_N0
\mem~311\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~311_combout\ = (\IDL1[4]~input_o\ & ((\mem~300_combout\))) # (!\IDL1[4]~input_o\ & (\mem~310_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem~310_combout\,
	datac => \IDL1[4]~input_o\,
	datad => \mem~300_combout\,
	combout => \mem~311_combout\);

-- Location: IOIBUF_X24_Y67_N8
\DE[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DE(2),
	o => \DE[2]~input_o\);

-- Location: FF_X29_Y57_N27
\mem~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~112_q\);

-- Location: FF_X29_Y57_N17
\mem~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~128_q\);

-- Location: LCCOMB_X29_Y57_N16
\mem~329\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~329_combout\ = (\IDL1[0]~input_o\ & (((\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & ((\IDL1[1]~input_o\ & ((\mem~128_q\))) # (!\IDL1[1]~input_o\ & (\mem~112_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~112_q\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~128_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~329_combout\);

-- Location: FF_X30_Y57_N25
\mem~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~120_q\);

-- Location: FF_X30_Y57_N19
\mem~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~136_q\);

-- Location: LCCOMB_X30_Y57_N24
\mem~330\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~330_combout\ = (\mem~329_combout\ & (((\mem~136_q\)) # (!\IDL1[0]~input_o\))) # (!\mem~329_combout\ & (\IDL1[0]~input_o\ & (\mem~120_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~329_combout\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~120_q\,
	datad => \mem~136_q\,
	combout => \mem~330_combout\);

-- Location: FF_X31_Y41_N31
\mem~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~40_q\);

-- Location: FF_X32_Y41_N25
\mem~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~24_q\);

-- Location: FF_X32_Y41_N19
\mem~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~16_q\);

-- Location: LCCOMB_X32_Y41_N24
\mem~326\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~326_combout\ = (\IDL1[1]~input_o\ & (\IDL1[0]~input_o\)) # (!\IDL1[1]~input_o\ & ((\IDL1[0]~input_o\ & (\mem~24_q\)) # (!\IDL1[0]~input_o\ & ((\mem~16_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[1]~input_o\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~24_q\,
	datad => \mem~16_q\,
	combout => \mem~326_combout\);

-- Location: FF_X31_Y41_N21
\mem~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~32_q\);

-- Location: LCCOMB_X31_Y41_N20
\mem~327\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~327_combout\ = (\mem~326_combout\ & ((\mem~40_q\) # ((!\IDL1[1]~input_o\)))) # (!\mem~326_combout\ & (((\mem~32_q\ & \IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~40_q\,
	datab => \mem~326_combout\,
	datac => \mem~32_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~327_combout\);

-- Location: FF_X31_Y57_N27
\mem~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~72_q\);

-- Location: FF_X32_Y57_N9
\mem~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~64_q\);

-- Location: FF_X32_Y57_N11
\mem~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~48_q\);

-- Location: LCCOMB_X32_Y57_N8
\mem~324\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~324_combout\ = (\IDL1[1]~input_o\ & ((\IDL1[0]~input_o\) # ((\mem~64_q\)))) # (!\IDL1[1]~input_o\ & (!\IDL1[0]~input_o\ & ((\mem~48_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[1]~input_o\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~64_q\,
	datad => \mem~48_q\,
	combout => \mem~324_combout\);

-- Location: FF_X31_Y57_N17
\mem~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~56_q\);

-- Location: LCCOMB_X31_Y57_N16
\mem~325\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~325_combout\ = (\mem~324_combout\ & ((\mem~72_q\) # ((!\IDL1[0]~input_o\)))) # (!\mem~324_combout\ & (((\mem~56_q\ & \IDL1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~72_q\,
	datab => \mem~324_combout\,
	datac => \mem~56_q\,
	datad => \IDL1[0]~input_o\,
	combout => \mem~325_combout\);

-- Location: LCCOMB_X31_Y61_N16
\mem~328\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~328_combout\ = (\IDL1[2]~input_o\ & (((\IDL1[3]~input_o\) # (\mem~325_combout\)))) # (!\IDL1[2]~input_o\ & (\mem~327_combout\ & (!\IDL1[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \mem~327_combout\,
	datac => \IDL1[3]~input_o\,
	datad => \mem~325_combout\,
	combout => \mem~328_combout\);

-- Location: FF_X29_Y55_N1
\mem~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~80_q\);

-- Location: FF_X29_Y55_N31
\mem~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~88_q\);

-- Location: LCCOMB_X29_Y55_N30
\mem~322\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~322_combout\ = (\IDL1[0]~input_o\ & (((\mem~88_q\) # (\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & (\mem~80_q\ & ((!\IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~80_q\,
	datac => \mem~88_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~322_combout\);

-- Location: FF_X31_Y60_N9
\mem~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~104_q\);

-- Location: FF_X31_Y60_N31
\mem~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~96_q\);

-- Location: LCCOMB_X31_Y60_N30
\mem~323\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~323_combout\ = (\mem~322_combout\ & ((\mem~104_q\) # ((!\IDL1[1]~input_o\)))) # (!\mem~322_combout\ & (((\mem~96_q\ & \IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~322_combout\,
	datab => \mem~104_q\,
	datac => \mem~96_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~323_combout\);

-- Location: LCCOMB_X31_Y61_N10
\mem~331\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~331_combout\ = (\mem~328_combout\ & ((\mem~330_combout\) # ((!\IDL1[3]~input_o\)))) # (!\mem~328_combout\ & (((\IDL1[3]~input_o\ & \mem~323_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~330_combout\,
	datab => \mem~328_combout\,
	datac => \IDL1[3]~input_o\,
	datad => \mem~323_combout\,
	combout => \mem~331_combout\);

-- Location: FF_X31_Y56_N11
\mem~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~264_q\);

-- Location: FF_X31_Y54_N17
\mem~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~200_q\);

-- Location: FF_X31_Y54_N3
\mem~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~168_q\);

-- Location: LCCOMB_X31_Y54_N16
\mem~319\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~319_combout\ = (\IDL1[3]~input_o\ & (\IDL1[2]~input_o\)) # (!\IDL1[3]~input_o\ & ((\IDL1[2]~input_o\ & (\mem~200_q\)) # (!\IDL1[2]~input_o\ & ((\mem~168_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[3]~input_o\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~200_q\,
	datad => \mem~168_q\,
	combout => \mem~319_combout\);

-- Location: FF_X31_Y56_N17
\mem~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~232_q\);

-- Location: LCCOMB_X31_Y56_N16
\mem~320\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~320_combout\ = (\mem~319_combout\ & ((\mem~264_q\) # ((!\IDL1[3]~input_o\)))) # (!\mem~319_combout\ & (((\mem~232_q\ & \IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~264_q\,
	datab => \mem~319_combout\,
	datac => \mem~232_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~320_combout\);

-- Location: FF_X30_Y59_N27
\mem~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~256_q\);

-- Location: FF_X31_Y61_N25
\mem~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~192_q\);

-- Location: FF_X32_Y60_N29
\mem~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~160_q\);

-- Location: FF_X32_Y60_N19
\mem~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~224_q\);

-- Location: LCCOMB_X32_Y60_N18
\mem~312\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~312_combout\ = (\IDL1[2]~input_o\ & (((\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & ((\IDL1[3]~input_o\ & ((\mem~224_q\))) # (!\IDL1[3]~input_o\ & (\mem~160_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \mem~160_q\,
	datac => \mem~224_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~312_combout\);

-- Location: LCCOMB_X31_Y61_N24
\mem~313\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~313_combout\ = (\IDL1[2]~input_o\ & ((\mem~312_combout\ & (\mem~256_q\)) # (!\mem~312_combout\ & ((\mem~192_q\))))) # (!\IDL1[2]~input_o\ & (((\mem~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \mem~256_q\,
	datac => \mem~192_q\,
	datad => \mem~312_combout\,
	combout => \mem~313_combout\);

-- Location: FF_X30_Y63_N11
\mem~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~248_q\);

-- Location: FF_X31_Y63_N27
\mem~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~152_q\);

-- Location: FF_X31_Y63_N9
\mem~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~184_q\);

-- Location: LCCOMB_X31_Y63_N8
\mem~314\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~314_combout\ = (\IDL1[2]~input_o\ & (((\mem~184_q\) # (\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & (\mem~152_q\ & ((!\IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~152_q\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~184_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~314_combout\);

-- Location: FF_X30_Y63_N9
\mem~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~216_q\);

-- Location: LCCOMB_X30_Y63_N8
\mem~315\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~315_combout\ = (\mem~314_combout\ & ((\mem~248_q\) # ((!\IDL1[3]~input_o\)))) # (!\mem~314_combout\ & (((\mem~216_q\ & \IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~248_q\,
	datab => \mem~314_combout\,
	datac => \mem~216_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~315_combout\);

-- Location: FF_X30_Y61_N25
\mem~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~240_q\);

-- Location: FF_X31_Y61_N19
\mem~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~176_q\);

-- Location: FF_X32_Y61_N3
\mem~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~144_q\);

-- Location: FF_X32_Y61_N1
\mem~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[2]~input_o\,
	sload => VCC,
	ena => \mem~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~208_q\);

-- Location: LCCOMB_X32_Y61_N0
\mem~316\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~316_combout\ = (\IDL1[2]~input_o\ & (((\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & ((\IDL1[3]~input_o\ & ((\mem~208_q\))) # (!\IDL1[3]~input_o\ & (\mem~144_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \mem~144_q\,
	datac => \mem~208_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~316_combout\);

-- Location: LCCOMB_X31_Y61_N18
\mem~317\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~317_combout\ = (\IDL1[2]~input_o\ & ((\mem~316_combout\ & (\mem~240_q\)) # (!\mem~316_combout\ & ((\mem~176_q\))))) # (!\IDL1[2]~input_o\ & (((\mem~316_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \mem~240_q\,
	datac => \mem~176_q\,
	datad => \mem~316_combout\,
	combout => \mem~317_combout\);

-- Location: LCCOMB_X31_Y61_N20
\mem~318\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~318_combout\ = (\IDL1[0]~input_o\ & ((\mem~315_combout\) # ((\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & (((\mem~317_combout\ & !\IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~315_combout\,
	datab => \mem~317_combout\,
	datac => \IDL1[0]~input_o\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~318_combout\);

-- Location: LCCOMB_X31_Y61_N22
\mem~321\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~321_combout\ = (\mem~318_combout\ & ((\mem~320_combout\) # ((!\IDL1[1]~input_o\)))) # (!\mem~318_combout\ & (((\mem~313_combout\ & \IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~320_combout\,
	datab => \mem~313_combout\,
	datac => \mem~318_combout\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~321_combout\);

-- Location: LCCOMB_X31_Y61_N28
\mem~332\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~332_combout\ = (\IDL1[4]~input_o\ & ((\mem~321_combout\))) # (!\IDL1[4]~input_o\ & (\mem~331_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~331_combout\,
	datab => \IDL1[4]~input_o\,
	datac => \mem~321_combout\,
	combout => \mem~332_combout\);

-- Location: IOIBUF_X44_Y67_N22
\DE[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DE(3),
	o => \DE[3]~input_o\);

-- Location: FF_X32_Y56_N9
\mem~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~169_q\);

-- Location: FF_X31_Y56_N5
\mem~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~233_q\);

-- Location: LCCOMB_X31_Y56_N4
\mem~340\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~340_combout\ = (\IDL1[2]~input_o\ & (((\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & ((\IDL1[3]~input_o\ & ((\mem~233_q\))) # (!\IDL1[3]~input_o\ & (\mem~169_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \mem~169_q\,
	datac => \mem~233_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~340_combout\);

-- Location: FF_X31_Y54_N5
\mem~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~201_q\);

-- Location: FF_X31_Y56_N31
\mem~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~265_q\);

-- Location: LCCOMB_X31_Y54_N4
\mem~341\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~341_combout\ = (\IDL1[2]~input_o\ & ((\mem~340_combout\ & ((\mem~265_q\))) # (!\mem~340_combout\ & (\mem~201_q\)))) # (!\IDL1[2]~input_o\ & (\mem~340_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \mem~340_combout\,
	datac => \mem~201_q\,
	datad => \mem~265_q\,
	combout => \mem~341_combout\);

-- Location: FF_X33_Y60_N27
\mem~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~241_q\);

-- Location: FF_X32_Y61_N23
\mem~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~145_q\);

-- Location: FF_X33_Y61_N25
\mem~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~177_q\);

-- Location: LCCOMB_X33_Y61_N24
\mem~337\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~337_combout\ = (\IDL1[2]~input_o\ & (((\mem~177_q\) # (\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & (\mem~145_q\ & ((!\IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \mem~145_q\,
	datac => \mem~177_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~337_combout\);

-- Location: FF_X32_Y61_N13
\mem~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~209_q\);

-- Location: LCCOMB_X32_Y61_N12
\mem~338\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~338_combout\ = (\mem~337_combout\ & ((\mem~241_q\) # ((!\IDL1[3]~input_o\)))) # (!\mem~337_combout\ & (((\mem~209_q\ & \IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~241_q\,
	datab => \mem~337_combout\,
	datac => \mem~209_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~338_combout\);

-- Location: FF_X34_Y60_N23
\mem~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~161_q\);

-- Location: FF_X34_Y60_N5
\mem~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~193_q\);

-- Location: LCCOMB_X34_Y60_N4
\mem~335\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~335_combout\ = (\IDL1[2]~input_o\ & (((\mem~193_q\) # (\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & (\mem~161_q\ & ((!\IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~161_q\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~193_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~335_combout\);

-- Location: FF_X33_Y60_N25
\mem~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~257_q\);

-- Location: FF_X33_Y61_N31
\mem~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~225_q\);

-- Location: LCCOMB_X33_Y61_N30
\mem~336\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~336_combout\ = (\mem~335_combout\ & ((\mem~257_q\) # ((!\IDL1[3]~input_o\)))) # (!\mem~335_combout\ & (((\mem~225_q\ & \IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~335_combout\,
	datab => \mem~257_q\,
	datac => \mem~225_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~336_combout\);

-- Location: LCCOMB_X33_Y61_N2
\mem~339\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~339_combout\ = (\IDL1[0]~input_o\ & (((\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & ((\IDL1[1]~input_o\ & ((\mem~336_combout\))) # (!\IDL1[1]~input_o\ & (\mem~338_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~338_combout\,
	datac => \mem~336_combout\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~339_combout\);

-- Location: FF_X31_Y63_N23
\mem~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~153_q\);

-- Location: FF_X30_Y63_N29
\mem~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~217_q\);

-- Location: LCCOMB_X30_Y63_N28
\mem~333\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~333_combout\ = (\IDL1[2]~input_o\ & (((\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & ((\IDL1[3]~input_o\ & ((\mem~217_q\))) # (!\IDL1[3]~input_o\ & (\mem~153_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~153_q\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~217_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~333_combout\);

-- Location: FF_X30_Y63_N7
\mem~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~249_q\);

-- Location: FF_X31_Y63_N29
\mem~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~185_q\);

-- Location: LCCOMB_X31_Y63_N28
\mem~334\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~334_combout\ = (\mem~333_combout\ & ((\mem~249_q\) # ((!\IDL1[2]~input_o\)))) # (!\mem~333_combout\ & (((\mem~185_q\ & \IDL1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~333_combout\,
	datab => \mem~249_q\,
	datac => \mem~185_q\,
	datad => \IDL1[2]~input_o\,
	combout => \mem~334_combout\);

-- Location: LCCOMB_X31_Y61_N6
\mem~342\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~342_combout\ = (\IDL1[0]~input_o\ & ((\mem~339_combout\ & (\mem~341_combout\)) # (!\mem~339_combout\ & ((\mem~334_combout\))))) # (!\IDL1[0]~input_o\ & (((\mem~339_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~341_combout\,
	datac => \mem~339_combout\,
	datad => \mem~334_combout\,
	combout => \mem~342_combout\);

-- Location: FF_X30_Y55_N11
\mem~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~105_q\);

-- Location: FF_X29_Y55_N27
\mem~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~89_q\);

-- Location: FF_X29_Y55_N21
\mem~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~81_q\);

-- Location: FF_X30_Y55_N9
\mem~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~97_q\);

-- Location: LCCOMB_X30_Y55_N8
\mem~345\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~345_combout\ = (\IDL1[0]~input_o\ & (((\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & ((\IDL1[1]~input_o\ & ((\mem~97_q\))) # (!\IDL1[1]~input_o\ & (\mem~81_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~81_q\,
	datac => \mem~97_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~345_combout\);

-- Location: LCCOMB_X29_Y55_N26
\mem~346\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~346_combout\ = (\IDL1[0]~input_o\ & ((\mem~345_combout\ & (\mem~105_q\)) # (!\mem~345_combout\ & ((\mem~89_q\))))) # (!\IDL1[0]~input_o\ & (((\mem~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~105_q\,
	datac => \mem~89_q\,
	datad => \mem~345_combout\,
	combout => \mem~346_combout\);

-- Location: FF_X31_Y41_N11
\mem~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~41_q\);

-- Location: FF_X32_Y41_N21
\mem~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~25_q\);

-- Location: FF_X32_Y41_N31
\mem~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~17_q\);

-- Location: FF_X31_Y41_N25
\mem~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~33_q\);

-- Location: LCCOMB_X31_Y41_N24
\mem~347\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~347_combout\ = (\IDL1[0]~input_o\ & (((\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & ((\IDL1[1]~input_o\ & ((\mem~33_q\))) # (!\IDL1[1]~input_o\ & (\mem~17_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~17_q\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~33_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~347_combout\);

-- Location: LCCOMB_X32_Y41_N20
\mem~348\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~348_combout\ = (\IDL1[0]~input_o\ & ((\mem~347_combout\ & (\mem~41_q\)) # (!\mem~347_combout\ & ((\mem~25_q\))))) # (!\IDL1[0]~input_o\ & (((\mem~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~41_q\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~25_q\,
	datad => \mem~347_combout\,
	combout => \mem~348_combout\);

-- Location: LCCOMB_X31_Y61_N8
\mem~349\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~349_combout\ = (\IDL1[2]~input_o\ & (((\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & ((\IDL1[3]~input_o\ & (\mem~346_combout\)) # (!\IDL1[3]~input_o\ & ((\mem~348_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \mem~346_combout\,
	datac => \IDL1[3]~input_o\,
	datad => \mem~348_combout\,
	combout => \mem~349_combout\);

-- Location: FF_X30_Y57_N7
\mem~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~137_q\);

-- Location: FF_X30_Y57_N21
\mem~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~121_q\);

-- Location: FF_X29_Y57_N23
\mem~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~113_q\);

-- Location: LCCOMB_X30_Y57_N20
\mem~350\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~350_combout\ = (\IDL1[1]~input_o\ & (\IDL1[0]~input_o\)) # (!\IDL1[1]~input_o\ & ((\IDL1[0]~input_o\ & (\mem~121_q\)) # (!\IDL1[0]~input_o\ & ((\mem~113_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[1]~input_o\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~121_q\,
	datad => \mem~113_q\,
	combout => \mem~350_combout\);

-- Location: FF_X29_Y57_N21
\mem~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~129_q\);

-- Location: LCCOMB_X29_Y57_N20
\mem~351\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~351_combout\ = (\mem~350_combout\ & ((\mem~137_q\) # ((!\IDL1[1]~input_o\)))) # (!\mem~350_combout\ & (((\mem~129_q\ & \IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~137_q\,
	datab => \mem~350_combout\,
	datac => \mem~129_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~351_combout\);

-- Location: FF_X31_Y57_N23
\mem~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~73_q\);

-- Location: FF_X32_Y57_N31
\mem~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~49_q\);

-- Location: FF_X31_Y57_N5
\mem~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~57_q\);

-- Location: LCCOMB_X31_Y57_N4
\mem~343\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~343_combout\ = (\IDL1[1]~input_o\ & (((\IDL1[0]~input_o\)))) # (!\IDL1[1]~input_o\ & ((\IDL1[0]~input_o\ & ((\mem~57_q\))) # (!\IDL1[0]~input_o\ & (\mem~49_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~49_q\,
	datab => \IDL1[1]~input_o\,
	datac => \mem~57_q\,
	datad => \IDL1[0]~input_o\,
	combout => \mem~343_combout\);

-- Location: FF_X32_Y57_N13
\mem~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[3]~input_o\,
	sload => VCC,
	ena => \mem~644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~65_q\);

-- Location: LCCOMB_X32_Y57_N12
\mem~344\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~344_combout\ = (\mem~343_combout\ & ((\mem~73_q\) # ((!\IDL1[1]~input_o\)))) # (!\mem~343_combout\ & (((\mem~65_q\ & \IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~73_q\,
	datab => \mem~343_combout\,
	datac => \mem~65_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~344_combout\);

-- Location: LCCOMB_X31_Y61_N2
\mem~352\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~352_combout\ = (\IDL1[2]~input_o\ & ((\mem~349_combout\ & (\mem~351_combout\)) # (!\mem~349_combout\ & ((\mem~344_combout\))))) # (!\IDL1[2]~input_o\ & (\mem~349_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \mem~349_combout\,
	datac => \mem~351_combout\,
	datad => \mem~344_combout\,
	combout => \mem~352_combout\);

-- Location: LCCOMB_X31_Y61_N12
\mem~353\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~353_combout\ = (\IDL1[4]~input_o\ & (\mem~342_combout\)) # (!\IDL1[4]~input_o\ & ((\mem~352_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~342_combout\,
	datab => \mem~352_combout\,
	datac => \IDL1[4]~input_o\,
	combout => \mem~353_combout\);

-- Location: IOIBUF_X19_Y67_N22
\DE[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DE(4),
	o => \DE[4]~input_o\);

-- Location: FF_X29_Y55_N25
\mem~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~82_q\);

-- Location: FF_X29_Y55_N15
\mem~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~90_q\);

-- Location: LCCOMB_X29_Y55_N14
\mem~364\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~364_combout\ = (\IDL1[0]~input_o\ & (((\mem~90_q\) # (\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & (\mem~82_q\ & ((!\IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~82_q\,
	datac => \mem~90_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~364_combout\);

-- Location: FF_X30_Y55_N15
\mem~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~106_q\);

-- Location: FF_X30_Y55_N21
\mem~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~98_q\);

-- Location: LCCOMB_X30_Y55_N20
\mem~365\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~365_combout\ = (\mem~364_combout\ & ((\mem~106_q\) # ((!\IDL1[1]~input_o\)))) # (!\mem~364_combout\ & (((\mem~98_q\ & \IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~364_combout\,
	datab => \mem~106_q\,
	datac => \mem~98_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~365_combout\);

-- Location: FF_X30_Y57_N27
\mem~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~138_q\);

-- Location: FF_X29_Y57_N19
\mem~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~114_q\);

-- Location: FF_X29_Y57_N9
\mem~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~130_q\);

-- Location: LCCOMB_X29_Y57_N8
\mem~371\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~371_combout\ = (\IDL1[0]~input_o\ & (((\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & ((\IDL1[1]~input_o\ & ((\mem~130_q\))) # (!\IDL1[1]~input_o\ & (\mem~114_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~114_q\,
	datac => \mem~130_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~371_combout\);

-- Location: FF_X30_Y57_N17
\mem~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~122_q\);

-- Location: LCCOMB_X30_Y57_N16
\mem~372\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~372_combout\ = (\mem~371_combout\ & ((\mem~138_q\) # ((!\IDL1[0]~input_o\)))) # (!\mem~371_combout\ & (((\mem~122_q\ & \IDL1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~138_q\,
	datab => \mem~371_combout\,
	datac => \mem~122_q\,
	datad => \IDL1[0]~input_o\,
	combout => \mem~372_combout\);

-- Location: FF_X32_Y57_N27
\mem~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~50_q\);

-- Location: FF_X32_Y57_N1
\mem~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~66_q\);

-- Location: LCCOMB_X32_Y57_N0
\mem~366\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~366_combout\ = (\IDL1[0]~input_o\ & (((\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & ((\IDL1[1]~input_o\ & ((\mem~66_q\))) # (!\IDL1[1]~input_o\ & (\mem~50_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~50_q\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~66_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~366_combout\);

-- Location: FF_X31_Y57_N9
\mem~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~58_q\);

-- Location: FF_X31_Y57_N19
\mem~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~74_q\);

-- Location: LCCOMB_X31_Y57_N8
\mem~367\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~367_combout\ = (\IDL1[0]~input_o\ & ((\mem~366_combout\ & ((\mem~74_q\))) # (!\mem~366_combout\ & (\mem~58_q\)))) # (!\IDL1[0]~input_o\ & (\mem~366_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~366_combout\,
	datac => \mem~58_q\,
	datad => \mem~74_q\,
	combout => \mem~367_combout\);

-- Location: FF_X34_Y57_N27
\mem~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~42_q\);

-- Location: FF_X32_Y41_N1
\mem~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~26_q\);

-- Location: FF_X32_Y41_N3
\mem~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~18_q\);

-- Location: LCCOMB_X32_Y41_N0
\mem~368\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~368_combout\ = (\IDL1[1]~input_o\ & (\IDL1[0]~input_o\)) # (!\IDL1[1]~input_o\ & ((\IDL1[0]~input_o\ & (\mem~26_q\)) # (!\IDL1[0]~input_o\ & ((\mem~18_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[1]~input_o\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~26_q\,
	datad => \mem~18_q\,
	combout => \mem~368_combout\);

-- Location: FF_X34_Y57_N25
\mem~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~34_q\);

-- Location: LCCOMB_X34_Y57_N24
\mem~369\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~369_combout\ = (\mem~368_combout\ & ((\mem~42_q\) # ((!\IDL1[1]~input_o\)))) # (!\mem~368_combout\ & (((\mem~34_q\ & \IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~42_q\,
	datab => \mem~368_combout\,
	datac => \mem~34_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~369_combout\);

-- Location: LCCOMB_X34_Y57_N4
\mem~370\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~370_combout\ = (\IDL1[2]~input_o\ & ((\mem~367_combout\) # ((\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & (((\mem~369_combout\ & !\IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~367_combout\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~369_combout\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~370_combout\);

-- Location: LCCOMB_X34_Y57_N22
\mem~373\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~373_combout\ = (\mem~370_combout\ & (((\mem~372_combout\) # (!\IDL1[3]~input_o\)))) # (!\mem~370_combout\ & (\mem~365_combout\ & ((\IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~365_combout\,
	datab => \mem~372_combout\,
	datac => \mem~370_combout\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~373_combout\);

-- Location: FF_X32_Y61_N27
\mem~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~146_q\);

-- Location: FF_X32_Y61_N9
\mem~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~210_q\);

-- Location: LCCOMB_X32_Y61_N8
\mem~358\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~358_combout\ = (\IDL1[2]~input_o\ & (((\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & ((\IDL1[3]~input_o\ & ((\mem~210_q\))) # (!\IDL1[3]~input_o\ & (\mem~146_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~146_q\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~210_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~358_combout\);

-- Location: FF_X33_Y61_N23
\mem~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~178_q\);

-- Location: FF_X30_Y62_N25
\mem~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~242_q\);

-- Location: LCCOMB_X33_Y61_N22
\mem~359\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~359_combout\ = (\mem~358_combout\ & (((\mem~242_q\)) # (!\IDL1[2]~input_o\))) # (!\mem~358_combout\ & (\IDL1[2]~input_o\ & (\mem~178_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~358_combout\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~178_q\,
	datad => \mem~242_q\,
	combout => \mem~359_combout\);

-- Location: FF_X31_Y63_N19
\mem~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~154_q\);

-- Location: FF_X31_Y63_N1
\mem~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~186_q\);

-- Location: LCCOMB_X31_Y63_N0
\mem~356\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~356_combout\ = (\IDL1[2]~input_o\ & (((\mem~186_q\) # (\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & (\mem~154_q\ & ((!\IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \mem~154_q\,
	datac => \mem~186_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~356_combout\);

-- Location: FF_X30_Y63_N19
\mem~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~250_q\);

-- Location: FF_X30_Y63_N25
\mem~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~218_q\);

-- Location: LCCOMB_X30_Y63_N24
\mem~357\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~357_combout\ = (\mem~356_combout\ & ((\mem~250_q\) # ((!\IDL1[3]~input_o\)))) # (!\mem~356_combout\ & (((\mem~218_q\ & \IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~356_combout\,
	datab => \mem~250_q\,
	datac => \mem~218_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~357_combout\);

-- Location: LCCOMB_X34_Y57_N12
\mem~360\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~360_combout\ = (\IDL1[0]~input_o\ & (((\mem~357_combout\) # (\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & (\mem~359_combout\ & ((!\IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~359_combout\,
	datab => \mem~357_combout\,
	datac => \IDL1[0]~input_o\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~360_combout\);

-- Location: FF_X30_Y59_N21
\mem~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~258_q\);

-- Location: FF_X34_Y60_N25
\mem~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~194_q\);

-- Location: FF_X34_Y60_N27
\mem~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~162_q\);

-- Location: FF_X33_Y61_N29
\mem~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~226_q\);

-- Location: LCCOMB_X33_Y61_N28
\mem~354\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~354_combout\ = (\IDL1[2]~input_o\ & (((\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & ((\IDL1[3]~input_o\ & ((\mem~226_q\))) # (!\IDL1[3]~input_o\ & (\mem~162_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~162_q\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~226_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~354_combout\);

-- Location: LCCOMB_X34_Y60_N24
\mem~355\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~355_combout\ = (\IDL1[2]~input_o\ & ((\mem~354_combout\ & (\mem~258_q\)) # (!\mem~354_combout\ & ((\mem~194_q\))))) # (!\IDL1[2]~input_o\ & (((\mem~354_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~258_q\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~194_q\,
	datad => \mem~354_combout\,
	combout => \mem~355_combout\);

-- Location: FF_X31_Y56_N27
\mem~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~266_q\);

-- Location: FF_X31_Y54_N7
\mem~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~202_q\);

-- Location: FF_X31_Y54_N9
\mem~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~170_q\);

-- Location: LCCOMB_X31_Y54_N6
\mem~361\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~361_combout\ = (\IDL1[3]~input_o\ & (\IDL1[2]~input_o\)) # (!\IDL1[3]~input_o\ & ((\IDL1[2]~input_o\ & (\mem~202_q\)) # (!\IDL1[2]~input_o\ & ((\mem~170_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[3]~input_o\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~202_q\,
	datad => \mem~170_q\,
	combout => \mem~361_combout\);

-- Location: FF_X31_Y56_N25
\mem~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[4]~input_o\,
	sload => VCC,
	ena => \mem~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~234_q\);

-- Location: LCCOMB_X31_Y56_N24
\mem~362\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~362_combout\ = (\mem~361_combout\ & ((\mem~266_q\) # ((!\IDL1[3]~input_o\)))) # (!\mem~361_combout\ & (((\mem~234_q\ & \IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~266_q\,
	datab => \mem~361_combout\,
	datac => \mem~234_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~362_combout\);

-- Location: LCCOMB_X34_Y57_N6
\mem~363\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~363_combout\ = (\mem~360_combout\ & (((\mem~362_combout\) # (!\IDL1[1]~input_o\)))) # (!\mem~360_combout\ & (\mem~355_combout\ & ((\IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~360_combout\,
	datab => \mem~355_combout\,
	datac => \mem~362_combout\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~363_combout\);

-- Location: LCCOMB_X34_Y57_N0
\mem~374\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~374_combout\ = (\IDL1[4]~input_o\ & ((\mem~363_combout\))) # (!\IDL1[4]~input_o\ & (\mem~373_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~373_combout\,
	datac => \IDL1[4]~input_o\,
	datad => \mem~363_combout\,
	combout => \mem~374_combout\);

-- Location: IOIBUF_X19_Y67_N15
\DE[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DE(5),
	o => \DE[5]~input_o\);

-- Location: FF_X30_Y57_N5
\mem~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~123_q\);

-- Location: FF_X29_Y57_N15
\mem~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~115_q\);

-- Location: LCCOMB_X30_Y57_N4
\mem~392\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~392_combout\ = (\IDL1[1]~input_o\ & (\IDL1[0]~input_o\)) # (!\IDL1[1]~input_o\ & ((\IDL1[0]~input_o\ & (\mem~123_q\)) # (!\IDL1[0]~input_o\ & ((\mem~115_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[1]~input_o\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~123_q\,
	datad => \mem~115_q\,
	combout => \mem~392_combout\);

-- Location: FF_X30_Y57_N15
\mem~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~139_q\);

-- Location: FF_X29_Y57_N29
\mem~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~131_q\);

-- Location: LCCOMB_X29_Y57_N28
\mem~393\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~393_combout\ = (\mem~392_combout\ & ((\mem~139_q\) # ((!\IDL1[1]~input_o\)))) # (!\mem~392_combout\ & (((\mem~131_q\ & \IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~392_combout\,
	datab => \mem~139_q\,
	datac => \mem~131_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~393_combout\);

-- Location: FF_X26_Y56_N17
\mem~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~107_q\);

-- Location: FF_X29_Y55_N3
\mem~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~91_q\);

-- Location: FF_X29_Y55_N5
\mem~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~83_q\);

-- Location: FF_X30_Y55_N17
\mem~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~99_q\);

-- Location: LCCOMB_X30_Y55_N16
\mem~387\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~387_combout\ = (\IDL1[0]~input_o\ & (((\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & ((\IDL1[1]~input_o\ & ((\mem~99_q\))) # (!\IDL1[1]~input_o\ & (\mem~83_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~83_q\,
	datac => \mem~99_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~387_combout\);

-- Location: LCCOMB_X29_Y55_N2
\mem~388\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~388_combout\ = (\IDL1[0]~input_o\ & ((\mem~387_combout\ & (\mem~107_q\)) # (!\mem~387_combout\ & ((\mem~91_q\))))) # (!\IDL1[0]~input_o\ & (((\mem~387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~107_q\,
	datac => \mem~91_q\,
	datad => \mem~387_combout\,
	combout => \mem~388_combout\);

-- Location: FF_X32_Y41_N7
\mem~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~19_q\);

-- Location: FF_X31_Y41_N13
\mem~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~35_q\);

-- Location: LCCOMB_X31_Y41_N12
\mem~389\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~389_combout\ = (\IDL1[0]~input_o\ & (((\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & ((\IDL1[1]~input_o\ & ((\mem~35_q\))) # (!\IDL1[1]~input_o\ & (\mem~19_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~19_q\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~35_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~389_combout\);

-- Location: FF_X32_Y41_N13
\mem~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~27_q\);

-- Location: FF_X31_Y41_N23
\mem~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~43_q\);

-- Location: LCCOMB_X32_Y41_N12
\mem~390\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~390_combout\ = (\mem~389_combout\ & (((\mem~43_q\)) # (!\IDL1[0]~input_o\))) # (!\mem~389_combout\ & (\IDL1[0]~input_o\ & (\mem~27_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~389_combout\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~27_q\,
	datad => \mem~43_q\,
	combout => \mem~390_combout\);

-- Location: LCCOMB_X31_Y61_N26
\mem~391\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~391_combout\ = (\IDL1[2]~input_o\ & (((\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & ((\IDL1[3]~input_o\ & (\mem~388_combout\)) # (!\IDL1[3]~input_o\ & ((\mem~390_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \mem~388_combout\,
	datac => \IDL1[3]~input_o\,
	datad => \mem~390_combout\,
	combout => \mem~391_combout\);

-- Location: FF_X31_Y57_N7
\mem~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~75_q\);

-- Location: FF_X32_Y57_N21
\mem~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~67_q\);

-- Location: FF_X32_Y57_N15
\mem~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~51_q\);

-- Location: FF_X31_Y57_N21
\mem~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~59_q\);

-- Location: LCCOMB_X31_Y57_N20
\mem~385\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~385_combout\ = (\IDL1[1]~input_o\ & (((\IDL1[0]~input_o\)))) # (!\IDL1[1]~input_o\ & ((\IDL1[0]~input_o\ & ((\mem~59_q\))) # (!\IDL1[0]~input_o\ & (\mem~51_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~51_q\,
	datab => \IDL1[1]~input_o\,
	datac => \mem~59_q\,
	datad => \IDL1[0]~input_o\,
	combout => \mem~385_combout\);

-- Location: LCCOMB_X32_Y57_N20
\mem~386\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~386_combout\ = (\IDL1[1]~input_o\ & ((\mem~385_combout\ & (\mem~75_q\)) # (!\mem~385_combout\ & ((\mem~67_q\))))) # (!\IDL1[1]~input_o\ & (((\mem~385_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[1]~input_o\,
	datab => \mem~75_q\,
	datac => \mem~67_q\,
	datad => \mem~385_combout\,
	combout => \mem~386_combout\);

-- Location: LCCOMB_X31_Y61_N4
\mem~394\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~394_combout\ = (\IDL1[2]~input_o\ & ((\mem~391_combout\ & (\mem~393_combout\)) # (!\mem~391_combout\ & ((\mem~386_combout\))))) # (!\IDL1[2]~input_o\ & (((\mem~391_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \mem~393_combout\,
	datac => \mem~391_combout\,
	datad => \mem~386_combout\,
	combout => \mem~394_combout\);

-- Location: FF_X31_Y56_N29
\mem~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~235_q\);

-- Location: FF_X32_Y56_N19
\mem~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~171_q\);

-- Location: LCCOMB_X31_Y56_N28
\mem~382\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~382_combout\ = (\IDL1[2]~input_o\ & (\IDL1[3]~input_o\)) # (!\IDL1[2]~input_o\ & ((\IDL1[3]~input_o\ & (\mem~235_q\)) # (!\IDL1[3]~input_o\ & ((\mem~171_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \IDL1[3]~input_o\,
	datac => \mem~235_q\,
	datad => \mem~171_q\,
	combout => \mem~382_combout\);

-- Location: FF_X31_Y54_N19
\mem~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~203_q\);

-- Location: FF_X31_Y56_N7
\mem~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~267_q\);

-- Location: LCCOMB_X31_Y54_N18
\mem~383\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~383_combout\ = (\mem~382_combout\ & (((\mem~267_q\)) # (!\IDL1[2]~input_o\))) # (!\mem~382_combout\ & (\IDL1[2]~input_o\ & (\mem~203_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~382_combout\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~203_q\,
	datad => \mem~267_q\,
	combout => \mem~383_combout\);

-- Location: FF_X32_Y61_N29
\mem~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~147_q\);

-- Location: FF_X30_Y62_N27
\mem~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~179_q\);

-- Location: LCCOMB_X30_Y62_N26
\mem~379\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~379_combout\ = (\IDL1[3]~input_o\ & (((\IDL1[2]~input_o\)))) # (!\IDL1[3]~input_o\ & ((\IDL1[2]~input_o\ & ((\mem~179_q\))) # (!\IDL1[2]~input_o\ & (\mem~147_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~147_q\,
	datab => \IDL1[3]~input_o\,
	datac => \mem~179_q\,
	datad => \IDL1[2]~input_o\,
	combout => \mem~379_combout\);

-- Location: FF_X31_Y62_N19
\mem~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~243_q\);

-- Location: FF_X31_Y62_N17
\mem~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~211_q\);

-- Location: LCCOMB_X31_Y62_N16
\mem~380\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~380_combout\ = (\mem~379_combout\ & ((\mem~243_q\) # ((!\IDL1[3]~input_o\)))) # (!\mem~379_combout\ & (((\mem~211_q\ & \IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~379_combout\,
	datab => \mem~243_q\,
	datac => \mem~211_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~380_combout\);

-- Location: FF_X33_Y60_N29
\mem~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~259_q\);

-- Location: FF_X34_Y60_N15
\mem~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~163_q\);

-- Location: FF_X34_Y60_N21
\mem~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~195_q\);

-- Location: LCCOMB_X34_Y60_N20
\mem~377\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~377_combout\ = (\IDL1[2]~input_o\ & (((\mem~195_q\) # (\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & (\mem~163_q\ & ((!\IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \mem~163_q\,
	datac => \mem~195_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~377_combout\);

-- Location: FF_X33_Y61_N1
\mem~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~227_q\);

-- Location: LCCOMB_X33_Y61_N0
\mem~378\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~378_combout\ = (\mem~377_combout\ & ((\mem~259_q\) # ((!\IDL1[3]~input_o\)))) # (!\mem~377_combout\ & (((\mem~227_q\ & \IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~259_q\,
	datab => \mem~377_combout\,
	datac => \mem~227_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~378_combout\);

-- Location: LCCOMB_X31_Y61_N14
\mem~381\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~381_combout\ = (\IDL1[0]~input_o\ & (((\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & ((\IDL1[1]~input_o\ & ((\mem~378_combout\))) # (!\IDL1[1]~input_o\ & (\mem~380_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~380_combout\,
	datac => \mem~378_combout\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~381_combout\);

-- Location: FF_X31_Y63_N31
\mem~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~155_q\);

-- Location: FF_X30_Y63_N5
\mem~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~219_q\);

-- Location: LCCOMB_X30_Y63_N4
\mem~375\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~375_combout\ = (\IDL1[2]~input_o\ & (((\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & ((\IDL1[3]~input_o\ & ((\mem~219_q\))) # (!\IDL1[3]~input_o\ & (\mem~155_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~155_q\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~219_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~375_combout\);

-- Location: FF_X31_Y63_N21
\mem~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~187_q\);

-- Location: FF_X30_Y63_N31
\mem~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[5]~input_o\,
	sload => VCC,
	ena => \mem~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~251_q\);

-- Location: LCCOMB_X31_Y63_N20
\mem~376\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~376_combout\ = (\mem~375_combout\ & (((\mem~251_q\)) # (!\IDL1[2]~input_o\))) # (!\mem~375_combout\ & (\IDL1[2]~input_o\ & (\mem~187_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~375_combout\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~187_q\,
	datad => \mem~251_q\,
	combout => \mem~376_combout\);

-- Location: LCCOMB_X31_Y61_N0
\mem~384\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~384_combout\ = (\mem~381_combout\ & ((\mem~383_combout\) # ((!\IDL1[0]~input_o\)))) # (!\mem~381_combout\ & (((\IDL1[0]~input_o\ & \mem~376_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~383_combout\,
	datab => \mem~381_combout\,
	datac => \IDL1[0]~input_o\,
	datad => \mem~376_combout\,
	combout => \mem~384_combout\);

-- Location: LCCOMB_X31_Y61_N30
\mem~395\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~395_combout\ = (\IDL1[4]~input_o\ & ((\mem~384_combout\))) # (!\IDL1[4]~input_o\ & (\mem~394_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem~394_combout\,
	datac => \IDL1[4]~input_o\,
	datad => \mem~384_combout\,
	combout => \mem~395_combout\);

-- Location: IOIBUF_X17_Y67_N1
\DE[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DE(6),
	o => \DE[6]~input_o\);

-- Location: FF_X29_Y55_N9
\mem~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~84_q\);

-- Location: FF_X29_Y55_N23
\mem~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~92_q\);

-- Location: LCCOMB_X29_Y55_N22
\mem~406\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~406_combout\ = (\IDL1[0]~input_o\ & (((\mem~92_q\) # (\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & (\mem~84_q\ & ((!\IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~84_q\,
	datac => \mem~92_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~406_combout\);

-- Location: FF_X30_Y55_N3
\mem~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~100_q\);

-- Location: FF_X30_Y55_N29
\mem~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~108_q\);

-- Location: LCCOMB_X30_Y55_N2
\mem~407\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~407_combout\ = (\IDL1[1]~input_o\ & ((\mem~406_combout\ & ((\mem~108_q\))) # (!\mem~406_combout\ & (\mem~100_q\)))) # (!\IDL1[1]~input_o\ & (\mem~406_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[1]~input_o\,
	datab => \mem~406_combout\,
	datac => \mem~100_q\,
	datad => \mem~108_q\,
	combout => \mem~407_combout\);

-- Location: FF_X32_Y57_N17
\mem~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~68_q\);

-- Location: FF_X32_Y57_N3
\mem~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~52_q\);

-- Location: LCCOMB_X32_Y57_N16
\mem~408\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~408_combout\ = (\IDL1[1]~input_o\ & ((\IDL1[0]~input_o\) # ((\mem~68_q\)))) # (!\IDL1[1]~input_o\ & (!\IDL1[0]~input_o\ & ((\mem~52_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[1]~input_o\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~68_q\,
	datad => \mem~52_q\,
	combout => \mem~408_combout\);

-- Location: FF_X31_Y57_N1
\mem~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~60_q\);

-- Location: FF_X31_Y57_N3
\mem~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~76_q\);

-- Location: LCCOMB_X31_Y57_N0
\mem~409\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~409_combout\ = (\mem~408_combout\ & (((\mem~76_q\)) # (!\IDL1[0]~input_o\))) # (!\mem~408_combout\ & (\IDL1[0]~input_o\ & (\mem~60_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~408_combout\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~60_q\,
	datad => \mem~76_q\,
	combout => \mem~409_combout\);

-- Location: FF_X31_Y41_N27
\mem~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~44_q\);

-- Location: FF_X32_Y41_N27
\mem~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~20_q\);

-- Location: FF_X32_Y41_N17
\mem~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~28_q\);

-- Location: LCCOMB_X32_Y41_N16
\mem~410\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~410_combout\ = (\IDL1[0]~input_o\ & (((\mem~28_q\) # (\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & (\mem~20_q\ & ((!\IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~20_q\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~28_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~410_combout\);

-- Location: FF_X31_Y41_N17
\mem~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~36_q\);

-- Location: LCCOMB_X31_Y41_N16
\mem~411\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~411_combout\ = (\mem~410_combout\ & ((\mem~44_q\) # ((!\IDL1[1]~input_o\)))) # (!\mem~410_combout\ & (((\mem~36_q\ & \IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~44_q\,
	datab => \mem~410_combout\,
	datac => \mem~36_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~411_combout\);

-- Location: LCCOMB_X34_Y57_N28
\mem~412\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~412_combout\ = (\IDL1[2]~input_o\ & ((\mem~409_combout\) # ((\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & (((\mem~411_combout\ & !\IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~409_combout\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~411_combout\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~412_combout\);

-- Location: FF_X29_Y57_N3
\mem~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~116_q\);

-- Location: FF_X29_Y57_N1
\mem~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~132_q\);

-- Location: LCCOMB_X29_Y57_N0
\mem~413\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~413_combout\ = (\IDL1[0]~input_o\ & (((\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & ((\IDL1[1]~input_o\ & ((\mem~132_q\))) # (!\IDL1[1]~input_o\ & (\mem~116_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~116_q\,
	datac => \mem~132_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~413_combout\);

-- Location: FF_X30_Y57_N3
\mem~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~140_q\);

-- Location: FF_X30_Y57_N1
\mem~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~124_q\);

-- Location: LCCOMB_X30_Y57_N0
\mem~414\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~414_combout\ = (\mem~413_combout\ & ((\mem~140_q\) # ((!\IDL1[0]~input_o\)))) # (!\mem~413_combout\ & (((\mem~124_q\ & \IDL1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~413_combout\,
	datab => \mem~140_q\,
	datac => \mem~124_q\,
	datad => \IDL1[0]~input_o\,
	combout => \mem~414_combout\);

-- Location: LCCOMB_X34_Y57_N30
\mem~415\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~415_combout\ = (\mem~412_combout\ & (((\mem~414_combout\) # (!\IDL1[3]~input_o\)))) # (!\mem~412_combout\ & (\mem~407_combout\ & ((\IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~407_combout\,
	datab => \mem~412_combout\,
	datac => \mem~414_combout\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~415_combout\);

-- Location: FF_X30_Y62_N15
\mem~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~244_q\);

-- Location: FF_X30_Y62_N21
\mem~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~180_q\);

-- Location: FF_X32_Y61_N17
\mem~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~148_q\);

-- Location: FF_X32_Y61_N31
\mem~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~212_q\);

-- Location: LCCOMB_X32_Y61_N30
\mem~400\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~400_combout\ = (\IDL1[2]~input_o\ & (((\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & ((\IDL1[3]~input_o\ & ((\mem~212_q\))) # (!\IDL1[3]~input_o\ & (\mem~148_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \mem~148_q\,
	datac => \mem~212_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~400_combout\);

-- Location: LCCOMB_X30_Y62_N20
\mem~401\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~401_combout\ = (\IDL1[2]~input_o\ & ((\mem~400_combout\ & (\mem~244_q\)) # (!\mem~400_combout\ & ((\mem~180_q\))))) # (!\IDL1[2]~input_o\ & (((\mem~400_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~244_q\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~180_q\,
	datad => \mem~400_combout\,
	combout => \mem~401_combout\);

-- Location: FF_X30_Y63_N27
\mem~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~252_q\);

-- Location: FF_X31_Y63_N3
\mem~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~156_q\);

-- Location: FF_X31_Y63_N17
\mem~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~188_q\);

-- Location: LCCOMB_X31_Y63_N16
\mem~398\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~398_combout\ = (\IDL1[2]~input_o\ & (((\mem~188_q\) # (\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & (\mem~156_q\ & ((!\IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \mem~156_q\,
	datac => \mem~188_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~398_combout\);

-- Location: FF_X30_Y63_N17
\mem~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~220_q\);

-- Location: LCCOMB_X30_Y63_N16
\mem~399\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~399_combout\ = (\mem~398_combout\ & ((\mem~252_q\) # ((!\IDL1[3]~input_o\)))) # (!\mem~398_combout\ & (((\mem~220_q\ & \IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~252_q\,
	datab => \mem~398_combout\,
	datac => \mem~220_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~399_combout\);

-- Location: LCCOMB_X33_Y61_N20
\mem~402\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~402_combout\ = (\IDL1[0]~input_o\ & (((\mem~399_combout\) # (\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & (\mem~401_combout\ & ((!\IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~401_combout\,
	datac => \mem~399_combout\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~402_combout\);

-- Location: FF_X31_Y54_N23
\mem~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~172_q\);

-- Location: FF_X31_Y54_N21
\mem~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~204_q\);

-- Location: LCCOMB_X31_Y54_N20
\mem~403\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~403_combout\ = (\IDL1[2]~input_o\ & (((\mem~204_q\) # (\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & (\mem~172_q\ & ((!\IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~172_q\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~204_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~403_combout\);

-- Location: FF_X31_Y56_N19
\mem~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~268_q\);

-- Location: FF_X31_Y56_N1
\mem~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~236_q\);

-- Location: LCCOMB_X31_Y56_N0
\mem~404\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~404_combout\ = (\mem~403_combout\ & ((\mem~268_q\) # ((!\IDL1[3]~input_o\)))) # (!\mem~403_combout\ & (((\mem~236_q\ & \IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~403_combout\,
	datab => \mem~268_q\,
	datac => \mem~236_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~404_combout\);

-- Location: FF_X33_Y60_N15
\mem~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~260_q\);

-- Location: FF_X34_Y60_N17
\mem~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~196_q\);

-- Location: FF_X34_Y60_N19
\mem~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~164_q\);

-- Location: FF_X33_Y61_N27
\mem~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[6]~input_o\,
	sload => VCC,
	ena => \mem~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~228_q\);

-- Location: LCCOMB_X33_Y61_N26
\mem~396\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~396_combout\ = (\IDL1[2]~input_o\ & (((\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & ((\IDL1[3]~input_o\ & ((\mem~228_q\))) # (!\IDL1[3]~input_o\ & (\mem~164_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~164_q\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~228_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~396_combout\);

-- Location: LCCOMB_X34_Y60_N16
\mem~397\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~397_combout\ = (\IDL1[2]~input_o\ & ((\mem~396_combout\ & (\mem~260_q\)) # (!\mem~396_combout\ & ((\mem~196_q\))))) # (!\IDL1[2]~input_o\ & (((\mem~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~260_q\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~196_q\,
	datad => \mem~396_combout\,
	combout => \mem~397_combout\);

-- Location: LCCOMB_X34_Y57_N10
\mem~405\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~405_combout\ = (\IDL1[1]~input_o\ & ((\mem~402_combout\ & (\mem~404_combout\)) # (!\mem~402_combout\ & ((\mem~397_combout\))))) # (!\IDL1[1]~input_o\ & (\mem~402_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[1]~input_o\,
	datab => \mem~402_combout\,
	datac => \mem~404_combout\,
	datad => \mem~397_combout\,
	combout => \mem~405_combout\);

-- Location: LCCOMB_X34_Y57_N16
\mem~416\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~416_combout\ = (\IDL1[4]~input_o\ & ((\mem~405_combout\))) # (!\IDL1[4]~input_o\ & (\mem~415_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~415_combout\,
	datac => \IDL1[4]~input_o\,
	datad => \mem~405_combout\,
	combout => \mem~416_combout\);

-- Location: IOIBUF_X24_Y67_N22
\DE[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DE(7),
	o => \DE[7]~input_o\);

-- Location: FF_X30_Y63_N21
\mem~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~221_q\);

-- Location: FF_X31_Y63_N7
\mem~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~157_q\);

-- Location: LCCOMB_X30_Y63_N20
\mem~417\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~417_combout\ = (\IDL1[2]~input_o\ & (\IDL1[3]~input_o\)) # (!\IDL1[2]~input_o\ & ((\IDL1[3]~input_o\ & (\mem~221_q\)) # (!\IDL1[3]~input_o\ & ((\mem~157_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \IDL1[3]~input_o\,
	datac => \mem~221_q\,
	datad => \mem~157_q\,
	combout => \mem~417_combout\);

-- Location: FF_X31_Y63_N13
\mem~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~189_q\);

-- Location: FF_X30_Y63_N23
\mem~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~253_q\);

-- Location: LCCOMB_X31_Y63_N12
\mem~418\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~418_combout\ = (\mem~417_combout\ & (((\mem~253_q\)) # (!\IDL1[2]~input_o\))) # (!\mem~417_combout\ & (\IDL1[2]~input_o\ & (\mem~189_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~417_combout\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~189_q\,
	datad => \mem~253_q\,
	combout => \mem~418_combout\);

-- Location: FF_X31_Y54_N11
\mem~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~173_q\);

-- Location: FF_X31_Y56_N13
\mem~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~237_q\);

-- Location: LCCOMB_X31_Y56_N12
\mem~424\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~424_combout\ = (\IDL1[2]~input_o\ & (((\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & ((\IDL1[3]~input_o\ & ((\mem~237_q\))) # (!\IDL1[3]~input_o\ & (\mem~173_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[2]~input_o\,
	datab => \mem~173_q\,
	datac => \mem~237_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~424_combout\);

-- Location: FF_X31_Y54_N1
\mem~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~205_q\);

-- Location: FF_X31_Y56_N15
\mem~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~269_q\);

-- Location: LCCOMB_X31_Y54_N0
\mem~425\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~425_combout\ = (\mem~424_combout\ & (((\mem~269_q\)) # (!\IDL1[2]~input_o\))) # (!\mem~424_combout\ & (\IDL1[2]~input_o\ & (\mem~205_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~424_combout\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~205_q\,
	datad => \mem~269_q\,
	combout => \mem~425_combout\);

-- Location: FF_X34_Y60_N31
\mem~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~165_q\);

-- Location: FF_X34_Y60_N13
\mem~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~197_q\);

-- Location: LCCOMB_X34_Y60_N12
\mem~419\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~419_combout\ = (\IDL1[2]~input_o\ & (((\mem~197_q\) # (\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & (\mem~165_q\ & ((!\IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~165_q\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~197_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~419_combout\);

-- Location: FF_X33_Y60_N17
\mem~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~261_q\);

-- Location: FF_X33_Y61_N7
\mem~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~229_q\);

-- Location: LCCOMB_X33_Y61_N6
\mem~420\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~420_combout\ = (\mem~419_combout\ & ((\mem~261_q\) # ((!\IDL1[3]~input_o\)))) # (!\mem~419_combout\ & (((\mem~229_q\ & \IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~419_combout\,
	datab => \mem~261_q\,
	datac => \mem~229_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~420_combout\);

-- Location: FF_X33_Y60_N19
\mem~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~245_q\);

-- Location: FF_X32_Y61_N5
\mem~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~149_q\);

-- Location: FF_X33_Y61_N17
\mem~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~181_q\);

-- Location: LCCOMB_X33_Y61_N16
\mem~421\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~421_combout\ = (\IDL1[2]~input_o\ & (((\mem~181_q\) # (\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & (\mem~149_q\ & ((!\IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~149_q\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~181_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~421_combout\);

-- Location: FF_X32_Y61_N19
\mem~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~213_q\);

-- Location: LCCOMB_X32_Y61_N18
\mem~422\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~422_combout\ = (\mem~421_combout\ & ((\mem~245_q\) # ((!\IDL1[3]~input_o\)))) # (!\mem~421_combout\ & (((\mem~213_q\ & \IDL1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~245_q\,
	datab => \mem~421_combout\,
	datac => \mem~213_q\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~422_combout\);

-- Location: LCCOMB_X33_Y61_N10
\mem~423\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~423_combout\ = (\IDL1[0]~input_o\ & (((\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & ((\IDL1[1]~input_o\ & (\mem~420_combout\)) # (!\IDL1[1]~input_o\ & ((\mem~422_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~420_combout\,
	datab => \mem~422_combout\,
	datac => \IDL1[0]~input_o\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~423_combout\);

-- Location: LCCOMB_X33_Y61_N12
\mem~426\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~426_combout\ = (\IDL1[0]~input_o\ & ((\mem~423_combout\ & ((\mem~425_combout\))) # (!\mem~423_combout\ & (\mem~418_combout\)))) # (!\IDL1[0]~input_o\ & (((\mem~423_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~418_combout\,
	datac => \mem~425_combout\,
	datad => \mem~423_combout\,
	combout => \mem~426_combout\);

-- Location: FF_X31_Y57_N29
\mem~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~61_q\);

-- Location: FF_X32_Y57_N7
\mem~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~53_q\);

-- Location: LCCOMB_X31_Y57_N28
\mem~427\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~427_combout\ = (\IDL1[0]~input_o\ & ((\IDL1[1]~input_o\) # ((\mem~61_q\)))) # (!\IDL1[0]~input_o\ & (!\IDL1[1]~input_o\ & ((\mem~53_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \IDL1[1]~input_o\,
	datac => \mem~61_q\,
	datad => \mem~53_q\,
	combout => \mem~427_combout\);

-- Location: FF_X32_Y57_N29
\mem~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~69_q\);

-- Location: FF_X31_Y57_N15
\mem~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~77_q\);

-- Location: LCCOMB_X32_Y57_N28
\mem~428\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~428_combout\ = (\mem~427_combout\ & (((\mem~77_q\)) # (!\IDL1[1]~input_o\))) # (!\mem~427_combout\ & (\IDL1[1]~input_o\ & (\mem~69_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~427_combout\,
	datab => \IDL1[1]~input_o\,
	datac => \mem~69_q\,
	datad => \mem~77_q\,
	combout => \mem~428_combout\);

-- Location: FF_X30_Y57_N13
\mem~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~125_q\);

-- Location: FF_X29_Y57_N31
\mem~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~117_q\);

-- Location: LCCOMB_X30_Y57_N12
\mem~434\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~434_combout\ = (\IDL1[1]~input_o\ & (\IDL1[0]~input_o\)) # (!\IDL1[1]~input_o\ & ((\IDL1[0]~input_o\ & (\mem~125_q\)) # (!\IDL1[0]~input_o\ & ((\mem~117_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[1]~input_o\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~125_q\,
	datad => \mem~117_q\,
	combout => \mem~434_combout\);

-- Location: FF_X30_Y57_N23
\mem~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~141_q\);

-- Location: FF_X29_Y57_N5
\mem~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~133_q\);

-- Location: LCCOMB_X29_Y57_N4
\mem~435\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~435_combout\ = (\mem~434_combout\ & ((\mem~141_q\) # ((!\IDL1[1]~input_o\)))) # (!\mem~434_combout\ & (((\mem~133_q\ & \IDL1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~434_combout\,
	datab => \mem~141_q\,
	datac => \mem~133_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~435_combout\);

-- Location: FF_X29_Y55_N13
\mem~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~85_q\);

-- Location: FF_X30_Y55_N31
\mem~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~101_q\);

-- Location: LCCOMB_X30_Y55_N30
\mem~429\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~429_combout\ = (\IDL1[0]~input_o\ & (((\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & ((\IDL1[1]~input_o\ & ((\mem~101_q\))) # (!\IDL1[1]~input_o\ & (\mem~85_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~85_q\,
	datac => \mem~101_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~429_combout\);

-- Location: FF_X29_Y55_N11
\mem~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~93_q\);

-- Location: FF_X30_Y55_N25
\mem~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~109_q\);

-- Location: LCCOMB_X29_Y55_N10
\mem~430\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~430_combout\ = (\IDL1[0]~input_o\ & ((\mem~429_combout\ & ((\mem~109_q\))) # (!\mem~429_combout\ & (\mem~93_q\)))) # (!\IDL1[0]~input_o\ & (\mem~429_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[0]~input_o\,
	datab => \mem~429_combout\,
	datac => \mem~93_q\,
	datad => \mem~109_q\,
	combout => \mem~430_combout\);

-- Location: FF_X31_Y41_N15
\mem~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~45_q\);

-- Location: FF_X32_Y41_N29
\mem~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~29_q\);

-- Location: FF_X32_Y41_N23
\mem~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~21_q\);

-- Location: FF_X31_Y41_N29
\mem~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	asdata => \DE[7]~input_o\,
	sload => VCC,
	ena => \mem~647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~37_q\);

-- Location: LCCOMB_X31_Y41_N28
\mem~431\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~431_combout\ = (\IDL1[0]~input_o\ & (((\IDL1[1]~input_o\)))) # (!\IDL1[0]~input_o\ & ((\IDL1[1]~input_o\ & ((\mem~37_q\))) # (!\IDL1[1]~input_o\ & (\mem~21_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~21_q\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~37_q\,
	datad => \IDL1[1]~input_o\,
	combout => \mem~431_combout\);

-- Location: LCCOMB_X32_Y41_N28
\mem~432\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~432_combout\ = (\IDL1[0]~input_o\ & ((\mem~431_combout\ & (\mem~45_q\)) # (!\mem~431_combout\ & ((\mem~29_q\))))) # (!\IDL1[0]~input_o\ & (((\mem~431_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~45_q\,
	datab => \IDL1[0]~input_o\,
	datac => \mem~29_q\,
	datad => \mem~431_combout\,
	combout => \mem~432_combout\);

-- Location: LCCOMB_X34_Y60_N0
\mem~433\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~433_combout\ = (\IDL1[2]~input_o\ & (((\IDL1[3]~input_o\)))) # (!\IDL1[2]~input_o\ & ((\IDL1[3]~input_o\ & (\mem~430_combout\)) # (!\IDL1[3]~input_o\ & ((\mem~432_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~430_combout\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~432_combout\,
	datad => \IDL1[3]~input_o\,
	combout => \mem~433_combout\);

-- Location: LCCOMB_X34_Y60_N10
\mem~436\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~436_combout\ = (\IDL1[2]~input_o\ & ((\mem~433_combout\ & ((\mem~435_combout\))) # (!\mem~433_combout\ & (\mem~428_combout\)))) # (!\IDL1[2]~input_o\ & (((\mem~433_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~428_combout\,
	datab => \IDL1[2]~input_o\,
	datac => \mem~435_combout\,
	datad => \mem~433_combout\,
	combout => \mem~436_combout\);

-- Location: LCCOMB_X34_Y60_N28
\mem~437\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~437_combout\ = (\IDL1[4]~input_o\ & (\mem~426_combout\)) # (!\IDL1[4]~input_o\ & ((\mem~436_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL1[4]~input_o\,
	datac => \mem~426_combout\,
	datad => \mem~436_combout\,
	combout => \mem~437_combout\);

-- Location: IOIBUF_X19_Y67_N8
\IDL2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDL2(0),
	o => \IDL2[0]~input_o\);

-- Location: IOIBUF_X29_Y67_N15
\IDL2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDL2(1),
	o => \IDL2[1]~input_o\);

-- Location: LCCOMB_X29_Y57_N10
\mem~455\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~455_combout\ = (\IDL2[0]~input_o\ & (((\IDL2[1]~input_o\)))) # (!\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\ & (\mem~126_q\)) # (!\IDL2[1]~input_o\ & ((\mem~110_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~126_q\,
	datac => \mem~110_q\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~455_combout\);

-- Location: LCCOMB_X30_Y57_N10
\mem~456\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~456_combout\ = (\IDL2[0]~input_o\ & ((\mem~455_combout\ & ((\mem~134_q\))) # (!\mem~455_combout\ & (\mem~118_q\)))) # (!\IDL2[0]~input_o\ & (((\mem~455_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~118_q\,
	datac => \mem~134_q\,
	datad => \mem~455_combout\,
	combout => \mem~456_combout\);

-- Location: IOIBUF_X33_Y67_N1
\IDL2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDL2(3),
	o => \IDL2[3]~input_o\);

-- Location: LCCOMB_X32_Y41_N10
\mem~452\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~452_combout\ = (\IDL2[0]~input_o\ & ((\mem~22_q\) # ((\IDL2[1]~input_o\)))) # (!\IDL2[0]~input_o\ & (((\mem~14_q\ & !\IDL2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~22_q\,
	datac => \mem~14_q\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~452_combout\);

-- Location: LCCOMB_X34_Y57_N18
\mem~453\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~453_combout\ = (\mem~452_combout\ & (((\mem~38_q\) # (!\IDL2[1]~input_o\)))) # (!\mem~452_combout\ & (\mem~30_q\ & ((\IDL2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~452_combout\,
	datab => \mem~30_q\,
	datac => \mem~38_q\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~453_combout\);

-- Location: IOIBUF_X33_Y67_N15
\IDL2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDL2(2),
	o => \IDL2[2]~input_o\);

-- Location: LCCOMB_X32_Y57_N18
\mem~450\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~450_combout\ = (\IDL2[0]~input_o\ & (\IDL2[1]~input_o\)) # (!\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\ & ((\mem~62_q\))) # (!\IDL2[1]~input_o\ & (\mem~46_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \IDL2[1]~input_o\,
	datac => \mem~46_q\,
	datad => \mem~62_q\,
	combout => \mem~450_combout\);

-- Location: LCCOMB_X31_Y57_N10
\mem~451\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~451_combout\ = (\IDL2[0]~input_o\ & ((\mem~450_combout\ & ((\mem~70_q\))) # (!\mem~450_combout\ & (\mem~54_q\)))) # (!\IDL2[0]~input_o\ & (((\mem~450_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~54_q\,
	datac => \mem~70_q\,
	datad => \mem~450_combout\,
	combout => \mem~451_combout\);

-- Location: LCCOMB_X31_Y60_N22
\mem~454\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~454_combout\ = (\IDL2[2]~input_o\ & (((\IDL2[3]~input_o\) # (\mem~451_combout\)))) # (!\IDL2[2]~input_o\ & (\mem~453_combout\ & (!\IDL2[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~453_combout\,
	datab => \IDL2[2]~input_o\,
	datac => \IDL2[3]~input_o\,
	datad => \mem~451_combout\,
	combout => \mem~454_combout\);

-- Location: LCCOMB_X29_Y55_N18
\mem~448\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~448_combout\ = (\IDL2[0]~input_o\ & ((\mem~86_q\) # ((\IDL2[1]~input_o\)))) # (!\IDL2[0]~input_o\ & (((\mem~78_q\ & !\IDL2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~86_q\,
	datac => \mem~78_q\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~448_combout\);

-- Location: LCCOMB_X31_Y60_N10
\mem~449\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~449_combout\ = (\IDL2[1]~input_o\ & ((\mem~448_combout\ & (\mem~102_q\)) # (!\mem~448_combout\ & ((\mem~94_q\))))) # (!\IDL2[1]~input_o\ & (\mem~448_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[1]~input_o\,
	datab => \mem~448_combout\,
	datac => \mem~102_q\,
	datad => \mem~94_q\,
	combout => \mem~449_combout\);

-- Location: LCCOMB_X31_Y60_N24
\mem~457\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~457_combout\ = (\IDL2[3]~input_o\ & ((\mem~454_combout\ & (\mem~456_combout\)) # (!\mem~454_combout\ & ((\mem~449_combout\))))) # (!\IDL2[3]~input_o\ & (((\mem~454_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~456_combout\,
	datab => \IDL2[3]~input_o\,
	datac => \mem~454_combout\,
	datad => \mem~449_combout\,
	combout => \mem~457_combout\);

-- Location: IOIBUF_X24_Y67_N15
\IDL2[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDL2(4),
	o => \IDL2[4]~input_o\);

-- Location: LCCOMB_X31_Y54_N26
\mem~445\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~445_combout\ = (\IDL2[3]~input_o\ & (((\IDL2[2]~input_o\)))) # (!\IDL2[3]~input_o\ & ((\IDL2[2]~input_o\ & (\mem~198_q\)) # (!\IDL2[2]~input_o\ & ((\mem~166_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[3]~input_o\,
	datab => \mem~198_q\,
	datac => \mem~166_q\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~445_combout\);

-- Location: LCCOMB_X31_Y56_N2
\mem~446\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~446_combout\ = (\mem~445_combout\ & (((\mem~262_q\) # (!\IDL2[3]~input_o\)))) # (!\mem~445_combout\ & (\mem~230_q\ & ((\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~445_combout\,
	datab => \mem~230_q\,
	datac => \mem~262_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~446_combout\);

-- Location: LCCOMB_X31_Y63_N10
\mem~440\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~440_combout\ = (\IDL2[2]~input_o\ & ((\mem~182_q\) # ((\IDL2[3]~input_o\)))) # (!\IDL2[2]~input_o\ & (((\mem~150_q\ & !\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~182_q\,
	datac => \mem~150_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~440_combout\);

-- Location: LCCOMB_X30_Y63_N2
\mem~441\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~441_combout\ = (\mem~440_combout\ & (((\mem~246_q\) # (!\IDL2[3]~input_o\)))) # (!\mem~440_combout\ & (\mem~214_q\ & ((\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~440_combout\,
	datab => \mem~214_q\,
	datac => \mem~246_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~441_combout\);

-- Location: LCCOMB_X32_Y61_N10
\mem~442\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~442_combout\ = (\IDL2[2]~input_o\ & (((\IDL2[3]~input_o\)))) # (!\IDL2[2]~input_o\ & ((\IDL2[3]~input_o\ & (\mem~206_q\)) # (!\IDL2[3]~input_o\ & ((\mem~142_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~206_q\,
	datac => \mem~142_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~442_combout\);

-- Location: LCCOMB_X33_Y60_N2
\mem~443\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~443_combout\ = (\IDL2[2]~input_o\ & ((\mem~442_combout\ & ((\mem~238_q\))) # (!\mem~442_combout\ & (\mem~174_q\)))) # (!\IDL2[2]~input_o\ & (((\mem~442_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~174_q\,
	datac => \mem~238_q\,
	datad => \mem~442_combout\,
	combout => \mem~443_combout\);

-- Location: LCCOMB_X31_Y60_N26
\mem~444\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~444_combout\ = (\IDL2[0]~input_o\ & ((\mem~441_combout\) # ((\IDL2[1]~input_o\)))) # (!\IDL2[0]~input_o\ & (((!\IDL2[1]~input_o\ & \mem~443_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~441_combout\,
	datab => \IDL2[0]~input_o\,
	datac => \IDL2[1]~input_o\,
	datad => \mem~443_combout\,
	combout => \mem~444_combout\);

-- Location: LCCOMB_X32_Y60_N2
\mem~438\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~438_combout\ = (\IDL2[2]~input_o\ & (\IDL2[3]~input_o\)) # (!\IDL2[2]~input_o\ & ((\IDL2[3]~input_o\ & ((\mem~222_q\))) # (!\IDL2[3]~input_o\ & (\mem~158_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \IDL2[3]~input_o\,
	datac => \mem~158_q\,
	datad => \mem~222_q\,
	combout => \mem~438_combout\);

-- Location: LCCOMB_X33_Y60_N8
\mem~439\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~439_combout\ = (\IDL2[2]~input_o\ & ((\mem~438_combout\ & ((\mem~254_q\))) # (!\mem~438_combout\ & (\mem~190_q\)))) # (!\IDL2[2]~input_o\ & (((\mem~438_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~190_q\,
	datac => \mem~254_q\,
	datad => \mem~438_combout\,
	combout => \mem~439_combout\);

-- Location: LCCOMB_X31_Y60_N28
\mem~447\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~447_combout\ = (\IDL2[1]~input_o\ & ((\mem~444_combout\ & (\mem~446_combout\)) # (!\mem~444_combout\ & ((\mem~439_combout\))))) # (!\IDL2[1]~input_o\ & (((\mem~444_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[1]~input_o\,
	datab => \mem~446_combout\,
	datac => \mem~444_combout\,
	datad => \mem~439_combout\,
	combout => \mem~447_combout\);

-- Location: LCCOMB_X31_Y60_N18
\mem~458\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~458_combout\ = (\IDL2[4]~input_o\ & ((\mem~447_combout\))) # (!\IDL2[4]~input_o\ & (\mem~457_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem~457_combout\,
	datac => \IDL2[4]~input_o\,
	datad => \mem~447_combout\,
	combout => \mem~458_combout\);

-- Location: LCCOMB_X32_Y57_N22
\mem~469\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~469_combout\ = (\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\) # ((\mem~55_q\)))) # (!\IDL2[0]~input_o\ & (!\IDL2[1]~input_o\ & (\mem~47_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \IDL2[1]~input_o\,
	datac => \mem~47_q\,
	datad => \mem~55_q\,
	combout => \mem~469_combout\);

-- Location: LCCOMB_X31_Y57_N30
\mem~470\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~470_combout\ = (\IDL2[1]~input_o\ & ((\mem~469_combout\ & (\mem~71_q\)) # (!\mem~469_combout\ & ((\mem~63_q\))))) # (!\IDL2[1]~input_o\ & (\mem~469_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[1]~input_o\,
	datab => \mem~469_combout\,
	datac => \mem~71_q\,
	datad => \mem~63_q\,
	combout => \mem~470_combout\);

-- Location: LCCOMB_X30_Y56_N16
\mem~471\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~471_combout\ = (\IDL2[0]~input_o\ & (\IDL2[1]~input_o\)) # (!\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\ & ((\mem~95_q\))) # (!\IDL2[1]~input_o\ & (\mem~79_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \IDL2[1]~input_o\,
	datac => \mem~79_q\,
	datad => \mem~95_q\,
	combout => \mem~471_combout\);

-- Location: LCCOMB_X30_Y59_N16
\mem~472\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~472_combout\ = (\mem~471_combout\ & (((\mem~103_q\) # (!\IDL2[0]~input_o\)))) # (!\mem~471_combout\ & (\mem~87_q\ & ((\IDL2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~471_combout\,
	datab => \mem~87_q\,
	datac => \mem~103_q\,
	datad => \IDL2[0]~input_o\,
	combout => \mem~472_combout\);

-- Location: LCCOMB_X32_Y41_N14
\mem~473\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~473_combout\ = (\IDL2[0]~input_o\ & (\IDL2[1]~input_o\)) # (!\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\ & ((\mem~31_q\))) # (!\IDL2[1]~input_o\ & (\mem~15_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \IDL2[1]~input_o\,
	datac => \mem~15_q\,
	datad => \mem~31_q\,
	combout => \mem~473_combout\);

-- Location: LCCOMB_X31_Y41_N18
\mem~474\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~474_combout\ = (\IDL2[0]~input_o\ & ((\mem~473_combout\ & (\mem~39_q\)) # (!\mem~473_combout\ & ((\mem~23_q\))))) # (!\IDL2[0]~input_o\ & (\mem~473_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~473_combout\,
	datac => \mem~39_q\,
	datad => \mem~23_q\,
	combout => \mem~474_combout\);

-- Location: LCCOMB_X31_Y60_N16
\mem~475\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~475_combout\ = (\IDL2[3]~input_o\ & ((\mem~472_combout\) # ((\IDL2[2]~input_o\)))) # (!\IDL2[3]~input_o\ & (((\mem~474_combout\ & !\IDL2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~472_combout\,
	datab => \mem~474_combout\,
	datac => \IDL2[3]~input_o\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~475_combout\);

-- Location: LCCOMB_X29_Y57_N6
\mem~476\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~476_combout\ = (\IDL2[0]~input_o\ & ((\mem~119_q\) # ((\IDL2[1]~input_o\)))) # (!\IDL2[0]~input_o\ & (((\mem~111_q\ & !\IDL2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~119_q\,
	datac => \mem~111_q\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~476_combout\);

-- Location: LCCOMB_X30_Y57_N30
\mem~477\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~477_combout\ = (\mem~476_combout\ & (((\mem~135_q\) # (!\IDL2[1]~input_o\)))) # (!\mem~476_combout\ & (\mem~127_q\ & ((\IDL2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~127_q\,
	datab => \mem~476_combout\,
	datac => \mem~135_q\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~477_combout\);

-- Location: LCCOMB_X31_Y60_N2
\mem~478\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~478_combout\ = (\mem~475_combout\ & (((\mem~477_combout\) # (!\IDL2[2]~input_o\)))) # (!\mem~475_combout\ & (\mem~470_combout\ & ((\IDL2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~470_combout\,
	datab => \mem~475_combout\,
	datac => \mem~477_combout\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~478_combout\);

-- Location: LCCOMB_X31_Y63_N14
\mem~459\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~459_combout\ = (\IDL2[2]~input_o\ & (\IDL2[3]~input_o\)) # (!\IDL2[2]~input_o\ & ((\IDL2[3]~input_o\ & ((\mem~215_q\))) # (!\IDL2[3]~input_o\ & (\mem~151_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \IDL2[3]~input_o\,
	datac => \mem~151_q\,
	datad => \mem~215_q\,
	combout => \mem~459_combout\);

-- Location: LCCOMB_X30_Y63_N14
\mem~460\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~460_combout\ = (\mem~459_combout\ & (((\mem~247_q\) # (!\IDL2[2]~input_o\)))) # (!\mem~459_combout\ & (\mem~183_q\ & ((\IDL2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~183_q\,
	datab => \mem~459_combout\,
	datac => \mem~247_q\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~460_combout\);

-- Location: LCCOMB_X31_Y54_N30
\mem~466\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~466_combout\ = (\IDL2[3]~input_o\ & ((\mem~231_q\) # ((\IDL2[2]~input_o\)))) # (!\IDL2[3]~input_o\ & (((\mem~167_q\ & !\IDL2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[3]~input_o\,
	datab => \mem~231_q\,
	datac => \mem~167_q\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~466_combout\);

-- Location: LCCOMB_X31_Y56_N22
\mem~467\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~467_combout\ = (\IDL2[2]~input_o\ & ((\mem~466_combout\ & ((\mem~263_q\))) # (!\mem~466_combout\ & (\mem~199_q\)))) # (!\IDL2[2]~input_o\ & (((\mem~466_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~199_q\,
	datac => \mem~263_q\,
	datad => \mem~466_combout\,
	combout => \mem~467_combout\);

-- Location: LCCOMB_X32_Y60_N22
\mem~461\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~461_combout\ = (\IDL2[2]~input_o\ & ((\IDL2[3]~input_o\) # ((\mem~191_q\)))) # (!\IDL2[2]~input_o\ & (!\IDL2[3]~input_o\ & (\mem~159_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \IDL2[3]~input_o\,
	datac => \mem~159_q\,
	datad => \mem~191_q\,
	combout => \mem~461_combout\);

-- Location: LCCOMB_X33_Y60_N4
\mem~462\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~462_combout\ = (\mem~461_combout\ & (((\mem~255_q\) # (!\IDL2[3]~input_o\)))) # (!\mem~461_combout\ & (\mem~223_q\ & ((\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~223_q\,
	datab => \mem~461_combout\,
	datac => \mem~255_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~462_combout\);

-- Location: LCCOMB_X32_Y61_N14
\mem~463\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~463_combout\ = (\IDL2[3]~input_o\ & (((\IDL2[2]~input_o\)))) # (!\IDL2[3]~input_o\ & ((\IDL2[2]~input_o\ & (\mem~175_q\)) # (!\IDL2[2]~input_o\ & ((\mem~143_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~175_q\,
	datab => \IDL2[3]~input_o\,
	datac => \mem~143_q\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~463_combout\);

-- Location: LCCOMB_X33_Y60_N30
\mem~464\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~464_combout\ = (\mem~463_combout\ & (((\mem~239_q\) # (!\IDL2[3]~input_o\)))) # (!\mem~463_combout\ & (\mem~207_q\ & ((\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~463_combout\,
	datab => \mem~207_q\,
	datac => \mem~239_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~464_combout\);

-- Location: LCCOMB_X31_Y60_N20
\mem~465\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~465_combout\ = (\IDL2[1]~input_o\ & ((\IDL2[0]~input_o\) # ((\mem~462_combout\)))) # (!\IDL2[1]~input_o\ & (!\IDL2[0]~input_o\ & ((\mem~464_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[1]~input_o\,
	datab => \IDL2[0]~input_o\,
	datac => \mem~462_combout\,
	datad => \mem~464_combout\,
	combout => \mem~465_combout\);

-- Location: LCCOMB_X31_Y60_N6
\mem~468\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~468_combout\ = (\IDL2[0]~input_o\ & ((\mem~465_combout\ & ((\mem~467_combout\))) # (!\mem~465_combout\ & (\mem~460_combout\)))) # (!\IDL2[0]~input_o\ & (((\mem~465_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~460_combout\,
	datab => \mem~467_combout\,
	datac => \IDL2[0]~input_o\,
	datad => \mem~465_combout\,
	combout => \mem~468_combout\);

-- Location: LCCOMB_X31_Y60_N12
\mem~479\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~479_combout\ = (\IDL2[4]~input_o\ & ((\mem~468_combout\))) # (!\IDL2[4]~input_o\ & (\mem~478_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem~478_combout\,
	datac => \IDL2[4]~input_o\,
	datad => \mem~468_combout\,
	combout => \mem~479_combout\);

-- Location: LCCOMB_X32_Y41_N18
\mem~494\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~494_combout\ = (\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\) # ((\mem~24_q\)))) # (!\IDL2[0]~input_o\ & (!\IDL2[1]~input_o\ & (\mem~16_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \IDL2[1]~input_o\,
	datac => \mem~16_q\,
	datad => \mem~24_q\,
	combout => \mem~494_combout\);

-- Location: LCCOMB_X31_Y41_N30
\mem~495\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~495_combout\ = (\IDL2[1]~input_o\ & ((\mem~494_combout\ & ((\mem~40_q\))) # (!\mem~494_combout\ & (\mem~32_q\)))) # (!\IDL2[1]~input_o\ & (((\mem~494_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[1]~input_o\,
	datab => \mem~32_q\,
	datac => \mem~40_q\,
	datad => \mem~494_combout\,
	combout => \mem~495_combout\);

-- Location: LCCOMB_X32_Y57_N10
\mem~492\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~492_combout\ = (\IDL2[0]~input_o\ & (((\IDL2[1]~input_o\)))) # (!\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\ & (\mem~64_q\)) # (!\IDL2[1]~input_o\ & ((\mem~48_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~64_q\,
	datac => \mem~48_q\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~492_combout\);

-- Location: LCCOMB_X31_Y57_N26
\mem~493\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~493_combout\ = (\IDL2[0]~input_o\ & ((\mem~492_combout\ & (\mem~72_q\)) # (!\mem~492_combout\ & ((\mem~56_q\))))) # (!\IDL2[0]~input_o\ & (\mem~492_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~492_combout\,
	datac => \mem~72_q\,
	datad => \mem~56_q\,
	combout => \mem~493_combout\);

-- Location: LCCOMB_X30_Y59_N10
\mem~496\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~496_combout\ = (\IDL2[2]~input_o\ & (((\mem~493_combout\) # (\IDL2[3]~input_o\)))) # (!\IDL2[2]~input_o\ & (\mem~495_combout\ & ((!\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~495_combout\,
	datac => \mem~493_combout\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~496_combout\);

-- Location: LCCOMB_X29_Y55_N0
\mem~490\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~490_combout\ = (\IDL2[1]~input_o\ & (((\IDL2[0]~input_o\)))) # (!\IDL2[1]~input_o\ & ((\IDL2[0]~input_o\ & (\mem~88_q\)) # (!\IDL2[0]~input_o\ & ((\mem~80_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~88_q\,
	datab => \IDL2[1]~input_o\,
	datac => \mem~80_q\,
	datad => \IDL2[0]~input_o\,
	combout => \mem~490_combout\);

-- Location: LCCOMB_X31_Y60_N8
\mem~491\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~491_combout\ = (\IDL2[1]~input_o\ & ((\mem~490_combout\ & ((\mem~104_q\))) # (!\mem~490_combout\ & (\mem~96_q\)))) # (!\IDL2[1]~input_o\ & (((\mem~490_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~96_q\,
	datab => \IDL2[1]~input_o\,
	datac => \mem~104_q\,
	datad => \mem~490_combout\,
	combout => \mem~491_combout\);

-- Location: LCCOMB_X29_Y57_N26
\mem~497\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~497_combout\ = (\IDL2[0]~input_o\ & (((\IDL2[1]~input_o\)))) # (!\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\ & (\mem~128_q\)) # (!\IDL2[1]~input_o\ & ((\mem~112_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~128_q\,
	datac => \mem~112_q\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~497_combout\);

-- Location: LCCOMB_X30_Y57_N18
\mem~498\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~498_combout\ = (\mem~497_combout\ & (((\mem~136_q\) # (!\IDL2[0]~input_o\)))) # (!\mem~497_combout\ & (\mem~120_q\ & ((\IDL2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~497_combout\,
	datab => \mem~120_q\,
	datac => \mem~136_q\,
	datad => \IDL2[0]~input_o\,
	combout => \mem~498_combout\);

-- Location: LCCOMB_X30_Y59_N4
\mem~499\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~499_combout\ = (\mem~496_combout\ & (((\mem~498_combout\) # (!\IDL2[3]~input_o\)))) # (!\mem~496_combout\ & (\mem~491_combout\ & ((\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~496_combout\,
	datab => \mem~491_combout\,
	datac => \mem~498_combout\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~499_combout\);

-- Location: LCCOMB_X32_Y60_N28
\mem~480\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~480_combout\ = (\IDL2[2]~input_o\ & (\IDL2[3]~input_o\)) # (!\IDL2[2]~input_o\ & ((\IDL2[3]~input_o\ & ((\mem~224_q\))) # (!\IDL2[3]~input_o\ & (\mem~160_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \IDL2[3]~input_o\,
	datac => \mem~160_q\,
	datad => \mem~224_q\,
	combout => \mem~480_combout\);

-- Location: LCCOMB_X30_Y59_N26
\mem~481\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~481_combout\ = (\mem~480_combout\ & (((\mem~256_q\) # (!\IDL2[2]~input_o\)))) # (!\mem~480_combout\ & (\mem~192_q\ & ((\IDL2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~480_combout\,
	datab => \mem~192_q\,
	datac => \mem~256_q\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~481_combout\);

-- Location: LCCOMB_X31_Y54_N2
\mem~487\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~487_combout\ = (\IDL2[3]~input_o\ & (((\IDL2[2]~input_o\)))) # (!\IDL2[3]~input_o\ & ((\IDL2[2]~input_o\ & (\mem~200_q\)) # (!\IDL2[2]~input_o\ & ((\mem~168_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[3]~input_o\,
	datab => \mem~200_q\,
	datac => \mem~168_q\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~487_combout\);

-- Location: LCCOMB_X31_Y56_N10
\mem~488\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~488_combout\ = (\mem~487_combout\ & (((\mem~264_q\) # (!\IDL2[3]~input_o\)))) # (!\mem~487_combout\ & (\mem~232_q\ & ((\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~487_combout\,
	datab => \mem~232_q\,
	datac => \mem~264_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~488_combout\);

-- Location: LCCOMB_X32_Y61_N2
\mem~484\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~484_combout\ = (\IDL2[2]~input_o\ & (((\IDL2[3]~input_o\)))) # (!\IDL2[2]~input_o\ & ((\IDL2[3]~input_o\ & (\mem~208_q\)) # (!\IDL2[3]~input_o\ & ((\mem~144_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~208_q\,
	datac => \mem~144_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~484_combout\);

-- Location: LCCOMB_X30_Y61_N24
\mem~485\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~485_combout\ = (\mem~484_combout\ & (((\mem~240_q\) # (!\IDL2[2]~input_o\)))) # (!\mem~484_combout\ & (\mem~176_q\ & ((\IDL2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~484_combout\,
	datab => \mem~176_q\,
	datac => \mem~240_q\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~485_combout\);

-- Location: LCCOMB_X31_Y63_N26
\mem~482\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~482_combout\ = (\IDL2[2]~input_o\ & ((\mem~184_q\) # ((\IDL2[3]~input_o\)))) # (!\IDL2[2]~input_o\ & (((\mem~152_q\ & !\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~184_q\,
	datac => \mem~152_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~482_combout\);

-- Location: LCCOMB_X30_Y63_N10
\mem~483\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~483_combout\ = (\mem~482_combout\ & (((\mem~248_q\) # (!\IDL2[3]~input_o\)))) # (!\mem~482_combout\ & (\mem~216_q\ & ((\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~482_combout\,
	datab => \mem~216_q\,
	datac => \mem~248_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~483_combout\);

-- Location: LCCOMB_X30_Y59_N6
\mem~486\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~486_combout\ = (\IDL2[1]~input_o\ & (((\IDL2[0]~input_o\)))) # (!\IDL2[1]~input_o\ & ((\IDL2[0]~input_o\ & ((\mem~483_combout\))) # (!\IDL2[0]~input_o\ & (\mem~485_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~485_combout\,
	datab => \mem~483_combout\,
	datac => \IDL2[1]~input_o\,
	datad => \IDL2[0]~input_o\,
	combout => \mem~486_combout\);

-- Location: LCCOMB_X30_Y59_N24
\mem~489\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~489_combout\ = (\IDL2[1]~input_o\ & ((\mem~486_combout\ & ((\mem~488_combout\))) # (!\mem~486_combout\ & (\mem~481_combout\)))) # (!\IDL2[1]~input_o\ & (((\mem~486_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~481_combout\,
	datab => \mem~488_combout\,
	datac => \IDL2[1]~input_o\,
	datad => \mem~486_combout\,
	combout => \mem~489_combout\);

-- Location: LCCOMB_X30_Y59_N22
\mem~500\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~500_combout\ = (\IDL2[4]~input_o\ & ((\mem~489_combout\))) # (!\IDL2[4]~input_o\ & (\mem~499_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IDL2[4]~input_o\,
	datac => \mem~499_combout\,
	datad => \mem~489_combout\,
	combout => \mem~500_combout\);

-- Location: LCCOMB_X31_Y63_N22
\mem~501\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~501_combout\ = (\IDL2[2]~input_o\ & (((\IDL2[3]~input_o\)))) # (!\IDL2[2]~input_o\ & ((\IDL2[3]~input_o\ & (\mem~217_q\)) # (!\IDL2[3]~input_o\ & ((\mem~153_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~217_q\,
	datac => \mem~153_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~501_combout\);

-- Location: LCCOMB_X30_Y63_N6
\mem~502\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~502_combout\ = (\mem~501_combout\ & (((\mem~249_q\) # (!\IDL2[2]~input_o\)))) # (!\mem~501_combout\ & (\mem~185_q\ & ((\IDL2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~501_combout\,
	datab => \mem~185_q\,
	datac => \mem~249_q\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~502_combout\);

-- Location: LCCOMB_X32_Y56_N8
\mem~508\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~508_combout\ = (\IDL2[3]~input_o\ & ((\mem~233_q\) # ((\IDL2[2]~input_o\)))) # (!\IDL2[3]~input_o\ & (((\mem~169_q\ & !\IDL2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~233_q\,
	datab => \IDL2[3]~input_o\,
	datac => \mem~169_q\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~508_combout\);

-- Location: LCCOMB_X31_Y56_N30
\mem~509\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~509_combout\ = (\mem~508_combout\ & (((\mem~265_q\) # (!\IDL2[2]~input_o\)))) # (!\mem~508_combout\ & (\mem~201_q\ & ((\IDL2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~201_q\,
	datab => \mem~508_combout\,
	datac => \mem~265_q\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~509_combout\);

-- Location: LCCOMB_X32_Y61_N22
\mem~505\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~505_combout\ = (\IDL2[2]~input_o\ & ((\mem~177_q\) # ((\IDL2[3]~input_o\)))) # (!\IDL2[2]~input_o\ & (((\mem~145_q\ & !\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~177_q\,
	datac => \mem~145_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~505_combout\);

-- Location: LCCOMB_X33_Y60_N26
\mem~506\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~506_combout\ = (\mem~505_combout\ & (((\mem~241_q\) # (!\IDL2[3]~input_o\)))) # (!\mem~505_combout\ & (\mem~209_q\ & ((\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~209_q\,
	datab => \mem~505_combout\,
	datac => \mem~241_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~506_combout\);

-- Location: LCCOMB_X34_Y60_N22
\mem~503\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~503_combout\ = (\IDL2[2]~input_o\ & ((\mem~193_q\) # ((\IDL2[3]~input_o\)))) # (!\IDL2[2]~input_o\ & (((\mem~161_q\ & !\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~193_q\,
	datac => \mem~161_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~503_combout\);

-- Location: LCCOMB_X33_Y60_N24
\mem~504\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~504_combout\ = (\IDL2[3]~input_o\ & ((\mem~503_combout\ & ((\mem~257_q\))) # (!\mem~503_combout\ & (\mem~225_q\)))) # (!\IDL2[3]~input_o\ & (((\mem~503_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~225_q\,
	datab => \IDL2[3]~input_o\,
	datac => \mem~257_q\,
	datad => \mem~503_combout\,
	combout => \mem~504_combout\);

-- Location: LCCOMB_X33_Y60_N12
\mem~507\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~507_combout\ = (\IDL2[0]~input_o\ & (\IDL2[1]~input_o\)) # (!\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\ & ((\mem~504_combout\))) # (!\IDL2[1]~input_o\ & (\mem~506_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \IDL2[1]~input_o\,
	datac => \mem~506_combout\,
	datad => \mem~504_combout\,
	combout => \mem~507_combout\);

-- Location: LCCOMB_X30_Y55_N18
\mem~510\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~510_combout\ = (\IDL2[0]~input_o\ & ((\mem~507_combout\ & ((\mem~509_combout\))) # (!\mem~507_combout\ & (\mem~502_combout\)))) # (!\IDL2[0]~input_o\ & (((\mem~507_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~502_combout\,
	datab => \IDL2[0]~input_o\,
	datac => \mem~509_combout\,
	datad => \mem~507_combout\,
	combout => \mem~510_combout\);

-- Location: LCCOMB_X32_Y57_N30
\mem~511\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~511_combout\ = (\IDL2[0]~input_o\ & ((\mem~57_q\) # ((\IDL2[1]~input_o\)))) # (!\IDL2[0]~input_o\ & (((\mem~49_q\ & !\IDL2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~57_q\,
	datac => \mem~49_q\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~511_combout\);

-- Location: LCCOMB_X31_Y57_N22
\mem~512\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~512_combout\ = (\mem~511_combout\ & (((\mem~73_q\) # (!\IDL2[1]~input_o\)))) # (!\mem~511_combout\ & (\mem~65_q\ & ((\IDL2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~65_q\,
	datab => \mem~511_combout\,
	datac => \mem~73_q\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~512_combout\);

-- Location: LCCOMB_X29_Y57_N22
\mem~518\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~518_combout\ = (\IDL2[0]~input_o\ & ((\mem~121_q\) # ((\IDL2[1]~input_o\)))) # (!\IDL2[0]~input_o\ & (((\mem~113_q\ & !\IDL2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~121_q\,
	datac => \mem~113_q\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~518_combout\);

-- Location: LCCOMB_X30_Y57_N6
\mem~519\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~519_combout\ = (\mem~518_combout\ & (((\mem~137_q\) # (!\IDL2[1]~input_o\)))) # (!\mem~518_combout\ & (\mem~129_q\ & ((\IDL2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~518_combout\,
	datab => \mem~129_q\,
	datac => \mem~137_q\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~519_combout\);

-- Location: LCCOMB_X29_Y55_N20
\mem~513\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~513_combout\ = (\IDL2[0]~input_o\ & (((\IDL2[1]~input_o\)))) # (!\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\ & (\mem~97_q\)) # (!\IDL2[1]~input_o\ & ((\mem~81_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~97_q\,
	datac => \mem~81_q\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~513_combout\);

-- Location: LCCOMB_X30_Y55_N10
\mem~514\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~514_combout\ = (\IDL2[0]~input_o\ & ((\mem~513_combout\ & ((\mem~105_q\))) # (!\mem~513_combout\ & (\mem~89_q\)))) # (!\IDL2[0]~input_o\ & (((\mem~513_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~89_q\,
	datab => \IDL2[0]~input_o\,
	datac => \mem~105_q\,
	datad => \mem~513_combout\,
	combout => \mem~514_combout\);

-- Location: LCCOMB_X32_Y41_N30
\mem~515\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~515_combout\ = (\IDL2[0]~input_o\ & (\IDL2[1]~input_o\)) # (!\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\ & ((\mem~33_q\))) # (!\IDL2[1]~input_o\ & (\mem~17_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \IDL2[1]~input_o\,
	datac => \mem~17_q\,
	datad => \mem~33_q\,
	combout => \mem~515_combout\);

-- Location: LCCOMB_X31_Y41_N10
\mem~516\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~516_combout\ = (\IDL2[0]~input_o\ & ((\mem~515_combout\ & ((\mem~41_q\))) # (!\mem~515_combout\ & (\mem~25_q\)))) # (!\IDL2[0]~input_o\ & (((\mem~515_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~25_q\,
	datac => \mem~41_q\,
	datad => \mem~515_combout\,
	combout => \mem~516_combout\);

-- Location: LCCOMB_X30_Y55_N4
\mem~517\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~517_combout\ = (\IDL2[3]~input_o\ & ((\mem~514_combout\) # ((\IDL2[2]~input_o\)))) # (!\IDL2[3]~input_o\ & (((\mem~516_combout\ & !\IDL2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~514_combout\,
	datab => \mem~516_combout\,
	datac => \IDL2[3]~input_o\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~517_combout\);

-- Location: LCCOMB_X30_Y55_N22
\mem~520\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~520_combout\ = (\mem~517_combout\ & (((\mem~519_combout\) # (!\IDL2[2]~input_o\)))) # (!\mem~517_combout\ & (\mem~512_combout\ & ((\IDL2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~512_combout\,
	datab => \mem~519_combout\,
	datac => \mem~517_combout\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~520_combout\);

-- Location: LCCOMB_X30_Y55_N0
\mem~521\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~521_combout\ = (\IDL2[4]~input_o\ & (\mem~510_combout\)) # (!\IDL2[4]~input_o\ & ((\mem~520_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem~510_combout\,
	datac => \mem~520_combout\,
	datad => \IDL2[4]~input_o\,
	combout => \mem~521_combout\);

-- Location: LCCOMB_X29_Y55_N24
\mem~532\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~532_combout\ = (\IDL2[0]~input_o\ & ((\mem~90_q\) # ((\IDL2[1]~input_o\)))) # (!\IDL2[0]~input_o\ & (((\mem~82_q\ & !\IDL2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~90_q\,
	datac => \mem~82_q\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~532_combout\);

-- Location: LCCOMB_X30_Y55_N14
\mem~533\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~533_combout\ = (\IDL2[1]~input_o\ & ((\mem~532_combout\ & (\mem~106_q\)) # (!\mem~532_combout\ & ((\mem~98_q\))))) # (!\IDL2[1]~input_o\ & (\mem~532_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[1]~input_o\,
	datab => \mem~532_combout\,
	datac => \mem~106_q\,
	datad => \mem~98_q\,
	combout => \mem~533_combout\);

-- Location: LCCOMB_X32_Y57_N26
\mem~534\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~534_combout\ = (\IDL2[0]~input_o\ & (\IDL2[1]~input_o\)) # (!\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\ & ((\mem~66_q\))) # (!\IDL2[1]~input_o\ & (\mem~50_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \IDL2[1]~input_o\,
	datac => \mem~50_q\,
	datad => \mem~66_q\,
	combout => \mem~534_combout\);

-- Location: LCCOMB_X31_Y57_N18
\mem~535\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~535_combout\ = (\IDL2[0]~input_o\ & ((\mem~534_combout\ & ((\mem~74_q\))) # (!\mem~534_combout\ & (\mem~58_q\)))) # (!\IDL2[0]~input_o\ & (((\mem~534_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~58_q\,
	datac => \mem~74_q\,
	datad => \mem~534_combout\,
	combout => \mem~535_combout\);

-- Location: LCCOMB_X32_Y41_N2
\mem~536\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~536_combout\ = (\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\) # ((\mem~26_q\)))) # (!\IDL2[0]~input_o\ & (!\IDL2[1]~input_o\ & (\mem~18_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \IDL2[1]~input_o\,
	datac => \mem~18_q\,
	datad => \mem~26_q\,
	combout => \mem~536_combout\);

-- Location: LCCOMB_X34_Y57_N26
\mem~537\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~537_combout\ = (\IDL2[1]~input_o\ & ((\mem~536_combout\ & (\mem~42_q\)) # (!\mem~536_combout\ & ((\mem~34_q\))))) # (!\IDL2[1]~input_o\ & (\mem~536_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[1]~input_o\,
	datab => \mem~536_combout\,
	datac => \mem~42_q\,
	datad => \mem~34_q\,
	combout => \mem~537_combout\);

-- Location: LCCOMB_X30_Y59_N28
\mem~538\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~538_combout\ = (\IDL2[3]~input_o\ & (((\IDL2[2]~input_o\)))) # (!\IDL2[3]~input_o\ & ((\IDL2[2]~input_o\ & (\mem~535_combout\)) # (!\IDL2[2]~input_o\ & ((\mem~537_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~535_combout\,
	datab => \IDL2[3]~input_o\,
	datac => \mem~537_combout\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~538_combout\);

-- Location: LCCOMB_X29_Y57_N18
\mem~539\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~539_combout\ = (\IDL2[0]~input_o\ & (((\IDL2[1]~input_o\)))) # (!\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\ & (\mem~130_q\)) # (!\IDL2[1]~input_o\ & ((\mem~114_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~130_q\,
	datac => \mem~114_q\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~539_combout\);

-- Location: LCCOMB_X30_Y57_N26
\mem~540\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~540_combout\ = (\IDL2[0]~input_o\ & ((\mem~539_combout\ & ((\mem~138_q\))) # (!\mem~539_combout\ & (\mem~122_q\)))) # (!\IDL2[0]~input_o\ & (((\mem~539_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~122_q\,
	datac => \mem~138_q\,
	datad => \mem~539_combout\,
	combout => \mem~540_combout\);

-- Location: LCCOMB_X30_Y59_N30
\mem~541\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~541_combout\ = (\mem~538_combout\ & (((\mem~540_combout\) # (!\IDL2[3]~input_o\)))) # (!\mem~538_combout\ & (\mem~533_combout\ & ((\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~533_combout\,
	datab => \mem~538_combout\,
	datac => \mem~540_combout\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~541_combout\);

-- Location: LCCOMB_X34_Y60_N26
\mem~522\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~522_combout\ = (\IDL2[3]~input_o\ & ((\mem~226_q\) # ((\IDL2[2]~input_o\)))) # (!\IDL2[3]~input_o\ & (((\mem~162_q\ & !\IDL2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[3]~input_o\,
	datab => \mem~226_q\,
	datac => \mem~162_q\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~522_combout\);

-- Location: LCCOMB_X30_Y59_N20
\mem~523\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~523_combout\ = (\IDL2[2]~input_o\ & ((\mem~522_combout\ & (\mem~258_q\)) # (!\mem~522_combout\ & ((\mem~194_q\))))) # (!\IDL2[2]~input_o\ & (\mem~522_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~522_combout\,
	datac => \mem~258_q\,
	datad => \mem~194_q\,
	combout => \mem~523_combout\);

-- Location: LCCOMB_X31_Y63_N18
\mem~524\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~524_combout\ = (\IDL2[2]~input_o\ & ((\mem~186_q\) # ((\IDL2[3]~input_o\)))) # (!\IDL2[2]~input_o\ & (((\mem~154_q\ & !\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~186_q\,
	datac => \mem~154_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~524_combout\);

-- Location: LCCOMB_X30_Y63_N18
\mem~525\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~525_combout\ = (\mem~524_combout\ & (((\mem~250_q\) # (!\IDL2[3]~input_o\)))) # (!\mem~524_combout\ & (\mem~218_q\ & ((\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~524_combout\,
	datab => \mem~218_q\,
	datac => \mem~250_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~525_combout\);

-- Location: LCCOMB_X32_Y61_N26
\mem~526\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~526_combout\ = (\IDL2[2]~input_o\ & (((\IDL2[3]~input_o\)))) # (!\IDL2[2]~input_o\ & ((\IDL2[3]~input_o\ & (\mem~210_q\)) # (!\IDL2[3]~input_o\ & ((\mem~146_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~210_q\,
	datac => \mem~146_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~526_combout\);

-- Location: LCCOMB_X30_Y62_N24
\mem~527\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~527_combout\ = (\mem~526_combout\ & (((\mem~242_q\) # (!\IDL2[2]~input_o\)))) # (!\mem~526_combout\ & (\mem~178_q\ & ((\IDL2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~178_q\,
	datab => \mem~526_combout\,
	datac => \mem~242_q\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~527_combout\);

-- Location: LCCOMB_X30_Y59_N8
\mem~528\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~528_combout\ = (\IDL2[1]~input_o\ & (((\IDL2[0]~input_o\)))) # (!\IDL2[1]~input_o\ & ((\IDL2[0]~input_o\ & (\mem~525_combout\)) # (!\IDL2[0]~input_o\ & ((\mem~527_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~525_combout\,
	datab => \mem~527_combout\,
	datac => \IDL2[1]~input_o\,
	datad => \IDL2[0]~input_o\,
	combout => \mem~528_combout\);

-- Location: LCCOMB_X31_Y54_N8
\mem~529\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~529_combout\ = (\IDL2[2]~input_o\ & ((\mem~202_q\) # ((\IDL2[3]~input_o\)))) # (!\IDL2[2]~input_o\ & (((\mem~170_q\ & !\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~202_q\,
	datab => \IDL2[2]~input_o\,
	datac => \mem~170_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~529_combout\);

-- Location: LCCOMB_X31_Y56_N26
\mem~530\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~530_combout\ = (\mem~529_combout\ & (((\mem~266_q\) # (!\IDL2[3]~input_o\)))) # (!\mem~529_combout\ & (\mem~234_q\ & ((\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~529_combout\,
	datab => \mem~234_q\,
	datac => \mem~266_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~530_combout\);

-- Location: LCCOMB_X30_Y59_N2
\mem~531\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~531_combout\ = (\IDL2[1]~input_o\ & ((\mem~528_combout\ & ((\mem~530_combout\))) # (!\mem~528_combout\ & (\mem~523_combout\)))) # (!\IDL2[1]~input_o\ & (((\mem~528_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[1]~input_o\,
	datab => \mem~523_combout\,
	datac => \mem~528_combout\,
	datad => \mem~530_combout\,
	combout => \mem~531_combout\);

-- Location: LCCOMB_X30_Y59_N0
\mem~542\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~542_combout\ = (\IDL2[4]~input_o\ & ((\mem~531_combout\))) # (!\IDL2[4]~input_o\ & (\mem~541_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~541_combout\,
	datab => \mem~531_combout\,
	datac => \IDL2[4]~input_o\,
	combout => \mem~542_combout\);

-- Location: LCCOMB_X29_Y57_N14
\mem~560\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~560_combout\ = (\IDL2[0]~input_o\ & ((\mem~123_q\) # ((\IDL2[1]~input_o\)))) # (!\IDL2[0]~input_o\ & (((\mem~115_q\ & !\IDL2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~123_q\,
	datac => \mem~115_q\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~560_combout\);

-- Location: LCCOMB_X30_Y57_N14
\mem~561\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~561_combout\ = (\mem~560_combout\ & (((\mem~139_q\) # (!\IDL2[1]~input_o\)))) # (!\mem~560_combout\ & (\mem~131_q\ & ((\IDL2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~560_combout\,
	datab => \mem~131_q\,
	datac => \mem~139_q\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~561_combout\);

-- Location: LCCOMB_X32_Y41_N6
\mem~557\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~557_combout\ = (\IDL2[0]~input_o\ & (\IDL2[1]~input_o\)) # (!\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\ & ((\mem~35_q\))) # (!\IDL2[1]~input_o\ & (\mem~19_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \IDL2[1]~input_o\,
	datac => \mem~19_q\,
	datad => \mem~35_q\,
	combout => \mem~557_combout\);

-- Location: LCCOMB_X31_Y41_N22
\mem~558\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~558_combout\ = (\IDL2[0]~input_o\ & ((\mem~557_combout\ & ((\mem~43_q\))) # (!\mem~557_combout\ & (\mem~27_q\)))) # (!\IDL2[0]~input_o\ & (((\mem~557_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~27_q\,
	datac => \mem~43_q\,
	datad => \mem~557_combout\,
	combout => \mem~558_combout\);

-- Location: LCCOMB_X29_Y55_N4
\mem~555\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~555_combout\ = (\IDL2[0]~input_o\ & (\IDL2[1]~input_o\)) # (!\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\ & ((\mem~99_q\))) # (!\IDL2[1]~input_o\ & (\mem~83_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \IDL2[1]~input_o\,
	datac => \mem~83_q\,
	datad => \mem~99_q\,
	combout => \mem~555_combout\);

-- Location: LCCOMB_X26_Y56_N16
\mem~556\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~556_combout\ = (\IDL2[0]~input_o\ & ((\mem~555_combout\ & ((\mem~107_q\))) # (!\mem~555_combout\ & (\mem~91_q\)))) # (!\IDL2[0]~input_o\ & (((\mem~555_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~91_q\,
	datac => \mem~107_q\,
	datad => \mem~555_combout\,
	combout => \mem~556_combout\);

-- Location: LCCOMB_X30_Y59_N18
\mem~559\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~559_combout\ = (\IDL2[2]~input_o\ & (((\IDL2[3]~input_o\)))) # (!\IDL2[2]~input_o\ & ((\IDL2[3]~input_o\ & ((\mem~556_combout\))) # (!\IDL2[3]~input_o\ & (\mem~558_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~558_combout\,
	datac => \mem~556_combout\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~559_combout\);

-- Location: LCCOMB_X32_Y57_N14
\mem~553\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~553_combout\ = (\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\) # ((\mem~59_q\)))) # (!\IDL2[0]~input_o\ & (!\IDL2[1]~input_o\ & (\mem~51_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \IDL2[1]~input_o\,
	datac => \mem~51_q\,
	datad => \mem~59_q\,
	combout => \mem~553_combout\);

-- Location: LCCOMB_X31_Y57_N6
\mem~554\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~554_combout\ = (\IDL2[1]~input_o\ & ((\mem~553_combout\ & (\mem~75_q\)) # (!\mem~553_combout\ & ((\mem~67_q\))))) # (!\IDL2[1]~input_o\ & (\mem~553_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[1]~input_o\,
	datab => \mem~553_combout\,
	datac => \mem~75_q\,
	datad => \mem~67_q\,
	combout => \mem~554_combout\);

-- Location: LCCOMB_X30_Y58_N16
\mem~562\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~562_combout\ = (\mem~559_combout\ & ((\mem~561_combout\) # ((!\IDL2[2]~input_o\)))) # (!\mem~559_combout\ & (((\IDL2[2]~input_o\ & \mem~554_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~561_combout\,
	datab => \mem~559_combout\,
	datac => \IDL2[2]~input_o\,
	datad => \mem~554_combout\,
	combout => \mem~562_combout\);

-- Location: LCCOMB_X32_Y56_N18
\mem~550\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~550_combout\ = (\IDL2[2]~input_o\ & (((\IDL2[3]~input_o\)))) # (!\IDL2[2]~input_o\ & ((\IDL2[3]~input_o\ & (\mem~235_q\)) # (!\IDL2[3]~input_o\ & ((\mem~171_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~235_q\,
	datac => \mem~171_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~550_combout\);

-- Location: LCCOMB_X31_Y56_N6
\mem~551\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~551_combout\ = (\IDL2[2]~input_o\ & ((\mem~550_combout\ & ((\mem~267_q\))) # (!\mem~550_combout\ & (\mem~203_q\)))) # (!\IDL2[2]~input_o\ & (((\mem~550_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~203_q\,
	datac => \mem~267_q\,
	datad => \mem~550_combout\,
	combout => \mem~551_combout\);

-- Location: LCCOMB_X31_Y63_N30
\mem~543\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~543_combout\ = (\IDL2[2]~input_o\ & (((\IDL2[3]~input_o\)))) # (!\IDL2[2]~input_o\ & ((\IDL2[3]~input_o\ & (\mem~219_q\)) # (!\IDL2[3]~input_o\ & ((\mem~155_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~219_q\,
	datac => \mem~155_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~543_combout\);

-- Location: LCCOMB_X30_Y63_N30
\mem~544\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~544_combout\ = (\mem~543_combout\ & (((\mem~251_q\) # (!\IDL2[2]~input_o\)))) # (!\mem~543_combout\ & (\mem~187_q\ & ((\IDL2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~187_q\,
	datab => \mem~543_combout\,
	datac => \mem~251_q\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~544_combout\);

-- Location: LCCOMB_X32_Y61_N28
\mem~547\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~547_combout\ = (\IDL2[3]~input_o\ & (((\IDL2[2]~input_o\)))) # (!\IDL2[3]~input_o\ & ((\IDL2[2]~input_o\ & (\mem~179_q\)) # (!\IDL2[2]~input_o\ & ((\mem~147_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~179_q\,
	datab => \IDL2[3]~input_o\,
	datac => \mem~147_q\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~547_combout\);

-- Location: LCCOMB_X31_Y62_N18
\mem~548\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~548_combout\ = (\IDL2[3]~input_o\ & ((\mem~547_combout\ & (\mem~243_q\)) # (!\mem~547_combout\ & ((\mem~211_q\))))) # (!\IDL2[3]~input_o\ & (\mem~547_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[3]~input_o\,
	datab => \mem~547_combout\,
	datac => \mem~243_q\,
	datad => \mem~211_q\,
	combout => \mem~548_combout\);

-- Location: LCCOMB_X34_Y60_N14
\mem~545\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~545_combout\ = (\IDL2[3]~input_o\ & (((\IDL2[2]~input_o\)))) # (!\IDL2[3]~input_o\ & ((\IDL2[2]~input_o\ & (\mem~195_q\)) # (!\IDL2[2]~input_o\ & ((\mem~163_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[3]~input_o\,
	datab => \mem~195_q\,
	datac => \mem~163_q\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~545_combout\);

-- Location: LCCOMB_X33_Y60_N28
\mem~546\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~546_combout\ = (\mem~545_combout\ & (((\mem~259_q\) # (!\IDL2[3]~input_o\)))) # (!\mem~545_combout\ & (\mem~227_q\ & ((\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~227_q\,
	datab => \mem~545_combout\,
	datac => \mem~259_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~546_combout\);

-- Location: LCCOMB_X30_Y62_N16
\mem~549\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~549_combout\ = (\IDL2[1]~input_o\ & (((\IDL2[0]~input_o\) # (\mem~546_combout\)))) # (!\IDL2[1]~input_o\ & (\mem~548_combout\ & (!\IDL2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[1]~input_o\,
	datab => \mem~548_combout\,
	datac => \IDL2[0]~input_o\,
	datad => \mem~546_combout\,
	combout => \mem~549_combout\);

-- Location: LCCOMB_X30_Y62_N18
\mem~552\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~552_combout\ = (\IDL2[0]~input_o\ & ((\mem~549_combout\ & (\mem~551_combout\)) # (!\mem~549_combout\ & ((\mem~544_combout\))))) # (!\IDL2[0]~input_o\ & (((\mem~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~551_combout\,
	datab => \IDL2[0]~input_o\,
	datac => \mem~544_combout\,
	datad => \mem~549_combout\,
	combout => \mem~552_combout\);

-- Location: LCCOMB_X30_Y62_N12
\mem~563\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~563_combout\ = (\IDL2[4]~input_o\ & ((\mem~552_combout\))) # (!\IDL2[4]~input_o\ & (\mem~562_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem~562_combout\,
	datac => \IDL2[4]~input_o\,
	datad => \mem~552_combout\,
	combout => \mem~563_combout\);

-- Location: LCCOMB_X29_Y57_N2
\mem~581\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~581_combout\ = (\IDL2[0]~input_o\ & (((\IDL2[1]~input_o\)))) # (!\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\ & (\mem~132_q\)) # (!\IDL2[1]~input_o\ & ((\mem~116_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~132_q\,
	datac => \mem~116_q\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~581_combout\);

-- Location: LCCOMB_X30_Y57_N2
\mem~582\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~582_combout\ = (\IDL2[0]~input_o\ & ((\mem~581_combout\ & ((\mem~140_q\))) # (!\mem~581_combout\ & (\mem~124_q\)))) # (!\IDL2[0]~input_o\ & (((\mem~581_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~124_q\,
	datac => \mem~140_q\,
	datad => \mem~581_combout\,
	combout => \mem~582_combout\);

-- Location: LCCOMB_X29_Y55_N8
\mem~574\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~574_combout\ = (\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\) # ((\mem~92_q\)))) # (!\IDL2[0]~input_o\ & (!\IDL2[1]~input_o\ & (\mem~84_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \IDL2[1]~input_o\,
	datac => \mem~84_q\,
	datad => \mem~92_q\,
	combout => \mem~574_combout\);

-- Location: LCCOMB_X30_Y55_N28
\mem~575\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~575_combout\ = (\IDL2[1]~input_o\ & ((\mem~574_combout\ & ((\mem~108_q\))) # (!\mem~574_combout\ & (\mem~100_q\)))) # (!\IDL2[1]~input_o\ & (((\mem~574_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[1]~input_o\,
	datab => \mem~100_q\,
	datac => \mem~108_q\,
	datad => \mem~574_combout\,
	combout => \mem~575_combout\);

-- Location: LCCOMB_X32_Y57_N2
\mem~576\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~576_combout\ = (\IDL2[0]~input_o\ & (\IDL2[1]~input_o\)) # (!\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\ & ((\mem~68_q\))) # (!\IDL2[1]~input_o\ & (\mem~52_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \IDL2[1]~input_o\,
	datac => \mem~52_q\,
	datad => \mem~68_q\,
	combout => \mem~576_combout\);

-- Location: LCCOMB_X31_Y57_N2
\mem~577\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~577_combout\ = (\IDL2[0]~input_o\ & ((\mem~576_combout\ & ((\mem~76_q\))) # (!\mem~576_combout\ & (\mem~60_q\)))) # (!\IDL2[0]~input_o\ & (((\mem~576_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~60_q\,
	datac => \mem~76_q\,
	datad => \mem~576_combout\,
	combout => \mem~577_combout\);

-- Location: LCCOMB_X32_Y41_N26
\mem~578\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~578_combout\ = (\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\) # ((\mem~28_q\)))) # (!\IDL2[0]~input_o\ & (!\IDL2[1]~input_o\ & (\mem~20_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \IDL2[1]~input_o\,
	datac => \mem~20_q\,
	datad => \mem~28_q\,
	combout => \mem~578_combout\);

-- Location: LCCOMB_X31_Y41_N26
\mem~579\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~579_combout\ = (\IDL2[1]~input_o\ & ((\mem~578_combout\ & ((\mem~44_q\))) # (!\mem~578_combout\ & (\mem~36_q\)))) # (!\IDL2[1]~input_o\ & (((\mem~578_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[1]~input_o\,
	datab => \mem~36_q\,
	datac => \mem~44_q\,
	datad => \mem~578_combout\,
	combout => \mem~579_combout\);

-- Location: LCCOMB_X30_Y55_N26
\mem~580\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~580_combout\ = (\IDL2[3]~input_o\ & (((\IDL2[2]~input_o\)))) # (!\IDL2[3]~input_o\ & ((\IDL2[2]~input_o\ & (\mem~577_combout\)) # (!\IDL2[2]~input_o\ & ((\mem~579_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~577_combout\,
	datab => \mem~579_combout\,
	datac => \IDL2[3]~input_o\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~580_combout\);

-- Location: LCCOMB_X30_Y62_N10
\mem~583\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~583_combout\ = (\mem~580_combout\ & ((\mem~582_combout\) # ((!\IDL2[3]~input_o\)))) # (!\mem~580_combout\ & (((\mem~575_combout\ & \IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~582_combout\,
	datab => \mem~575_combout\,
	datac => \mem~580_combout\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~583_combout\);

-- Location: LCCOMB_X34_Y60_N18
\mem~564\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~564_combout\ = (\IDL2[3]~input_o\ & ((\mem~228_q\) # ((\IDL2[2]~input_o\)))) # (!\IDL2[3]~input_o\ & (((\mem~164_q\ & !\IDL2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[3]~input_o\,
	datab => \mem~228_q\,
	datac => \mem~164_q\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~564_combout\);

-- Location: LCCOMB_X33_Y60_N14
\mem~565\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~565_combout\ = (\IDL2[2]~input_o\ & ((\mem~564_combout\ & (\mem~260_q\)) # (!\mem~564_combout\ & ((\mem~196_q\))))) # (!\IDL2[2]~input_o\ & (\mem~564_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~564_combout\,
	datac => \mem~260_q\,
	datad => \mem~196_q\,
	combout => \mem~565_combout\);

-- Location: LCCOMB_X31_Y54_N22
\mem~571\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~571_combout\ = (\IDL2[3]~input_o\ & (((\IDL2[2]~input_o\)))) # (!\IDL2[3]~input_o\ & ((\IDL2[2]~input_o\ & (\mem~204_q\)) # (!\IDL2[2]~input_o\ & ((\mem~172_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[3]~input_o\,
	datab => \mem~204_q\,
	datac => \mem~172_q\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~571_combout\);

-- Location: LCCOMB_X31_Y56_N18
\mem~572\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~572_combout\ = (\mem~571_combout\ & (((\mem~268_q\) # (!\IDL2[3]~input_o\)))) # (!\mem~571_combout\ & (\mem~236_q\ & ((\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~571_combout\,
	datab => \mem~236_q\,
	datac => \mem~268_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~572_combout\);

-- Location: LCCOMB_X32_Y61_N16
\mem~568\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~568_combout\ = (\IDL2[3]~input_o\ & ((\mem~212_q\) # ((\IDL2[2]~input_o\)))) # (!\IDL2[3]~input_o\ & (((\mem~148_q\ & !\IDL2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~212_q\,
	datab => \IDL2[3]~input_o\,
	datac => \mem~148_q\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~568_combout\);

-- Location: LCCOMB_X30_Y62_N14
\mem~569\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~569_combout\ = (\IDL2[2]~input_o\ & ((\mem~568_combout\ & ((\mem~244_q\))) # (!\mem~568_combout\ & (\mem~180_q\)))) # (!\IDL2[2]~input_o\ & (((\mem~568_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~180_q\,
	datac => \mem~244_q\,
	datad => \mem~568_combout\,
	combout => \mem~569_combout\);

-- Location: LCCOMB_X31_Y63_N2
\mem~566\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~566_combout\ = (\IDL2[2]~input_o\ & ((\mem~188_q\) # ((\IDL2[3]~input_o\)))) # (!\IDL2[2]~input_o\ & (((\mem~156_q\ & !\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~188_q\,
	datac => \mem~156_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~566_combout\);

-- Location: LCCOMB_X30_Y63_N26
\mem~567\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~567_combout\ = (\mem~566_combout\ & (((\mem~252_q\) # (!\IDL2[3]~input_o\)))) # (!\mem~566_combout\ & (\mem~220_q\ & ((\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~566_combout\,
	datab => \mem~220_q\,
	datac => \mem~252_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~567_combout\);

-- Location: LCCOMB_X30_Y62_N30
\mem~570\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~570_combout\ = (\IDL2[1]~input_o\ & (((\IDL2[0]~input_o\)))) # (!\IDL2[1]~input_o\ & ((\IDL2[0]~input_o\ & ((\mem~567_combout\))) # (!\IDL2[0]~input_o\ & (\mem~569_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[1]~input_o\,
	datab => \mem~569_combout\,
	datac => \mem~567_combout\,
	datad => \IDL2[0]~input_o\,
	combout => \mem~570_combout\);

-- Location: LCCOMB_X30_Y62_N8
\mem~573\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~573_combout\ = (\mem~570_combout\ & (((\mem~572_combout\) # (!\IDL2[1]~input_o\)))) # (!\mem~570_combout\ & (\mem~565_combout\ & ((\IDL2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~565_combout\,
	datab => \mem~572_combout\,
	datac => \mem~570_combout\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~573_combout\);

-- Location: LCCOMB_X30_Y62_N28
\mem~584\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~584_combout\ = (\IDL2[4]~input_o\ & ((\mem~573_combout\))) # (!\IDL2[4]~input_o\ & (\mem~583_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~583_combout\,
	datab => \mem~573_combout\,
	datac => \IDL2[4]~input_o\,
	combout => \mem~584_combout\);

-- Location: LCCOMB_X32_Y41_N22
\mem~599\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~599_combout\ = (\IDL2[0]~input_o\ & (((\IDL2[1]~input_o\)))) # (!\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\ & (\mem~37_q\)) # (!\IDL2[1]~input_o\ & ((\mem~21_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~37_q\,
	datac => \mem~21_q\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~599_combout\);

-- Location: LCCOMB_X31_Y41_N14
\mem~600\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~600_combout\ = (\IDL2[0]~input_o\ & ((\mem~599_combout\ & ((\mem~45_q\))) # (!\mem~599_combout\ & (\mem~29_q\)))) # (!\IDL2[0]~input_o\ & (((\mem~599_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~29_q\,
	datac => \mem~45_q\,
	datad => \mem~599_combout\,
	combout => \mem~600_combout\);

-- Location: LCCOMB_X29_Y55_N12
\mem~597\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~597_combout\ = (\IDL2[0]~input_o\ & (\IDL2[1]~input_o\)) # (!\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\ & ((\mem~101_q\))) # (!\IDL2[1]~input_o\ & (\mem~85_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \IDL2[1]~input_o\,
	datac => \mem~85_q\,
	datad => \mem~101_q\,
	combout => \mem~597_combout\);

-- Location: LCCOMB_X30_Y55_N24
\mem~598\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~598_combout\ = (\mem~597_combout\ & (((\mem~109_q\) # (!\IDL2[0]~input_o\)))) # (!\mem~597_combout\ & (\mem~93_q\ & ((\IDL2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~93_q\,
	datab => \mem~597_combout\,
	datac => \mem~109_q\,
	datad => \IDL2[0]~input_o\,
	combout => \mem~598_combout\);

-- Location: LCCOMB_X30_Y55_N12
\mem~601\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~601_combout\ = (\IDL2[3]~input_o\ & (((\mem~598_combout\) # (\IDL2[2]~input_o\)))) # (!\IDL2[3]~input_o\ & (\mem~600_combout\ & ((!\IDL2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~600_combout\,
	datab => \mem~598_combout\,
	datac => \IDL2[3]~input_o\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~601_combout\);

-- Location: LCCOMB_X32_Y57_N6
\mem~595\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~595_combout\ = (\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\) # ((\mem~61_q\)))) # (!\IDL2[0]~input_o\ & (!\IDL2[1]~input_o\ & (\mem~53_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \IDL2[1]~input_o\,
	datac => \mem~53_q\,
	datad => \mem~61_q\,
	combout => \mem~595_combout\);

-- Location: LCCOMB_X31_Y57_N14
\mem~596\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~596_combout\ = (\IDL2[1]~input_o\ & ((\mem~595_combout\ & (\mem~77_q\)) # (!\mem~595_combout\ & ((\mem~69_q\))))) # (!\IDL2[1]~input_o\ & (\mem~595_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[1]~input_o\,
	datab => \mem~595_combout\,
	datac => \mem~77_q\,
	datad => \mem~69_q\,
	combout => \mem~596_combout\);

-- Location: LCCOMB_X29_Y57_N30
\mem~602\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~602_combout\ = (\IDL2[0]~input_o\ & ((\mem~125_q\) # ((\IDL2[1]~input_o\)))) # (!\IDL2[0]~input_o\ & (((\mem~117_q\ & !\IDL2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~125_q\,
	datac => \mem~117_q\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~602_combout\);

-- Location: LCCOMB_X30_Y57_N22
\mem~603\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~603_combout\ = (\mem~602_combout\ & (((\mem~141_q\) # (!\IDL2[1]~input_o\)))) # (!\mem~602_combout\ & (\mem~133_q\ & ((\IDL2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~602_combout\,
	datab => \mem~133_q\,
	datac => \mem~141_q\,
	datad => \IDL2[1]~input_o\,
	combout => \mem~603_combout\);

-- Location: LCCOMB_X30_Y55_N6
\mem~604\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~604_combout\ = (\mem~601_combout\ & (((\mem~603_combout\) # (!\IDL2[2]~input_o\)))) # (!\mem~601_combout\ & (\mem~596_combout\ & ((\IDL2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~601_combout\,
	datab => \mem~596_combout\,
	datac => \mem~603_combout\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~604_combout\);

-- Location: LCCOMB_X31_Y54_N10
\mem~592\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~592_combout\ = (\IDL2[3]~input_o\ & ((\mem~237_q\) # ((\IDL2[2]~input_o\)))) # (!\IDL2[3]~input_o\ & (((\mem~173_q\ & !\IDL2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[3]~input_o\,
	datab => \mem~237_q\,
	datac => \mem~173_q\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~592_combout\);

-- Location: LCCOMB_X31_Y56_N14
\mem~593\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~593_combout\ = (\mem~592_combout\ & (((\mem~269_q\) # (!\IDL2[2]~input_o\)))) # (!\mem~592_combout\ & (\mem~205_q\ & ((\IDL2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~205_q\,
	datab => \mem~592_combout\,
	datac => \mem~269_q\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~593_combout\);

-- Location: LCCOMB_X31_Y63_N6
\mem~585\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~585_combout\ = (\IDL2[2]~input_o\ & (\IDL2[3]~input_o\)) # (!\IDL2[2]~input_o\ & ((\IDL2[3]~input_o\ & ((\mem~221_q\))) # (!\IDL2[3]~input_o\ & (\mem~157_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \IDL2[3]~input_o\,
	datac => \mem~157_q\,
	datad => \mem~221_q\,
	combout => \mem~585_combout\);

-- Location: LCCOMB_X30_Y63_N22
\mem~586\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~586_combout\ = (\IDL2[2]~input_o\ & ((\mem~585_combout\ & ((\mem~253_q\))) # (!\mem~585_combout\ & (\mem~189_q\)))) # (!\IDL2[2]~input_o\ & (((\mem~585_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~189_q\,
	datac => \mem~253_q\,
	datad => \mem~585_combout\,
	combout => \mem~586_combout\);

-- Location: LCCOMB_X32_Y61_N4
\mem~589\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~589_combout\ = (\IDL2[2]~input_o\ & ((\mem~181_q\) # ((\IDL2[3]~input_o\)))) # (!\IDL2[2]~input_o\ & (((\mem~149_q\ & !\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[2]~input_o\,
	datab => \mem~181_q\,
	datac => \mem~149_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~589_combout\);

-- Location: LCCOMB_X33_Y60_N18
\mem~590\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~590_combout\ = (\mem~589_combout\ & (((\mem~245_q\) # (!\IDL2[3]~input_o\)))) # (!\mem~589_combout\ & (\mem~213_q\ & ((\IDL2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~213_q\,
	datab => \mem~589_combout\,
	datac => \mem~245_q\,
	datad => \IDL2[3]~input_o\,
	combout => \mem~590_combout\);

-- Location: LCCOMB_X34_Y60_N30
\mem~587\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~587_combout\ = (\IDL2[3]~input_o\ & (((\IDL2[2]~input_o\)))) # (!\IDL2[3]~input_o\ & ((\IDL2[2]~input_o\ & (\mem~197_q\)) # (!\IDL2[2]~input_o\ & ((\mem~165_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[3]~input_o\,
	datab => \mem~197_q\,
	datac => \mem~165_q\,
	datad => \IDL2[2]~input_o\,
	combout => \mem~587_combout\);

-- Location: LCCOMB_X33_Y60_N16
\mem~588\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~588_combout\ = (\IDL2[3]~input_o\ & ((\mem~587_combout\ & ((\mem~261_q\))) # (!\mem~587_combout\ & (\mem~229_q\)))) # (!\IDL2[3]~input_o\ & (((\mem~587_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~229_q\,
	datab => \IDL2[3]~input_o\,
	datac => \mem~261_q\,
	datad => \mem~587_combout\,
	combout => \mem~588_combout\);

-- Location: LCCOMB_X33_Y60_N6
\mem~591\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~591_combout\ = (\IDL2[0]~input_o\ & (((\IDL2[1]~input_o\)))) # (!\IDL2[0]~input_o\ & ((\IDL2[1]~input_o\ & ((\mem~588_combout\))) # (!\IDL2[1]~input_o\ & (\mem~590_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDL2[0]~input_o\,
	datab => \mem~590_combout\,
	datac => \IDL2[1]~input_o\,
	datad => \mem~588_combout\,
	combout => \mem~591_combout\);

-- Location: LCCOMB_X30_Y59_N12
\mem~594\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~594_combout\ = (\mem~591_combout\ & ((\mem~593_combout\) # ((!\IDL2[0]~input_o\)))) # (!\mem~591_combout\ & (((\mem~586_combout\ & \IDL2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~593_combout\,
	datab => \mem~586_combout\,
	datac => \mem~591_combout\,
	datad => \IDL2[0]~input_o\,
	combout => \mem~594_combout\);

-- Location: LCCOMB_X30_Y59_N14
\mem~605\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~605_combout\ = (\IDL2[4]~input_o\ & ((\mem~594_combout\))) # (!\IDL2[4]~input_o\ & (\mem~604_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IDL2[4]~input_o\,
	datac => \mem~604_combout\,
	datad => \mem~594_combout\,
	combout => \mem~605_combout\);

ww_LE1(0) <= \LE1[0]~output_o\;

ww_LE1(1) <= \LE1[1]~output_o\;

ww_LE1(2) <= \LE1[2]~output_o\;

ww_LE1(3) <= \LE1[3]~output_o\;

ww_LE1(4) <= \LE1[4]~output_o\;

ww_LE1(5) <= \LE1[5]~output_o\;

ww_LE1(6) <= \LE1[6]~output_o\;

ww_LE1(7) <= \LE1[7]~output_o\;

ww_LE2(0) <= \LE2[0]~output_o\;

ww_LE2(1) <= \LE2[1]~output_o\;

ww_LE2(2) <= \LE2[2]~output_o\;

ww_LE2(3) <= \LE2[3]~output_o\;

ww_LE2(4) <= \LE2[4]~output_o\;

ww_LE2(5) <= \LE2[5]~output_o\;

ww_LE2(6) <= \LE2[6]~output_o\;

ww_LE2(7) <= \LE2[7]~output_o\;
END structure;


