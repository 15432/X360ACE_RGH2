library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity detect_10 is
    Port ( CLK2 : in  STD_LOGIC;
           POSTBIT : in  STD_LOGIC;
           is_10 : out  STD_LOGIC);
end detect_10;

architecture arch of detect_10 is

signal prev : STD_LOGIC := '0';
signal rst_counter : integer range 0 to 20000 := 0;
begin

process (clk2) is
begin
	if rising_edge(CLK2) then --3,75 mhz
		prev <= postbit;
		if (prev /= postbit) then
			rst_counter <= 0;
		end if;
		
		if(rst_counter < 20000) then
			rst_counter <= rst_counter + 1;
		end if;
		
		if(rst_counter > 16800 and rst_counter < 17100) then
			is_10 <= '1';
		else
			is_10 <= '0';
		end if;
	end if;
end process;

end arch;

