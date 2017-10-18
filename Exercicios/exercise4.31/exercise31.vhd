library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity exercise31 is
port(clk, a, b, c, d: in STD_LOGIC;
x, y:
out STD_LOGIC);
end;

architecture synth of exercise31 is
signal n1, n2, areg, breg, creg, dreg: STD_LOGIC;
begin
process(clk) begin
if rising_edge(clk) then
areg <= a;
breg <= b;
creg <= c;
dreg <= d;
x <= n2;
y <= not (dreg or n2);
end if;
end process;
n1 <= areg and breg;
n2 <= n1 or creg;
end;