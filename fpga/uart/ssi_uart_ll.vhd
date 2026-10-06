library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ssi_uart_ll is
    generic(
        CLOCK_FREQ_HZ : integer := 50000000; -- 100 MHz
        BAUDRATE      : integer := 115200;
        POS_WIDTH     : integer := 8         -- Exempel: 32 bitar (4 bytes)
    );
    port(
        clk           :in  std_logic;
        reset_n       :in  std_logic;
        
        -- Gränssnitt mot positionsmodulen
        pos_data      :in  std_logic_vector(POS_WIDTH - 1 downto 0);
        pos_ready     :in  std_logic; -- Pulsa '1' i 1 klockcykel för att skicka
        busy          :out std_logic; -- '1' = upptagen, '0' = redo för ny data
        
        -- Fysisk TX-pinne till PC
        txd           :out std_logic
    );
end entity;

architecture rtl of ssi_uart_ll is

    constant BYTES_TO_SEND  : integer := POS_WIDTH / 8;
    constant NR_CLK_PER_BIT : integer := CLOCK_FREQ_HZ / BAUDRATE - 1;

    type state_type is (IDLE, LOAD_BYTE, LOAD_CHECKSUM, TRANSMIT_BIT, WAIT_BIT);
    signal state            : state_type;

    signal shift_reg        :std_logic_vector(POS_WIDTH - 1 downto 0);
    signal tx_bit_buffer    :std_logic_vector(9 downto 0); -- [Stoppbit(1)] [Data(8-0)] [Startbit(0)]
    signal checksum         :std_logic_vector(7 downto 0);
    
    signal bit_counter      :integer range 0 to 9;
    signal byte_counter     :integer range 0 to BYTES_TO_SEND;
    signal clk_counter      :integer range 0 to NR_CLK_PER_BIT;
    signal sending_checksum :std_logic;

begin

    busy <= '0' when state = IDLE else '1';

    process(clk, reset_n)
        variable current_byte : std_logic_vector(7 downto 0);
    begin
        if reset_n = '0' then
            state            <= IDLE;
            txd              <= '1';
            clk_counter      <= 0;
            bit_counter      <= 0;
            byte_counter     <= 0;
            checksum         <= (others => '0');
            shift_reg        <= (others => '0');
            sending_checksum <= '0';
        elsif rising_edge(clk) then

            case state is

                when IDLE =>
                    txd <= '1';
                    if pos_ready = '1' then
                        shift_reg    <= pos_data;
                        byte_counter <= BYTES_TO_SEND;
                        checksum     <= (others => '0'); -- Nollställ kontrollsumman
                        state        <= LOAD_BYTE;
                        sending_checksum <= '0';
                    end if;

                when LOAD_BYTE =>
                    if byte_counter > 0 then
                        -- Ta ut nästa byte (MSB först)
                        current_byte := shift_reg(POS_WIDTH - 1 downto POS_WIDTH - 8);
                        shift_reg    <= shift_reg(POS_WIDTH - 9 downto 0) & x"00";
                        
                        -- Addera byten till kontrollsumman
                        checksum     <= checksum + current_byte;
                        
                        -- Ladda bit-buffert: [Stoppbit(1)] [Data(8)] [Startbit(0)]
                        tx_bit_buffer <= '1' & current_byte & '0';
                        
                        bit_counter  <= 0;
                        clk_counter  <= 0;
                        byte_counter <= byte_counter - 1;
                        state        <= TRANSMIT_BIT;
                    else
                        -- Alla databytes skickade, ladda checksum som sista byte
                        state <= LOAD_CHECKSUM;
                    end if;

                when LOAD_CHECKSUM =>
                    -- Ladda den beräknade kontrollsumman i bit-bufferten
                    tx_bit_buffer <= '1' & checksum & '0';
                    bit_counter   <= 0;
                    clk_counter   <= 0;
                    sending_checksum <= '1';
                    byte_counter  <= 0; -- Markerad som 0 så vi vet att detta är sista byten
                    state         <= TRANSMIT_BIT;

                when TRANSMIT_BIT =>
                    txd         <= tx_bit_buffer(0);
                    clk_counter <= 0;
                    state       <= WAIT_BIT;
                when WAIT_BIT =>
    if clk_counter = NR_CLK_PER_BIT then
        if bit_counter = 9 then
            if sending_checksum = '1' then
                state <= IDLE;                 -- checksum byte done, truly finished
            elsif byte_counter > 0 then
                state <= LOAD_BYTE;             -- more data bytes to send
            else
                state <= LOAD_CHECKSUM;         -- all data sent, send checksum once
            end if;
        else
            bit_counter   <= bit_counter + 1;
            tx_bit_buffer <= '1' & tx_bit_buffer(9 downto 1);
            state         <= TRANSMIT_BIT;
        end if;
    else
        clk_counter <= clk_counter + 1;
    end if;

            end case;
        end if;
    end process;

end rtl;