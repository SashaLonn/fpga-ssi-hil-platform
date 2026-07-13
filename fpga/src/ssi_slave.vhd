-------------------------------------------------------------------------------
-- Title       : SSI slavel fill
-------------------------------------------------------------------------------
-- File        : ssi_slave.vhd
-- Author      : Oleksandra_soloivova (lonn.sasha@gmail.com)
-- Created     : 2026-06-01
-------------------------------------------------------------------------------
-- Description : ssi_slave filen med två olika processe ssi och ssi2
-------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.ssi_pkg.all;

entity ssi_slave is 
port(
    clk                          :in  std_logic;
    reset_n                      :in  std_logic;
    ssi_clk                      :in  std_logic;
    ssi_charge_pulse             :in  std_logic;
    ssi_data                     :out std_logic;
    ssi2_mode                    :in  std_logic;
    position_set                 :in  std_logic;
    position                     :in  std_logic_vector(3 downto 0)

);
end ssi_slave;

architecture rtl of ssi_slave is

  
  -- sync signals
  signal ssi_clk_sync_1                  :std_logic;
  signal ssi_clk_sync_2                  :std_logic;
  signal ssi_clk_sync_3                  :std_logic;
  signal ssi_charge_pulse_sync_1         :std_logic;
  signal ssi_charge_pulse_sync_2         :std_logic;
  signal ssi_charge_pulse_sync_3         :std_logic;

  -- transmit signals
  signal transfer_bit_nr_ssi2           :integer range 0 to POS_NR_TO_TXD;
  signal transmit_register_ssi2         :unsigned(POSITION_DATA_WIDTH_MAX + 1 downto 0);
  signal pos_max                        :unsigned(POSITION_DATA_WIDTH_MAX - 1 downto 0);
  signal position_value_i               :unsigned(POSITION_DATA_WIDTH_MAX - 1  downto 0);
  signal transmission_running_ssi2      :std_logic;
  
 
  signal ssi_data_i                     :std_logic; 
  signal ssi2_data_i                    :std_logic; 
  signal eval_parity                    :std_logic;
  signal parity                         :std_logic;
  signal ssi_CCW                        :std_logic;
  signal gray_code                      :std_logic;
  signal run_tm_timer                   :std_logic;

  -- transmit signals
  signal transfer_bit_nr                :integer range 0 to POSITION_DATA_WIDTH_MAX +1;
  signal transmit_register              :unsigned (POSITION_DATA_WIDTH_MAX -1 downto 0);
  signal transmission_running           :std_logic;
  signal previous_bit                   :std_logic;
  signal start_transmission             :std_logic;
  signal tm_timer_counter               :integer range 0 to tm_timer_count;

begin


  ssi_data                    <= ssi2_data_i when ssi2_mode = '1' else ssi_data_i;
  pos_max                     <= "1111";
  ssi_CCW                     <= '0';
  gray_code                   <= '0';
  position_value_i            <= unsigned (position);



  ssi_transmit_proc:process(reset_n, clk)
  variable shift_transmit_register        :std_logic;
  begin
    if reset_n = '0' then
      ssi_data_i              <= '1';
      transmission_running    <= '0';
      shift_transmit_register := '0';
      previous_bit            <= '0';
      run_tm_timer            <= '0';
      start_transmission      <= '1';
      tm_timer_counter        <=  0 ;
      transmit_register       <= (others  => '0');
     
    elsif clk'event and clk = '1' then
      shift_transmit_register := '0';   
      if position_set = '1' then
        if start_transmission = '1' then 
          if ssi_clk_sync_2 = '0' and ssi_clk_sync_3 = '1' then-- on falling edge of ssi2_mode
            transmission_running                  <= '1';
            transfer_bit_nr                       <= POSITION_DATA_WIDTH_MAX +1;     
              if ssi_CCW = '0' then -- if CW 0
                transmit_register(POSITION_DATA_WIDTH_MAX -1 downto 0) <= position_value_i;
              else
                transmit_register(POSITION_DATA_WIDTH_MAX -1 downto 0) <= pos_max - position_value_i;
              end if;
          end if;
        end if;
      end if;
    
    -- transmission
    if transmission_running = '1' then
        if ssi_clk_sync_2 = '1' and ssi_clk_sync_3 = '0' then         
          if transfer_bit_nr = 1 then
            ssi_data_i           <= '0';
            transmission_running <= '0';
            run_tm_timer         <= '1';
          else
            if gray_code = '0'  then
              ssi_data_i <= transmit_register(POSITION_DATA_WIDTH_MAX - 1);
            else
              ssi_data_i <= previous_bit xor transmit_register(POSITION_DATA_WIDTH_MAX - 1);
            end if;
            previous_bit <= transmit_register(POSITION_DATA_WIDTH_MAX - 1);
            shift_transmit_register := '1';
            start_transmission      <= '0'; 
          end if;
        end if;
    end if;
    
    
    if shift_transmit_register = '1' then
      transfer_bit_nr <= transfer_bit_nr - 1;
      transmit_register(POSITION_DATA_WIDTH_MAX - 1 downto 1) <= transmit_register(POSITION_DATA_WIDTH_MAX - 2 downto 0);
    end if;
    -- end transmission;
    
    if run_tm_timer = '1' then
      if tm_timer_counter = tm_timer_count then
        ssi_data_i <= '1';
        tm_timer_counter   <=  0;
        run_tm_timer       <= '0';
        start_transmission <= '1';
      else
        tm_timer_counter <= tm_timer_counter + 1;
        ssi_data_i <= '0';
      end if;   
    end if;
  end if;
end process;



  ssi2_transmit_proc:process(reset_n, clk)
  begin
    if reset_n = '0' then
      transmission_running_ssi2    <= '0';
      ssi2_data_i                  <= '0';
      transmit_register_ssi2(0)    <= '0';
      parity                       <= '0';
      eval_parity                  <= '0';
      transfer_bit_nr_ssi2         <=  0;
    elsif clk'event and clk = '1' then
      eval_parity             <= '0';
      transmit_register_ssi2  <= transmit_register_ssi2;
      if position_set = '1' then
        if ssi_charge_pulse_sync_2 = '0' and ssi_charge_pulse_sync_3 = '1' then  
          transmit_register_ssi2(0)                           <= '1';
          transmission_running_ssi2                           <= '1';
          parity                                              <= '0';
            if ssi_CCW = '0' then -- if CW 0
              transmit_register_ssi2(POSITION_DATA_WIDTH_MAX downto 1) <= position_value_i;
            else
              transmit_register_ssi2(POSITION_DATA_WIDTH_MAX downto 1) <= pos_max - position_value_i;
            end if;
        end if;
      end if;   
      
    -- transmission
    if transmission_running_ssi2 = '1' then    
      if ssi_clk_sync_2 = '1' and ssi_clk_sync_3 = '0' then
        if transfer_bit_nr_ssi2 = POS_NR_TO_TXD then
          ssi2_data_i                           <='0';
          transmission_running_ssi2             <='0';
          transfer_bit_nr_ssi2                  <= 0;
        else
          if transfer_bit_nr_ssi2 = PARITY_TO_TXD  then 
            ssi2_data_i      <= not parity;
          else     
            ssi2_data_i     <= transmit_register_ssi2(0);
          end if;
          eval_parity                                                 <= '1';  
          transfer_bit_nr_ssi2                                        <= transfer_bit_nr_ssi2 + 1;
          transmit_register_ssi2(POSITION_DATA_WIDTH_MAX -1 downto 0) <= transmit_register_ssi2(POSITION_DATA_WIDTH_MAX downto 1);   
        end if;
      end if;
    end if;  
    -- end transmission 
    
    if eval_parity  = '1' then  
      parity      <= parity xor ssi2_data_i;
      eval_parity <= '0';
    end if;   
  end if;
end process;



  sync_input_proc:process(reset_n, clk)
  begin
    if reset_n = '0' then
      ssi_clk_sync_1                  <= '0';
      ssi_clk_sync_2                  <= '0';
      ssi_clk_sync_3                  <= '0';
      ssi_charge_pulse_sync_1         <= '0';
      ssi_charge_pulse_sync_2         <= '0';
      ssi_charge_pulse_sync_3         <= '0';
      
    elsif clk'event and clk = '1' then
      ssi_clk_sync_1            <= ssi_clk;
      ssi_clk_sync_2            <= ssi_clk_sync_1;
      ssi_clk_sync_3            <= ssi_clk_sync_2;
      ssi_charge_pulse_sync_1   <= ssi_charge_pulse;
      ssi_charge_pulse_sync_2   <= ssi_charge_pulse_sync_1;
      ssi_charge_pulse_sync_3   <= ssi_charge_pulse_sync_2;
    end if;
  end process;
  
end architecture;

