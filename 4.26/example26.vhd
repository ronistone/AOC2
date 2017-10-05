-- altera vhdl_input_version vhdl_2008
library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity example26 is
port(	SW: in STD_LOGIC_VECTOR(3 downto 0);
		LEDR: out STD_LOGIC_VECTOR(3 downto 0));
end;

architecture synth of example26 is
begin
	process(all) begin
		if SW(3) then LEDR <= "1000";
		elsif Sw(2) then LEDR <= "0100";
		elsif Sw(1) then LEDR <= "0010";
		elsif SW(0) then LEDR <= "0001";
		else LEDR <= "0000";
		end if;
	end process;
end;

