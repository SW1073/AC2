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
		
component S4bits is 		
generic(ret_xor: time := 15 ns; ret_and: time := 10 ns; ret_or: time := 10 ns);
port (A: in std_logic_vector(3 downto 0);
	B: in std_logic_vector(3 downto 0);
	cen: in	std_logic;
	SUM: out std_logic_vector(3 downto 0);
	csal: out std_logic);
end component;				

-- senyales inputs	
signal a, b: std_logic_vector(3 downto 0);
signal cen: std_logic;
-- senyales outputs
signal sum : std_logic_vector(3 downto 0);
signal csal: std_logic;

begin	
-- instanciacion y estimulos
	S4bit0: S4bits port map(A=>a, B=>b, cen=>cen, csal=>csal, SUM=>sum);
	a <= "UUUU", "0000" after 200 ns, "UUUU" after 400 ns, "0000" after 600 ns, "UUUU" after 800 ns, "0000" after 1000 ns, "UUUU" after 1200 ns;
	b <= "UUUU", "0000" after 200 ns, "UUUU" after 400 ns, "0100" after 600 ns, "UUUU" after 800 ns, "0100" after 1000 ns, "UUUU" after 1200 ns;
	cen <= 'U', '0' after 200 ns, 'U' after 400 ns, '0' after 600 ns, 'U' after 800 ns, '1' after 1000 ns, 'U' after 1200 ns;
end prueba;		

