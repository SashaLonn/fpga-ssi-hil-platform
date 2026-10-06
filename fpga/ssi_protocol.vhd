library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity spi_protocol is
generic(
  NR_OF_BITS       :integer := 16
);
port(
  clk         :in  std_logic;
  reset_n     :in  std_logic;
--inputs  
  cs_n        :in  std_logic;
  start       :in  std_logic;
  miso        :in  std_logic;
  presceler   :in  std_logic_vector(10 downto 0);
  data_in     :in  std_logic_vector(NR_OF_BITS -1 downto 0);
  msb_first   :in  std_logic;
--outpust
  busy        :out std_logic;
  data_ready  :out std_logic;
  mosi        :out std_logic;
  sclk_out    :out std_logic;
  data_out    :out std_logic_vector(NR_OF_BITS -1 downto 0)
);
end entity;

architecture rtl of spi_protocol is
--FMS
type   state_type is(IDLE,CLOCK_LOW,CLOCK_HIGH,READY);
signal spi_state    :state_type  := IDLE;
signal s_shift_register_rx    :std_logic_vector(NR_OF_BITS - 1 downto 0);
signal s_shift_register_tx    :std_logic_vector(NR_OF_BITS - 1 downto 0);
signal s_bits_cnts_bits_cnt             :integer range 0 to NR_OF_BITS;

begin
  busy    <= '0' when spi_state = IDLE else '1';

  spi_master process (reset_n, clk)is
  begin
    if reset_n = '0' then 
      s_shift_register_tx   <= (others => '0');
      s_bits_cnt            <= '0';
      start                 <= '0';
      ch_n                  <= '1';
      spi_state             <= IDLE;
    elsif clk' event and clk = '1' then
      
      case spi_state is
        when IDLE  => 
          if start = '1' then 
            spi_state  <= CLK_LOW;
          end if;
        when CLK_LOW  => 
          null;
        when CLK_HIGH  => 
          null;
        when READY  => 
          null;
        when others => IDLE;
      end case;
      
  
  end process;

end architecture;