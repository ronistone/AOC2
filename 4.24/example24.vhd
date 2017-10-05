-- altera vhdl_input_version vhdl_2008
library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity example24 is
	port(	SW: in STD_LOGIC_VECTOR(3 downto 0);
			LEDR: out STD_LOGIC_VECTOR(6 downto 0)
		);
end;

architecture synth of example24 is
begin
	process(all) begin
		case SW is
			-- abcdefg
			when X"0" => LEDR <= "1111110";
			when X"1" => LEDR <= "0110000";
			when X"2" => LEDR <= "1101101";
			when X"3" => LEDR <= "1111001";
			when X"4" => LEDR <= "0110011";
			when X"5" => LEDR <= "1011011";
			when X"6" => LEDR <= "1011111";
			when X"7" => LEDR <= "1110000";
			when X"8" => LEDR <= "1111111";
			when X"9" => LEDR <= "1110011";
			when others => LEDR <= "0000000";
		end case;
	end process;
end;