-- altera vhdl_input_version vhdl_2008
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity exercise29 is
port(clk, reset, ta, tb: in STD_LOGIC;
la, lb: inout STD_LOGIC_VECTOR(1 downto 0));
end;
architecture behave of exercise29 is
type statetype is (S0, S1, S2, S3);
signal state, nextstate: statetype;
signal lalb: STD_LOGIC_VECTOR(3 downto 0);
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
when S0 => if ta then
nextstate <= S0;
else nextstate <= S1;
end if;
when S1 => nextstate <= S2;
when S2 => if tb then
nextstate <= S2;
else nextstate <= S3;
end if;
when S3 => nextstate <= S0;
when others => nextstate <= S0;
end case;
end process;
-- output logic
la <= lalb(3 downto 2);
lb <= lalb(1 downto 0);
process(all) begin
case state is
when S0 => lalb <= "0010";
when S1 => lalb <= "0110";
when S2 => lalb <= "1000";
when S3 => lalb <= "1001";
when others => lalb <= "1010";
end case;
end process;
end;