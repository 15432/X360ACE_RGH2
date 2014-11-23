library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- this shit saves the 1.5 seconds (only in case of successfull start)

entity delayer is
    Port ( to_slow : in  STD_LOGIC;
           de_slow : out  STD_LOGIC;
           CLK3 : in  STD_LOGIC); --300/2 / 200 / 2 / 20 / 2 = 9375 hz
end delayer;

architecture arch of delayer is
signal cnt: integer range 0 to 6000 := 0;
begin
process(to_slow, CLK3) is
begin
if(to_slow = '0') then
	de_slow <= '0';
	cnt <= 0;
else
	if(rising_edge(CLK3) ) then
		if (cnt < 6000) then
			cnt <= cnt + 1;
		end if;
		if(cnt > 5700) then
			de_slow <= '1';
		else
			de_slow <= '0';
		end if;
	end if;
end if;
end process;
end arch;

