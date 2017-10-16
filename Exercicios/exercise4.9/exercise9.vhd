library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity exercise9 is
	port(	a,b,c: in STD_LOGIC;
			ledg: out STD_LOGIC_VECTOR(0 downto 0));
end;

architecture struct of exercise9 is
	component exercise48
		generic(width: integer);
		port(d0, d1, d2, d3, d4, d5, d6,d7: in STD_LOGIC_VECTOR(width-1 downto 0);
		s:		in STD_LOGIC_VECTOR(2 downto 0);
		y:		out STD_LOGIC_VECTOR(width-1 downto 0));
	end component;
	
	signal sel: STD_LOGIC_VECTOR(2 downto 0);
begin
	sel <= a & b & c;
	exercise48_1: exercise48 generic map(1)
	port map("1", "0", "0", "1",
	"1", "1", "0", "0",
	sel, ledg);
end;