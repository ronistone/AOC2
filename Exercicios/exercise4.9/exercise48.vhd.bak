library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity exercise48 is
port(d0,d1,d2,d3,d4,d5,d6,d7: in STD_LOGIC_VECTOR(7 downto 0);
s: in STD_LOGIC_VECTOR(2 downto 0);
y: out STD_LOGIC_VECTOR(7 downto 0)
);
end;

architecture synth of exercise48 is
begin

y <= 	d0 when s = "000" else
		d1 when s = "001" else
		d2 when s = "010" else
		d3 when s = "011" else
		d4 when s = "100" else
		d5 when s = "101" else
		d6 when s = "110" else
		d7;

end;