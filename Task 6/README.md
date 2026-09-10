# Task 6 - RTL Design of Processor Components (Control Unit + Datapath Integration)

## Highlights

✔ Verilog HDL Implementation

✔ Control Unit FSM Design and Verification

✔ FETCH, DECODE, and EXECUTE State Implementation

✔ Instruction Decoder Design and Verification

✔ Processor Datapath Integration

✔ ALU Integration and Instruction Execution

✔ Icarus Verilog Simulation

✔ GTKWave Waveform Analysis

---

## Overview

Verilog HDL (Hardware Description Language) is widely used for modeling, simulation, and verification of digital systems. This project focuses on the RTL design and integration of fundamental processor components using Verilog HDL.

The implemented designs include a Control Unit based on a finite state machine, an Instruction Decoder, and a simple Processor Datapath integrated with an ALU. The processor uses an 8-bit instruction format containing opcode and operand fields.

Functional verification was performed using dedicated testbenches, and the outputs were analyzed using GTKWave waveforms to validate the correctness of each design.

This repository contains the implementation and simulation of processor components as part of the **VLSI Design Internship at Maincrafts Technology**.

---

## Documentation

📄 **Project Report**

[**Verilog HDL Implementation of Processor Components (Control Unit + Datapath Integration) Report**](task6_documentation/Verilog_HDL_Implementation_of_Processor_Components_Control_Unit_Datapath_Integration.pdf)

---

## Objectives

- Understand basic processor architecture using Verilog HDL.
- Design a Control Unit using a finite state machine.
- Implement FETCH, DECODE, and EXECUTE states.
- Design an Instruction Decoder.
- Decode instruction opcodes into ALU control signals.
- Integrate the Control Unit, Instruction Decoder, and ALU.
- Implement a simple Processor Datapath.
- Develop testbenches for functional verification.
- Simulate processor components using Icarus Verilog.
- Analyze waveforms using GTKWave.

---

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Ubuntu (WSL)

---

## Implemented Designs

### Processor Components

- Control Unit
- Instruction Decoder

### Processor Datapath

- ALU Integration
- Instruction-based Datapath

### Control Unit

- FETCH State
- DECODE State
- EXECUTE State

---

# Control Unit

The Control Unit manages the sequence of processor operations using a finite state machine. The implemented FSM consists of FETCH, DECODE, and EXECUTE states.

The state sequence is:

**FETCH → DECODE → EXECUTE → FETCH**

## Waveform Verification

### Control Unit Waveform

[Control Unit Waveform](simulation_waveforms/control_unit_waveform.png)

### Observation

The Control Unit successfully generated the FETCH, DECODE, and EXECUTE states. The waveform verified the correct FSM state transitions and processor control sequence.

---

# Instruction Decoder

The Instruction Decoder decodes the 3-bit opcode and generates the corresponding ALU control signal.

| Opcode | Operation |
|--------|-----------|
| 000 | ADD |
| 001 | SUB |
| 010 | AND |
| 011 | OR |

## Waveform Verification

### Instruction Decoder Waveform

[Instruction Decoder Waveform](simulation_waveforms/decoder_waveform.png)

### Observation

The Instruction Decoder successfully decoded the supported opcode values and generated the corresponding ALU control signals. The waveform verified correct ADD, SUB, AND, and OR instruction decoding.

---

# Processor Datapath Integration

The Processor Datapath integrates the Control Unit, Instruction Decoder, and ALU to perform instruction-based operations.

The basic data flow is:

**Instruction → Instruction Decoder → ALU → Result**

The Control Unit provides the FETCH, DECODE, and EXECUTE processor sequence.

## Instruction Format

The processor uses an 8-bit instruction format:

**Opcode [7:5] | Operand A [4:3] | Operand B [2:1] | Unused [0]**

## Waveform Verification

### Processor Waveform

[Processor Waveform](simulation_waveforms/processor_waveform.png)

### Observation

The Processor Datapath successfully decoded the instruction opcode, extracted the operands, selected the required ALU operation, and generated the expected result.

The verified operations were:

- ADD = 5
- SUB = 2
- AND = 0
- OR = 3

The waveform also verified the FETCH → DECODE → EXECUTE sequence of the Control Unit.

---

## Results

All processor components were successfully implemented using Verilog HDL and verified through simulation using Icarus Verilog and GTKWave. The generated waveforms matched the expected behavior, confirming the correctness of the Control Unit, Instruction Decoder, and integrated Processor Datapath.

---

## Future Scope

- Program Counter Design
- Instruction Memory
- Data Memory
- Register File Integration
- Additional Processor Instructions
- FSM Controlled Datapath
- Pipeline Processor Design
- FPGA Implementation
- ASIC Implementation

---

## Author

**Likhith Gowda H R**

Electronics and Communication Engineering

Dayananda Sagar Academy of Technology and Management (DSATM)

**VLSI Design Internship – Maincrafts Technology**
