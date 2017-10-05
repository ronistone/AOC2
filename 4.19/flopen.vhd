library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity flopen is
port(
	SW:			in STD_LOGIC_VECTOR(6 downto 0);
	LEDR: 			out STD_LOGIC_VECTOR(3 downto 0));
end;
architecture asynchronous of flopen is
-- asynchronous SW(5)
begin
	process(SW(6), SW(5)) begin
		if (SW(5)='1') then
			LEDR <= "0000";
		elsif rising_edge(SW(6)) then
			if (SW(4)='1') then
				LEDR <= SW(3 downto 0);
			end if;
		end if;
	end process;
	
end;
