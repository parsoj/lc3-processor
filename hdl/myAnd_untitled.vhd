--
-- VHDL Architecture ece411.myAnd.untitled
--
-- Created:
--          by - page10.ews (dcl-l440-03.ews.illinois.edu)
--          at - 17:23:12 02/21/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY myAnd IS
   PORT( 
      A : IN     std_logic;
      B : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END myAnd ;

--
ARCHITECTURE untitled OF myAnd IS
BEGIN
  F<=A and B after DELAY_LOGIC2;
END ARCHITECTURE untitled;

