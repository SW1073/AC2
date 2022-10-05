--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;		
use ieee.std_logic_1164.all;		
use work.all;		
		
-- La especificación del componente en VHDL está en otro fichero 
-- Los componentes se conectan mediante un vector de señales		
		
entity snbits is
	generic (tam: positive:= 4);
	port (a: in std_logic_vector(tam-1 downto 0);
		b: in std_logic_vector(tam-1 downto 0);
		cen: in std_logic;
		s: out std_logic_vector(tam-1 downto 0);
		csal: out std_logic );
end snbits;

architecture estructural of snbits is
	component S1bit
		generic(retardoxor: time;
			retardoand: time;
			retardoor: time);
		port (x: in std_logic; y: in std_logic; cen: in std_logic;
			s: out std_logic; csal: out std_logic);
	end component;

--senyales para las conexiones
-- signal aa: std_logic_vector(4 downto 0);
-- signal bb: std_logic_vector(4 downto 0);
signal cc: std_logic_vector(4 downto 0);

begin
-- instanciacion de componentes e interconexion
cc(0) <= cen;
sumador: for i in 0 to 3 generate
	sumi: s1bit generic map (retardoxor => 15 ns, retardoand => 10 ns, retardoor => 15 ns)
	port map (x => a(i), y => b(i), cen => cc(i), s => s(i), csal => cc(i+1));
end generate;
csal <= cc(4);
end estructural;
