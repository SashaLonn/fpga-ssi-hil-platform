import serial

PORT = 'COM5'
BAUDRATE = 9600
DATA_BYTES = 1  # Ändrat till 4 bytes för 32-bitars data

old_data = None

try:
    ser = serial.Serial(PORT, BAUDRATE, timeout=1)
    print(f"Ansluten till {PORT} med {BAUDRATE} baud. Väntar på data...\n")

    while True:
        # Läser 4 databytes + 1 byte checksum (totalt 5 bytes)
        packet = ser.read(DATA_BYTES + 1)

        if len(packet) == DATA_BYTES + 1:

            # De första 4 bytesen = 32-bitars data
            data = int.from_bytes(packet[0:DATA_BYTES], byteorder='big')

            # Sista byten = checksum
            received_checksum = packet[DATA_BYTES]

            # Beräkna checksumma på databytesen (summa mod 256)
            calculated_checksum = sum(packet[0:DATA_BYTES]) & 0xFF

            if calculated_checksum == received_checksum:

                if data != old_data:
                    old_data = data

                    print(
                        f"Mottagen data: {data} "
                        f"(Hex: 0x{data:08X}, "
                        f"Bin: {data:032b})"
                    )

            else:
                print(
                    f"Checksum-fel! "
                    f"Beräknad: 0x{calculated_checksum:02X}, "
                    f"Mottagen: 0x{received_checksum:02X}"
                )
                # Töm bufferten vid fel för att försöka återstälma ram-synkroniseringen
                ser.reset_input_buffer()

except serial.SerialException as e:
    print(f"Fel vid öppning av serieport: {e}")

except KeyboardInterrupt:
    print("\nProgrammet avslutades av användaren.")

finally:
    if 'ser' in locals() and ser.is_open:
        ser.close()
        print("Serieporten stängd.")