library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity exercise38 is 
port(	clk: in STD_LOGIC;
		reset: in STD_LOGIC;
		up: in STD_LOGIC;
		q: out STD_LOGIC_VECTOR(2 downto 0));
end;

architecture synth of exercise38 is
	signal state: STD_LOGIC_VECTOR(2 downto 0);
	signal nextstate: STD_LOGIC_VECTOR(2 downto 0);
begin
	-- state register
	process(clk, reset) begin
		if reset then state <= "000";
			elsif rising_edge(clk) then
				state <= nextstate;
		end if;
	end process;
	-- next state logic
	process(all) begin
		case state is
			when "000" => if up then
				nextstate <="001";
				else
					nextstate <="100";
				end if;
			when "001" => if up then
				nextstate <="011";
					else
						nextstate <="000";
				end if;
			when "011" => if up then
				nextstate <="010";
					else
					nextstate <="001";
				end if;
			when "010" => if up then
				nextstate <="110";
					else
						nextstate <="011";
				end if;
			when "110" => if up then
				nextstate <= "111";
					else
						nextstate <= "010";
				end if;
			when "111" => if up then
				nextstate <= "101";
					else
						nextstate <= "110";
				end if;
			when "101" => if up then
				nextstate <= "100";
					else
						nextstate <= "111";
				end if;
			when "100" => if up then
				nextstate <= "000";
					else
						nextstate <= "101";
				end if;
			when others => nextstate <= "000";
		end case;
	end process;
	-- output logic
	q <= state;
end;