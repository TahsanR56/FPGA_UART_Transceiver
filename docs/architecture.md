# UART Architecture Overview

## Overview

The UART is divided into the following blocks:

- Baud Rate Generator
- Transmitter (TX)
- Receiver (RX)
- Control Logic

Each block is designed independently and integrated via well-defined interfaces.

---

## Transmitter (TX)

The transmitter sends:
- 1 start bit (LOW)
- N data bits (LSB first)
- 1 stop bit (HIGH)

State machine approach:
- IDLE
- START
- DATA
- STOP

---

## Receiver (RX)

The receiver:
- Detects the falling edge of the start bit
- Samples data bits at the centre of each bit period
- Assembles received bytes
