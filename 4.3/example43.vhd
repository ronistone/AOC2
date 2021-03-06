library IEEE; use IEEE.STD_LOGIC_1164.all;
entity example43 is
	port(	sw: in STD_LOGIC_VECTOR(1 downto 0);
			ledr: out STD_LOGIC_VECTOR(4 downto 0));
end;

architecture synth of example43 is
begin
	ledr(0) <= sw(0) and sw(1);
	ledr(1) <= sw(0) or sw(1);
	ledr(2) <= sw(0) nand sw(1);
	ledr(3) <= sw(0) xor sw(1);
	ledr(4) <= sw(0) nor sw(1);


end;