library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- this shit saves the 1.5 seconds (only in case of successfull start or special SMC)

entity delayer is
    Port ( to_slow : in  STD_LOGIC;
           de_slow : out  STD_LOGIC;
           CLK3 : in  STD_LOGIC); 
end delayer;

architecture arch of delayer is
signal cnt: integer range 0 to 500 := 0;
begin
process(to_slow, CLK3) is
begin
if(to_slow = '0') then
	de_slow <= '0';
	cnt <= 0;
else
	if(rising_edge(CLK3) ) then
		if (cnt < 500) then
			cnt <= cnt + 1;
			de_slow <= '0';
		else
			de_slow <= '1';
		end if;
	end if;
end if;
end process;
end arch;

