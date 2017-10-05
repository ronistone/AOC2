-- altera vhdl_input_version vhdl_2008
library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity example25 is
port(SW: in STD_LOGIC_VECTOR(2 downto 0);
LEDR: out STD_LOGIC_VECTOR(7 downto 0));
end;
architecture synth of example25 is
begin
process(all) begin
case SW is
	when "000" => LEDR<= "00000001";
	when "001" => LEDR<= "00000010";
	when "010" => LEDR<= "00000100";
	when "011" => LEDR<= "00001000";
	when "100" => LEDR<= "00010000";
	when "101" => LEDR<= "00100000";
	when "110" => LEDR<= "01000000";
	when "111" => LEDR<= "10000000";
	when others =>LEDR<= "XXXXXXXX";
end case;
end process;
end;
