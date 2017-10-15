library ieee;
use ieee.std_logic_1164.all;

entity exercise6 is
	port(
		SW 	: in 	std_logic_vector(3 downto 0);
		HEX0 	: out std_logic_vector(6 downto 0)
	);
end entity;


architecture exercise6_arch of exercise6 is
	
begin
	process(SW) begin
		CASE SW is
			when "0000" => HEX0 <= "1111110";
			when "0001" => HEX0 <= "0110000";
			when "0010" => HEX0 <= "1101101";
			when "0011" => HEX0 <= "1111001";
			when "0100" => HEX0 <= "0110011";
			when "0101" => HEX0 <= "1011011";
			when "0110" => HEX0 <= "1011111";
			when "0111" => HEX0 <= "1110000";
			when "1000" => HEX0 <= "1111111";
			when "1001" => HEX0 <= "1111011";
			when "1010" => HEX0 <= "1110111";
			when "1011" => HEX0 <= "0011111";
			when "1100" => HEX0 <= "1001110";
			when "1101" => HEX0 <= "0111101";
			when "1110" => HEX0 <= "1001111";
			when "1111" => HEX0 <= "1000111";
			when others => HEX0 <= "0000000";
		end case;
	end process;
end architecture;
