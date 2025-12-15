# UART Transceiver (WIP)

A custom UART (Universal Asynchronous Receiver/Transmitter) transceiver designed and implemented from first principles.

This project focuses on low-level digital communication, timing, and state-machine design, with an emphasis on correctness, robustness, and hardware realism.

**Status:** Early development / Work in Progress  
Code and documentation will be added incrementally.

---

## Project Goals

- Implement a fully functional UART **transmitter and receiver**
- Handle:
  - Start and stop bits
  - Configurable baud rate
  - Bit sampling and timing accuracy
  - Framing and error handling
- Design using **finite state machines**
- Emphasise clean, readable, and well-documented implementation

---

## Planned Features

- UART TX module
- UART RX module
- Baud rate generator
- Configurable parameters (baud rate, data bits)
- Simulation and testing
- Clear timing diagrams and documentation

---

## Why This Project?

This project is intended to demonstrate:
- Understanding of serial communication protocols
- Digital logic and state-machine design
- Timing-critical systems
- Embedded / systems-level thinking

Rather than using a library or hardware abstraction, the UART is built from the ground up to deepen understanding of how real communication hardware works.

---

## Roadmap

- [ ] Define UART timing requirements
- [ ] Design TX state machine
- [ ] Design RX state machine
- [ ] Implement baud rate generator
- [ ] Simulate and test basic TX/RX loopback
- [ ] Add documentation and diagrams

---

## Tech Stack (Planned)

- Language: C / Verilog / VHDL / SystemVerilog *(update once chosen)*
- Simulation: TBD
- Platform: Embedded / FPGA / Software simulation

---

## Status

This repository is actively being developed and will be updated regularly.
