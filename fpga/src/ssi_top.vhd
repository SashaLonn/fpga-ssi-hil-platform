-------------------------------------------------------------------------------
-- Title       : SSI_protokoll top fill
-------------------------------------------------------------------------------
-- File        : ssi_top.vhd
-- Author      : Oleksandra_soloivova (lonn.sasha@gmail.com)
-- Created     : 2026-05-20
-------------------------------------------------------------------------------
-- Description : top filen för integrationen ssi_master och si_slave
-------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ssi_protocol is

  port (
    MAX10_CLK1_50             :in  std_logic;
    SW                        :in  std_logic_vector(9 downto 7);
    HEX0                      :out std_logic_vector(6 DOWNTO 0);
    HEX1                      :out std_logic_vector(6 DOWNTO 0);
    HEX2                      :out std_logic_vector(6 DOWNTO 0);
    HEX3                      :out std_logic_vector(6 DOWNTO 0);
    HEX4                      :out std_logic_vector(6 DOWNTO 0);
    HEX5                      :out std_logic_vector(6 DOWNTO 0);
    GPIO                      :in std_logic_vector(35 DOWNTO 35);           -- ssi_clk in
    GPIO_data                 :out  std_logic;                                -- ssi_data out
    reset_nrst                :in  std_logic;
    LEDR                      :out std_logic_vector(9 downto 0);    
   -- uart 
    ARDUINO_IO                :out std_logic_vector(1 downto 1);                             --uar tx
    --spi
      
    GSENSOR_SDI               :out std_logic;
    GSENSOR_SDO               :in std_logic;
    GSENSOR_CS_N              :out std_logic;
    GSENSOR_SCLK              :out std_logic
    

  );
end entity ssi_protocol;

architecture rtl of ssi_protocol is
  -- reset signals 
  signal reset_n                      :std_logic;
  signal reset_n_t1                   :std_logic;
  signal reset_n_t2                   :std_logic;   
  signal ssi_clk                      :std_logic;
  signal ssi_clk_in                   :std_logic;
  signal ssi_data                     :std_logic;
  signal ssi_data_STM32               :std_logic;
  signal ssi2_charge_signal           :std_logic;
  signal ssi2_mode                    :std_logic;
  signal position_set                 :std_logic;

  
    
  signal HEX0_internal                :std_logic_vector(6 downto 0);
  signal HEX1_internal                :std_logic_vector(6 downto 0);
  signal HEX2_internal                :std_logic_vector(6 downto 0);
  signal HEX3_internal                :std_logic_vector(6 downto 0);
  signal HEX4_internal                :std_logic_vector(6 downto 0);
  signal HEX5_internal                :std_logic_vector(6 downto 0);
  
  signal led                          :std_logic;
  signal sw_sync_0                    :std_logic_vector(8 downto 7);
  signal sw_sync_1                    :std_logic_vector(8 downto 7);
  signal uart_tx_intern               :std_logic;
  --spi signals
    -- spi
  constant NR_BITS_SPI                :integer := 16;
  signal s_start                      :std_logic;
  signal s_uart_start                 :std_logic;
  signal s_presceler                  :std_logic_vector(7 downto 0);
  signal s_sclk_pol                   :std_logic;
  signal s_sclk_cpha                  :std_logic;
  signal s_busy                       :std_logic;
  signal s_data_ready                 :std_logic;
  signal s_data_in                    :std_logic_vector(NR_BITS_SPI-1 downto 0);
  signal s_data_out                   :std_logic_vector(NR_BITS_SPI-1 downto 0);
  signal s_raw_x                      :signed (NR_BITS_SPI-1 downto 0);
  signal s_raw_y                      :signed (NR_BITS_SPI-1 downto 0);
  signal s_raw_z                      :signed (NR_BITS_SPI-1 downto 0);
  signal s_acc_send                   :std_logic_vector(47 downto 0);
  signal s_acc_ready                  :std_logic;
 



begin

  
  reset_n          <= reset_nrst;
  ssi2_mode        <= sw_sync_1(8);
  position_set     <= sw_sync_1(7);
  LEDR(9)          <= led;
  LEDR(8 downto 0) <= (others => '0');
  ARDUINO_IO(1)    <= uart_tx_intern;
  
  --spi
  s_presceler <= x"19"; -- 50MHz / (25+1) ~= 1 MHz SPI Clock
  s_sclk_pol  <= '1';
  s_sclk_cpha <= '1';

 
  HEX0             <= HEX0_internal;
  HEX1             <= HEX1_internal;
  HEX2             <= HEX2_internal;
  HEX3             <= HEX3_internal;
  HEX4             <= HEX4_internal;
  HEX5             <= HEX5_internal;
  
  ssi_clk_in       <= GPIO(35);
  GPIO_data        <= ssi_data_STM32;
  
  spi_inst_master: entity work.spi_master
  generic map(
    NR_OF_BITS => NR_BITS_SPI
  )
  port map(
    clk         => MAX10_CLK1_50,
    reset_n     => reset_n_t2,
    start       => s_start,
    miso        => GSENSOR_SDO,
    presceler   => s_presceler,
    data_in     => s_data_in,
    sclk_pol    => s_sclk_pol,
    sclk_cpha   => s_sclk_cpha,
    cs_n        => GSENSOR_CS_N,
    busy        => s_busy,
    data_ready  => s_data_ready,
    mosi        => GSENSOR_SDI,
    sclk_out    => GSENSOR_SCLK,
    data_out    => s_data_out
  );
  
  adxl345_int: entity work.ADXL345 
  port map(
    clk                    => MAX10_CLK1_50,
    reset_n                => reset_n_t2,
    data_out_spi           => s_data_in,
    data_to_stm            => s_acc_send,
    spi_ready              => s_data_ready,
    spi_busy               => s_busy,
    spi_start              => s_start,
    data_from_spi          => s_data_out
    );

 
  ssi_inst_slave: entity work.ssi_slave
    port map(
      clk                         => MAX10_CLK1_50,
      reset_n                     => reset_n_t2,
      ssi_clk                     => ssi_clk_in,
      ssi_charge_pulse            => ssi2_charge_signal,
      ssi_data                    => ssi_data_STM32,
      ssi2_mode                   => ssi2_mode,
      position_set                => position_set,
      position(47 downto 0)       => s_acc_send 

    );
    
  reset_process: process(MAX10_CLK1_50, reset_n)
  begin
    if reset_n = '0' then
      reset_n_t1  <= '0';
      reset_n_t2  <= '0';      
    elsif MAX10_CLK1_50 'event and MAX10_CLK1_50 = '1' then
      reset_n_t1  <= reset_n;
      reset_n_t2  <= reset_n_t1;      
    end if;
  end process;

  process(reset_n_t2,MAX10_CLK1_50)
  begin
    if reset_n_t2 = '0' then
      sw_sync_0  <= (others => '0');
      sw_sync_1  <= (others => '0');
      
    elsif MAX10_CLK1_50 'event and MAX10_CLK1_50 = '1' then
      sw_sync_0 <= SW(8 downto 7);       
      sw_sync_1 <= sw_sync_0; 
    end if;
  end process;
  

  

end architecture;