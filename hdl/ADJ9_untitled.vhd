--
-- VHDL Architecture ece411.ADJ9.untitled
--
-- Created:
--          by - page10.ews (linux6.ews.illinois.edu)
--          at - 22:11:31 01/21/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ9 IS
   PORT( 
      offset9 : IN     LC3b_offset9;
      ADJ9out : OUT    LC3b_word;
      clk     : IN     std_logic
   );

-- Declarations

END ADJ9 ;

--
ARCHITECTURE UNTITLED OF ADJ9 IS
BEGIN
	ADJ9out <= offset9(8) & offset9(8) & offset9(8) & offset9(8) & offset9(8) & offset9(8) & offset9 & '0' AFTER DELAY_MUX2;
END UNTITLED;

