-- RGH 1.2 NEW DESIGN
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- this module shall count timing for cpu reset
-- also must provide retail compatibility

entity counter is
    Port ( clk_50   : in  STD_LOGIC;
			  to_count : in  STD_LOGIC;
			  callback : in  STD_LOGIC;
			  timeout  : out STD_LOGIC := '0';
           to_reset : out STD_LOGIC := '0');
end counter;

architecture arch of counter is

signal m_reset : STD_LOGIC := '0';
constant timing : integer := 364415; --50 mhz
constant slow_delay : integer := 50000;
constant cnt_width : integer := timing + 1 + slow_delay;
signal cnt: integer range 0 to cnt_width:= 0;

begin
process (clk_50) is
begin
	if rising_edge(clk_50) then 
		if (to_count = '0' or callback = '0') then
			cnt <= 0;
			timeout <= '0';
		else
			if cnt < cnt_width then
				cnt <= cnt + 1;
				timeout <= '0';
			else
				timeout <= '1';
			end if;
			
			if cnt = timing then
				m_reset <= not m_reset;
			end if;
		end if;
	end if;
end process;

process (m_reset) is
begin
	to_reset <= m_reset;
end process;

end arch;

