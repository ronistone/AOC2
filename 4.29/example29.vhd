library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity example29 is
port(	clk: in STD_LOGIC;
		d: in STD_LOGIC;
		q: out STD_LOGIC);
end;

architecture bad of example29 is
begin
	process(clk)
		variable n1: STD_LOGIC;
		begin
		if rising_edge(clk) then
		n1 := d; -- blocking
		q <= n1;
		end if;
	end process;
end;
