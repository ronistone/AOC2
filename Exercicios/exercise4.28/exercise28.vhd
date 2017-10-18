library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity exercise28 is
port(d, clk: in STD_LOGIC;
LEDR:inout STD_LOGIC);
end;

architecture synth of exercise28 is
signal n1, clk_b, n2: STD_LOGIC;
begin
n1 <= (clk and d) after 1 ns;
clk_b <= (not clk);
n2 <= (clk_b and LEDR) after 1 ns;
LEDR <= (n1 or n2) after 1 ns;
end;