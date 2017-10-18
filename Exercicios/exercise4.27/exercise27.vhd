library IEEE; use IEEE.STD_LOGIC_1164.all;

entity exercise27 is
port(	j, k, clk	: in 		STD_LOGIC;
		q				: inout 	STD_LOGIC);
end;

architecture synth of exercise27 is
	signal jk: STD_LOGIC_VECTOR(1 downto 0);
begin
	jk <= j & k;
	process(clk) begin
		if rising_edge(clk) then
			if j = '1' and k = '0'
				then q <= '1';
			elsif j = '0' and k = '1'
				then q <= '0';
			elsif j = '1' and k = '1'
				then q <= not q;
			end if;
		end if;
	end process;
end;