library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity everything is
	Port ( POST : in  STD_LOGIC;
			  CLK : in STD_LOGIC;
			  DBG : out STD_LOGIC := '0';
			  PLL : out STD_LOGIC := 'Z';
			  RST : inout STD_LOGIC := 'Z');
end everything;

architecture arch of everything is

constant delay_val : integer := 9600;

constant post_rgh : integer := 24;
constant post_max : integer := 31;
signal postcnt: unsigned (4 downto 0) := "00000";

constant R_LEN : integer := 2; 			
constant R_STA : integer := 349831; 

constant T_FRC : integer := 50000;
constant T_END : integer := R_STA + R_LEN + T_FRC;
signal cnt : integer range 0 to T_END := 0;

signal slow : STD_LOGIC := '0';
signal new_clk : STD_LOGIC := '0';
signal divcnt : integer range 0 to 1023 := 0;

signal delay_cnt : integer range 0 to delay_val := 0;

signal timeout : STD_LOGIC := '0';

begin

--new clk
process (CLK) is
begin
	if rising_edge(CLK) then
		if divcnt < 1023 then
			divcnt <= divcnt + 1;
		else
			divcnt <= 0;
			new_clk <= not new_clk;
		end if;
	end if;
end process;

--post counter
process (POST, RST) is
begin
	if POST'event then 
		if(RST = '0') then 
			postcnt <= "00000";	 
		else					 
			if(postcnt < post_max) then
				postcnt <= postcnt + 1;
			end if;
		end if;
	end if;
end process;

--reset pulse
process (clk, POST) is
begin

if rising_edge(CLK) then
	if(postcnt >= post_rgh) then
		if(cnt < T_END) then
			cnt <= cnt + 1;
			timeout <= '0';
		else
			timeout <= '1';
		end if;
	else
		cnt <= 0;
		timeout <= '0';
	end if;
	
	if(cnt >= R_STA and cnt < R_STA + R_LEN) then
		RST <= '0';
	else
		if(cnt = R_STA + R_LEN) then
			RST <= '1';
		else
			RST <= 'Z';
		end if;
	end if;
end if;
end process;

--delay+slowdown
process (new_clk) is
begin
	if rising_edge(new_clk) then
		DBG <= POST;
		PLL <= slow;
		if postcnt >= post_rgh-1 and timeout = '0' then
			if(delay_cnt < delay_val) then
				delay_cnt <= delay_cnt + 1;
				slow <= '0';
			else
				slow <= '1';
			end if;
		else
			slow <= '0';
			delay_cnt <= 0;
		end if;
	end if;
end process;

end arch;

