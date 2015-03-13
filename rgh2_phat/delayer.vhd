library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- this shit saves the 1.5 seconds (only in case of successfull start or special SMC)

entity delayer is
    Port ( in_slow : in  STD_LOGIC;
			  in_do : in STD_LOGIC;
           out_slow : out  STD_LOGIC;
			  out_do: out STD_LOGIC;
           CLK3 : in  STD_LOGIC); 
end delayer;

architecture arch of delayer is
constant del: integer := 685;
signal cnt: integer range 0 to del := 0;
signal old_do : STD_LOGIC;
signal old_do1 : STD_LOGIC;
begin
process(in_slow, CLK3) is
begin
out_slow <= in_slow;
if(in_slow = '0') then
	old_do <= in_do;
	old_do1 <= old_do;
	out_do <= old_do;
	cnt <= 0;
else
	if(rising_edge(CLK3) ) then
		if (cnt < del) then
			cnt <= cnt + 1;
			out_do <= old_do1;
		else
			out_do <= in_do;
			old_do <= in_do;
		end if;
	end if;
end if;
end process;
end arch;

