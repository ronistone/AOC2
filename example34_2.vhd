-- altera vhdl_input_version vhdl_2008
library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity example34_2 is
generic(width: integer := 8);
port(	d0,
		d1: in STD_LOGIC_VECTOR(width-1 downto 0);
		s: in STD_LOGIC;
		y: out STD_LOGIC_VECTOR(width-1 downto 0));
end;

architecture synth of example34_2 is
begin
	y <= d1 when s else d0;
end;
