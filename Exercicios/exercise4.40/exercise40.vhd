library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity exercise40 is
port(clk, reset, a: in STD_LOGIC;
y:
out STD_LOGIC);
end;
architecture synth of exercise40 is
type statetype is (S0, S1, S11);
signal state, nextstate: statetype;
begin
-- state register
process(clk, reset) begin
if reset then state <= S0;
elsif rising_edge(clk) then
state <= nextstate;
end if;
end process;
-- next state logic
process(all) begin
case state is
when S0 => if a then
nextstate <= S1;
else nextstate <= S0;
end if;
when S1 => if a then
nextstate <= S11;
else nextstate <= S0;
end if;
when S11 => nextstate <= S11;
when others => nextstate <= S0;
end case;
end process;

-- output logic
y <= '1' when (state = S11) else '0';
end;

