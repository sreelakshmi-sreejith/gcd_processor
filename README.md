# 🧮 GCD Processor – RTL Design and Complete ASIC Implementation

## 📌 Overview

This project presents the design and implementation of a **Greatest Common Divisor (GCD) Processor** using **Verilog HDL**. The processor computes the Greatest Common Divisor of two 4-bit unsigned integers based on the **iterative Euclidean subtraction algorithm**.

The design follows a **controller-datapath architecture**, where a finite state machine (FSM) controls the arithmetic datapath to repeatedly compare and subtract the operands until the GCD is obtained.

Beyond RTL implementation, the processor was taken through a complete **ASIC design flow**, including logic synthesis, floorplanning, placement, Clock Tree Synthesis (CTS), routing, and Static Timing Analysis (STA) using the Cadence digital implementation toolchain.

---

# 🎯 Project Objectives

* Design a 4-bit GCD Processor using structural Verilog HDL.
* Implement an FSM-based controller with an iterative datapath.
* Verify functionality using a self-checking Verilog testbench.
* Generate an optimized gate-level netlist using Cadence Genus.
* Complete ASIC physical implementation using Cadence Innovus.
* Achieve timing closure through Cadence Tempus.

---

# ⚙️ Design Specifications

| Parameter       | Value                           |
| --------------- | ------------------------------- |
| Design          | 4-bit GCD Processor             |
| Algorithm       | Euclidean Subtraction Algorithm |
| RTL Language    | Verilog HDL                     |
| Verification    | Cadence Xcelium                 |
| Logic Synthesis | Cadence Genus                   |
| Physical Design | Cadence Innovus                 |
| Timing Analysis | Cadence Tempus                  |

---

# 🏗️ Processor Architecture

The processor consists of two primary blocks:

### 🔹 Controller

* Finite State Machine (FSM)
* Generates datapath control signals
* Controls register loading and subtraction operations

### 🔹 Datapath

* Operand Registers
* Comparator
* Subtractor
* Multiplexers
* Output Register

The controller repeatedly compares the two operands and performs subtraction until both values become equal, at which point the value represents the Greatest Common Divisor.

---

# 🔄 Design Flow

```text
Specification
      │
      ▼
RTL Design (Verilog HDL)
      │
      ▼
Functional Simulation
      │
      ▼
Logic Synthesis (Cadence Genus)
      │
      ▼
Gate-Level Netlist
      │
      ▼
Floorplanning
      │
      ▼
Placement
      │
      ▼
Clock Tree Synthesis (CTS)
      │
      ▼
Routing
      │
      ▼
Static Timing Analysis
      │
      ▼
Physical Sign-off
```

---

# 🧪 Functional Verification

The RTL design was verified using a comprehensive self-checking testbench that validates:

* Equal operands
* A > B condition
* A < B condition
* Boundary cases
* Multiple subtraction iterations
* Correct GCD generation

Simulation waveforms demonstrating processor operation are included in the repository.

---

# 🏭 ASIC Implementation

The processor was implemented using a complete RTL-to-GDSII flow.

### Logic Synthesis

* RTL synthesis using Cadence Genus
* Area optimization
* Timing optimization
* Gate-level netlist generation

### Physical Design

* Floorplanning
* Standard-cell placement
* Clock Tree Synthesis (CTS)
* Global routing
* Detailed routing
* Physical layout generation

### Static Timing Analysis

Performed using Cadence Tempus for:

* Setup timing verification
* Hold timing verification
* Worst Negative Slack (WNS)
* Total Negative Slack (TNS)

---



# 🛠️ Tools Used

* Verilog HDL
* Cadence Xcelium
* Cadence Genus
* Cadence Innovus
* Cadence Tempus

---


# 🚀 Applications

* Digital Processor Design
* Arithmetic Processing Units
* Embedded Hardware Accelerators
* FPGA and ASIC Design
* RTL Design and Verification
* Digital VLSI Education

---

# 🔮 Future Improvements

* Support wider operand sizes (8-bit/16-bit)
* Optimize datapath latency
* Implement pipelined architecture
* Integrate with an APB/AHB interface for SoC applications

---

# 👩‍💻 Author

**Sreelakshmi S S**

Electronics and Communication Engineering
Government Engineering College, Thrissur

**Areas of Interest:** Digital ASIC Design • RTL Design • Physical Design • FPGA • Embedded Systems

---

## 📌 Conclusion

This project demonstrates the complete development of a GCD Processor from RTL modeling to ASIC implementation. It showcases digital design principles, controller-datapath architecture, functional verification, and industry-standard physical design methodologies using Cadence EDA tools.
