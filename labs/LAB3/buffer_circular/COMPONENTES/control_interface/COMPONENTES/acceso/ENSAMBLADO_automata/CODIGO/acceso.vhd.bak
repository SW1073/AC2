--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use work.cte_tipos_buffer_pkg.all;
use work.componentes_acceso_pkg.all;
--! @image html acceso.png 

entity acceso is
   port (reloj: in std_logic;
	pcero: in std_logic;
	escritura: in std_logic;
	lectura: in std_logic;
	PE: out std_logic;
	cabeza: out st_puntero;
	cola: out st_puntero;
	colaincr: out st_puntero);
end acceso;

architecture estruc of acceso is
-- senyales
signal punt_cabeza, prx_punt_cabeza, punt_cola, prx_punt_cola: st_puntero;
signal sel_e, sel_l: std_logic;

begin
-- instanciaciones punteros cola y cabeza
--si pcero es 0, cabeza y cola seran 0

	puntero_cabeza: puntero port map(reloj => reloj, pcero => pcero, condicion => lectura, puntincr => prx_punt_cabeza, punt => punt_cabeza);
	puntero_cola: puntero port map(reloj => reloj, pcero => pcero, condicion => escritura, puntincr => prx_punt_cola, punt => punt_cola);

	cabeza <= punt_cabeza;        
	cola <= punt_cola;
	colaincr <= prx_punt_cola;
	
	PE <= escritura;
				
end;
