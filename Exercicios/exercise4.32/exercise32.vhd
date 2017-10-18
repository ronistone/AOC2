library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity exercise32 is
port(clk, reset, a, b: in STD_LOGIC;
q: out STD_LOGIC);
end;
architecture synth of exercise32 is
type statetype is (S0, S1, S2);
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
when S1 => if b then
nextstate <= S2;
else nextstate <= S0;
end if;
when S2 => nextstate <= S0;
when others => nextstate <= S0;
end case;
end process;
-- output logic
q <= '1' when state = S2 else '0';
end;