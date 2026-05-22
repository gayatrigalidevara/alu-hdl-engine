# Arithmetic Logic Unit (ALU) Using Verilog HDL

## Overview
This project presents the design and implementation of a **12-operation Arithmetic Logic Unit (ALU)** using **Verilog HDL**. The ALU performs multiple arithmetic, logical, and shift operations based on a 4-bit opcode selection.

The project was designed, simulated, and verified using:
- Xilinx Vivado
- Mentor ModelSim

This ALU is suitable for:
- Digital System Design laboratories
- FPGA implementation
- Verilog HDL learning
- Processor datapath understanding

---

## Features

### Arithmetic Operations
- Addition
- Subtraction
- Multiplication
- Division
- Increment
- Decrement

### Logical Operations
- AND
- OR
- XOR
- NOT

### Shift Operations
- Left Shift
- Right Shift

---

## Technologies Used

- Verilog HDL
- Xilinx Vivado
- Mentor ModelSim

---

## ALU Architecture

### Inputs
| Signal | Width | Description |
|--------|--------|-------------|
| a | 5-bit | Operand A |
| b | 5-bit | Operand B |
| op | 4-bit | Opcode Selection |

### Output
| Signal | Width | Description |
|--------|--------|-------------|
| result | 10-bit | Operation Result |

---

## Supported Operations

| Opcode | Operation | Description |
|--------|------------|-------------|
| 0000 | ADD | a + b |
| 0001 | SUB | a - b |
| 0010 | MUL | a * b |
| 0011 | DIV | a / b |
| 0100 | INCREMENT | a + 1 |
| 0101 | DECREMENT | a - 1 |
| 0110 | AND | a & b |
| 0111 | OR | a \| b |
| 1000 | NOT | ~a |
| 1001 | XOR | a ^ b |
| 1010 | LEFT SHIFT | a << b |
| 1011 | RIGHT SHIFT | a >> b |

---

## Project Structure

```text
ALU_Project/
│
├── alu.v                # Verilog ALU design module
├── tb_alu.v             # Testbench file
├── simulation/          # Vivado & ModelSim outputs
├── rtl_schematic/       # RTL schematic images
├── screenshots/         # Simulation screenshots
├── report/              # Project documentation
└── README.md
