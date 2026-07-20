# Task 4 - RTL Design of Finite State Machines (FSM) and Control Units

---

## Highlights

✔ Verilog HDL Implementation

✔ Moore FSM Design and Verification

✔ Mealy FSM Design and Verification

✔ Traffic Light Controller Design and Verification

✔ 1011 Sequence Detector Design and Verification

✔ Icarus Verilog Simulation

✔ GTKWave Waveform Analysis

---

## Overview

Verilog HDL (Hardware Description Language) is widely used for modeling, simulation, and verification of sequential digital circuits. This project focuses on the implementation and simulation of **Finite State Machines (FSMs)** and **Control Units** using Verilog HDL.

The implemented designs include a **Moore FSM**, **Mealy FSM**, **Traffic Light Controller**, and **1011 Sequence Detector**. Functional verification was performed using dedicated testbenches, and the outputs were analyzed using **GTKWave** waveforms to validate the correctness of each design.

This repository contains the implementation and simulation of FSM-based digital circuits as part of the **VLSI Design Internship at Maincrafts Technology**.

---

## Documentation

📄 **Project Report**

**RTL Design of Finite State Machines (FSM) and Control Units Report**

---

## Objectives

- Understand Finite State Machine (FSM) concepts.
- Implement Moore FSM using Verilog HDL.
- Implement Mealy FSM using Verilog HDL.
- Design a Traffic Light Controller using FSM.
- Implement a 1011 Sequence Detector.
- Develop testbenches for functional verification.
- Simulate circuits using Icarus Verilog.
- Analyze waveforms using GTKWave.

---

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Ubuntu (WSL)

---

## Implemented Designs

### Finite State Machines (FSMs)

- Moore FSM
- Mealy FSM

### Control Units

- Traffic Light Controller
- 1011 Sequence Detector

---

## Moore FSM

The **Moore Finite State Machine (FSM)** is a sequential circuit in which the output depends only on the current state. State transitions occur on the rising edge of the clock signal, while the output changes only after entering a new state.

### Waveform Verification

**Moore FSM Waveform**

> *(Insert your Moore FSM waveform image here after uploading it to the repository.)*

### Observation

The Moore FSM successfully transitioned through the defined states based on the clock signal. The waveform verified that the output depended only on the current state, confirming the correct operation of the Moore FSM.

---

## Mealy FSM

The **Mealy Finite State Machine (FSM)** is a sequential circuit in which the output depends on both the current state and the input. This allows the output to respond immediately to input changes.

### Waveform Verification

**Mealy FSM Waveform**

> *(Insert your Mealy FSM waveform image here after uploading it to the repository.)*

### Observation

The Mealy FSM correctly generated outputs based on the combination of the current state and input. The waveform verified proper state transitions and output behavior, confirming the successful implementation of the Mealy FSM.

---

## Traffic Light Controller

The **Traffic Light Controller** is an FSM-based control unit that manages the sequence of traffic signals. The controller transitions through **Red → Green → Yellow → Red** in a cyclic manner to regulate vehicle movement safely.

### Waveform Verification

**Traffic Light Controller Waveform**

> *(Insert your Traffic Light Controller waveform image here after uploading it to the repository.)*

### Observation

The Traffic Light Controller successfully transitioned through the Red, Green, and Yellow states in the correct sequence. The waveform confirmed the proper operation of the FSM-based controller.

---

## 1011 Sequence Detector

The **1011 Sequence Detector** is implemented using a Moore Finite State Machine (FSM). It detects the binary sequence **1011** from a serial input stream and asserts the output once the complete sequence is recognized.

### Waveform Verification

**1011 Sequence Detector Waveform**

> *(Insert your Sequence Detector waveform image here after uploading it to the repository.)*

### Observation

The Sequence Detector successfully detected the binary sequence **1011**. The waveform verified correct state transitions and output assertion after receiving the complete input sequence.

---

## Results

All FSM-based designs were successfully implemented using Verilog HDL and verified through simulation using Icarus Verilog and GTKWave. The generated waveforms matched the expected behavior, confirming the correctness of the implemented Moore FSM, Mealy FSM, Traffic Light Controller, and 1011 Sequence Detector.

---

## Future Scope

- UART Controller
- SPI Controller
- I2C Controller
- Vending Machine Controller
- Elevator Controller
- Washing Machine Controller
- Advanced Traffic Intersection Controller
- FPGA Implementation

---

## Author

**Likhith Gowda H R**

Electronics and Communication Engineering

Dayananda Sagar Academy of Technology and Management (DSATM)

**VLSI Design Internship – Maincrafts Technology**

