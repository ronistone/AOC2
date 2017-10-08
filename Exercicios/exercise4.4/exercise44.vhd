library ieee;
use ieee.std_logic_1164.all;


entity exercise44 is
end exercise44;


architecture ex1tbArc of exercise44 is
	signal tin: std_logic_vector(3 downto 0);
	signal tout: std_logic;
	
	component exercise1 is
		port(	SW: in STD_LOGIC_VECTOR(3 downto 0);
				LEDR: out STD_LOGIC);
	end component;

begin
	ex : exercise1 port map(tin,tout);
	
	process begin
		tin <= "0000";
		wait for 200 ns;
		tin <= "0001";
		wait for 200 ns;
		tin <= "0010";
		wait for 200 ns;
		tin <= "0011";
		wait for 200 ns;
		tin <= "0100";
		wait for 200 ns;
		tin <= "0101";
		wait for 200 ns;
		tin <= "0110";
		wait for 200 ns;
		tin <= "0111";
		wait for 200 ns;
		tin <= "1000";
		wait for 200 ns;
		tin <= "1001";
		wait for 200 ns;
		tin <= "1010";
		wait for 200 ns;
		tin <= "1011";
		wait for 200 ns;
		tin <= "1100";
		wait for 200 ns;
		tin <= "1101";
		wait for 200 ns;
		tin <= "1110";
		wait for 200 ns;
		tin <= "1111";
		wait for 200 ns;
		
	end process;
	
end ex1tbArc;