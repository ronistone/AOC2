-- altera vhdl_input_version vhdl_2008
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity exercise20 is
	port(	SW: in STD_LOGIC_VECTOR(7 downto 0);
			LEDG: out STD_LOGIC_VECTOR(2 downto 0);
			none: out STD_LOGIC);
end;

architecture synth of exercise20 is
begin
	process(all) begin
		case? SW is
			when "00000000" => LEDG <= "000"; none <= '1';
			when "00000001" => LEDG <= "000"; none <= '0';
			when "0000001-" => LEDG <= "001"; none <= '0';
			when "000001--" => LEDG <= "010"; none <= '0';
			when "00001---" => LEDG <= "011"; none <= '0';
			when "0001----" => LEDG <= "100"; none <= '0';
			when "001-----" => LEDG <= "101"; none <= '0';
			when "01------" => LEDG <= "110"; none <= '0';
			when "1-------" => LEDG <= "111"; none <= '0';
			when others		 => LEDG <= "000"; none <= '0';
		end case?;
	end process;
end;