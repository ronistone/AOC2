-- altera vhdl_input_version vhdl_2008
library IEEE; use IEEE.STD_LOGIC_1164.all;
entity exercise42 is
port(	clk, reset, x: in STD_LOGIC;
		q:out STD_LOGIC);
end;

architecture synth of exercise42 is
	type statetype is (S00, S01, S10, S11);
	signal state, nextstate: statetype;
begin
	-- state register
	process(clk, reset) begin
		if reset then state <= S00;
			elsif rising_edge(clk) then
				state <= nextstate;
		end if;
	end process;
	-- next state logic
	process(all) begin
	case state is
		when S00	=> if x then
						nextstate <= S11;
						else nextstate <= S01;
						end if;
		when S01 => if x then
							nextstate <= S10;
							else nextstate <= S00;
						end if;
		when S10		 => 	nextstate <= S01;
		when S11		 =>	nextstate <= S01;
		when others  =>	nextstate <= S00;
		end case;
	end process;
	-- output logic
	q <= '0' when (state = S00) else '1';
end;