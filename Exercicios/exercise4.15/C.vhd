library IEEE; use IEEE.STD_LOGIC_1164.all;

entity C is
	port(	a, b, c, d: in STD_LOGIC;
			y:	out STD_LOGIC);
end;

architecture behave of C is
begin
	y <= ((not a) and (not b) and (not c) and (not d)) or
		(a and (not b) and (not c)) or
		(a and (not b) and c and (not d)) or
		(a and b and d) or
		((not a) and (not b) and c and (not d)) or
		(b and (not c) and d) or (not a);
end;