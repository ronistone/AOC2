-- altera vhdl_input_version vhdl_2008
library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity exercise24 is
port(SW: in  STD_LOGIC_VECTOR(3 downto 0);
     led: out STD_LOGIC);
end; 

architecture synth of exercise24 is
	type statetype is (S0, S1, S2, S3);
	signal state, nextstate: statetype;
begin
	 process(SW(0),SW(1)) begin
		if SW(1) then state <= S0;
		elsif rising_edge(SW(0)) then
		  state <=nextstate;
	 end if;
	end process;

	process(all) begin
		 case state is
			when S0=> if (SW(2) xor SW(3)) then
						 nextstate <=S1;
				  else nextstate <=S0;
				  end if;
			when S1=> if (SW(2) and SW(3)) then
						 nextstate <=S2;
				  else nextstate <=S0;
				  end if;
			when S2=> if (SW(2) or SW(3)) then
						 nextstate <=S3;
				  else nextstate <=S0;
				  end if;
			when S3=> if (SW(2) or SW(3)) then
						 nextstate <=S3;
				  else nextstate <=S0;
				  end if;
		 end case;
	end process;

	led<='1' when ((state=S1) or (state=S2))
		 else '0';
end;