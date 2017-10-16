-- altera vhdl_input_version vhdl_2008
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity exercise21 is
	port(	SW: in STD_LOGIC_VECTOR(7 downto 0);
			LEDR, LEDG: out STD_LOGIC_VECTOR(2 downto 0);
			none: out STD_LOGIC);
end;
architecture synth of exercise21 is
begin
	process(all) begin
		case? SW is
			when "00000000" => LEDR <= "000"; none <= '1';
			when "00000001" => LEDR <= "000"; none <= '1';
			when "0000001-" => LEDR <= "000"; none <= '1';
			when "000001--" => LEDR <= "000"; none <= '1';
			when "00001---" => LEDR <= "000"; none <= '1';
			when "0001----" => LEDR <= "000"; none <= '1';
			when "001-----" => LEDR <= "000"; none <= '1';
			when "01------" => LEDR <= "000"; none <= '1';
			when "1-------" => LEDR <= "000"; none <= '1';
			when others		 => LEDR <= "000"; none <= '1';
		end case?;
		
		case? SW is
			when "00000011" => LEDG <= "000";
			when "00000101" => LEDG <= "000";
			when "00001001" => LEDG <= "000";
			when "00010001" => LEDG <= "000";
			when "00100001" => LEDG <= "000";
			when "01000001" => LEDG <= "000";
			when "10000001" => LEDG <= "000";
			when "0000011-" => LEDG <= "001";
			when "0000101-" => LEDG <= "001";
			when "0001001-" => LEDG <= "001";
			when "0010001-" => LEDG <= "001";
			when "0100001-" => LEDG <= "001";
			when "1000001-" => LEDG <= "001";
			when "000011--" => LEDG <= "010";
			when "000101--" => LEDG <= "010";
			when "001001--" => LEDG <= "010";
			when "010001--" => LEDG <= "010";
			when "100001--" => LEDG <= "010";
			when "00011---" => LEDG <= "011";
			when "00101---" => LEDG <= "011";
			when "01001---" => LEDG <= "011";
			when "10001---" => LEDG <= "011";
			when "0011----" => LEDG <= "100";
			when "0101----" => LEDG <= "100";
			when "1001----" => LEDG <= "100";
			when "011-----" => LEDG <= "101";
			when "101-----" => LEDG <= "101";
			when "11------" => LEDG <= "110";
			when others		 => LEDG <= "000";
		end case?;
	end process;
end;