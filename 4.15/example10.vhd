library IEEE; use IEEE.STD_LOGIC_1164.all;
entity example10 is
port(	sw: in STD_LOGIC_VECTOR(4 downto 0);
		ledr: out STD_LOGIC_VECTOR(3 downto 0));
end;
architecture synth of example10 is
begin
ledr <= sw(3 downto 0) when sw(4)= '1' else "ZZZZ";
end;