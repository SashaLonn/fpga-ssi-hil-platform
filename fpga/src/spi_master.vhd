library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spi_master is
generic(
  NR_OF_BITS : integer := 16
);
port(
  clk         : in  std_logic;
  reset_n     : in  std_logic;
  start       : in  std_logic;
  presceler   : in  std_logic_vector(7 downto 0);
  data_in     : in  std_logic_vector(NR_OF_BITS - 1 downto 0);
  sclk_pol    : in  std_logic;
  sclk_cpha   : in  std_logic;
  busy        : out std_logic;
  cs_n        : out std_logic;
  data_ready  : out std_logic;
  mosi        : out std_logic;
  miso        : in  std_logic;
  sclk_out    : out std_logic;
  data_out    : out std_logic_vector(NR_OF_BITS - 1 downto 0)
);
end entity;

architecture rtl of spi_master is

  type state_type is (IDLE, TRANSFER, FINISH);
  signal spi_state : state_type := IDLE;

  signal tx_shift_reg : std_logic_vector(NR_OF_BITS - 1 downto 0);
  signal rx_shift_reg : std_logic_vector(NR_OF_BITS - 1 downto 0);
  
  signal bit_cnt      : integer range 0 to NR_OF_BITS * 2;
  signal prescale_cnt : unsigned(7 downto 0) := (others => '0');
  signal sclk_tick    : std_logic;
  signal sclk_reg     : std_logic;

begin

  cs_n     <= '0' when spi_state = TRANSFER else '1';
  busy     <= '0' when spi_state = IDLE else '1';
  sclk_out <= sclk_reg when spi_state = TRANSFER else sclk_pol;

  ------------------------------------------------------------------
  -- Prescaler
  ------------------------------------------------------------------
  clk_en_proc : process(clk, reset_n)
  begin
    if reset_n = '0' then
      sclk_tick    <= '0';
      prescale_cnt <= (others => '0');
    elsif rising_edge(clk) then
      sclk_tick <= '0';
      if spi_state = TRANSFER then
        if prescale_cnt = unsigned(presceler) then
          sclk_tick    <= '1';
          prescale_cnt <= (others => '0');
        else
          prescale_cnt <= prescale_cnt + 1;
        end if;
      else
        prescale_cnt <= (others => '0');
      end if;
    end if;
  end process;

  ------------------------------------------------------------------
 spi_fsm : process(clk, reset_n)
  begin
    if reset_n = '0' then
      spi_state    <= IDLE;
      mosi         <= '0';
      data_ready   <= '0';
      data_out     <= (others => '0');
      bit_cnt      <= 0;
      sclk_reg     <= sclk_pol; -- Ska ligga på sclk_pol i IDLE!
      tx_shift_reg <= (others => '0');
      rx_shift_reg <= (others => '0');

    elsif rising_edge(clk) then
      data_ready <= '0';

      case spi_state is

        when IDLE =>
          sclk_reg <= sclk_pol;
          mosi     <= '0';

          -- Vänta på start-puls. CS_n ligger HÖG här!
          if start = '1' then
            tx_shift_reg <= data_in;
            mosi         <= data_in(NR_OF_BITS - 1);
            bit_cnt      <= (NR_OF_BITS * 2) - 1;
            spi_state    <= TRANSFER; -- Först HÄR går CS_n låg!
          end if;

        when TRANSFER =>
          if sclk_tick = '1' then
            sclk_reg <= not sclk_reg;

            -- 1. Skifta ut MOSI på fallande flank (om CPOL=1, CPHA=1)
            if sclk_reg = '1' then
              tx_shift_reg <= tx_shift_reg(NR_OF_BITS - 2 downto 0) & '0';
              mosi         <= tx_shift_reg(NR_OF_BITS - 1);
            -- 2. Sampla MISO på stigande flank
            else
              rx_shift_reg <= rx_shift_reg(NR_OF_BITS - 2 downto 0) & miso;
            end if;

            if bit_cnt = 0 then
              spi_state <= FINISH;
            else
              bit_cnt <= bit_cnt - 1;
            end if;
          end if;

        when FINISH =>
          data_out   <= rx_shift_reg;
          data_ready <= '1';
          sclk_reg   <= sclk_pol;
          mosi       <= '0';
          spi_state  <= IDLE; -- HÄR går CS_n hög igen!

        when others =>
          spi_state <= IDLE;

      end case;
    end if;
  end process;

end architecture;