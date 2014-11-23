library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity post_proc is
    Port ( POSTBIT : in  STD_LOGIC;
			  CLK : in STD_LOGIC;
           to_slow : out  STD_LOGIC := '0';
			  RST : inout STD_LOGIC := '1';
           DBG : out  STD_LOGIC := '0');
end post_proc;

architecture arch of post_proc is

constant R_START: integer := 54231; --lol, almost 54321 / 15432
constant T_END: integer := 65535;
constant SIZE: integer := 18;
constant RESET_VECTOR : STD_LOGIC_VECTOR(0 to SIZE) := b"1111110000000111111";
signal cnt : integer range 0 to T_END := 0;

constant post_max : integer := 31;
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
end process;

process (clk) is
begin
if rising_edge(CLK) then
	if(postcnt = 13 or (postcnt = 12 and postbit = '1')) then
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

	if postcnt = 12 then -- i2c slower. might be 'special'
		to_slow <= '1';
		DBG <= '1';
	else
		to_slow <= '0';
		DBG <= '0';
	end if;
end process;
end arch;

