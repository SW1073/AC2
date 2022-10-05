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
signal A, B, SUM: std_logic_vector(3 downto 0);
signal cen, csal: std_logic;

begin	
	S4bit0: S4bits port map(A=>A, B=>B, cen=>cen, csal=>csal, SUM=>SUM); 
	estimulos: process
		begin
			A <= x"1";
			B <= x"2";
			cen <='0';
			wait for 200 ns;
			A <= x"1";
			B <= x"2";
			cen <='1';
			wait for 100 ns;
			wait;
end process;
end prueba;	

