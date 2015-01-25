-- advanced RGH2 code for x360ace by 15432 ^_^
-- thx to GliGli
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--main module.

entity post_proc is
    Port ( POSTBIT : in  STD_LOGIC;
			  CLK : in STD_LOGIC;
			  is_slow : in STD_LOGIC;
           to_slow : out  STD_LOGIC := '0';
			  RST : inout STD_LOGIC := 'Z';
           DBG : out  STD_LOGIC := '0');
end post_proc;

architecture arch of post_proc is

constant R_LEN : integer := 7;

constant R_END: integer := 54249;

constant T_END: integer := R_END + 2;

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
if CLK'event then 			 	--300 MHz
	if(postcnt = 13 or (postcnt = 12 and postbit = '1')) then
		if(cnt /= T_END) then
			cnt <= cnt + 1;
		end if;
	else
		cnt <= 0;
	end if;
	
	if(cnt >= R_END - R_LEN and cnt < R_END and is_slow = '1') then
		RST <= '0';
	else
		if(cnt = R_END and is_slow = '1') then
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

