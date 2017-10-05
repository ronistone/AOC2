-- altera vhdl_input_version vhdl_2008
library IEEE; use IEEE.STD_LOGIC_1164.all;
entity example34 is
-- 34 IN mas temos apenas 18 chaves
port(	d0, d1, d2,
		d3: in STD_LOGIC_VECTOR(7 downto 0);
		s: in STD_LOGIC_VECTOR(1 downto 0);
		y: out STD_LOGIC_VECTOR(7 downto 0));
end;

architecture struct of example34 is
	component example34_2
	generic(width: integer := 8);
	port(	d0,
			d1: in STD_LOGIC_VECTOR(width-1 downto 0);
			s: in STD_LOGIC;
			y: out STD_LOGIC_VECTOR(width-1 downto 0)
		);
	end component;
	
	signal low, hi: STD_LOGIC_VECTOR(7 downto 0);
begin
	lowmux: example34_2 port map(d0, d1, s(0), low);
	himux: example34_2 port map(d2, d3, s(0), hi);
	outmux: example34_2 port map(low, hi, s(1), y);
end;

