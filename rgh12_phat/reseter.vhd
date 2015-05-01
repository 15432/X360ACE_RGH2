-- RGH 1.2 NEW DESIGN
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- this module does the reset pulse
-- 150mhz precision!

entity reseter is
    Port ( clk   		: in  STD_LOGIC;
			  to_reset 	: in  STD_LOGIC;
			  RST			: out STD_LOGIC := 'Z');
end reseter;

architecture arch of reseter is

signal m_reset : STD_LOGIC := '0';

constant len : integer := 6;
signal cnt: integer range 0 to len + 1 := len + 1;

begin
process (clk) is
begin
	if rising_edge(clk) then 
	
		if to_reset /= m_reset then
			m_reset <= to_reset;
			cnt <= 0;
		end if;
		
		if cnt < len then
			RST <= '0';
			cnt <= cnt + 1;
		else if cnt = len then
			cnt <= cnt + 1;
			RST <= '1';
		else
			RST <= 'Z';
		end if; end if;
	end if;
end process;

end arch;

