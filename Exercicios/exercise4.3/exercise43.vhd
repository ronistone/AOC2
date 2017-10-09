library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity exercise43 is
	port(	SW: in STD_LOGIC_VECTOR(3 downto 0);
			LEDR: out STD_LOGIC);
end;


architecture synth of exercise43 is
begin
	LEDR <= SW(0) xor SW(1) xor SW(2) xor SW(3);
end;
