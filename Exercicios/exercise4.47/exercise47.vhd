-- altera vhdl_input_version vhdl_2008
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity exercise47 is
	port(	clk: in STD_LOGIC;
			d:	in STD_LOGIC;
			q:	out STD_LOGIC);
end;

architecture bad of exercise47 is
begin
	process(clk)
		variable n1: STD_LOGIC := '0';
	begin
		if rising_edge(clk) then
			q <= n1; -- nonblocking
			n1 := d; -- nonblocking
		end if;
	end process;
end;