# UART Transceiver Architecture

## High-Level Overview

The UART consists of four primary blocks:

- Baud Rate Generator
- Transmitter (TX)
- Receiver (RX)
- Control and status logic

All modules are designed as synthesizable Verilog with clean, parameterised interfaces.

---

## Baud Rate Generator

Generates a tick at the configured baud rate based on the system clock.
This tick drives both TX and RX timing.

---

## Transmitter (TX)

FSM states:
- IDLE
- START
- DATA
- STOP

Behaviour:
- Outputs start bit (LOW)
- Shifts data LSB-first
- Outputs stop bit (HIGH)

---

## Receiver (RX)

FSM states:
- IDLE
- START
- DATA
- STOP

Behaviour:
- Detects falling edge of start bit
- Samples data at the centre of each bit period
- Reconstructs received byte
