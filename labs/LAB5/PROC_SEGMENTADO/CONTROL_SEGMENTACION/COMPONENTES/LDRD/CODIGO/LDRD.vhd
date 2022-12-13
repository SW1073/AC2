--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;

use work.param_disenyo_pkg.all;
use work.componentes_control_seg_pkg.all;
use work.retardos_cntl_seg_pkg.all;

entity LDRD is
	port(IDL1A, IDL1M, IDL1F, IDL1E: in std_logic;
		IDL2A, IDL2M, IDL2F, IDL2E: in std_logic;
		RD : out std_logic);
end LDRD;


architecture comportamiento of LDRD is

signal idl1_AM, idl1_FE, idl1: std_logic;
signal idl2_AM, idl2_FE, idl2: std_logic;

begin

	idl1_AM <= IDL1A or IDL1M;
	idl1_FE <= IDL1F or IDL1E;
	
	idl2_AM <= IDL2A or IDL2M;
	idl2_FE <= IDL2F or IDL2E;
	
	idl1 <= idl1_AM or idl1_FE;
	idl2 <= idl2_AM or idl2_FE;

	RD <= idl1 or idl2 after retLDRD;
	
end comportamiento;
