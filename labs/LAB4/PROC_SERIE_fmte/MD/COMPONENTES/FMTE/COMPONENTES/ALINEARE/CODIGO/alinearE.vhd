--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.param_disenyo_pkg.all;
use work.tipos_constan_memoria_pkg.all;
use work.componentes_FMTE_pkg.all;
use work.cte_tipos_deco_camino_pkg.all;
use work.retardos_pkg.all;

entity alinearE is
port(ent: in tam_dat_camino_MD;
	opMD: in st_opMD;
	sal: out tam_dat_camino_MD);
end alinearE;

architecture estructural of alinearE is

subtype t_byte is std_logic_vector(tam_byte-1 downto 0);

-- senyales
------- opMD<1:0> --> tam (byte 01, half 01, word 10)
------- opMD<3> --> si '1', se escribe.
signal esc: std_logic;
signal tam: std_logic_vector(1 downto 0);
signal , half, word: std_logic_vector(1 downto 0);

begin
-- instanciacion 
	
	tam <= opMD(1 downto 0);
	
	case 
	
	sal <= (others => '0') after retFMTE;

end; 


