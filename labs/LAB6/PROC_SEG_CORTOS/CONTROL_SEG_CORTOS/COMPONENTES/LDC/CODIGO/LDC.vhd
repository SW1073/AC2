--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;

use work.param_disenyo_pkg.all;
use work.RegDes_pkg.all;
use work.retardos_cntl_seg_C_pkg.all;

entity LDC is
	port(reloj, Pcero: std_logic;
		IDL1A, IDL1M, IDL1F, IDL1E: in std_logic;
		IDL2A, IDL2M, IDL2F, IDL2E: in std_logic;
		C1L1, C2L1, C3L1, C4L1: out std_logic;
		C1L2, C2L2, C3L2, C4L2: out std_logic);
end LDC;

architecture estructural of LDC is

signal c1l1_a, c1l2_a: std_logic;
signal c2l1_m, c2l2_m: std_logic;

begin
	reg_idl1a: RD_1 port map (reloj => reloj, pcero => pcero, e => IDL1A, s => c1l1_a);
	reg_idl1m: RD_1 port map (reloj => reloj, pcero => pcero, e => IDL1M, s => c2l1_m);
	
	reg_idl2a: RD_1 port map (reloj => reloj, pcero => pcero, e => IDL2A, s => c1l2_a);
	reg_idl2m: RD_1 port map (reloj => reloj, pcero => pcero, e => IDL2M, s => c2l2_m);

	C1L1 <= c1l1_a after retLDC;
	C2L1 <= c2l1_m after retLDC;
	C3L1 <= IDL1F after retLDC;
	C4L1 <= IDL1E after retLDC;

	C1L2 <= c1l2_a after retLDC;
	C2L2 <= c2l2_m after retLDC;
	C3L2 <= IDL2F after retLDC;
	C4L2 <= IDL2E after retLDC;

end;

