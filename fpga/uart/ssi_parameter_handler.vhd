-------------------------------------------------------------------------------
-- Intellectual Property of Leine & Linde AB, Sweden
-- Copyright (C) Leine & Linde AB 2012
--
-- This file may be used under licensing from Leine & Linde AB.
-- The contents may be altered and/or distributed
-- depending on license type and agreement.
-------------------------------------------------------------------------------
-- Title       : Parameter handler
-------------------------------------------------------------------------------
-- File        : parameter_handler.vhd
-- Author      : Magnus Larsson (m.larsson@leinelinde.se)
-- Created     : NA
-------------------------------------------------------------------------------
-- Description : Handles parameters for SSI master
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use work.ssi_parameter_handler_pkg.all;
--use work.uart_ll_pkg.byte_array;
use work.ssi_master_pkg.def_values_rec_type;
use work.ssi_master_pkg.default_values;

entity ssi_parameter_handler is
  generic(
    CLOCK_FREQ_HZ               :integer := 100000000;
    BAUDRATE                    :integer := 9600;
    NR_BYTES_SUPPORTED          :integer := 6;
    PARAMETER_BYTE_WIDTH        :integer := 2;
    PART_NR_BYTE_WIDTH          :integer := 4;
    POS_NR_BIT_WIDTH            :integer := 6;
    NR_READS_BIT_WIDTH          :integer := 8
    );
  port(
    reset_n                     :in  std_logic;
    clk                         :in  std_logic;   
    control_reg                 :out std_logic_vector(PARAMETER_BYTE_WIDTH * 8 - 1 downto 0);
    nr_mt_bits                  :out std_logic_vector(POS_NR_BIT_WIDTH - 1 downto 0);
    nr_st_bits                  :out std_logic_vector(POS_NR_BIT_WIDTH - 1 downto 0);
    sample_interval             :out std_logic_vector(PARAMETER_BYTE_WIDTH * 8 - 1 downto 0);
    paus_time                   :out std_logic_vector(PARAMETER_BYTE_WIDTH * 8 - 1 downto 0);
    ssi_clk_freq                :out std_logic_vector(PARAMETER_BYTE_WIDTH * 8 - 1 downto 0);
    read_nr_positions           :out std_logic_vector(NR_READS_BIT_WIDTH - 1 downto 0);
    zero_set_pulse_length       :out std_logic_vector(PARAMETER_BYTE_WIDTH * 8 - 1 downto 0);
    do_zero_set                 :out std_logic;
    reset_zero_set              :in std_logic;
    direction                   :out std_logic;
    tcal                        :out std_logic_vector(PARAMETER_BYTE_WIDTH * 8 - 1 downto 0);
    para_updated                :out std_logic;
    -- data in
    status_reg                  :in std_logic_vector(PARAMETER_BYTE_WIDTH * 8 - 1 downto 0);
    part_nr                     :in std_logic_vector(PART_NR_BYTE_WIDTH * 8 - 1 downto 0);
    -- data in, dynamic length
    position                    :in std_logic_vector(NR_BYTES_SUPPORTED * 8 - 1 downto 0);
 
    st_position                 :in std_logic_vector(NR_BYTES_SUPPORTED * 8 - 1 downto 0);
    mt_position                 :in std_logic_vector(NR_BYTES_SUPPORTED * 8 - 1 downto 0);
    nr_pos_bytes                :in integer range 0 to NR_BYTES_SUPPORTED;
    nr_st_pos_bytes             :in integer range 0 to NR_BYTES_SUPPORTED;
    nr_mt_pos_bytes             :in integer range 0 to NR_BYTES_SUPPORTED;
    trig_read_pos               :out std_logic;
    new_position                :in std_logic;
    error_r_pos                 :in std_logic;
   
    --ss2 signals
    position_ssi2               :in std_logic_vector(NR_BYTES_SUPPORTED * 8 - 1 downto 0);
    position_ssi2_parity        :in std_logic_vector(NR_BYTES_SUPPORTED * 8 - 1 downto 0);
    new_position_ssi2           :in std_logic;
    nr_pos_bytes_ssi2           :in integer range 0 to NR_BYTES_SUPPORTED;
    parity_bit                  :in std_logic;
    
    -- uart
    rxd                         :in  std_logic;
    txd                         :out std_logic
    );
end ssi_parameter_handler;

architecture rtl of ssi_parameter_handler is

  constant PARAMETER_DATA_WIDTH           :integer := PARAMETER_BYTE_WIDTH * 8;
  signal control_reg_int                  :std_logic_vector(PARAMETER_DATA_WIDTH - 1 downto 0);
  signal nr_mt_bits_int                   :std_logic_vector(PARAMETER_DATA_WIDTH - 1 downto 0);
  signal nr_st_bits_int                   :std_logic_vector(PARAMETER_DATA_WIDTH - 1 downto 0);
  signal sample_interval_int              :std_logic_vector(PARAMETER_DATA_WIDTH - 1 downto 0);
  signal paus_time_int                    :std_logic_vector(PARAMETER_DATA_WIDTH - 1 downto 0);
  signal ssi_clk_freq_int                 :std_logic_vector(PARAMETER_DATA_WIDTH - 1 downto 0);
  signal read_nr_positions_int            :std_logic_vector(PARAMETER_DATA_WIDTH - 1 downto 0);
  signal zero_set_pulse_length_int        :std_logic_vector(PARAMETER_DATA_WIDTH - 1 downto 0);
  signal do_zero_set_int                  :std_logic_vector(PARAMETER_DATA_WIDTH - 1 downto 0);
  signal direction_int                    :std_logic_vector(PARAMETER_DATA_WIDTH - 1 downto 0);
  signal tcal_int                         :std_logic_vector(PARAMETER_DATA_WIDTH - 1 downto 0);


  -- signals for uart_ll
 signal uart_data_to                     :std_logic_vector(NR_BYTES_SUPPORTED * 8 - 1 downto 0);
  --signal uart_data_to                     :std_logic_vector(16 - 1 downto 0);
  signal uart_data_from                   :std_logic_vector(NR_BYTES_SUPPORTED * 8 - 1 downto 0);
  signal uart_command                     :std_logic_vector(7 downto 0);
  signal uart_parameter                   :std_logic_vector(7 downto 0);
  signal uart_new_request                 :std_logic;

  signal uart_invalid_command             :std_logic;
  signal uart_invalid_parameter           :std_logic;
  signal uart_device_rw_ok                :std_logic;
  signal uart_device_rw_not_ok            :std_logic;
  signal uart_nr_bytes                    :integer range 0 to NR_BYTES_SUPPORTED;

  -- signals for rw_parameters proc
  type para_state_type is (IDLE,RETURN_DATA,RETURN_TO_UART,STORE_DATA,WAIT_POS);
  signal para_state                       :para_state_type;
  signal invalid_parameter                :std_logic;

begin
  
  control_reg           <= control_reg_int;
  nr_mt_bits            <= nr_mt_bits_int(POS_NR_BIT_WIDTH - 1 downto 0);
  nr_st_bits            <= nr_st_bits_int(POS_NR_BIT_WIDTH - 1 downto 0);
  sample_interval       <= sample_interval_int;
  paus_time             <= paus_time_int;
  ssi_clk_freq          <= ssi_clk_freq_int;
  read_nr_positions     <= read_nr_positions_int(NR_READS_BIT_WIDTH - 1 downto 0);
  zero_set_pulse_length <= zero_set_pulse_length_int;
  do_zero_set           <= do_zero_set_int(0);
  direction             <= direction_int(0);
  tcal                  <= tcal_int;


  
  rw_parameters_proc: process(reset_n, clk)
    begin
      if reset_n = '0' then
        uart_invalid_command            <= '0';
        uart_invalid_parameter          <= '0';
        uart_device_rw_ok               <= '0';
        uart_device_rw_not_ok           <= '0';
        uart_nr_bytes                   <= 0;
        para_state                      <= idle;
        invalid_parameter               <= '0';
        uart_data_to                    <= (others => '0');
        control_reg_int                 <= default_values.control_reg;
        nr_mt_bits_int                  <= default_values.nr_mt_bits;
        nr_st_bits_int                  <= default_values.nr_st_bits;
        sample_interval_int             <= default_values.sample_interval;
        paus_time_int                   <= default_values.paus_time;
        ssi_clk_freq_int                <= default_values.ssi_clk_freq;
        read_nr_positions_int           <= default_values.read_nr_positions;
        zero_set_pulse_length_int       <= default_values.zero_set_pulse_length;
        do_zero_set_int                 <= default_values.do_zero_set;
        direction_int                   <= default_values.direction;
        tcal_int                        <= default_values.tcal;
        trig_read_pos                   <= '0';
        para_updated                    <= '0';

      elsif clk'event and clk = '1' then
        uart_invalid_command            <= '0';
        uart_invalid_parameter          <= '0';
        uart_device_rw_ok               <= '0';
        uart_device_rw_not_ok           <= '0';
        trig_read_pos                   <= '0';
        para_updated                    <= '0';

        case para_state is
          when IDLE =>
            if uart_new_request = '1' then
              if uart_command(6 downto 0) = PARAMETER_OF_DEVICE then
                if uart_command(7) = '0' then -- read operation
                  para_state <= RETURN_DATA;
                else                          -- write operation
                  para_state <= STORE_DATA;
                end if;
              else
                uart_invalid_command <= '1';
              end if;
            end if;
          when RETURN_DATA =>
            invalid_parameter   <= '0'; -- set to ok default, is overridden if not ok parameter
            uart_data_to        <= (others => '0'); -- all unset data is set to 0
            uart_nr_bytes       <= PARAMETER_BYTE_WIDTH; -- default value, overridden if needed
            para_state          <= RETURN_TO_UART;
            case uart_parameter is
              when PARA_CONTROL_REG =>
                uart_data_to(PARAMETER_DATA_WIDTH - 1 downto 0) <= control_reg_int;
              when PARA_STATUS_REG =>
                uart_data_to(PARAMETER_DATA_WIDTH - 1 downto 0) <= status_reg;
              when PARA_NR_MT_BITS =>
                uart_data_to(PARAMETER_DATA_WIDTH - 1 downto 0) <= nr_mt_bits_int;
              when PARA_NR_ST_BITS =>
                uart_data_to(PARAMETER_DATA_WIDTH - 1 downto 0) <= nr_st_bits_int;
              when PARA_SAMPLE_INTERVAL =>
                uart_data_to(PARAMETER_DATA_WIDTH - 1 downto 0) <= sample_interval_int;
              when PARA_PAUS_TIME =>
                uart_data_to(PARAMETER_DATA_WIDTH - 1 downto 0) <= paus_time_int;
              when PARA_SSI_CLK_FREQ =>
                uart_data_to(PARAMETER_DATA_WIDTH - 1 downto 0) <= ssi_clk_freq_int;
              when PARA_READ_NR_POSITIONS =>
                uart_data_to(PARAMETER_DATA_WIDTH - 1 downto 0) <= read_nr_positions_int;
              when PARA_ZERO_SET_PULSE_LENGTH =>
                uart_data_to(PARAMETER_DATA_WIDTH - 1 downto 0) <= zero_set_pulse_length_int;
              when PARA_DO_ZERO_SET =>
                uart_data_to(PARAMETER_DATA_WIDTH - 1 downto 0) <= do_zero_set_int;
              when PARA_DIRECTION =>
                uart_data_to(PARAMETER_DATA_WIDTH - 1 downto 0) <= direction_int;
              when PARA_TCAL =>
                uart_data_to(PARAMETER_DATA_WIDTH - 1 downto 0) <= tcal_int;
              -- parameters with deviating data length
              when PARA_FIRMWARE_PART_NR =>
                uart_data_to(PART_NR_BYTE_WIDTH * 8 - 1 downto 0) <= part_nr;
                uart_nr_bytes     <= PART_NR_BYTE_WIDTH;
              --ss2 parametrar
              when PARA_SSI2_MODE =>       
                uart_data_to  <= position_ssi2;
                uart_nr_bytes <= nr_pos_bytes_ssi2;
              when PARA_SSI2_PARITY_BIT =>
                uart_data_to(0)  <= parity_bit;
                uart_nr_bytes    <= nr_pos_bytes_ssi2;
              when PARA_SSI2_PARITY_BIT_VALUE =>
                uart_data_to     <= position_ssi2_parity;
                uart_nr_bytes    <= nr_pos_bytes_ssi2;                
               -- parameters with deviating data length and waiting on values        
              when PARA_POSITION =>
                if control_reg_int(C_BIT_POS_READ_TRIGGERS_POS_READ) = '0' then -- just read the current pos don't trigger a read
                  uart_data_to  <= position;
                  uart_nr_bytes <= nr_pos_bytes;
                else
                  trig_read_pos <= '1';
                  para_state    <= WAIT_POS;
                end if;
              when PARA_ST_POSITION =>
                if control_reg_int(C_BIT_ST_READ_TRIGGERS_POS_READ) = '0' then -- just read the current pos don't trigger a read
                  uart_data_to  <= st_position;
                  uart_nr_bytes <= nr_st_pos_bytes;
                else
                  trig_read_pos <= '1';
                  para_state    <= WAIT_POS;
                end if;
              when PARA_MT_POSITION =>
                if control_reg_int(C_BIT_MT_READ_TRIGGERS_POS_READ) = '0' then -- just read the current pos don't trigger a read
                  uart_data_to  <= mt_position;
                  uart_nr_bytes <= nr_mt_pos_bytes;
                else
                  trig_read_pos <= '1';
                  para_state    <= WAIT_POS;
                end if;
              when others =>
                invalid_parameter <= '1';
            end case;
          when WAIT_POS =>
            if new_position = '1' or new_position_ssi2 = '1' then
              invalid_parameter   <= '0'; -- set to ok default, is overridden if not ok parameter
              para_state          <= RETURN_TO_UART;
              case uart_parameter is
                when PARA_POSITION =>
                  uart_data_to  <= position;
                  uart_nr_bytes <= nr_pos_bytes;
                when PARA_ST_POSITION =>
                  uart_data_to  <= st_position;
                  uart_nr_bytes <= nr_st_pos_bytes;
                when PARA_MT_POSITION =>
                 uart_data_to  <= mt_position;
                  uart_nr_bytes <= nr_mt_pos_bytes;
           when PARA_SSI2_MODE =>
                 uart_data_to  <= position_ssi2;
                 uart_nr_bytes <= nr_pos_bytes_ssi2;
                when others =>
                  invalid_parameter   <= '1';
              end case;
            end if;
            if error_r_pos = '1' then
              para_state            <= IDLE;
              uart_device_rw_not_ok <= '1';
            end if;
          when STORE_DATA =>
            invalid_parameter     <= '0'; -- set to ok default, is overridden if not ok parameter
            case uart_parameter is
              when PARA_CONTROL_REG =>
                control_reg_int         <= uart_data_from(PARAMETER_DATA_WIDTH - 1 downto 0);
                uart_device_rw_ok       <= '1';
              when PARA_NR_MT_BITS =>
                if uart_data_from(PARAMETER_DATA_WIDTH - 1 downto 0) > (NR_BYTES_SUPPORTED * 8 - 1) then
                  uart_device_rw_not_ok <= '1';
                else
                  nr_mt_bits_int        <= uart_data_from(PARAMETER_DATA_WIDTH - 1 downto 0);
                  uart_device_rw_ok     <= '1';
                  para_updated          <= '1';
                end if;
              when PARA_NR_ST_BITS =>
                if uart_data_from(PARAMETER_DATA_WIDTH - 1 downto 0) > NR_BYTES_SUPPORTED * 8 or uart_data_from(POS_NR_BIT_WIDTH - 1 downto 0) = 0 then
                  uart_device_rw_not_ok  <= '1';
                else
                  nr_st_bits_int        <= uart_data_from(PARAMETER_DATA_WIDTH - 1 downto 0);
                  uart_device_rw_ok     <= '1';
                  para_updated          <= '1';
                end if;
              when PARA_SAMPLE_INTERVAL =>
                if uart_data_from(PARAMETER_DATA_WIDTH - 1 downto 0) = 0 then
                  uart_device_rw_not_ok   <= '1';
                else
                  sample_interval_int     <= uart_data_from(PARAMETER_DATA_WIDTH - 1 downto 0);
                  uart_device_rw_ok       <= '1';
                  para_updated            <= '1';
                end if;
              when PARA_PAUS_TIME =>
                if uart_data_from(PARAMETER_DATA_WIDTH - 1 downto 0) = 0 then
                  uart_device_rw_not_ok   <= '1';
                else
                  paus_time_int           <= uart_data_from(PARAMETER_DATA_WIDTH - 1 downto 0);
                  uart_device_rw_ok       <= '1';
                  para_updated            <= '1';
                end if;
              when PARA_SSI_CLK_FREQ =>
                ssi_clk_freq_int        <= uart_data_from(PARAMETER_DATA_WIDTH - 1 downto 0);
                uart_device_rw_ok       <= '1';
                para_updated            <= '1';
              when PARA_READ_NR_POSITIONS =>
                if uart_data_from(PARAMETER_DATA_WIDTH - 1 downto NR_READS_BIT_WIDTH) > 0 or uart_data_from(POS_NR_BIT_WIDTH - 1 downto 0) = 0 then
                  uart_device_rw_not_ok <= '1';
                else
                  read_nr_positions_int <= uart_data_from(PARAMETER_DATA_WIDTH - 1 downto 0);
                  uart_device_rw_ok     <= '1';
                  para_updated          <= '1';
                end if;
              when PARA_ZERO_SET_PULSE_LENGTH =>
                zero_set_pulse_length_int <= uart_data_from(PARAMETER_DATA_WIDTH - 1 downto 0);
                uart_device_rw_ok         <= '1';
                para_updated              <= '1';
              when PARA_DO_ZERO_SET =>
                if uart_data_from(PARAMETER_DATA_WIDTH - 1 downto 1) > 0 then
                  uart_device_rw_not_ok <= '1';
                else
                  do_zero_set_int       <= uart_data_from(PARAMETER_DATA_WIDTH - 1 downto 0);
                  uart_device_rw_ok     <= '1';
                end if;
              when PARA_DIRECTION =>
                if uart_data_from(PARAMETER_DATA_WIDTH - 1 downto 1) > 0 then
                  uart_device_rw_not_ok <= '1';
                else
                  direction_int         <= uart_data_from(PARAMETER_DATA_WIDTH - 1 downto 0);
                  uart_device_rw_ok     <= '1';
                end if;
              when PARA_TCAL =>
                tcal_int                  <= uart_data_from(PARAMETER_DATA_WIDTH - 1 downto 0);
                uart_device_rw_ok         <= '1';
                para_updated              <= '1';
              when others =>
                 uart_invalid_parameter   <= '1';
                 uart_device_rw_ok        <= '0';
            end case;
            para_state <= IDLE;
          when RETURN_TO_UART =>
            if invalid_parameter = '0' then
              uart_device_rw_ok       <= '1';
            else
              uart_invalid_parameter  <= '1';
            end if;
            para_state <= IDLE;
          when others =>
            para_state <= IDLE;
        end case;
        
        if reset_zero_set = '1' then
          do_zero_set_int <= (others => '0');
        end if;
        
      end if;
    end process;

  uart_ll_inst: entity work.ssi_uart_ll
  generic map(
    NR_BYTES_SUPPORTED        => NR_BYTES_SUPPORTED,
    CLOCK_FREQ_HZ             => CLOCK_FREQ_HZ,
    BAUDRATE                  => BAUDRATE,
    NR_MS_TIL_OP_TIMEOUT      => 1000
    )
  port map(
    reset_n                   => reset_n,
    clk                       => clk,
    rxd                       => rxd,
    txd                       => txd,

    data_in                   => uart_data_to,
    data_out                  => uart_data_from,

    parameter_out             => uart_parameter,
    command_out               => uart_command,
    new_request               => uart_new_request,
    invalid_command           => uart_invalid_command,
    invalid_parameter         => uart_invalid_parameter,
    device_rw_ok              => uart_device_rw_ok,
    device_rw_not_ok          => uart_device_rw_not_ok,
    nr_bytes_in               => uart_nr_bytes
    );

end rtl;