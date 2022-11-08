--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.cte_tipos_deco_camino_pkg.all;
use work.param_disenyo_pkg.all;
use work.cte_tipos_UF_pkg.all;
use work.retardos_pkg.all;
use work.componentes_ALU_pkg.all;

entity alu is
    port (opALU : in  st_opALU;
          a	: in  tam_dat_camino;
          b	: in  tam_dat_camino;
          s	: out tam_dat_camino);
end alu;

architecture estruct of alu is

signal s_despla, s_logica, s_sumalg, s_slt: tam_dat_camino;
signal s_des_log, s_slt_sum: tam_dat_camino;
signal t_s: tam_dat_camino;
signal men: std_logic;
signal mx_01, mx_23, mx: std_logic;

begin
-- instanciacion unidades funcionales
despla_M: despla port map (opALU => opALU, a => a, b => b, s => s_despla);
logica_M: logica port map (opALU => opALU, a => a, b => b, s => s_logica);
sumalg_M: sumalg port map (opALU => opALU, a => a, b => b, men => men, s => s_sumalg);
slt_M:	slt port map (men => men, s => s_slt);
	
-- modifique las senyales de seleccion
	process(opALU, mx_01, mx_23, mx) is
	begin
		case opALU is
			when ALU_XOR | ALU_OR | ALU_AND =>
				mx_01 <= '0';
				mx <= '1';
			when ALU_SLL | ALU_SRA | ALU_SRL =>
				mx_01 <= '1';
				mx <= '1';
			when ALU_ADD | ALU_SUB =>
				mx_23 <= '0';
				mx <= '0';
			when others => -- meaning slt/sltu
				mx_23 <= '1';
				mx <= '0';
		end case;
	end process;
	
-- instanciacion arbol de multiplexores
	mux_des_log: mx2 port map (d0 => s_logica,  d1 => s_despla , SEL => mx_01, s => s_des_log);
	mux_slt_sum: mx2 port map (d0 => s_sumalg,  d1 => s_slt    , SEL => mx_23, s => s_slt_sum);
	mux_final:   mx2 port map (d0 => s_slt_sum, d1 => s_des_log, SEL => mx,    s => t_s      );
	
-- salida
	s <= t_s;
end;
