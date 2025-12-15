# UART Timing Model

- Asynchronous serial communication
- No shared clock between transmitter and receiver
- Receiver samples each bit at its midpoint

Key timing assumptions:
- System clock >> baud rate
- Oversampling factor: 16x (planned)

This document defines the timing constraints used in simulation.
