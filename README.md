# 🔢 4-Bit Magnitude Comparator – RTL to ASIC Physical Design

## 📌 Overview

This project implements a **4-bit Magnitude Comparator** using **structural Verilog HDL**, capable of determining whether one 4-bit binary input is **greater than**, **less than**, or **equal to** another. The design was functionally verified using a comprehensive self-checking testbench and subsequently taken through a complete **ASIC implementation flow** using Cadence EDA tools.

The project demonstrates the complete RTL-to-GDSII digital design methodology, including RTL modeling, functional verification, logic synthesis, floorplanning, placement, Clock Tree Synthesis (CTS), routing, timing analysis, and physical sign-off.

---

# 🎯 Objectives

* Develop a structural RTL implementation of a 4-bit magnitude comparator
* Verify all functional comparison cases through simulation
* Generate an optimized gate-level netlist
* Complete physical implementation using Cadence Innovus
* Achieve timing closure with zero setup and hold violations

---

# ⚙️ Design Specifications

| Parameter       | Value                      |
| --------------- | -------------------------- |
| Design          | 4-Bit Magnitude Comparator |
| Inputs          | A[3:0], B[3:0]             |
| Outputs         | A>B, A=B, A<B              |
| RTL Language    | Verilog HDL                |
| Verification    | Cadence Xcelium            |
| Logic Synthesis | Cadence Genus              |
| Physical Design | Cadence Innovus            |
| Timing Analysis | Cadence Tempus             |

---

# 🏗️ Functional Description

The comparator evaluates two unsigned 4-bit inputs and produces one of three mutually exclusive outputs:

* **A > B**
* **A = B**
* **A < B**

The RTL implementation uses structural logic composed of elementary logic gates to realize the comparison function, making the design suitable for synthesis and physical implementation.

---

# 🔄 Design Flow

```text
RTL Design (Verilog)
        │
        ▼
Functional Simulation (Cadence Xcelium)
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
Static Timing Analysis (Cadence Tempus)
        │
        ▼
Physical Sign-off
```

---

# 🧪 Functional Verification

The RTL was verified using a self-checking Verilog testbench.

Verification included:

* All A > B combinations
* All A < B combinations
* Equality conditions
* Boundary values
* Corner cases
* Automatic output checking

The simulation achieved complete functional coverage for all comparison scenarios.

---

# 🏭 ASIC Implementation

## RTL Synthesis

Performed using **Cadence Genus**

* Logic optimization
* Area optimization
* Timing-driven synthesis
* Gate-level netlist generation

---

## Physical Design

Completed using **Cadence Innovus**

* Floorplanning
* Power planning
* Standard-cell placement
* Clock Tree Synthesis (CTS)
* Global routing
* Detailed routing
* Physical verification

---

## Static Timing Analysis

Timing verification performed using **Cadence Tempus**

* Setup timing analysis
* Hold timing analysis
* Worst Negative Slack (WNS)
* Total Negative Slack (TNS)

The final implementation achieved:

* ✅ Zero setup timing violations
* ✅ Zero hold timing violations
* ✅ Successful timing closure

---

# 📂 Repository Structure

```text
RTL/
├── comparator.v
└── tb_comparator.v

Simulation/
├── Waveforms
└── Coverage

ASIC/
├── RTL_Schematic.png
├── Floorplan.png
├── Placement.png
├── CTS.png
├── Routing.png
├── Final_Layout.png
├── Timing_Report.png
└── Reports/

Documentation/
└── Project_Report.pdf
```

---

# 🛠️ Tools Used

* Verilog HDL
* Cadence Xcelium
* Cadence Genus
* Cadence Innovus
* Cadence Tempus

---

# 📷 Results

The repository contains:

* RTL schematic
* Simulation waveforms
* Gate-level netlist
* Floorplan
* Placement visualization
* CTS results
* Routing layout
* Final physical layout
* Timing reports

---

# 🚀 Learning Outcomes

* RTL Design using Verilog HDL
* Structural Digital Logic Design
* Functional Verification
* ASIC Logic Synthesis
* Physical Design Flow
* Clock Tree Synthesis
* Static Timing Analysis
* Timing Closure

---

# 👩‍💻 Author

**Sreelakshmi S S**

Electronics and Communication Engineering
Government Engineering College, Thrissur

**Areas of Interest:** Digital ASIC Design • RTL Design • Physical Design • FPGA • VLSI
