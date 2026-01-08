# Single-Cycle_RISCV_processor:
A modular single-cycle RISC-V RV32I processor implemented in SystemVerilog. The design is structured into independent modules such as ALU, control unit, register file, instruction memory, and data memory for clarity, reuse, and easier verification.

## Supported Instructions:
This processor currently supports the following instructions:
- addi x9, x0, 9  
- addi x5, x0, 5
- sw x5, -4(x9)
- L1: lw x6, -4(x9)
- sw x6, 8(x9)
- or x4, x5, x6
- beq x4, x4, L1

## Extending the Processor:
To use a different set of instructions:    
- Changes are required in modules like **ALU, main decoder, ALU decoder, control unit, immediate extender and instruction memory**.  
- Careful testing is needed to ensure new instructions execute correctly.

## Simulation Result:
<img width="1869" height="668" alt="single cycle" src="https://github.com/user-attachments/assets/352d2cac-e6d1-414c-b713-1120755c47c6" />
