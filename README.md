# RTL TO GDSII: 4-bit Adder-Subtractor

##  Author
Siddharth Rana  
23BEC013  

## 📌 Description
This project demonstrates the complete RTL to GDSII flow for a 4-bit Adder-Subtractor using industry-standard Synopsys tools. The design is implemented in Verilog HDL and supports both addition and subtraction operations using 2’s complement arithmetic.

The main objective of this project is to understand and implement the full ASIC design flow starting from RTL design to the final GDSII layout generation.

The adder-subtractor is designed without using a predefined full adder module. Instead, the functionality is implemented using basic logic gates such as XOR, AND, and OR, making the design fully synthesizable and suitable for ASIC implementation.

The design flow includes RTL simulation using Synopsys VCS, synthesis using Design Compiler, and physical design (placement and routing) using IC Compiler II (ICC2). Timing verification is performed using PrimeTime to ensure that the design meets timing constraints.
