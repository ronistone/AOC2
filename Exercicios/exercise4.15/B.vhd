library IEEE; use IEEE.STD_LOGIC_1164.all;

entity B is
	port(	a, b, c: in STD_LOGIC;
			y:	out STD_LOGIC);
end;

architecture behave of B is
begin
	y <= ((not a) and (not b)) or ((not a) and b and
	(not c)) or (not(a or (not c)));
end;
