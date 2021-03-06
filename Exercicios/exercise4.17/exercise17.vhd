library IEEE; use IEEE.STD_LOGIC_1164.all;

entity exercise17 is
	port(	a, b, c, d, e, f, g: in STD_LOGIC;
			y: out STD_LOGIC);
end;

architecture synth of exercise17 is
	signal n1, n2, n3, n4, n5: STD_LOGIC;
begin
	n1 <= not(a and b and c);
	n2 <= not(n1 and d);
	n3 <= not(f and g);
	n4 <= not(n3 or e);
	n5 <= not(n2 or n4);
	y <= not (n5 or n5);
end;