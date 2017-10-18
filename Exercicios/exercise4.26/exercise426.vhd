library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity exercise426 is
    Port ( SW : in    STD_LOGIC_VECTOR(1 downto 0);
           LEDR : out   STD_LOGIC_vector(0 to 0));
end entity;

architecture SRlatch of exercise426 is
signal Q2   : STD_LOGIC;
signal notQ : STD_LOGIC;
begin

LEDR(0)    <= Q2;
Q2   <= SW(1) nor notQ;
notQ <= SW(0) nor Q2;

end architecture;