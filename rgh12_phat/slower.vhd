-- RGH 1.2 NEW DESIGN
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- this module do the PLL slowdown
-- also counts the delay
-- VERY complicated module, sorry

entity slower is
    Port ( to_slow 	: in  STD_LOGIC;
			  timeout 	: in  STD_LOGIC;
			  to_count	: in  STD_LOGIC;
			  clk_50 	: in  STD_LOGIC ;
           PLL 		: out STD_LOGIC := '0';
			  callback 	: out STD_LOGIC := '0');
end slower;

architecture arch of slower is

signal delay_val 	: integer range 0 to 16383 	:=  0	;
signal delay_cnt 	: integer range 0 to 16383 	:=  0	;
constant delay_div: integer 							:= 50 ;
signal mode			: STD_LOGIC 						:= '0';

signal m_cbk		: STD_LOGIC 						:= '0';
signal m_slo		: STD_LOGIC 						:= '0';

signal clk_1		: STD_LOGIC 						:= '0';
signal divcnt 		: integer range 0 to 1023		:=  0;
begin


process (clk_50) is
begin
	if rising_edge(clk_50) then
--retail compatibility
		if mode = '0' or to_slow = '0' then
			m_cbk <= '0';
		else
			if to_count = '0' and m_slo = '1' then
				m_cbk <= '1';
			end if;
		end if;
		
--convert clk to lower frequency
		if divcnt < 1023 then
			divcnt <= divcnt + 1;
		else
			divcnt <= 0;
			clk_1 <= not clk_1;
		end if;
	end if;
end process;

--delay measurement
process (to_slow, to_count, mode) is
begin
	if mode = '0' and to_slow = '1' and to_count = '1' then
		mode <= '1';
		delay_val <= delay_cnt - delay_div;
	end if;
end process;

-- delay count and slowdown control
process (clk_1) is
begin
	if rising_edge(clk_1) then
		if timeout = '0' and delay_cnt > delay_val then
			m_slo <= '1';
		else
			m_slo <= '0';
		end if;
		
		if to_slow = '0' then
			delay_cnt <= 0;
		else
			if delay_cnt < 16383 then
				delay_cnt <= delay_cnt + 1;
			end if;
		end if;
	end if;
end process;			

--output signals
process (m_cbk, m_slo) is
begin
	callback <= m_cbk;
	if (m_cbk = '1') then
		PLL <= m_slo;
	else
		PLL <= '0';
	end if;
end process;

end arch;

