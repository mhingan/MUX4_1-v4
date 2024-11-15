library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4 is
    Port ( 
        i0 : in STD_LOGIC;
        i1 : in STD_LOGIC;
        i2 : in STD_LOGIC;
        i3 : in STD_LOGIC;
        a1 : in STD_LOGIC;
        a2 : in STD_LOGIC;
        y  : out STD_LOGIC
    );
end mux4;

architecture Behavioral of mux4 is
begin
    process(a1, a2, i0, i1, i2, i3)
    begin
        if (a1 = '0' and a2 = '0') then y <= i0;
        elsif (a1 = '0' and a2 = '1') then y <= i1; 
        elsif (a1 = '1' and a2 = '0') then y <= i2;
        else y <= i3;
        end if;
    end process;
end Behavioral;
