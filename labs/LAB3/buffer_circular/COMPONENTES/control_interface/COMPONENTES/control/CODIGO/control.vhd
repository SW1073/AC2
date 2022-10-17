--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 
use work.cte_tipos_buffer_pkg.all;
use work.retardos_buffer_pkg.all;
--! @image html control.png 

entity control is
   port (cabeza: in st_puntero;
	cola, colaincr: in st_puntero;
	vacio: out std_logic;
	lleno: out std_logic);
end control;

architecture compor of control is
signal op1, op2: st_puntero;

begin
-- utilice sentencias de asignacion de senyal condicional para las comparaciones
	
	op1 <= std_logic_vector(unsigned(cabeza)-1);
	op2 <= std_logic_vector(unsigned(cabeza) + tam_puntero - 1);
	
	lleno <= '1' when (cola = op1 and cola = op2) or (std_logic_vector(unsigned(cola)+1)) = cabeza else '0' after retcontrol;
	vacio <= '1' when cabeza = cola else '0' after retcontrol;

end;
