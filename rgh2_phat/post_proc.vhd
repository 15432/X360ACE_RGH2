-- advanced RGH2 code for x360ace by 15432 ^_^
-- thx to GliGli
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--main module.

entity post_proc is
    Port ( POSTBIT : in  STD_LOGIC;
			  CLK : in STD_LOGIC;
           to_slow : out  STD_LOGIC := '0';
			  RST : inout STD_LOGIC := '1';
           DBG : out  STD_LOGIC := '0');
end post_proc;

architecture arch of post_proc is

constant R_START: integer := 54236; --jasper: 54234 - 54238
constant T_END: integer := 65535;
constant RESET_LENGTH: integer := 7; --jasper: 6-8
constant SIZE : integer := RESET_LENGTH + 11;

constant RESET_CENTER : STD_LOGIC_VECTOR(0 to RESET_LENGTH-1) := (others => '0');

--the main optimization magic 
constant RESET_VECTOR : STD_LOGIC_VECTOR(0 to SIZE) := b"111111" & RESET_CENTER & b"111111";

signal cnt : integer range 0 to T_END := 0;

constant post_max : integer := 15;
signal postcnt: integer range 0 to post_max := 0;
begin
process (POSTBIT) is
begin
	if POSTBIT'event then 
		if(RST = '0') then -- I could use my magic is_10 detection 
			postcnt <= 0;	 -- ... but this one is much simpler, ok
		else					 -- anyway hard_reset failed the HW init ...
			if(postcnt < post_max) then
				postcnt <= postcnt + 1;
			end if;
		end if;
	end if;
	DBG <= POSTBIT; --visual rater? simple!
end process;

process (clk) is
begin
if CLK'event then --300 mhz precision, yay!
	if(postcnt = 13 or (postcnt = 12 and postbit = '1')) then --another magic, post'event is slowpoke
		if(cnt < T_END) then
			cnt <= cnt + 1;
		end if;
	else
		cnt <= 0;
	end if;
	
	if(cnt >= R_START and cnt <= R_START + SIZE) then
		RST <= RESET_VECTOR(cnt - R_START);
	else
		RST <= 'Z';
	end if;
end if;
end process;

process (postcnt) is
begin	
	if postcnt = 12 then -- i2c slower. might be 'special'. like here, with delay
		to_slow <= '1';
	else
		to_slow <= '0';
	end if;
end process;
end arch;

