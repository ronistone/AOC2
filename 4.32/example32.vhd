-- altera vhdl_input_version vhdl_2008
library IEEE; use IEEE.STD_LOGIC_1164.all;
entity example32 is
	port(	xz, reset: in STD_LOGIC;
			a: in STD_LOGIC;
			y: out STD_LOGIC);
end;

architecture synth of example32 is
	type statetype is (S0, S1);
	signal state, nextstate: statetype;
	begin
		-- state register
		process(xz, reset) begin
			if reset then state <= S0;
			elsif rising_edge(xz) then state <= nextstate;
			end if;
		end process;
		-- next state logic
		process(all) begin
			case state is
				when S0 =>
					if a then nextstate <= S0;
					else nextstate <= S1;
				end if;
				when S1 =>
					if a then nextstate <= S0;
					else nextstate <= S1;
					end if;
				when others =>
					nextstate <= S0;
			end case;
		end process;
		-- output logic
		y <= '1' when (a = '1' and state = S1) else '0';
end;