library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity exercise43tb is
end entity;


architecture synth of exercise43tb is
	component exercise43 is
		port(	SW: in STD_LOGIC_VECTOR(3 downto 0);
				LEDR: out STD_LOGIC);
	end component;
	signal S : STD_LOGIC_VECTOR(3 downto 0);
	signal L  : STD_LOGIC;
begin
	ex : exercise43 port map(S,L);
	process begin
		S(0) <= '0';
		S(1) <= '0';
		S(2) <= '0';
		S(3) <= '0';
		wait for 200 ns;
		S(0) <= '0';
		S(1) <= '0';
		S(2) <= '0';
		S(3) <= '1';
		wait for 200 ns;
		S(0) <= '0';
		S(1) <= '0';
		S(2) <= '1';
		S(3) <= '0';
		wait for 200 ns;
		S(0) <= '0';
		S(1) <= '0';
		S(2) <= '1';
		S(3) <= '1';
		wait for 200 ns;
		S(0) <= '0';
		S(1) <= '1';
		S(2) <= '0';
		S(3) <= '0';
		wait for 200 ns;
		S(0) <= '0';
		S(1) <= '1';
		S(2) <= '0';
		S(3) <= '1';
		wait for 200 ns;
		S(0) <= '0';
		S(1) <= '1';
		S(2) <= '1';
		S(3) <= '0';
		wait for 200 ns;
		S(0) <= '0';
		S(1) <= '1';
		S(2) <= '1';
		S(3) <= '1';
		wait for 200 ns;
		S(0) <= '1';
		S(1) <= '0';
		S(2) <= '0';
		S(3) <= '0';
		wait for 200 ns;
		S(0) <= '1';
		S(1) <= '0';
		S(2) <= '0';
		S(3) <= '1';
		wait for 200 ns;
		S(0) <= '1';
		S(1) <= '0';
		S(2) <= '1';
		S(3) <= '0';
		wait for 200 ns;
		S(0) <= '1';
		S(1) <= '0';
		S(2) <= '1';
		S(3) <= '1';
		wait for 200 ns;
		S(0) <= '1';
		S(1) <= '1';
		S(2) <= '0';
		S(3) <= '0';
		wait for 200 ns;
		S(0) <= '1';
		S(1) <= '1';
		S(2) <= '0';
		S(3) <= '1';
		wait for 200 ns;
		S(0) <= '1';
		S(1) <= '1';
		S(2) <= '1';
		S(3) <= '0';
		wait for 200 ns;
		S(0) <= '1';
		S(1) <= '1';
		S(2) <= '1';
		S(3) <= '1';
		wait;
		
	end process;
end synth;
