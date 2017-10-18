library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity exercise35 is
port(clk, reset, a: in STD_LOGIC;
smile: out STD_LOGIC);
end;
architecture synth of exercise35 is
type statetype is (S0, S1, S2, S3, S4);
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
nextstate <= S2;
else nextstate <= S0;
end if;
when S2 => if a then
nextstate <= S4;
else nextstate <= S3;
end if;
when S3 => if a then
nextstate <= S1;
else nextstate <= S0;
end if;
when S4 => if a then
nextstate <= S4;
else nextstate <= S3;
end if;
when others => nextstate <= S0;
end case;
end process;
-- output logic
smile <= '1' when ( ((state = S3) and (a = '1')) or
((state = S4) and (a = '0')) )
else '0';
end;