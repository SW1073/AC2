--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;		
use ieee.std_logic_1164.all;		
use work.all;		
		
entity prueba_S4bits is 		

end prueba_S4bits;		
		
architecture prueba of prueba_S4bits is		
		
component snbits is
	port (a: in std_logic_vector ( 3 downto 0);
		b: in std_logic_vector ( 3 downto 0);
		cen: in std_logic;
		s: out std_logic_vector ( 3 downto 0);
		csal: out std_logic );
end component;			

-- senyales inputs	
signal A, B: std_logic_vector(3 downto 0);
signal CEN: std_logic;
-- senyales outputs
signal SUM : std_logic_vector(3 downto 0);
signal CSAL: std_logic;

begin	
-- instanciacion y estimulos
sumador: snbits generic map( tam => tam)
			port map (a=>A, b=>B, cen=>CEN, csal=>CSAL, s=>SUM); 
	A <= "UUUU", "0000" after 200 ns, "UUUU" after 400 ns, "0000" after 600 ns, "UUUU" after 800 ns, "0000" after 1000 ns, "UUUU" after 1200 ns;
	B <= "UUUU", "0000" after 200 ns, "UUUU" after 400 ns, "0100" after 600 ns, "UUUU" after 800 ns, "0100" after 1000 ns, "UUUU" after 1200 ns;
	CEN <= 'U', '0' after 200 ns, 'U' after 400 ns, '0' after 600 ns, 'U' after 800 ns, '1' after 1000 ns, 'U' after 1200 ns;
end prueba;		

