# RTL TO GDSII: 4-bit Adder-Subtractor

##  Author
Siddharth Rana  
23BEC013  

## 📌 Description
This project demonstrates the complete RTL to GDSII flow for a 4-bit Adder-Subtractor using industry-standard Synopsys tools. The design is implemented in Verilog HDL and supports both addition and subtraction operations using 2’s complement arithmetic.

The main objective of this project is to understand and implement the full ASIC design flow starting from RTL design to the final GDSII layout generation.

The adder-subtractor is designed without using a predefined full adder module. Instead, the functionality is implemented using basic logic gates such as XOR, AND, and OR, making the design fully synthesizable and suitable for ASIC implementation.

The design flow includes RTL simulation using Synopsys VCS, synthesis using Design Compiler, and physical design (placement and routing) using IC Compiler II (ICC2). Timing verification is performed using PrimeTime to ensure that the design meets timing constraints.

<img width="1267" height="449" alt="Screenshot from 2026-04-05 07-33-42" src="https://github.com/user-attachments/assets/4d681a2c-2853-4854-90ae-3642978d08c9" />

## ENVIRONMENT USED
ROCKY LINUX 8: The operating system environment in which Synopsys tools are employed

## TOOLS USED
• VERILOG HDL: The RTL of the sequence detector was designed using the Hardware Description Language.

• SYNOPSYS LIBRARIES: Contains tools like vivado, Design Compiler, Prime Time, IC Compiler II, etc.

## FLOW OF THE PROJECT

<img width="800" height="1300" alt="Gemini_Generated_Image_s39hl1s39hl1s39h" src="https://github.com/user-attachments/assets/dcc6bbb6-a493-4133-82cb-5c72f1281f11" />

## COMMANDS USED

### ENVIRONMENT VERIFICATION 

Check to see if the Synopsys tools are installed successfully and in the system path:
## 🛠 Check Synopsys Tool Installation

To verify that Synopsys tools are installed and available in the system path, run the following commands:

```bash
which vcs
which verdi
which dc_shell
which icc2_shell
which pt_shell
