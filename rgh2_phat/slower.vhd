library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--nothing special. just common i2c slowdown
entity slower is
	generic (                                          -- S >< E0                   >< ACK     >< CD                   ><   ACK   >< 04                   ><   ACK   >< 4E                   ><   ACK   >< 08                   ><   ACK   >< 80                   ><   ACK   >< 03                   ><   ACK   >< P
    SDA_SLOW_BITS : STD_LOGIC_VECTOR(0 to 255) := b"1001111111110000000000000001111111111111111100000011111100011111111111111000000000000000111000000111111111110001110000001111111110001111111111100000000000011100000000011111111111111000000000000000000000111111111110000000000000000001111111111111111100101111";
         SCL_BITS : STD_LOGIC_VECTOR(0 to 255) := b"1100100100100100100100100100001111100001001001001001001001001000011111000010010010010010010010010000111110000100100100100100100100100001111100001001001001001001001001000011111000010010010010010010010010000111110000100100100100100100100100001111100001111111";
                                                     -- S >< E0                   >< ACK     >< CD                   ><   ACK   >< 04                   ><   ACK   >< 4E                   ><   ACK   >< 80                   ><   ACK   >< 0c                   ><   ACK   >< 02                   ><   ACK   >< P
    SDA_FAST_BITS : STD_LOGIC_VECTOR(0 to 255) := b"1001111111110000000000000001111111111111111100000011111100011111111111111000000000000000111000000111111111110001110000001111111110001111111111111100000000000000000000011111111111000000000000111111000000111111111110000000000000000001110001111111111100101111"
  );
    Port ( CLK3 : in  STD_LOGIC;
           to_slow : in  STD_LOGIC;
			  callback : out STD_LOGIC := '0';
           SCL : out  STD_LOGIC := '1';
           SDA : out  STD_LOGIC := '1');
end slower;

architecture arch of slower is
signal p_slow: STD_LOGIC := '0';
signal i2ccnt: integer range 0 to 255 := 255;
begin

process(CLK3, i2ccnt, p_slow) is
begin
	if rising_edge(CLK3) then
		if i2ccnt /= 255 then
			i2ccnt <= i2ccnt + 1;
		else
			if p_slow /= to_slow then
				p_slow <= to_slow;
				i2ccnt <= 0;
			end if;
		end if;
	end if;
	
	if (p_slow = '1' and i2ccnt = 255) or (p_slow = '0' and i2ccnt /= 255) then
		callback <= '1';
	else
		callback <= '0';
	end if;
	
	if ((p_slow = '1') and (SDA_SLOW_BITS(i2ccnt) = '1')) or ((p_slow = '0') and (SDA_FAST_BITS(i2ccnt) = '1')) then
		SDA <= 'Z';
	else
		SDA <= '0';
	end if;
		
	if SCL_BITS(i2ccnt) = '1' then
		SCL <= 'Z';
	else
		SCL <= '0';
	end if;
    
  end process;

end arch;

