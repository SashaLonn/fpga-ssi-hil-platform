-------------------------------------------------------------------------------
-- Intellectual Property of Leine & Linde AB, Sweden
-- Copyright (C) Leine & Linde AB 2013
--
-- This file may be used under licensing from Leine & Linde AB.
-- The contents may be altered and/or distributed
-- depending on license type and agreement.
-------------------------------------------------------------------------------
-- Title       : UART_ll Package File
-------------------------------------------------------------------------------
-- File        : uart_ll_pkg.vhd
-- Author      : Magnus Larsson (m.larsson@leinelinde.se)
-- Created     : NA
-------------------------------------------------------------------------------
-- Description : Package file simple uart_ll
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

package ssi_uart_ll_pkg is

  -----------------------------------------------------------------------------
  -- Commands, special used by the uart_ll
  -----------------------------------------------------------------------------
  constant HEARTBEAT                    :std_logic_vector(7 downto 0) := x"fe";
  constant ERROR_MESSAGE                :std_logic_vector(7 downto 0) := x"ff";
  
  -----------------------------------------------------------------------------
  -- Nr data bytes for replies handled in ueart_ll
  -----------------------------------------------------------------------------
  constant NR_D_BYTES_ERROR_MESSAGE           :integer := 1;
  constant NR_D_BYTES_HEARTBEAT               :integer := 0;
  constant NR_D_BYTES_ACK                     :integer := 0;
  constant NR_D_BYTES_FORCE_ENCODER_RESET     :integer := 0;
  
  -----------------------------------------------------------------------------
  -- Error Byte bits
  -----------------------------------------------------------------------------
  constant ERROR_BIT_CHECKSUM               :integer := 0;
  constant ERROR_BIT_NOT_VALID_COMMAND      :integer := 1;
  constant ERROR_BIT_DATA_OVERFLOW          :integer := 2;
  constant ERROR_BIT_TIMEOUT                :integer := 3;
  constant ERROR_BIT_R_W_ERROR              :integer := 4;
  constant ERROR_BIT_NOT_VALID_PARAMETER    :integer := 5;
  constant ERROR_BIT_TIMEOUT_IN_OPERATION   :integer := 6;
  constant ERROR_BIT_VACANT_2               :integer := 7;
  -----------------------------------------------------------------------------
  -- Delays and timers
  -----------------------------------------------------------------------------
  constant TIME_BETWEEN_RECEIVE_TRANSMIT    :integer := 250; -- the max delay time(in microseconds) between a receive transmission and a transmit transmission
  constant TIME_BETWEEN_BYTES               :integer := 250; -- the max delay time(in tenths of microseconds) between bytes in a transmission sequence
  constant TIMEOUT_BETWEEN_BYTES            :integer := 100; -- the time between two bytes in a transmission before a timeout occurs, unit is milliseconds
  
  type byte_array is array(natural range <>) of std_logic_vector(7 downto 0); -- a general declaration to be able to use in ports
  
end ssi_uart_ll_pkg;
