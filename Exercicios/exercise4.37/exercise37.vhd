library IEEE; use IEEE.STD_LOGIC_1164.all;

entity exercise37 is
port(clk:in STD_LOGIC;
reset: in STD_LOGIC;
q:out STD_LOGIC_VECTOR(2 downto 0));
end;

architecture synth of exercise37 is
signal state:STD_LOGIC_VECTOR(2 downto 0);
signal nextstate: STD_LOGIC_VECTOR(2 downto 0);
begin
-- state register
process(clk, reset) begin
if reset then state <= "000";
elsif rising_edge(clk) then
state <= nextstate;
end if;
end process;
-- next state logic
process(all) begin
case state is
when "000" => nextstate <="001";
when "001" => nextstate <="011";
when "011" => nextstate <="010";
when "010" => nextstate <="110";
when "110" => nextstate <="111";
when "111" => nextstate <="101";
when "101" => nextstate <="100"; 
when "100" => nextstate <="000";
when others => nextstate <="000";
end case;
end process;

-- output logic
q <= state;
end;