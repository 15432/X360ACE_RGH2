library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hard_reset is
    Port ( to_hr : in  STD_LOGIC;
           RST : out  STD_LOGIC;
           CLK : in  STD_LOGIC);
end hard_reset;

architecture arch of hard_reset is
signal rst_counter : integer range 0 to 20000 := 0;
begin

process (clk, to_hr) is
begin
if(to_hr = '0') then
	rst_counter <= 0;
else 
	if rising_edge(CLK) then --3,75 mhz
		if(rst_counter < 20000) then
			rst_counter  <= rst_counter+1;
		end if;
	end if;
end if;
end process;

process (rst_counter) is
begin
if(rst_counter = 19998) then
	RST <= '0';
else
	RST <= 'Z';
end if;
end process;

end arch;

