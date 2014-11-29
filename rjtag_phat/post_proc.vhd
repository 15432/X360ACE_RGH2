-- advanced R-JTAG code for x360ace by 15432 ^_^
-- thx to GliGli
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--main module.

entity post_proc is
    Port ( POSTBIT : in  STD_LOGIC;
			  CLK : in STD_LOGIC;
           to_slow : out  STD_LOGIC := '0';
			  RST : inout STD_LOGIC := 'Z';
           DBG : out  STD_LOGIC := '0');
end post_proc;

architecture arch of post_proc is

constant R_START: integer := 85351; --jasper: 85351
constant T_END: integer := 131071;
constant RESET_LENGTH: integer := 7; 
constant FORCE_LENGTH: integer := 6;
constant SIZE : integer := RESET_LENGTH + FORCE_LENGTH*2-1;

constant FORCE: STD_LOGIC_VECTOR(0 to FORCE_LENGTH-1) := (others => '1');
constant RESET_CENTER : STD_LOGIC_VECTOR(0 to RESET_LENGTH-1) := (others => '0');

--the main optimization magic 
constant RESET_VECTOR : STD_LOGIC_VECTOR(0 to SIZE) := FORCE & RESET_CENTER & FORCE;

signal cnt : integer range 0 to T_END := 0;

constant post_max : integer := 20;
signal postcnt: integer range 0 to post_max := 0;
begin
process (POSTBIT) is
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
	DBG <= POSTBIT; --visual rater? simple!
end process;

process (clk) is
begin
if CLK'event then --300 mhz precision, yay!
	if(postcnt = 15 or (postcnt = 14 and postbit = '1')) then --another magic, post'event is slowpoke
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
	if postcnt = 14 then -- i2c slower. might be 'special'
		to_slow <= '1';
	else
		to_slow <= '0';
	end if;
end process;
end arch;

