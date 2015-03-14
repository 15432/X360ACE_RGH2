library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--used to momentally switch the nands or change the default one
--may be useful to flash the second nand from the another one

entity switcher is
    Port ( SW : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           S2 : in  STD_LOGIC;
           O1 : out  STD_LOGIC;
           O2 : out  STD_LOGIC);
end switcher;

architecture arch of switcher is

begin

process (SW) is
begin
	if(SW = '1') then
		O1 <= S1;
		O2 <= S2;
	else
		O1 <= S2;
		O2 <= S1;
	end if;
end process;
end arch;

