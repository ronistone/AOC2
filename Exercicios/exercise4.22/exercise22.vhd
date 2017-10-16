-- altera vhdl_input_version vhdl_2008

library IEEE; use IEEE.STD_LOGIC_1164.all;

entity exercise22 is
	port(	SW: in STD_LOGIC_VECTOR(2 downto 0);
			ledr: out STD_LOGIC_VECTOR(6 downto 0));
end;

architecture synth of exercise22 is
begin
	process(all) begin
		case SW is
			when "000" 	=> ledr <= "0000000";
			when "001" 	=> ledr <= "0000001";
			when "010" 	=> ledr <= "0000011";
			when "011" 	=> ledr <= "0000111";
			when "100" 	=> ledr <= "0001111";
			when "101" 	=> ledr <= "0011111";
			when "110" 	=> ledr <= "0111111";
			when "111" 	=> ledr <= "1111111";
			when others => ledr <= "0000000";
		end case;
	end process;
end;