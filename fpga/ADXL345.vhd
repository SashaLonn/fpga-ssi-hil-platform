library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ADXL345 is
  port(
    clk                    :in std_logic;
    reset_n                :in std_logic;
    data_out_spi           :out std_logic_vector(15 downto 0);
    data_to_stm            :out std_logic_vector(47 downto 0);
    spi_ready              :in std_logic;
    spi_busy               :in std_logic;
    spi_start              :out std_logic;
    data_from_spi          :in std_logic_vector(15 downto 0)
    );
end entity;

architecture rtl of ADXL345 is
  -- Skiftregister för x-filtret
  signal x_sample0, x_sample1, x_sample2, x_sample3 :signed(15 downto 0);
  signal x_sum                      :signed(17 downto 0);
  signal x_filtered                 :signed(15 downto 0);

  -- Skiftregister för Y-filtret
  signal y_sample0, y_sample1, y_sample2, y_sample3 :signed(15 downto 0);
  signal y_sum                     :signed(17 downto 0);
  signal y_filtered                :signed(15 downto 0);

  -- Skiftregister för Z-filtret
  signal z_sample0, z_sample1, z_sample2, z_sample3 : signed(15 downto 0);
  signal z_sum                    :signed(17 downto 0);
  signal z_filtered               :signed(15 downto 0);
  
  type state_type is (POWER_ON_INIT, WRITE_FORMAT, WAIT_FORMAT, WRITE_POWER, WAIT_POWER, WRITE_BW_RATE, WAIT_BW_RATE, 
                     READ_X_L, WAIT_X_L, READ_X_H, WAIT_X_H,
                     READ_Y_L, WAIT_Y_L, READ_Y_H, WAIT_Y_H,
                     READ_Z_L, WAIT_Z_L, READ_Z_H, WAIT_Z_H,
                     SEND_TO_STM32, PAUSE);
  signal state :state_type := POWER_ON_INIT;
  signal s_start                :std_logic;
  signal s_data_in              :std_logic;
  signal s_acc_send             :std_logic_vector(47 downto 0);
        
  

begin 
  x_sum <= resize(x_sample0, 18) + resize(x_sample1, 18) + resize(x_sample2, 18) + resize(x_sample3, 18);
  y_sum <= resize(y_sample0, 18) + resize(y_sample1, 18) + resize(y_sample2, 18) + resize(y_sample3, 18);
  z_sum <= resize(z_sample0, 18) + resize(z_sample1, 18) + resize(z_sample2, 18) + resize(z_sample3, 18);

-- Skifta 2 steg åt höger (dela med 4)
  x_filtered   <= resize(shift_right(x_sum, 2), 16);
  y_filtered   <= resize(shift_right(y_sum, 2), 16);
  z_filtered   <= resize(shift_right(z_sum, 2), 16);
  
  spi_start    <= s_start; 
  data_to_stm  <= s_acc_send;
  
  process(reset_n,clk)  

  variable timer :integer range 0 to 5000000 := 0;
  variable x_low, y_low, z_low :std_logic_vector(7 downto 0);
  begin
    if reset_n = '0' then
      s_start      <= '0';     
      data_out_spi <= (others => '0');
      s_acc_send   <= (others => '0');
      state        <= POWER_ON_INIT;
      timer        := 0;

     elsif clk 'event and clk = '1' then   
      s_start <= '0';

      case state is
        when POWER_ON_INIT =>
          if timer = 5000 then 
            timer := 0;
            state <= WRITE_FORMAT;
          else
            timer := timer + 1;
          end if;

        when WRITE_FORMAT =>
          data_out_spi <= x"3108"; 
          if spi_busy = '0' then
            s_start <= '1';
            state   <= WAIT_FORMAT;
          end if;

        when WAIT_FORMAT =>
          if spi_ready = '1' then
            state <= WRITE_POWER;
          end if;
          
        when WRITE_BW_RATE =>
          data_out_spi <= x"2C0D"; -- 0x2C (reg) + 0x0F (3200 Hz). Byt sista byten efter behov:
                                 -- 0x0A=100Hz, 0x0B=200Hz, 0x0C=400Hz, 0x0D=800Hz, 0x0E=1600Hz, 0x0F=3200Hz
          if spi_busy = '0' then
            s_start <= '1';
            state   <= WAIT_BW_RATE;
          end if;
          
          when WAIT_BW_RATE =>
          if spi_ready = '1' then
            state <= WRITE_POWER;
          end if;

        when WRITE_POWER =>
          data_out_spi <= x"2D08"; 
          if spi_busy = '0' then
            s_start <= '1';
            state   <= WAIT_POWER;
          end if;

        when WAIT_POWER =>
          if spi_ready = '1' then
            state <= READ_X_L;
          end if;

        -- X lågbyte: reg 0x32, enkelbyte-läsning (INGET multi-byte-bit)
        when READ_X_L =>
          data_out_spi <= x"B200"; -- 0x80 (read) | 0x32 (reg) = 0xB2
          s_start   <= '1';
          state     <= WAIT_X_L;

        when WAIT_X_L =>
          if spi_ready = '1' then
            x_low := data_from_spi(7 downto 0);
            state <= READ_X_H;
          end if;

        -- X högbyte: reg 0x33
        when READ_X_H =>
          data_out_spi <= x"B300"; -- 0x80 | 0x33 = 0xB3
          s_start   <= '1';
          state     <= WAIT_X_H;

        when WAIT_X_H =>
          if spi_ready = '1' then
            x_sample3 <= x_sample2;
            x_sample2 <= x_sample1;
            x_sample1 <= x_sample0;
            x_sample0 <= signed(data_from_spi(7 downto 0) & x_low); -- högbyte & lågbyte
            state     <= READ_Y_L;
          end if;

        -- Y lågbyte: reg 0x34
        when READ_Y_L =>
          data_out_spi <= x"B400"; -- 0x80 | 0x34
          s_start   <= '1';
          state     <= WAIT_Y_L;

        when WAIT_Y_L =>
          if spi_ready = '1' then
            y_low := data_from_spi(7 downto 0);
            state <= READ_Y_H;
          end if;

        -- Y högbyte: reg 0x35
        when READ_Y_H =>
          data_out_spi <= x"B500"; -- 0x80 | 0x35
          s_start   <= '1';
          state     <= WAIT_Y_H;

        when WAIT_Y_H =>
          if spi_ready = '1' then
            y_sample3 <= y_sample2;
            y_sample2 <= y_sample1;
            y_sample1 <= y_sample0;
            y_sample0 <= signed(data_from_spi(7 downto 0) & y_low);
            state     <= READ_Z_L;
          end if;

        -- Z lågbyte: reg 0x36
        when READ_Z_L =>
          data_out_spi <= x"B600"; -- 0x80 | 0x36
          s_start   <= '1';
          state     <= WAIT_Z_L;

        when WAIT_Z_L =>
          if spi_ready = '1' then
            z_low := data_from_spi(7 downto 0);
            state <= READ_Z_H;
          end if;

        -- Z högbyte: reg 0x37
        when READ_Z_H =>
          data_out_spi <= x"B700"; -- 0x80 | 0x37
          s_start   <= '1';
          state     <= WAIT_Z_H;

        when WAIT_Z_H =>
          if spi_ready = '1' then
            z_sample3 <= z_sample2;
            z_sample2 <= z_sample1;
            z_sample1 <= z_sample0;
            z_sample0 <= signed(data_from_spi(7 downto 0) & z_low);
            state     <= SEND_TO_STM32;
          end if;

        when SEND_TO_STM32 =>
          s_acc_send <= std_logic_vector(x_filtered) & 
                        std_logic_vector(y_filtered) & 
                        std_logic_vector(z_filtered);
          state <= PAUSE;      

        when PAUSE =>
          -- KOM IHÅG att fixa denna också (se tidigare kommentar om 100ms-buggen)
          if timer = 62500 then  -- ~100ms @ 50MHz, justera efter behov
            timer := 0;
            state <= READ_X_L;
          else
            timer := timer + 1;
          end if;

    end case;
  end if;
end process;

end architecture;
