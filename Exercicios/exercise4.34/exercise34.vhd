-- altera vhdl_input_version vhdl_2008
library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity exercise34 is
	port(	clk, reset, ta, tb: in STD_LOGIC;
			q, d: out STD_LOGIC_VECTOR(1 downto 0));
end;
	
architecture synth of exercise34 is
	type statetype is (S0, S1, S2, S3, S4, S5);
	signal state, nextstate: statetype;
	signal lalb: STD_LOGIC_VECTOR(3 downto 0);
begin
	-- state register
	process(clk, reset) begin
		if reset then state <= S0;
			elsif rising_edge(clk) then
				state <= nextstate;
		end if;
	end process;
	-- next state logic
	process(all) begin
		case state is
			when S0 => if ta = '1' then
				nextstate <= S0;
					else nextstate <= S1;
				end if;
			when S1 => nextstate <= S2;
			when S2 => nextstate <= S3;
			when S3 => if tb = '1' then
				nextstate <= S3;
					else nextstate <= S4;
				end if;
			when S4 => nextstate <= S5;
			when S5 => nextstate <= S0;
			when others => nextstate <= S0;
		end case;
	end process;
	-- output logic
	q <= lalb(3 downto 2);
	d <= lalb(1 downto 0);
	process(all) begin
		case state is
			when S0 => lalb <="0010";
			when S1 => lalb <="0110";
			when S2 => lalb <="1010";
			when S3 => lalb <="1000";
			when S4 => lalb <="1001";
			when S5 => lalb <="1010";
			when others => lalb <="1010";
		end case;
	end process;
end;