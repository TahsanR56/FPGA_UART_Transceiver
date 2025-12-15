# UART Transceiver (FPGA / Verilog) — WIP

A UART (Universal Asynchronous Receiver/Transmitter) implemented in **Verilog HDL**, designed for FPGA-style digital logic and verified using simulation.

This project focuses on **timing-accurate serial communication**, finite state machines, and hardware-oriented design — without relying on vendor IP or UART cores.

**Status:** Early development / Work in Progress  
**Verification:** Simulation-only (no hardware target yet)

---

## Objectives

- Design a complete UART TX and RX from first principles
- Emphasise:
  - Bit-level timing accuracy
  - FSM-based design
  - Deterministic hardware behaviour
- Verify correctness through simulation and testbenches

---

## Planned Architecture

- Baud rate generator
- UART transmitter (TX)
- UART receiver (RX)
- Parameterised design (baud rate, data bits, clock frequency)

---

## Verification Strategy

- Self-checking Verilog testbenches
- TX → RX loopback simulation
- Timing verification using waveform inspection
- Corner-case testing (start bit detection, framing errors)

---

## Why This Project?

UART is a deceptively simple protocol that exposes real-world digital design challenges:
- clock domain timing
- sampling accuracy
- FSM correctness
- protocol robustness

This project is intended to demonstrate FPGA-ready design practices and verification skills.

---

## Repository Structure
- rtl/ – synthesizable Verilog modules
- sim/ – testbenches and simulation scripts
- docs/ – architecture notes and timing diagrams


---

## Roadmap

- [ ] Define UART timing model
- [ ] Design baud rate generator
- [ ] Implement TX FSM
- [ ] Implement RX FSM
- [ ] Write self-checking testbenches
- [ ] Verify timing and edge cases
- [ ] Document results

---

## Tools (Planned)

- Verilog HDL
- Simulator: Icarus Verilog / ModelSim / Verilator
- Waveform viewer: GTKWave

---

## Status

This repository is under active development and will be expanded incrementally.









