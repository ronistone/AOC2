library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity exercise41 is
port(clk, start, a: in STD_LOGIC;
q: out STD_LOGIC);
end;
architecture synth of exercise41 is
type statetype is (S0, S1, S2, S3);
signal state, nextstate: statetype;
begin
-- state register
process(clk, start) begin
if start then state <= S0;
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
else nextstate <= S3;
end if;
when S2 => if a then
nextstate <= S2;
else nextstate <= S3;
end if;
when S3 => if a then
nextstate <= S2;
else nextstate <= S3;
end if;
when others => nextstate <= S0;
end case;
end process;

-- output logic
q <= '1' when ((state = S1) or (state = S3))
else '0';
end;