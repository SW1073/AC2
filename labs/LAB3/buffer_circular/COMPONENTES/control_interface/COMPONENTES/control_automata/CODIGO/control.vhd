--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use work.cte_tipos_buffer_pkg.all;
use work.retardos_buffer_pkg.all;
use work.componentes_control_automata_pkg.all;

entity control is
   port (reloj, pcero: in std_logic;
	cabeza: in st_puntero;
	cola: in st_puntero;
	escritura, lectura: in std_logic;
	vacio: out std_logic;
	lleno: out std_logic );
end control;

architecture estruc of control is

constant vaciando: std_logic:= '0';
constant llenando: std_logic:= '1';


signal prox_estado, estado: std_logic;

begin
-- instanciacion registro de estado
	estadoreg: reg_1 port map(reloj => reloj, Q => estado, D => prox_estado);

-- logica proximo estado
	prox_estado <= vaciando when pcero = '1' else
						vaciando when (estado = vaciando and (lectura = '1' or (lectura = '1' and escritura = '1'))) else
						vaciando when estado = llenando and (lectura = '1') else
						llenando when estado = vaciando and (escritura = '1') else
						llenando when estado = llenando and (escritura = '1' or (lectura = '1' and escritura = '1'));
						
-- utilice sentencias de asignacion de senyal condicional para las comparaciones

	lleno <= '1' when cola = cabeza and estado = llenando else '0' after retcontrol;
	vacio <= '1' when cola = cabeza and estado = vaciando else '0' after retcontrol;

end;
