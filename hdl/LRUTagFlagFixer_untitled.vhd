--
-- VHDL Architecture ece411.LRUTagFlagFixer.untitled
--
-- Created:
--          by - page10.ews (dcl-l440-03.ews.illinois.edu)
--          at - 15:53:24 02/21/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY LRUTagFix IS
   PORT( 
      Miss       : IN     std_logic;
      wantedTag  : IN     LC3B_C_TAG;
      newTagFlag : OUT    LC3B_OWORD;
      writeBack  : OUT    std_logic;
      dirty0     : IN     std_logic;
      dirty1     : IN     std_logic;
      lru        : IN     std_logic;
      valid0     : IN     std_logic;
      valid1     : IN     std_logic;
      tag0       : IN     LC3B_C_TAG;
      tag1       : IN     LC3B_C_TAG;
      dirtying   : IN     std_logic;
      equal1     : IN     std_logic;
      Replace1   : OUT    std_logic;
      Replace0   : OUT    std_logic
   );

-- Declarations

END LRUTagFix ;

--
ARCHITECTURE untitled OF LRUTagFix IS
BEGIN
  PROCESS (Miss, wantedTag, lru)
BEGIN
  if(Miss = '1') then--we need to replace
    if(lru = '1') then
      newTagFlag(22 downto 0)<="01"&dirtying&wantedTag&valid0&dirty0&tag0;--flip lru, and update tags
      Replace0<='0';
      Replace1<='1';
      if(dirty1 = '1')then
        writeBack<='1';
      end if;      
    else
      newTagFlag(22 downto 0)<='1'&valid1&dirty1&tag1&'1'&dirtying&wantedTag;
      Replace0<='1';
      Replace1<='0';
      if(dirty0 = '1')then
        writeBack<='1';
      end if;
    end if;
 --else
 --  if(lru = '1') then
  --    newTagFlag(22 downto 0)<="01"&dirtying&wantedTag&valid0&dirty0&tag0;--flip lru, and update tags
  --    Replace0<='0';
 --     Replace1<='1';
  --    if(dirty1 = '1')then
  --      writeBack<='1';
  --    end if;      
  --  else
   --   newTagFlag(22 downto 0)<='1'&valid1&dirty1&tag1&'1'&dirtying&wantedTag;
   --   Replace0<='1';
    --  Replace1<='0';
   --   if(dirty0 = '1')then
   --     writeBack<='1';
   --   end if;
   -- end if;
 -- else
   -- writeBack<='0';
   -- if(equal1 = '1') then
   --   if(dirtying = '1') then
    --    newTagFlag(22 downto 0)<='0'&valid1&dirtying&tag1&valid0&dirty0&tag0;
    --    Replace0<='0';
    --    Replace1<='1';
    --  else
    --    newTagFlag(22 downto 0)<='0'&valid1&dirty1&tag1&valid0&dirty0&tag0;
    --    Replace0<='0';
     --   Replace1<='0';
    --  end if;
  --  else
  --    if(dirtying = '1') then
  --      newTagFlag(22 downto 0)<='1'&valid1&dirty1&tag1&valid0&dirtying&tag0;
   --     Replace0<='1';
   --     Replace1<='0';
   --   else
   --     newTagFlag(22 downto 0)<='1'&valid1&dirty1&tag1&valid0&dirty0&tag0;
   --     Replace0<='0';
   --     Replace1<='0';
   --   end if;
  --  end if;
  end if;
END PROCESS;
END ARCHITECTURE untitled;

