library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity post_proc is
    Port ( POSTBIT : in  STD_LOGIC;
           to_slow : out  STD_LOGIC;
           to_count : out  STD_LOGIC;
           to_hr : out  STD_LOGIC;
           is_10 : in  STD_LOGIC;
           DBG : out  STD_LOGIC);
end post_proc;

architecture arch of post_proc is
constant post_max : integer := 31;
signal postcnt: integer range 0 to post_max := 0;
begin
process (POSTBIT) is
begin
	if POSTBIT'event then --bad sync, replace this later with CLK filtering
		if is_10 = '1' then --should be reliable even after hr
			postcnt <= 10;
		else
			if(postcnt < post_max) then
				postcnt <= postcnt + 1;
			end if;
		end if;
	end if;
end process;

process (postcnt) is
begin
	if postcnt = 13 then --main reset counter
		to_count <= '1';
	else
		to_count <= '0';
	end if;
	
	if postcnt >= 13 and postcnt < 15 then --hard reset
		to_hr <= '1';
	else
		to_hr <= '0';
	end if;

	if postcnt = 12 then -- i2c slower. might be 'special'
		to_slow <= '1';
		DBG <= '1';
	else
		to_slow <= '0';
		DBG <= '0';
	end if;
end process;
end arch;

