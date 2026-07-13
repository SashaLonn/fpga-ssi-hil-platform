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


entity ssi_top is

  port (
    MAX10_CLK1_50             :in  std_logic;
    SW                        :in  std_logic_vector(9 downto 7);
    HEX0                      :out std_logic_vector(6 DOWNTO 0);
    HEX1                      :out std_logic_vector(6 DOWNTO 0);
    HEX2                      :out std_logic_vector(6 DOWNTO 0);
    HEX3                      :out std_logic_vector(6 DOWNTO 0);
    HEX4                      :out std_logic_vector(6 DOWNTO 0);
    HEX5                      :out std_logic_vector(6 DOWNTO 0);
    LEDR                      :out std_logic_vector(9 downto 0)

  );
end entity ssi_top;

architecture rtl of ssi_top is
  -- reset signals 
  signal reset_n                      :std_logic;
  signal reset_n_t1                   :std_logic;
  signal reset_n_t2                   :std_logic;   
  signal ssi_clk                      :std_logic;
  signal ssi_data                     :std_logic;
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


begin

  
  reset_n          <= SW(9);
  ssi2_mode        <= sw_sync_1(8);
  position_set     <= sw_sync_1(7);
  LEDR(9)          <= led;
  LEDR(8 downto 0) <= (others => '0');

 
  HEX0             <= HEX0_internal;
  HEX1             <= HEX1_internal;
  HEX2             <= HEX2_internal;
  HEX3             <= HEX3_internal;
  HEX4             <= HEX4_internal;
  HEX5             <= HEX5_internal;
  

  ssi_inst_master: entity work.ssi_master
    port map( 
      reset_n               => reset_n_t2,
      clk                   => MAX10_CLK1_50,
      ssi_clk               => ssi_clk,
      ssi_data              => ssi_data,
      ssi2_charge_signal    => ssi2_charge_signal,    
      ssi2_mode             => ssi2_mode,
      
      HEX0                  =>HEX0_internal,
      HEX1                  =>HEX1_internal,
      HEX2                  =>HEX2_internal,
      HEX3                  =>HEX3_internal,
      HEX4                  =>HEX4_internal,
      HEX5                  =>HEX5_internal,
      LEDR                  => led
      );
  ssi_inst_slave: entity work.ssi_slave
    port map(
      clk                         => MAX10_CLK1_50,
      reset_n                     => reset_n_t2,
      ssi_clk                     => ssi_clk,
      ssi_charge_pulse            => ssi2_charge_signal,
      ssi_data                    => ssi_data,
      ssi2_mode                   => ssi2_mode,
      position_set                => position_set,
      position                    => "1001" 

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