library IEEE; use IEEE.STD_LOGIC_1164.all;

entity exercise48 is
	generic(width: integer := 4);
	port(	d0, d1, d2, d3, d4, d5, d6,d7: in STD_LOGIC_VECTOR(width-1 downto 0);
			s: in STD_LOGIC_VECTOR(2 downto 0);
			y: out STD_LOGIC_VECTOR(width-1 downto 0));
end entity;


architecture synth of exercise48 is
begin
	with s select y <=
		d0 when "000",
		d1 when "001",
		d2 when "010",
		d3 when "011",
		d4 when "100",
		d5 when "101",
		d6 when "110",
		d7 when others;
end;