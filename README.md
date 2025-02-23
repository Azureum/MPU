# MPU
## The Matthew Processing unit!
The Matthew Processing Unit! This repository will show my progress of writing my own cpu through verilog and testing it on my FPGA! I have no clue on how this works but through this project I hope to learn how to design and test verilog code and understanding about cpu architecture.

## Tools 

The current FPGA I am using is the Nexys Video Artix-7 FPGA, which has the Xilinx Artix®-7 XC7A200T and a bunch of other features! You can purchase it here: [here](https://digilent.com/shop/nexys-video-artix-7-fpga-trainer-board-for-multimedia-applications/).

I also have a Seven Segement Display PMOD from Digilent, where you can find here: [here](https://digilent.com/shop/pmod-ssd-seven-segment-display/).


## Progress Checklist  
#### (Made this checklist with the help of GPT4)
### ✅ Basic Foundations  
- [X] Build basic logic gates (AND, OR, XOR, NOT, NAND, NOR)  
- [ ] Design and understand a **MUX (Multiplexer)**  
- [ ] Implement a **Decoder**  
- [ ] Design and test a **Register File**  

### 🏠 ALU & Datapath  
- [ ] Implement an **Arithmetic Logic Unit (ALU)** with basic operations (+, -, AND, OR, XOR)  
- [ ] Add support for bitwise shift and comparison operations  
- [ ] Design a **Sign Extension Unit**  
- [ ] Implement a **Barrel Shifter**  
- [ ] Implement a **Comparator** for branch operations  

### 🎮 Control & Memory  
- [ ] Build a **Control Unit** (Hardwired / Microcoded)  
- [ ] Implement a **Program Counter (PC)**  
- [ ] Design an **Instruction Fetch Unit**  
- [ ] Implement a **RAM module** (Instruction & Data Memory)  
- [ ] Add a **Cache System** (Optional)  

### 🔄 CPU Pipeline  
- [ ] Implement a **Single-Cycle CPU**  
- [ ] Optimize into a **Multi-Cycle CPU**  
- [ ] Expand to a **Pipelined CPU (5-stage)**  
- [ ] Implement **Hazard Detection & Forwarding**  

### 🔬 Testing & Debugging  
- [ ] Write Verilog testbenches for all components  
- [ ] Use ModelSim/Vivado for waveform analysis  
- [ ] Debug and optimize for FPGA timing constraints  

### 🚀 Advanced Features (Future Goals)  
- [ ] Implement a simple **ISA (Instruction Set Architecture)**  
- [ ] Add support for **Jumps & Branching**  
- [ ] Support **Memory-Mapped I/O**  
- [ ] Implement a **RISC-V Subset** or Custom ISA  
- [ ] Integrate with an **Assembler or Compiler**  
- [ ] Implement a simple **Operating System Kernel**  