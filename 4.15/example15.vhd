library IEEE; use IEEE.STD_LOGIC_1164.all;

entity example15 is
	port(	sw: in STD_LOGIC_VECTOR(8 downto 0);
			ledr: out STD_LOGIC_VECTOR(3 downto 0));
end;

architecture struct of example15 is
	component example10
		port(	sw: in STD_LOGIC_VECTOR(4 downto 0);
				ledr: out STD_LOGIC_VECTOR(3 downto 0));
	end component;

	signal d0, d1 :std_LOGIC_VECTOR(4 downto 0);
begin
	d0(3 downto 0) <= sw(3 downto 0);
	d0(4)<= sw(8);

	d1(3 downto 0) <= sw(7 downto 4);
	d1(4) <= not sw(8);

	t0: example10 port map(d0, ledr);
	t1: example10 port map(d1, ledr);
end;