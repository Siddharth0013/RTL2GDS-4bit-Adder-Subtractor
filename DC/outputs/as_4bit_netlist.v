/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : W-2024.09
// Date      : Sun Apr  5 07:32:37 2026
/////////////////////////////////////////////////////////////


module as_4bit ( clk, rst, A, B, opcode, result, carry );
  input [3:0] A;
  input [3:0] B;
  input [1:0] opcode;
  output [3:0] result;
  input clk, rst;
  output carry;
  wire   alu_carry, n23, n24, n25, n26, n27, \intadd_0/CI , \intadd_0/SUM[2] ,
         \intadd_0/SUM[1] , \intadd_0/SUM[0] , \intadd_0/n3 , \intadd_0/n2 ,
         \intadd_0/n1 , n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40;
  wire   [3:0] A_reg;
  wire   [3:0] B_reg;
  wire   [1:0] opcode_reg;

  DFFARX1_RVT \B_reg_reg[3]  ( .D(B[3]), .CLK(clk), .RSTB(n23), .Q(B_reg[3])
         );
  DFFARX1_RVT \B_reg_reg[2]  ( .D(B[2]), .CLK(clk), .RSTB(n23), .Q(B_reg[2])
         );
  DFFARX1_RVT \B_reg_reg[1]  ( .D(B[1]), .CLK(clk), .RSTB(n23), .Q(B_reg[1])
         );
  DFFARX1_RVT \B_reg_reg[0]  ( .D(B[0]), .CLK(clk), .RSTB(n23), .Q(B_reg[0])
         );
  DFFARX1_RVT \opcode_reg_reg[1]  ( .D(opcode[1]), .CLK(clk), .RSTB(n23), .Q(
        opcode_reg[1]), .QN(n40) );
  DFFARX1_RVT \opcode_reg_reg[0]  ( .D(opcode[0]), .CLK(clk), .RSTB(n23), .Q(
        opcode_reg[0]) );
  DFFARX1_RVT \A_reg_reg[3]  ( .D(A[3]), .CLK(clk), .RSTB(n23), .Q(A_reg[3])
         );
  DFFARX1_RVT \A_reg_reg[2]  ( .D(A[2]), .CLK(clk), .RSTB(n23), .Q(A_reg[2])
         );
  DFFARX1_RVT \A_reg_reg[1]  ( .D(A[1]), .CLK(clk), .RSTB(n23), .Q(A_reg[1])
         );
  DFFARX1_RVT \A_reg_reg[0]  ( .D(A[0]), .CLK(clk), .RSTB(n23), .Q(A_reg[0])
         );
  DFFARX1_RVT \result_reg[3]  ( .D(n24), .CLK(clk), .RSTB(n23), .Q(result[3])
         );
  DFFARX1_RVT \result_reg[2]  ( .D(n25), .CLK(clk), .RSTB(n23), .Q(result[2])
         );
  DFFARX1_RVT \result_reg[1]  ( .D(n26), .CLK(clk), .RSTB(n23), .Q(result[1])
         );
  DFFARX1_RVT \result_reg[0]  ( .D(n27), .CLK(clk), .RSTB(n23), .Q(result[0])
         );
  DFFARX1_RVT carry_reg ( .D(alu_carry), .CLK(clk), .RSTB(n23), .Q(carry) );
  FADDX1_RVT \intadd_0/U4  ( .A(A_reg[1]), .B(\intadd_0/CI ), .CI(B_reg[1]), 
        .CO(\intadd_0/n3 ), .S(\intadd_0/SUM[0] ) );
  FADDX1_RVT \intadd_0/U3  ( .A(A_reg[2]), .B(\intadd_0/n3 ), .CI(B_reg[2]), 
        .CO(\intadd_0/n2 ), .S(\intadd_0/SUM[1] ) );
  FADDX1_RVT \intadd_0/U2  ( .A(A_reg[3]), .B(\intadd_0/n2 ), .CI(B_reg[3]), 
        .CO(\intadd_0/n1 ), .S(\intadd_0/SUM[2] ) );
  INVX4_RVT U28 ( .A(rst), .Y(n23) );
  NOR2X0_RVT U29 ( .A1(opcode_reg[1]), .A2(opcode_reg[0]), .Y(n39) );
  OA21X1_RVT U30 ( .A1(B_reg[0]), .A2(A_reg[0]), .A3(n29), .Y(n27) );
  AND2X1_RVT U31 ( .A1(B_reg[0]), .A2(A_reg[0]), .Y(\intadd_0/CI ) );
  MUX41X1_RVT U33 ( .A1(1'b1), .A3(opcode_reg[1]), .A2(opcode_reg[1]), .A4(n40), .S0(opcode_reg[0]), .S1(\intadd_0/CI ), .Y(n29) );
  AND2X1_RVT U34 ( .A1(n39), .A2(\intadd_0/n1 ), .Y(alu_carry) );
  NAND3X0_RVT U35 ( .A1(opcode_reg[0]), .A2(B_reg[1]), .A3(A_reg[1]), .Y(n30)
         );
  INVX0_RVT U36 ( .A(n30), .Y(n31) );
  OA222X1_RVT U37 ( .A1(opcode_reg[1]), .A2(n31), .A3(n40), .A4(n30), .A5(
        B_reg[1]), .A6(A_reg[1]), .Y(n32) );
  AO21X1_RVT U38 ( .A1(n39), .A2(\intadd_0/SUM[0] ), .A3(n32), .Y(n26) );
  NAND3X0_RVT U39 ( .A1(opcode_reg[0]), .A2(B_reg[2]), .A3(A_reg[2]), .Y(n33)
         );
  INVX0_RVT U40 ( .A(n33), .Y(n34) );
  OA222X1_RVT U41 ( .A1(opcode_reg[1]), .A2(n34), .A3(n40), .A4(n33), .A5(
        B_reg[2]), .A6(A_reg[2]), .Y(n35) );
  AO21X1_RVT U42 ( .A1(n39), .A2(\intadd_0/SUM[1] ), .A3(n35), .Y(n25) );
  NAND3X0_RVT U43 ( .A1(opcode_reg[0]), .A2(B_reg[3]), .A3(A_reg[3]), .Y(n36)
         );
  INVX0_RVT U44 ( .A(n36), .Y(n37) );
  OA222X1_RVT U45 ( .A1(opcode_reg[1]), .A2(n37), .A3(n40), .A4(n36), .A5(
        B_reg[3]), .A6(A_reg[3]), .Y(n38) );
  AO21X1_RVT U46 ( .A1(n39), .A2(\intadd_0/SUM[2] ), .A3(n38), .Y(n24) );
endmodule

