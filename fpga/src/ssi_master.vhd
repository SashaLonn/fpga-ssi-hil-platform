-------------------------------------------------------------------------------
-- Title       : SSI master fill
-------------------------------------------------------------------------------
-- File        : ssi_mater.vhd
-- Author      : Oleksandra_soloivova (lonn.sasha@gmail.com)
-- Created     : 2026-06-01
-------------------------------------------------------------------------------
-- Description : ssi_master filen med två olika processe ssi och ssi2
-------------------------------------------------------------------------------




library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.ssi_pkg.all;

entity ssi_master is 
port (
    clk                       :in  std_logic;
    reset_n                   :in  std_logic;  
    ssi_clk                   :out std_logic;
    ssi_data                  :in  std_logic;
    ssi2_charge_signal        :out std_logic; 
    ssi2_mode                 :in  std_logic;
    HEX0                      :out std_logic_vector(6 DOWNTO 0);
    HEX1                      :out std_logic_vector(6 DOWNTO 0);
    HEX2                      :out std_logic_vector(6 DOWNTO 0);
    HEX3                      :out std_logic_vector(6 DOWNTO 0);
    HEX4                      :out std_logic_vector(6 DOWNTO 0);
    HEX5                      :out std_logic_vector(6 DOWNTO 0);
    LEDR                      :out std_logic
);
end ssi_master;

architecture rtl of ssi_master is

  signal ssi_clk_i                   :std_logic;
  --ssi signals
  signal ssi_clk_hp_counter           :integer range 0 to ssi_clk_hp_count; 
  signal ssi_bit_counter              :integer range 0 to ssi_bit_count; 
  signal run_ssi_clk_counter          :std_logic;
  signal run_pt_counter               :std_logic;
  signal ssi_position                 :std_logic_vector(POSITION_DATA_WIDTH_MAX - 1 downto 0);
  signal ssi_position_read            :std_logic_vector(POSITION_DATA_WIDTH_MAX - 1 downto 0);
   
  --ssi2 signals 
  signal ssi2_clk_i                   :std_logic;
  signal ssi2_clk_i_old               :std_logic;
  signal charge_signal_i              :std_logic;
  signal ssi2_charge_pulse_counter_l  :integer range 0 to 20;
  signal ssi2_charge_pulse_counter_h  :integer range 0 to 5;
  signal ssi2_clk_hp_counter          :integer range 0 to ssi2_clk_hp_count; 
  signal ssi2_bit_counter             :integer range 0 to ssi2_bit_count;  
  signal ssi2_position                :std_logic_vector(POS_NR_TO_TXD -1  downto 0);
 
  signal position_ssi2                :std_logic_vector(POS_NR_TO_TXD -1  downto 0);
  signal position_ssi2_read           :std_logic_vector(POS_NR_TO_TXD -1  downto 0);
  signal position_ssi2_parity_r       :std_logic_vector(POS_NR_TO_TXD - 1 downto 0);
  signal ssi2_pos_ready               :std_logic;
  signal parity                       :std_logic;
  signal parity_check                 :std_logic;
  signal eval_parity                  :std_logic;
  signal parity_error                 :std_logic;
  signal start_receiving              :std_logic;
  signal low_ready                    :std_logic;
  
  type ssi2_state_type                 is (IDLE,RECEIVING,STORE_DATA);
  signal ssi2_state                    :ssi2_state_type;
  
  signal HEX0_internal                :std_logic_vector(6 downto 0);
  signal HEX1_internal                :std_logic_vector(6 downto 0);
  signal HEX2_internal                :std_logic_vector(6 downto 0);
  signal HEX3_internal                :std_logic_vector(6 downto 0);
  signal HEX4_internal                :std_logic_vector(6 downto 0);
  signal HEX5_internal                :std_logic_vector(6 downto 0);

  
  
  signal display_0_int                :std_logic_vector(1 downto 0);
  signal display_1_int                :std_logic_vector(1 downto 0);
  signal display_2_int                :std_logic_vector(1 downto 0);
  signal display_3_int                :std_logic_vector(1 downto 0);  
  signal display_4_int                :std_logic_vector(1 downto 0);  
  signal display_5_int                :std_logic_vector(1 downto 0);   
  
  signal led                          :std_logic;
  signal new_pos                      :std_logic;
  signal data_sync                    :std_logic;
  signal data_sync_1                  :std_logic;
  signal data_sync_2                  :std_logic;
  
  signal pt_counter                   :integer range 0 to pt_count;
  
begin

  ssi_clk            <= ssi2_clk_i when ssi2_mode = '1' else ssi_clk_i;
  ssi2_charge_signal <= charge_signal_i;
  LEDR               <= led;

  
  HEX0 <= HEX0_internal;
  HEX1 <= HEX1_internal;
  HEX2 <= HEX2_internal;
  HEX3 <= HEX3_internal;
  HEX4 <= HEX4_internal;
  HEX5 <= HEX5_internal;
  
  ssi_proc: process(reset_n, clk) 
  begin
    if reset_n = '0' then 
      ssi_clk_i           <= '1';
      ssi_clk_hp_counter  <=  0;
      run_ssi_clk_counter <= '1';
      run_pt_counter      <= '0';
      ssi_bit_counter     <=  0;
      pt_counter          <=  0;
      ssi_position_read   <=  (others => '0');
      ssi_position        <=  (others => '0');
      
    elsif clk 'event and clk = '1' then
    
      if run_ssi_clk_counter = '1' then  
        if ssi_clk_hp_counter = ssi_clk_hp_count then
          ssi_clk_hp_counter <= 0;
          ssi_clk_i <= not ssi_clk_i;
          if ssi_clk_i = '0' then
            if ssi_bit_counter < ssi_bit_count then
              ssi_position(0)                <= data_sync_2;
              ssi_position(POSITION_DATA_WIDTH_MAX - 1 downto 1)  <= ssi_position(POSITION_DATA_WIDTH_MAX- 2 downto 0);
              ssi_bit_counter                <= ssi_bit_counter + 1;
              
            end if;
              if ssi_bit_counter = ssi_bit_count  then
                ssi_bit_counter     <=  0;
                run_ssi_clk_counter <= '0';
                run_pt_counter      <= '1'; 
              end if;       
          end if;
        else
          ssi_clk_hp_counter <= ssi_clk_hp_counter + 1;  
        end if;  
      end if;
        
      
      if run_pt_counter = '1' then
        if pt_counter >= pt_count then
          run_pt_counter  <= '0';
          pt_counter      <=  0;
          run_ssi_clk_counter <= '1';
        else
          pt_counter      <= pt_counter + 1;
          new_pos             <= '1'; 
        end if;
      end if;
      
     if new_pos = '1' then
        ssi_position_read <= ssi_position;
        new_pos             <= '0';  
      end if;
    end if;
  end process;
    
    
  ssi2_proc:process (reset_n, clk)
  begin
    if reset_n = '0' then   
      ssi2_clk_hp_counter    <=  0;
      ssi2_clk_i_old         <= '0';
      ssi2_clk_i             <= '0';
    elsif clk'event and clk  = '1' then
        if ssi2_clk_hp_counter = ssi2_clk_hp_count then
          ssi2_clk_hp_counter  <= 0;
          ssi2_clk_i           <= not ssi2_clk_i; 
        else 
          ssi2_clk_hp_counter  <= ssi2_clk_hp_counter + 1;
          ssi2_clk_i_old       <= ssi2_clk_i;      
        end if;  
    end if;
  end process;

  ssi2_charge_signal_proc:process (reset_n,clk)
  begin
    if reset_n = '0' then
      charge_signal_i              <= '1';
      start_receiving              <= '0';
      low_ready                    <= '0';
      ssi2_charge_pulse_counter_h  <= 0;
      ssi2_charge_pulse_counter_l  <= 0;
    elsif clk' event and clk = '1' then 
      start_receiving <= '0';   
      if ssi2_clk_i_old = '1'and ssi2_clk_i = '0' then    
        if ssi2_charge_pulse_counter_l < 19 then
          charge_signal_i     <= '0';
          ssi2_charge_pulse_counter_l   <= ssi2_charge_pulse_counter_l + 1;
        else
          low_ready          <= '1';
        end if;
        if low_ready = '1' then  
          if ssi2_charge_pulse_counter_h < 4 then 
            charge_signal_i    <= '1';
            ssi2_charge_pulse_counter_h <= ssi2_charge_pulse_counter_h + 1;      
          else
            ssi2_charge_pulse_counter_h <=  0;
            ssi2_charge_pulse_counter_l <=  0;
            start_receiving             <= '1';  
            low_ready                   <= '0';  
          end if;
        end if;      
      end if;
    end if;
  end process;

  ss2_clock_in_data:process (reset_n,clk)
  begin
    if reset_n = '0' then
      ssi2_bit_counter        <=  0;
      ssi2_position           <= (others => '0');
      position_ssi2           <= (others => '0');
      position_ssi2_read      <= (others => '0');
      ssi2_pos_ready          <= '0';
      ssi2_state              <= IDLE;
      eval_parity             <= '0';  
      parity                  <= '0';  
      parity_check            <= '0';  
      parity_error            <= '0';  
    elsif clk' event and clk   = '1' then    
      if eval_parity  = '1' then  
        parity       <= parity xor data_sync_2;
        parity_check <= not parity;
        eval_parity  <= '0';
      end if;
      
      case ssi2_state is 
        when IDLE => 
          if start_receiving = '1' then
            ssi2_state      <= RECEIVING;
            ssi2_bit_counter <= 0;
            parity          <= '0';
            parity_check    <= '0';
            parity_error    <= '0';
          else
            ssi2_state <= IDLE;
          end if;
        when RECEIVING =>
          if  ssi2_clk_i_old = '1'and ssi2_clk_i = '0' then
            if ssi2_bit_counter < ssi2_bit_count  then
              ssi2_position(5)              <= data_sync_2;
              ssi2_position(POS_NR_TO_TXD - 2 downto 0) <= ssi2_position(POS_NR_TO_TXD- 1 downto 1);
              ssi2_bit_counter               <= ssi2_bit_counter + 1;
              eval_parity                    <= '1';
            end if;
              
            if ssi2_bit_counter = ssi2_bit_count  then
              ssi2_bit_counter  <= 0;
              position_ssi2     <= ssi2_position;
              ssi2_pos_ready    <='1';
              ssi2_state        <= STORE_DATA;
            end if;
          end if; 
        when STORE_DATA =>
          if ssi2_pos_ready = '1' then
            if position_ssi2 (5) /= parity_check then
              parity_error                    <= '1';
              position_ssi2_read(3 downto 0) <= (others => '1');
              ssi2_state                      <= IDLE;
            else        
              position_ssi2_read                  <= position_ssi2;
              ssi2_pos_ready                      <= '0';
              ssi2_state                          <= IDLE;
            end if;             
          end if;
        when others =>
          ssi2_state <= IDLE;  
      end case;  
    end if;
  end process;


  posion_read_proc: process(reset_n, clk)
  begin
    if reset_n = '0' then
      display_0_int        <= "11";
      display_1_int        <= "11";
      display_2_int        <= "11";
      display_3_int        <= "11";  
      display_4_int        <= "11";  
      display_5_int        <= "11";   
      led                  <= '1';
    elsif clk 'event and clk = '1' then
      if ssi2_mode = '1' then
        if parity_error = '1' then
          display_5_int        <= "11";
        else        
          display_0_int        <= '0'& position_ssi2_read(0);
          display_1_int        <= '0'& position_ssi2_read(1);
          display_2_int        <= '0'& position_ssi2_read(2);
          display_3_int        <= '0'& position_ssi2_read(3);   
          display_4_int        <= '0'& position_ssi2_read(4);  
          display_5_int        <= '0'& position_ssi2_read(5);
          led                  <= '0';
        end if;
      else
        display_0_int        <= "11";
        display_1_int        <= '0' & ssi_position_read(3);
        display_2_int        <= '0' & ssi_position_read(2);
        display_3_int        <= '0' & ssi_position_read(1);   
        display_4_int        <= '0' & ssi_position_read(0);  
        display_5_int        <= "11";
        led                  <= '0';
      end if;
    end if;
  end process;

  status_display_system_init:entity work. STATUS_DISPLAY_SYSTEM 
     port map(  
      display_0               => display_0_int,
      display_1               => display_1_int,
      display_2               => display_2_int,
      display_3               => display_3_int,   
      display_4               => display_4_int,   
      display_5               => display_5_int,   
   
     
      seg_zero_display        => HEX0_internal,
      seg_first_display       => HEX1_internal,
      seg_second_display      => HEX2_internal,
      seg_third_display       => HEX3_internal,
      seg_forth_display       => HEX4_internal,
      seg_fifth_display       => HEX5_internal
      );
      
  sync_input_proc:process(reset_n, clk)
  begin
    if reset_n = '0' then
      data_sync                  <= '0';
      data_sync_1                <= '0';
      data_sync_2                <= '0';

    elsif clk'event and clk = '1' then
      data_sync              <= ssi_data;
      data_sync_1            <= data_sync;
      data_sync_2            <= data_sync_1;
    end if;
  end process;

end architecture;


