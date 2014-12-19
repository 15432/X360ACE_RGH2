-- advanced RGH2 code for x360ace by 15432 ^_^
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

constant R_LEN : integer := 2; -- zephyr_150 2 -- jasper_150 3 --jasper_300 7
--alt rst point!	--jasper_300 2 --jasper_150 1
constant R_START: integer := 54248; -- zephyr_150 27449 -- jasper_150 27121 --jasper_300 54242
--alt rst point!	--jasper_300 54247 --jasper_150 27124
constant T_END: integer := 65535;

signal cnt : integer range 0 to T_END := 0;

constant post_max : integer := 15;
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
	DBG <= POSTBIT;
end process;

process (clk) is
begin
--if rising_edge(clk) then		--150 MHz
if CLK'event then			   	--300 MHz
	if(postcnt = 13 or (postcnt = 12 and postbit = '1')) then
		if(cnt /= 65535) then
			cnt <= cnt + 1;
		end if;
	else
		cnt <= 0;
	end if;
	
	if(cnt >= R_START and cnt < R_START + R_LEN) then
		RST <= '0';
	else
		if(cnt = R_START + R_LEN) then
			RST <= '1';
		else
			RST <= 'Z';
		end if;
	end if;
end if;
end process;

process (postcnt) is
begin	
	if postcnt = 12 then
		to_slow <= '1';
	else
		to_slow <= '0';
	end if;
end process;
end arch;

