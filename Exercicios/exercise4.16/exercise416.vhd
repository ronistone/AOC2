library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity exercise416 is
port(SW: in STD_LOGIC_VECTOR(4 downto 0);
LEDR: out STD_LOGIC);
end;

architecture synth of exercise416 is
begin
LEDR <= not(not(not(not(SW(0) and SW(1))) and (not(SW(2) and SW(3)))) and SW(4));
end;
