--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 
use work.cte_tipos_nucleo_pkg.all;
use work.procedimientos_pkg.all;

use std.env.all;

entity prueba_BR is 
generic (semiperiodo: time := 25 ns;
		pasoapaso: boolean:= false);
end entity;

architecture prueba of prueba_BR is

component BR is      -- banco de registros con tres puertos
port(reloj: in std_logic;
      PE: in std_logic;
      IDL1, IDL2, IDE:in st_iden;
      DE: in st_datos;
      LE1, LE2: out st_datos);
end component;

signal PE: std_logic;
signal DE: st_datos;
signal IDL1, IDL2, IDE: st_iden;
signal LE1, LE2: st_datos;

signal reloj: std_logic;

shared variable final : boolean := false;

begin

banco_reg: BR port map (reloj => reloj, PE	=> PE, IDL1 => IDL1, IDL2 => IDL2, IDE => IDE, DE => DE, LE1 => LE1, LE2 => LE2);

process
variable direccion: st_iden;
variable valor: st_datos;
begin
	IDL2 <= (others => '0');--"00000";
	IDL1 <= (others => '0');--"00000";
	IDE <= (others => '0');--"00000";
	DE <= (others => '0');--"00000000";
	PE <= '0';

-- escrituras en el BR
	wait until falling_edge(reloj);
	escritura(PE, IDE, DE, "00100", "01111111");
	wait until falling_edge(reloj);
	lectura(PE, IDL1, "00100");
	wait until falling_edge(reloj);
	comprobacion_de_lectura(LE1, "00100", "01111111");


    
	report "Comprobacion finalizada.";
	 final := true;
    wait;
end process;

  
rlj: process
begin
	if final = false then
		reloj <= '0';
		wait for semiperiodo;
		reloj <= '1';
		wait for semiperiodo;
		if pasoapaso then
			stop(0);
		end if;
	else
		wait;
	end if;
end process;
 
end prueba;

