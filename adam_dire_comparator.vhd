library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity adam_dire_comparator is 
	Port ( A, B : in std_logic_vector(3 downto 0);
			AgtBplusOne : out std_logic;
			AgteBplusOne : out std_logic;
			AltBplusOne : out std_logic;
			AlteBplusOne : out std_logic;
			AeqBplusOne : out std_logic;
			overflow : out std_logic );
end adam_dire_comparator;

Architecture behavioral of adam_dire_comparator is
		
	signal numA: integer;
	signal numB: integer;
		
Begin

		numA <= to_integer(unsigned(A));
		numB <= to_integer(unsigned(B)) + 1;
		
	process(numA, numB)
		Begin
		
			AgtBplusOne <= '0';
			AgteBplusOne <= '0';
			AltBplusOne <= '0';
			AlteBplusOne <= '0';
			AeqBplusOne <= '0';
			overflow <= '0';
			
			if numB = 16 then
				overflow<='1';
				
			elsif numA = numB then
				AeqBplusOne <= '1';
				AlteBplusOne <= '1';
				AgteBplusOne <= '1';
				
			elsif numA < numB then
				AltBplusOne <='1';
				AlteBplusOne <='1';
				
			elsif numA > numB then
				AgtBplusOne<='1';
				AgteBplusOne<='1';
				
			end if;
		
	end process;

end behavioral;