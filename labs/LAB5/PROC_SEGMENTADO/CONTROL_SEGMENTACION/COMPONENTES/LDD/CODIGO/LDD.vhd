--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;

use work.param_disenyo_pkg.all;
use work.cte_tipos_deco_camino_pkg.all;
use work.componentes_control_seg_pkg.all;
use work.retardos_cntl_seg_pkg.all;

entity LDD is
	port(IDL1, IDL2 : in dir_reg; 
		valIDL1, valIDL2 : in std_logic;
		rdA, rdM, rdF, rdE : in dir_reg; 
		PBRA, PBRM, PBRF, PBRE : in st_PBR;
		IDL1A, IDL1M, IDL1F, IDL1E: out std_logic;
		IDL2A, IDL2M, IDL2F, IDL2E: out std_logic);
end LDD;


architecture estructural of LDD is

signal cero: std_logic_vector(4 downto 0) := (others =>'0');
signal n0rs1, n0rs2: std_logic;

signal a1, m1, f1, e1: std_logic;
signal a2, m2, f2, e2: std_logic;

type variable_names_IDL is array (0 to 1) of dir_reg;
type variable_names_rdX is array (0 to 3) of dir_reg;
type variable_names_bit is array (0 to 7) of std_logic;
type ig_out_array is array (0 to 7) of std_logic;

signal input_ports1: variable_names_IDL := (IDL1, IDL2);
signal input_ports2: variable_names_rdX := (rdA, rdM, rdF, rdE);
signal ig_out: ig_out_array := (others => '0');

begin
	
	not_comp1: cmp port map (a => IDL1, b => cero, ig => n0rs1);
	not_comp2: cmp port map (a => IDL2, b => cero, ig => n0rs2);
	
	comparador: for i in 0 to 7 generate
		comp: cmp port map (
			a => input_ports1((i/4)),
			b => input_ports2((i mod 4)),
			ig => ig_out(i)
		);
	end generate;
	
	a1 <= ig_out(0); m1 <= ig_out(1); f1 <= ig_out(2); e1 <= ig_out(3);
	a2 <= ig_out(4); m2 <= ig_out(5); f2 <= ig_out(6); e2 <= ig_out(7);
	
	IDL1A <= PBRA and (valIDL1 and ((not n0rs1) and a1));
	IDL2A <= PBRA and (valIDL2 and ((not n0rs2) and a2));
	
	IDL1M <= PBRM and (valIDL1 and ((not n0rs1) and m1));
	IDL2M <= PBRM and (valIDL2 and ((not n0rs2) and m2));
	
	IDL1F <= PBRF and (valIDL1 and ((not n0rs1) and f1));
	IDL2F <= PBRF and (valIDL2 and ((not n0rs2) and f2));
	
	IDL1E <= PBRE and (valIDL1 and ((not n0rs1) and e1));
	IDL2E <= PBRE and (valIDL2 and ((not n0rs2) and e2));
	
end estructural;
