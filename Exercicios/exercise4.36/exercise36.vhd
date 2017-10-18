library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity exercise36 is
port(clk, reset, n, d, q: in STD_LOGIC;
dispense, return5, return10: out STD_LOGIC;
return2_10:out STD_LOGIC);
end;
architecture synth of exercise36 is
type statetype is (S0, S5, S10, S25, S30, S15, S20,
S35, S40, S45);
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
when S0 =>
if n then nextstate <= S5;
elsif d then nextstate <= S10;
elsif q then nextstate <= S25;
else nextstate <= S0;
end if;
when S5 =>
if n then nextstate <= S10;
elsif d then nextstate <= S15;
elsif q then nextstate <= S30;
else nextstate <= S5;
end if;
when S10 =>
if n then nextstate <= S15;
elsif d then nextstate <= S20;
elsif q then nextstate <= S35;
else nextstate <= S10;
end if;
when S25 => nextstate <= S0;
when S30 => nextstate <= S0;

when S15 =>
if n then nextstate <= S20;
elsif d then nextstate <= S25;
elsif q then nextstate <= S40;
else nextstate <= S15;
end if;
when S20 =>
if n then nextstate <= S25;
elsif d then nextstate <= S30;
elsif q then nextstate <= S45;
else nextstate <= S20;
end if;
when S35 => nextstate <= S0;
when S40 => nextstate <= S0;
when S45 => nextstate <= S0;
when others => nextstate <= S0;
end case;
end process;

-- output logic
dispense
<= '1' when ((state = S25) or
(state = S30) or
(state = S35) or
(state = S40) or
(state = S45))
else '0';
return5
<= '1' when ((state = S30) or
(state = S40))
else '0';
return10
<= '1' when ((state = S35) or
(state = S40))
else '0';
return2_10 <= '1' when (state = S45)
else '0';
end;
