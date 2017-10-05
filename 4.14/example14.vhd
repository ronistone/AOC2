library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity example14 is
	port(	sw: in STD_LOGIC_VECTOR(17 downto 0);
			ledr: out STD_LOGIC_VECTOR(3 downto 0));
end;

architecture struct of example14 is
	component example45
		port(	sw: in STD_LOGIC_VECTOR(8 downto 0);
				ledr: out STD_LOGIC_VECTOR(3 downto 0));
	end component;
	signal low, high: STD_LOGIC_VECTOR(3 downto 0);
	signal d0,d1,d2 :std_LOGIC_VECTOR(8 downto 0);
begin

	d0(7 downto 0) <=sw (7 downto 0);
	d0(8) <=sw(16);

	d1(7 downto 0) <= sw (15 downto 8);
	d1(8)<=sw(16);

	d2(3 downto 0) <= low(3 downto 0);
	d2(7 downto 4) <= high(3 downto 0);
	d2(8) <= sw(17);

	lowmux: example45 port map(d0, low);
	highmux: example45 port map(d1, high);
	finalmux: example45 port map(d2, ledr);
end;