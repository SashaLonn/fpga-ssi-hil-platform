-------------------------------------------------------------------------------
-- Title       : SSI pkg fill
-------------------------------------------------------------------------------
-- File        : ssi_pkg.vhd
-- Author      : Oleksandra_soloivova (lonn.sasha@gmail.com)
-- Created     : 2026-06-01
-------------------------------------------------------------------------------
-- Description : constanter som används globalt 
-------------------------------------------------------------------------------


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;

package ssi_pkg is

 -----------------------------------------------------------------------------
  -- System Constants
  -----------------------------------------------------------------------------
  constant CLOCK_FREQ_HZ                :integer := 50000000;   -- Hz
  constant CLOCK_FREQ_MHZ               :integer := 50; -- MHz
  constant NR_CLOCKS_PER_01_USEC        :integer := 5;
  constant NR_CLOCKS_PER_1_USEC         :integer := 10 * NR_CLOCKS_PER_01_USEC;
  constant NR_CLOCKS_PER_10_USEC        :integer := 10 * NR_CLOCKS_PER_1_USEC;
  constant NR_CLOCKS_PER_100_USEC       :integer := 10 * NR_CLOCKS_PER_10_USEC;
  constant NR_CLOCKS_PER_1_MS           :integer := 10 * NR_CLOCKS_PER_100_USEC;
  constant NR_CLOCKS_PER_10_MS          :integer := 10 * NR_CLOCKS_PER_1_MS;
  constant NR_CLOCKS_PER_100_MS         :integer := 10 * NR_CLOCKS_PER_10_MS;
  constant NR_CLOCKS_PER_1_S            :integer := 10 * NR_CLOCKS_PER_100_MS;
  
  -- timer signals slave
  constant tm_timer_count               :integer := 6 * NR_CLOCKS_PER_1_USEC - 1;
  
  -- timer signals master
  constant pt_count                     :integer := 12 * NR_CLOCKS_PER_1_USEC - 1;
  constant ssi2_bit_count               :integer := 7;
  constant ssi2_clk_hp_count            :integer := 24;
  constant ssi_clk_hp_count             :integer := 24;
  constant ssi_bit_count                :integer := 5;  

  
  constant POSITION_DATA_WIDTH_MAX      :integer := 4;
  constant POS_NR_TO_TXD                :integer := 6; 
  constant PARITY_TO_TXD                :integer := 5; 
  
  
end ssi_pkg;
  