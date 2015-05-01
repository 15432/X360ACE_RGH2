library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- used to down the clock from 150 mhz to 50 mhz
entity divider is
    Port ( CLK : in  STD_LOGIC;
           CLK3 : out  STD_LOGIC);
end divider;

architecture arch of divider is
constant div_value : integer := 2;
signal counter: integer range 0 to div_value := 0;
signal new_clk : STD_LOGIC := '0';
begin

process (CLK, new_clk) is
begin
	if CLK'event then
		if(counter < div_value) then
			counter <= counter + 1;
		else
			counter <= 0;
			new_clk <= not new_clk;
		end if;
	end if;
	CLK3 <= new_clk;
end process;

end arch;

