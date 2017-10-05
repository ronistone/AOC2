-- altera vhdl_input_version vhdl_2008
library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity example27 is
	port(SW: in STD_LOGIC_VECTOR(3 downto 0);
	LEDR: out STD_LOGIC_VECTOR(3 downto 0));
end;

architecture dontcare of example27 is
begin
	process(all) begin
		case? SW is
			when "1---" =>LEDR<= "1000";
			when "01--" =>LEDR<= "0100";
			when "001-" =>LEDR<= "0010";
			when "0001"=>LEDR<= "0001";
			when others=>LEDR<= "0000";
		end case?;
	end process;
end;
