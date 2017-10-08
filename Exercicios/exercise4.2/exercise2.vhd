library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity exercise2 is
port(SW: in STD_LOGIC_VECTOR(3 downto 0);
LEDR: out STD_LOGIC_VECTOR(1 downto 0));
end;
architecture synth of exercise2 is
begin
process(all) begin
if SW(0) then LEDR <= "11";
elsif SW(1) then LEDR <= "10";
elsif SW(2) then LEDR <= "01";
elsif SW(3) then LEDR <= "00";
else LEDR <= SW(1 downto 0);
end if;
end process;
end;