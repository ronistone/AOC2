library IEEE; use IEEE.STD_LOGIC_1164.all;

entity exercise15 is
	port(	a, b, c: in STD_LOGIC;
			y:	out STD_LOGIC);
end;

architecture behave of exercise15 is
begin
	y <= (not a and not b and c) or (not b and c);
end;