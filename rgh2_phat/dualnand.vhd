library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--dualnand module

entity dualnand is
    Port ( RST : in  STD_LOGIC;
           BUT : in  STD_LOGIC;
			  CIN : in  STD_LOGIC;
           CES : out  STD_LOGIC := '1';
           CED : out  STD_LOGIC := '1';
           SMC : out  STD_LOGIC := '1';
           CLK : in  STD_LOGIC;
			  LED : out STD_LOGIC  := '0');
end dualnand;

architecture arch of dualnand is

signal counter : integer range 0 to 511 := 0;
signal counter_smc : integer range 0 to 127 := 0;
signal counter_led : unsigned(9 downto 0) := (others => '0');
signal switch : STD_LOGIC := '1';
signal pre_sw : STD_LOGIC := '1';
signal m_CES : STD_LOGIC := '1';
signal m_CED : STD_LOGIC := '0';
begin

process (m_CES, m_CED) is
begin
	if(m_CES = '0') then
		CES <= '1';
	else
		CES <= CIN;
	end if;
	if(m_CED = '0') then
		CED <= '1';
	else
		CED <= CIN;
	end if;
end process;

process (CLK) is
begin
	if rising_edge(CLK) then
		pre_sw <= switch;
		--button holding processing
			if (BUT = '1') then
				counter <= 0;
			else
				if (RST = '0' and counter /= 511 and to_integer(counter_led) = 0) then
					counter <= counter + 1;
				else
					if (RST = '0' and counter = 511) then
						counter <= 0;
						switch <= not switch;
					end if;
				end if;
			end if;
			--blinking processing
			if(pre_sw /= switch) then
				if(switch = '0') then
					m_CED <= '1';
					m_CES <= '0';
					counter_led <= b"1111111111";
					counter_smc <= 127;
				else
					m_CED <= '0';
					m_CES <= '1';
					counter_led <= b"0111111111";
					counter_smc <= 127;
				end if;
			end if;
			--smc reset to finish the switching
			if (counter_smc /= 0) then
				counter_smc <= counter_smc - 1;
				SMC <= '0';
			else
				SMC <= '1';
			end if;
		if (counter_led /= 0) then
			counter_led <= counter_led - 1;
		end if;
				
	end if;
	LED <= counter_led(8);
end process;


end arch;

