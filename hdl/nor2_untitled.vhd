--
-- VHDL Architecture ece411.nor2.untitled
--
-- Created:
--          by - page10.ews (gelib-057-29.ews.illinois.edu)
--          at - 15:54:20 02/15/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY nor2 IS
  PORT( 
      A : IN     std_logic;
      B : IN     std_logic;
      F : OUT    std_logic
   );
-- Declarations

END nor2 ;

--
ARCHITECTURE untitled OF nor2 IS
BEGIN
  F<=A nor B after DELAY_LOGIC2;
END ARCHITECTURE untitled;

