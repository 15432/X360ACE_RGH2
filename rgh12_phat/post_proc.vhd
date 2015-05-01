-- RGH 1.2 NEW DESIGN
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- this module counts post signals and tells what to do to other modules

entity post_proc is
    Port ( POSTBIT : in  STD_LOGIC;
			  RST : in STD_LOGIC ;
           to_slow : out  STD_LOGIC := '0';
			  DBG : out STD_LOGIC := '0';
			  to_count : out STD_LOGIC := '0');
end post_proc;

architecture arch of post_proc is

constant post_rgh : integer := 24;
constant post_max : integer := 31;
signal postcnt: integer range 0 to post_max := 0;

begin
process (POSTBIT, RST) is
begin
	if POSTBIT'event then 
		if(RST = '0') then 
			postcnt <= 0;	 
		else					 
			if(postcnt < post_max) then
				postcnt <= postcnt + 1;
			end if;
		end if;
	end if;
end process;

process (postcnt) is
begin
	if postcnt >= post_rgh then
		to_count <= '1';
	else
		to_count <= '0';
	end if;
	
	if postcnt >= post_rgh - 1 and postcnt <= post_rgh + 1 then
		to_slow <= '1';
	else
		to_slow <= '0';
	end if;
	
	if postcnt < post_max then
		DBG <= POSTBIT;
	else
		DBG <= '0';
	end if;
end process;
end arch;

