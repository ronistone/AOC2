-- altera vhdl_input_version vhdl_2008
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity exercise18 is
	port(	a, b, c, d: in STD_LOGIC;
			y:	out STD_LOGIC);
end;

architecture synth of exercise18 is
	signal vars: STD_LOGIC_VECTOR(3 downto 0);
begin
	vars <= (a & b & c & d);
	process(all) begin
		case vars is
			-- note: outputs cannot be assigned don’t care
			when X"0" => y <= '0';
			when X"1" => y <= '0';
			when X"2" => y <= '0';
			when X"3" => y <= '0';
			when X"4" => y <= '0';
			when X"5" => y <= '0';
			when X"6" => y <= '0';
			when X"7" => y <= '0';
			when X"8" => y <= '1';
			when X"9" => y <= '0';
			when X"A" => y <= '0';
			when X"B" => y <= '1';
			when X"C" => y <= '1';
			when X"D" => y <= '1';
			when X"E" => y <= '0';
			when X"F" => y <= '1';
			when others => y <= '0';--should never happen
		end case;
	end process;
end;