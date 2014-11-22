
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity reset_proc is
    Port ( to_count : in  STD_LOGIC;
           RST : out  STD_LOGIC;
           CLK : in  STD_LOGIC);
end reset_proc;

architecture arch of reset_proc is
constant R_START: integer := 54231; --lol, almost 54321 / 15432
constant T_END: integer := 65535;
constant R_LEN: integer := 7;
constant R_FORCE: integer := 6;	--use the force, luke!
constant R_END: integer := R_START + R_LEN;
signal cnt : integer range 0 to T_END := 0;
begin
process (CLK) is
begin
if (CLK'event) then
	if(to_count = '0') then
		cnt <= 0;
	end if;
	cnt <= cnt + 1;
	if(cnt >= R_START and cnt < R_END) then
		RST <= '0';
	else
		if(cnt >= R_START - R_FORCE and cnt < R_END + R_FORCE) then
			RST <= '1';
		else
			RST <= 'Z';
		end if;
	end if;
end if;
end process;

end arch;

