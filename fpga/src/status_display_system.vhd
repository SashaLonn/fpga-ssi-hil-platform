-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- PROGRAM     "Quartus Prime"
-- VERSION     "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"
-- CREATED     "Fri Oct 17 10:03:21 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY STATUS_DISPLAY_SYSTEM IS 
   PORT
   (  
    display_0               :in std_logic_vector(1 downto 0);
    display_1               :in std_logic_vector(1 downto 0);
    display_2               :in std_logic_vector(1 downto 0);
    display_3               :in std_logic_vector(1 downto 0);   
    display_4               :in std_logic_vector(1 downto 0);   
    display_5               :in std_logic_vector(1 downto 0);   
 
   
    seg_zero_display        :out std_logic_vector (6 downto 0);
    seg_first_display       :out std_logic_vector (6 downto 0);
    seg_second_display      :out std_logic_vector (6 downto 0);
    seg_third_display       :out std_logic_vector (6 downto 0);
    seg_forth_display       :out std_logic_vector (6 downto 0);
    seg_fifth_display       :out std_logic_vector (6 downto 0)
   );
END STATUS_DISPLAY_SYSTEM;

ARCHITECTURE bdf_type OF STATUS_DISPLAY_SYSTEM IS 


COMPONENT sju_seg_displayer
   PORT(TAL :in std_logic_vector(1 downto 0);
        HEX :OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
   );
END COMPONENT;
 BEGIN 

   b2v_inst_SJU_SEG_DISPLAYER_0 : sju_seg_displayer
   PORT MAP(
          TAL => display_0,
          HEX => seg_zero_display);

   b2v_inst_SJU_SEG_DISPLAYER_1 : sju_seg_displayer
   PORT MAP(
          TAL => display_1,
          HEX => seg_first_display);

   b2v_inst_SJU_SEG_DISPLAYER_2 : sju_seg_displayer
   PORT MAP(
          TAL => display_2,
          HEX => seg_second_display);

   b2v_inst_SJU_SEG_DISPLAYER_3 : sju_seg_displayer
   PORT MAP(
          TAL => display_3,
          HEX   => seg_third_display);
       
   b2v_inst_SJU_SEG_DISPLAYER_4 : sju_seg_displayer
   PORT MAP(
          TAL => display_4,
          HEX   => seg_forth_display);
          
   b2v_inst_SJU_SEG_DISPLAYER_5 : sju_seg_displayer
   PORT MAP(
          TAL   => display_5,
          HEX   => seg_fifth_display);
         
     

END bdf_type;