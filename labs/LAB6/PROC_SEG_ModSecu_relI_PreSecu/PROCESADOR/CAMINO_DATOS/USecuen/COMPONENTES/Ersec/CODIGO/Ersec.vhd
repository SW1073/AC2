--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.param_disenyo_pkg.all;
use work.cte_tipos_deco_camino_pkg.all;

entity Ersec is
	port(opSEC:	in  st_opSEC;
		ErPre: in std_logic;
		msecuseg: out std_logic);
end Ersec;

architecture comporta of Ersec is
signal op_SEC: std_logic;
-- modifique el codigo

begin
	-- opSEC == 1011 -> estamos en un JALx
	-- opSEC == 1xxx -> estamos

	-- ErPre AND (BR or JALR) [and not JAL]
	
	-- op_SEC <= opSEC(3) and (not opSEC(2)) and opSEC(1) and opSEC(0);
	op_SEC <= ((opsec(3) and opsec(2)) or (opsec(1) or opsec(0))) and ErPre;
	
	
	msecuseg <= op_SEC;
end;
