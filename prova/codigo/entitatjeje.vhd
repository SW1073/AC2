library ieee; 
use ieee.std_logic_1164.all;

entity entitatjeje is 
port( 
	x, y: in 	std_logic;
	cen: in 	std_logic;
	s: out 		std_logic;
	csal: out 	std_logic
	);
end entitatjeje;

architecture funcional of entitatjeje is

begin
	s <= (x xor y) xor cen;
	csal <= (x and y) or (x and cen) or (y and cen);
end funcional;