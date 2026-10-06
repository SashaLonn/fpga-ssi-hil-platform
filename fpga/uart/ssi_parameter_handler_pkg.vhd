-------------------------------------------------------------------------------
-- Intellectual Property of Leine & Linde AB, Sweden
-- Copyright (C) Leine & Linde AB 2013
--
-- This file may be used under licensing from Leine & Linde AB.
-- The contents may be altered and/or distributed
-- depending on license type and agreement.
-------------------------------------------------------------------------------
-- Title       : Parameter Handler Package File
-------------------------------------------------------------------------------
-- File        : parameter_handler_pkg.vhd
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

package ssi_parameter_handler_pkg is

  -----------------------------------------------------------------------------
  -- Commands
  -----------------------------------------------------------------------------
  constant PARAMETER_OF_DEVICE          :std_logic_vector(6 downto 0) := "0000001";
  
  -- the following are taken care of directly in uart_ll
  --constant HEARTBEAT                    :std_logic_vector(7 downto 0) := x"fe";
  --constant ERROR_MESSAGE                :std_logic_vector(7 downto 0) := x"ff";
  
  -----------------------------------------------------------------------------
  -- Data width
  -----------------------------------------------------------------------------
  constant PARAMETER_WIDTH              :integer := 8;
  
  -----------------------------------------------------------------------------
  -- Parameters
  -----------------------------------------------------------------------------
  constant PARA_CONTROL_REG             :std_logic_vector(PARAMETER_WIDTH - 1 downto 0) := x"01";
  constant PARA_NR_MT_BITS              :std_logic_vector(PARAMETER_WIDTH - 1 downto 0) := x"02";
  constant PARA_NR_ST_BITS              :std_logic_vector(PARAMETER_WIDTH - 1 downto 0) := x"03";
  constant PARA_SAMPLE_INTERVAL         :std_logic_vector(PARAMETER_WIDTH - 1 downto 0) := x"04";
  constant PARA_PAUS_TIME               :std_logic_vector(PARAMETER_WIDTH - 1 downto 0) := x"05";
  constant PARA_SSI_CLK_FREQ            :std_logic_vector(PARAMETER_WIDTH - 1 downto 0) := x"06";
  constant PARA_READ_NR_POSITIONS       :std_logic_vector(PARAMETER_WIDTH - 1 downto 0) := x"07";
  constant PARA_ZERO_SET_PULSE_LENGTH   :std_logic_vector(PARAMETER_WIDTH - 1 downto 0) := x"08";
  constant PARA_DO_ZERO_SET             :std_logic_vector(PARAMETER_WIDTH - 1 downto 0) := x"09";
  constant PARA_DIRECTION               :std_logic_vector(PARAMETER_WIDTH - 1 downto 0) := x"0a";
  constant PARA_TCAL                    :std_logic_vector(PARAMETER_WIDTH - 1 downto 0) := x"0b";
  -- only readable parameters
  constant PARA_STATUS_REG              :std_logic_vector(PARAMETER_WIDTH - 1 downto 0) := x"11";
  constant PARA_POSITION                :std_logic_vector(PARAMETER_WIDTH - 1 downto 0) := x"12";
  constant PARA_ST_POSITION             :std_logic_vector(PARAMETER_WIDTH - 1 downto 0) := x"13";
  constant PARA_MT_POSITION             :std_logic_vector(PARAMETER_WIDTH - 1 downto 0) := x"14";
  constant PARA_FIRMWARE_PART_NR        :std_logic_vector(PARAMETER_WIDTH - 1 downto 0) := x"19";
  
  constant PARA_SSI2_MODE               :std_logic_vector(PARAMETER_WIDTH - 1 downto 0) := x"15"; --read only position
  constant PARA_SSI2_PARITY_BIT         :std_logic_vector(PARAMETER_WIDTH - 1 downto 0) := x"16"; -- read only parity bit
  constant PARA_SSI2_PARITY_BIT_VALUE   :std_logic_vector(PARAMETER_WIDTH - 1 downto 0) := x"17"; -- read start bit + position + parity bit

  
  -----------------------------------------------------------------------------
  -- Control reg bits
  -----------------------------------------------------------------------------
  constant C_BIT_NUFN                         :integer := 0; -- not used for now
  constant C_BIT_USE_PAUS_TIME                :integer := 1;
  constant C_BIT_USE_SAMPLE_INTERVAL          :integer := 2;
  constant C_BIT_CONTINUOUS_POS               :integer := 3;
  constant C_BIT_GRAY_TO_BIN                  :integer := 4;
  constant C_BIT_USE_TCAL                     :integer := 5;
  constant C_BIT_INVERTED_ZERO_SET            :integer := 6;
  constant C_BIT_INVERTED_DIRECTION           :integer := 7;
  constant C_BIT_ST_READ_TRIGGERS_POS_READ    :integer := 8;
  constant C_BIT_MT_READ_TRIGGERS_POS_READ    :integer := 9;
  constant C_BIT_POS_READ_TRIGGERS_POS_READ   :integer := 10;
  constant C_BIT_COMPARE_POSITIONS            :integer := 11;
  constant C_BIT_NR_CONS_POS_FIRST_POS        :integer := 12;
  
  constant C_BIT_RS485_PORT_IS_SSI            :integer := 15;
  -- SSI2 Mode control reg bits
  constant C_CONTINUOUS_CLK_SELECT_BIT        :integer := 13;
  constant C_CHARGE_PULSE_ENABLE              :integer := 14;
  
  -----------------------------------------------------------------------------
  -- Status reg bits
  -----------------------------------------------------------------------------
  constant S_BIT_COMPARED_POS_EQUAL           :integer := 4;
  constant S_BIT_CON_READS_ERROR              :integer := 12;
  constant S_BIT_CONTINUOUS_ERROR             :integer := 13;
  constant S_BIT_ST_ZERO_ERROR                :integer := 14;
  constant S_BIT_POS_OVERFLOW_ERROR           :integer := 15;
  
  
end ssi_parameter_handler_pkg;
