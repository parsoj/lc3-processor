--
-- VHDL Architecture ece411.Reg16.untitled
--
-- Created:
--          by - page10.ews (linux6.ews.illinois.edu)
--          at - 17:25:23 01/21/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Reg16 IS
   PORT( 
      Input  : IN     LC3b_word;
      RESET  : IN     std_logic;
      clk    : IN     std_logic;
      load   : IN     std_logic;
      Output : OUT    LC3b_word
   );

-- Declarations

END Reg16 ;

--
ARCHITECTURE untitled OF Reg16 IS
signal pre_out : LC3b_word;
BEGIN
PROCESS (clk, RESET, Input)
BEGIN
  if RESET = '0' then
   pre_out <= (others => '0');
  elsif clk'event and clk = '1' then
   if (load = '1') then
    pre_out <= Input;
   end if;
  end if;
end process;
Output <= pre_out after delay_reg;
END ARCHITECTURE untitled;

