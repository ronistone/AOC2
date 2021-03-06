-- altera vhdl_input_version vhdl_2008
library IEEE; use IEEE.STD_LOGIC_1164.all;
entity exercise44 is
	port(	clk, a, b, c, d: in STD_LOGIC;
			q: out STD_LOGIC);
end;

architecture synth of exercise44 is
signal areg, breg, creg, dreg: STD_LOGIC;
begin
	process(clk) begin
		if rising_edge(clk) then
			areg <= a;
			breg <= b;
			creg <= c;
			dreg <= d;
			q <= ((areg xor breg) xor creg) xor dreg;
		end if;
	end process;
end;