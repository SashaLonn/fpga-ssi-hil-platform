--------------------------------------------------------------------
-- Company: AGSTU AB
-- Engineer: Magnus Mårtensson
--
-- Create Date:    2014-10-21
-- Design Name:    uppgift_vhdl_7
-- Target Devices: ALTERA Cyclone IV EP4CE115F29C7
-- Tool versions:  Quartus v14 and ModelSim
-- Testbench file: CPU_VHDL_projekt.vht
-- Do file:        CPU_VHDL_projekt_run_msim_rtl_vhdl.do
--
-- Description:  Styrprogram för 7-segment display
--
-- In_signals:
-- TAL    binärt tal (0-15)
--
-- Out_signals:
-- HEX    7-segment display
-------------------------------------------------------------------

Library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity SJU_SEG_DISPLAYER is
port( TAL:  in std_logic_vector(1 downto 0);   -- Indata
      HEX:  out std_logic_vector(6 downto 0)    -- 7-segment display
      );
end SJU_SEG_DISPLAYER;
      
architecture SJU_SEG_DISPLAYER_arch of SJU_SEG_DISPLAYER is

   constant VISANOLL:   std_logic_vector(6 downto 0)  := "1000000";  -- 0x40
   constant VISAETT:    std_logic_vector(6 downto 0)  := "1111001";  -- 0x79
   constant VISATVA:    std_logic_vector(6 downto 0)  := "0100100";  -- 0x24
   constant VISATRE:    std_logic_vector(6 downto 0)  := "0110000";  -- 0x30
   constant VISAFYRA:   std_logic_vector(6 downto 0)  := "0011001";  -- 0x19
   constant VISAFEM:    std_logic_vector(6 downto 0)  := "0010010";  -- 0x12
   constant VISASEX:    std_logic_vector(6 downto 0)  := "0000010";  -- 0x02
   constant VISASJU:    std_logic_vector(6 downto 0)  := "1111000";  -- 0x38
   constant VISAATTA:   std_logic_vector(6 downto 0)  := "0000000";  -- 0x00
   constant VISANIO:    std_logic_vector(6 downto 0)  := "0011000";  -- 0x18
   constant VISABLANK:  std_logic_vector(6 downto 0)  := "1111111";
   
-- Grafisk bild och segmentnummer på 7-segment displayen på DE2-115 kortet:
--
--   -0
-- |5  |1
--   -6
-- |4  |2
--   -3
--
-- En etta släcker segmentet en nolla tänder det
--
begin

   with TAL select
   HEX <=   VISANOLL when  "00",
            VISAETT  when  "01",
            VISABLANK when others;                    
         
end SJU_SEG_DISPLAYER_arch;