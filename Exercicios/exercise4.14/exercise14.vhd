library IEEE; use IEEE.STD_LOGIC_1164.all;

entity exercise14 is
	port(	a: in STD_LOGIC_VECTOR(5 downto 0);
			y: out STD_LOGIC_VECTOR(63 downto 0));
end;

architecture struct of exercise14 is
	component decoder2_4
		port(a: in STD_LOGIC_VECTOR(1 downto 0);
		y: out STD_LOGIC_VECTOR(3 downto 0));
	end component;
	signal y2_4: STD_LOGIC_VECTOR(11 downto 0);
begin
	dec0: decoder2_4 port map(a(1 downto 0),
	y2_4(3 downto 0));
	dec1: decoder2_4 port map(a(3 downto 2),
	y2_4(7 downto 4));
	dec2: decoder2_4 port map(a(5 downto 4),
	y2_4(11 downto 8));
	y(0) <= y2_4(0) and y2_4(4) and y2_4(8);
	y(1) <= y2_4(1) and y2_4(4) and y2_4(8);
	y(2) <= y2_4(2) and y2_4(4) and y2_4(8);
	y(3) <= y2_4(3) and y2_4(4) and y2_4(8);
	y(4) <= y2_4(0) and y2_4(5) and y2_4(8);
	y(5) <= y2_4(1) and y2_4(5) and y2_4(8);
	y(6) <= y2_4(2) and y2_4(5) and y2_4(8);
	y(7) <= y2_4(3) and y2_4(5) and y2_4(8);
	y(8) <= y2_4(0) and y2_4(6) and y2_4(8);
	y(9) <= y2_4(1) and y2_4(6) and y2_4(8);
	y(10) <= y2_4(2) and y2_4(6) and y2_4(8);
	y(11) <= y2_4(3) and y2_4(6) and y2_4(8);
	y(12) <= y2_4(0) and y2_4(7) and y2_4(8);
	y(13) <= y2_4(1) and y2_4(7) and y2_4(8);
	y(14) <= y2_4(2) and y2_4(7) and y2_4(8);
	y(15) <= y2_4(3) and y2_4(7) and y2_4(8);
	y(16) <= y2_4(0) and y2_4(4) and y2_4(9);
	y(17) <= y2_4(1) and y2_4(4) and y2_4(9);
	y(18) <= y2_4(2) and y2_4(4) and y2_4(9);
	y(19) <= y2_4(3) and y2_4(4) and y2_4(9);
	y(20) <= y2_4(0) and y2_4(5) and y2_4(9);
	y(21) <= y2_4(1) and y2_4(5) and y2_4(9);
	y(22) <= y2_4(2) and y2_4(5) and y2_4(9);
	y(23) <= y2_4(3) and y2_4(5) and y2_4(9);
	y(24) <= y2_4(0) and y2_4(6) and y2_4(9);
	y(25) <= y2_4(1) and y2_4(6) and y2_4(9);
	y(26) <= y2_4(2) and y2_4(6) and y2_4(9);
	y(27) <= y2_4(3) and y2_4(6) and y2_4(9);
	y(28) <= y2_4(0) and y2_4(7) and y2_4(9);
	y(29) <= y2_4(1) and y2_4(7) and y2_4(9);
	y(30) <= y2_4(2) and y2_4(7) and y2_4(9);
	y(31) <= y2_4(3) and y2_4(7) and y2_4(9);
end architecture;
