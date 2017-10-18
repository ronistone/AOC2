library IEEE; use IEEE.STD_LOGIC_1164.all;

entity exercise10 is
	port(	a,b,c: in STD_LOGIC;
			ledg: out STD_LOGIC_VECTOR(0 downto 0));
end;

architecture struct of exercise10 is
	component mux4
		generic(width: integer);
		port(	d0, d1, d2, d3: in STD_LOGIC_VECTOR(width-1 downto 0);
				s: in STD_LOGIC_VECTOR(1 downto 0);
				y: out STD_LOGIC_VECTOR(width-1 downto 0));
	end component;
	signal cb:	STD_LOGIC_VECTOR(0 downto 0);
	signal c_vect: STD_LOGIC_VECTOR(0 downto 0);
	signal sel:	STD_LOGIC_VECTOR(1 downto 0);
begin
	c_vect(0) <= c;
	cb(0) <= not c;
	sel <= (a & b);
	mux4_1: mux4 generic map(1)
	port map(cb, c_vect, "1", "0", sel, ledg);
end;