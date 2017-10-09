library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity exercise455_A is
port(SW: in STD_LOGIC_VECTOR(4 downto 0);
LEDR: out STD_LOGIC_VECTOR(3 downto 0));
end;

architecture synth of exercise452 is
begin
process(SW) begin
if SW(0)='1' then LEDR <= SW(4 downto 1);
end if;
end process;
end;


entity exercise452_B is
port(SW: in STD_LOGIC_VECTOR(1 downto 0);
LEDR: out STD_LOGIC_VECTOR(4 downto 0));
end;

architecture proc of exercise452 is
begin
LEDR(0) <=SW(0) and SW(1);
LEDR(1) <=SW(0) or SW(1);
LEDR(2) <=SW(0) xor SW(1);
LEDR(3) <=SW(0) nand SW(1);
LEDR(4) <=SW(0) nor SW(1);
end;

entity exercise452_C is
port(SW: in STD_LOGIC_VECTOR(4 downto 0);
LEDR: out STD_LOGIC_VECTOR(3 downto 0));
end;

architecture synth of exercise452 is
begin
process(SW) begin
if rising_edge(SW(0)) then LEDR <= SW(4 downto 1);
end if;
end process;
end;



entity exercise452_D is
port(SW: in STD_LOGIC_VECTOR(3 downto 0);
LEDR: out STD_LOGIC_VECTOR(3 downto 0));
end;

architecture synth of exercise452 is
begin
process(all) begin
if    SW(3) then LEDR <="1000";
elsif SW(2) then LEDR <="0100";
elsif SW(1) then LEDR <="0010";
elsif SW(0) then LEDR <="0001";
end if;
end process;
end;

architecture synth of exercise452_E is
type statetype is (S0, S1, S2);
signal state, nextstate: statetype;
begin
process(SW(0), SW(1)) begin
if SW(1) then state <=S0;
elsif rising_edge(SW(0)) then
state <=nextstate;
end if;
end process;
process(state) begin
case state is
when S0=> nextstate <=S1;
when S1=> nextstate <=S2;
when S2=> nextstate <=S0;
end case;
end process;
LEDR<='1' when state= S0 else '0';
end;

