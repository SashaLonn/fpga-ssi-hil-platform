# ADXL345 to SSI on DE10-Lite (FPGA)

FPGA design for the Terasic DE10-Lite (Intel MAX 10, `10M50DAF484C7G`). It reads the on-board
ADXL345 accelerometer over SPI, filters X, Y and Z, and sends them as one 48-bit word over an
SSI interface to an external SSI master (an STM32 in this project).

```
ADXL345 --SPI--> spi_master --> ADXL345.vhd (config + read + filter) --> ssi_slave --SSI--> STM32
```

## Tools

- Quartus Prime 22.1 Lite Edition
- System clock: `MAX10_CLK1_50` (50 MHz)
- Top-level entity: `ssi_protocol` (in `ssi_top.vhd`)

## Files

| File | Description |
|---|---|
| `ssi_top.vhd` | Top level. Connects all modules, synchronizes reset and switches |
| `spi_master.vhd` | Generic SPI master, 16-bit transfers, mode 3, about 1 MHz |
| `ADXL345.vhd` | Configures the sensor, reads X/Y/Z and averages the last 4 samples per axis |
| `ssi_slave.vhd` | Sends the 48-bit word when the SSI master clocks it |
| `ssi_pkg.vhd` | Global constants (clock, SSI timing, data width) |
| `ssi_master.vhd` | SSI master, 7-segment display, LED and UART (not described here) |

## How it works

1. **Sensor setup:** after about 100 µs, `ADXL345.vhd` writes DATA_FORMAT = `0x08`
   (full resolution, ±2 g) and POWER_CTL = `0x08` (measurement mode).
2. **Reading:** registers `0x32` to `0x37` (X, Y and Z, low and high byte) are read one byte per
   SPI transfer.
3. **Filtering:** each axis is a moving average of the last 4 samples.
4. **Output:** the three values are packed into a 48-bit word, then the loop starts again after a
   short pause.
5. **SSI:** on the first falling edge of the SSI clock, `ssi_slave` latches the word. It then
   shifts out one bit per rising edge, MSB first, followed by a 50 µs monoflop time.
   The data line is high when idle.

## Data format

```
bit 47 ........ 32 | 31 ........ 16 | 15 ......... 0
     X (int16)     |    Y (int16)   |   Z (int16)
```

Each axis is a signed 16-bit value (two's complement), about 256 LSB per g.

## I/O

| Signal | Direction | Function |
|---|---|---|
| `reset_nrst` | in | Reset, active low |
| `SW7` | in | Must be **on**, otherwise nothing is sent |
| `SW8` | in | 0 = normal SSI mode (use this), 1 = SSI2 test mode |
| `GPIO(35)` | in | SSI clock from the SSI master |
| `GPIO_data` | out | SSI data to the SSI master |
| `GSENSOR_*` | – | SPI to the on-board ADXL345 |

Connect GND between the DE10-Lite and the SSI master.

## Build and run

1. Open the project in Quartus and run **Processing → Start Compilation**.
2. Check that Timing Analyzer shows no negative slack.
3. Program the board with **Tools → Programmer** (`output_files/ssi_protocol.sof`).
4. Set SW7 = 1 and SW8 = 0.

## Known issues

