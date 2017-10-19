library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity exercise39 is
port(clk: in STD_LOGIC;
reset: in STD_LOGIC;
a, b: in STD_LOGIC;
z: out STD_LOGIC);
end;

architecture synth of exercise39 is
type statetype is (S0, S1, S2, S3);
signal state, nextstate: statetype;
signal ba: STD_LOGIC_VECTOR(1 downto 0);
begin
-- state register
process(clk, reset) begin
if reset then state <= S0;
elsif rising_edge(clk) then
state <= nextstate;
end if;
end process;
-- next state logic
ba <= b & a;
process(all) begin
case state is
when S0 =>
case (ba) is
when "00" => nextstate <= S0;
when "01" => nextstate <= S3;
when "10" => nextstate <= S0;
when "11" => nextstate <= S1;
when others => nextstate <= S0;
end case;
when S1 =>
case (ba) is
when "00" => nextstate <= S0;
when "01" => nextstate <= S3;
when "10" => nextstate <= S2;
when "11" => nextstate <= S1;
when others => nextstate <= S0;
end case;
when S2 =>
case (ba) is
when "00" => nextstate <= S0;
when "01" => nextstate <= S3;
when "10" => nextstate <= S2;
when "11" => nextstate <= S1;
when others => nextstate <= S0;
end case;
when S3 =>
case (ba) is
when "00" => nextstate <= S0;
when "01" => nextstate <= S3;
when "10" => nextstate <= S2;
when "11" => nextstate <= S1;
when others => nextstate <= S0;
end case;
when others => nextstate <= S0;
end case;
end process;

-- output logic
process(all) begin
case state is
when S0
=> if (a = '1' and b = '1')
then z <= '1';
else z <= '0';
end if;
when S1
=> if (a = '1' or b = '1')
then z <= '1';
else z <= '0';
end if;
when S2
=> if (a = '1' and b = '1')
then z <= '1';
else z <= '0';
end if;
when S3
=> if (a = '1' or b = '1')
then z <= '1';
else z <= '0';
end if;
when others => z <= '0';
end case;
end process;
end;
