--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

use work.param_disenyo_pkg.all;
use work.RegDes_pkg.all;

entity latproh is 
  port (reloj, Pcero, I: std_logic;
		inst_latph: in std_logic;
		latphA: out std_logic;
		latphM: out std_logic);
end latproh;

architecture estruc of latproh is

signal dl_a, a_m: std_logic;

begin
	reg_dl_a: RDI_1 port map (reloj => reloj, pcero => pcero, I => I, e => inst_latph, s => dl_a);
	reg_a_m: RD_1 port map (reloj => reloj, pcero => pcero, e => dl_a, s => a_m);

	latphA <= dl_a;
	latphM <= a_m;

end;
