-- altera vhdl_input_version vhdl_2008
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity exercise13 is
	port(	SW: in STD_LOGIC_VECTOR(1 downto 0);
			ledr: out STD_LOGIC_VECTOR(3 downto 0));
end;

architecture synth of exercise13 is
begin
	process(all) begin
		case SW is
			when "00"   => ledr <= "0001";
			when "01"   => ledr <= "0010";
			when "10"   => ledr <= "0100";
			when "11"   => ledr <= "1000";
			when others => ledr <= "0000";
		end case;
	end process;
end;	