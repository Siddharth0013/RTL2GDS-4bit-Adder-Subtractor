// IC Compiler II Version W-2024.09 Verilog Writer
// Generated on 4/5/2026 at 8:4:49
// Library Name: AS_4BIT_LIB
// Block Name: as_4bit
// User Label: 
// Write Command: write_verilog -exclude { pg_objects } ./outputs/as_4bit_final.v
module as_4bit ( clk , rst , A , B , opcode , result , carry ) ;
input  clk ;
input  rst ;
input  [3:0] A ;
input  [3:0] B ;
input  [1:0] opcode ;
output [3:0] result ;
output carry ;

wire ropt_net_0 ;
wire alu_carry ;
wire n23 ;
wire n24 ;
wire n25 ;
wire n26 ;
wire n27 ;
wire \intadd_0/CI ;
wire \intadd_0/SUM[2] ;
wire \intadd_0/SUM[1] ;
wire \intadd_0/SUM[0] ;
wire \intadd_0/n3 ;
wire \intadd_0/n2 ;
wire \intadd_0/n1 ;
wire n29 ;
wire n30 ;
wire n31 ;
wire n32 ;
wire n33 ;
wire n34 ;
wire n35 ;
wire n36 ;
wire n37 ;
wire n38 ;
wire n39 ;
wire n40 ;
wire [3:0] A_reg ;
wire [3:0] B_reg ;
wire [1:0] opcode_reg ;
wire ropt_net_1 ;
wire ropt_net_2 ;
wire ropt_net_3 ;
wire ropt_net_4 ;
wire ropt_net_5 ;
wire ropt_net_6 ;
wire ropt_net_7 ;
wire ropt_net_8 ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;
wire SYNOPSYS_UNCONNECTED_6 ;
wire SYNOPSYS_UNCONNECTED_7 ;
wire SYNOPSYS_UNCONNECTED_8 ;
wire SYNOPSYS_UNCONNECTED_9 ;
wire SYNOPSYS_UNCONNECTED_10 ;
wire SYNOPSYS_UNCONNECTED_11 ;
wire SYNOPSYS_UNCONNECTED_12 ;
wire SYNOPSYS_UNCONNECTED_13 ;
wire SYNOPSYS_UNCONNECTED_14 ;

DFFARX1_RVT \B_reg_reg[3] ( .D ( B[3] ) , .CLK ( clk ) , .RSTB ( n23 ) , 
    .Q ( B_reg[3] ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) ) ;
DFFARX1_RVT \B_reg_reg[2] ( .D ( B[2] ) , .CLK ( clk ) , .RSTB ( n23 ) , 
    .Q ( B_reg[2] ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) ) ;
DFFARX1_RVT \B_reg_reg[1] ( .D ( B[1] ) , .CLK ( clk ) , .RSTB ( n23 ) , 
    .Q ( B_reg[1] ) , .QN ( SYNOPSYS_UNCONNECTED_3 ) ) ;
DFFARX1_RVT \B_reg_reg[0] ( .D ( B[0] ) , .CLK ( clk ) , .RSTB ( n23 ) , 
    .Q ( B_reg[0] ) , .QN ( SYNOPSYS_UNCONNECTED_4 ) ) ;
DFFARX1_RVT \opcode_reg_reg[1] ( .D ( opcode[1] ) , .CLK ( clk ) , 
    .RSTB ( n23 ) , .Q ( opcode_reg[1] ) , .QN ( n40 ) ) ;
DFFARX1_RVT \opcode_reg_reg[0] ( .D ( opcode[0] ) , .CLK ( clk ) , 
    .RSTB ( n23 ) , .Q ( opcode_reg[0] ) , .QN ( SYNOPSYS_UNCONNECTED_5 ) ) ;
DFFARX1_RVT \A_reg_reg[3] ( .D ( A[3] ) , .CLK ( clk ) , .RSTB ( n23 ) , 
    .Q ( A_reg[3] ) , .QN ( SYNOPSYS_UNCONNECTED_6 ) ) ;
DFFARX1_RVT \A_reg_reg[2] ( .D ( A[2] ) , .CLK ( clk ) , .RSTB ( n23 ) , 
    .Q ( A_reg[2] ) , .QN ( SYNOPSYS_UNCONNECTED_7 ) ) ;
DFFARX1_RVT \A_reg_reg[1] ( .D ( A[1] ) , .CLK ( clk ) , .RSTB ( n23 ) , 
    .Q ( A_reg[1] ) , .QN ( SYNOPSYS_UNCONNECTED_8 ) ) ;
DFFARX1_RVT \A_reg_reg[0] ( .D ( A[0] ) , .CLK ( clk ) , .RSTB ( n23 ) , 
    .Q ( A_reg[0] ) , .QN ( SYNOPSYS_UNCONNECTED_9 ) ) ;
DFFARX1_RVT \result_reg[3] ( .D ( ropt_net_8 ) , .CLK ( clk ) , 
    .RSTB ( n23 ) , .Q ( result[3] ) , .QN ( SYNOPSYS_UNCONNECTED_10 ) ) ;
DFFARX1_RVT \result_reg[2] ( .D ( n25 ) , .CLK ( clk ) , .RSTB ( n23 ) , 
    .Q ( result[2] ) , .QN ( SYNOPSYS_UNCONNECTED_11 ) ) ;
DFFARX1_RVT \result_reg[1] ( .D ( ropt_net_3 ) , .CLK ( clk ) , 
    .RSTB ( n23 ) , .Q ( result[1] ) , .QN ( SYNOPSYS_UNCONNECTED_12 ) ) ;
DFFARX1_RVT \result_reg[0] ( .D ( ropt_net_0 ) , .CLK ( clk ) , 
    .RSTB ( n23 ) , .Q ( result[0] ) , .QN ( SYNOPSYS_UNCONNECTED_13 ) ) ;
DFFARX1_RVT carry_reg ( .D ( ropt_net_6 ) , .CLK ( clk ) , .RSTB ( n23 ) , 
    .Q ( carry ) , .QN ( SYNOPSYS_UNCONNECTED_14 ) ) ;
FADDX1_RVT \intadd_0/U4 ( .A ( A_reg[1] ) , .B ( \intadd_0/CI ) , 
    .CI ( B_reg[1] ) , .CO ( \intadd_0/n3 ) , .S ( \intadd_0/SUM[0] ) ) ;
FADDX1_RVT \intadd_0/U3 ( .A ( A_reg[2] ) , .B ( \intadd_0/n3 ) , 
    .CI ( B_reg[2] ) , .CO ( \intadd_0/n2 ) , .S ( \intadd_0/SUM[1] ) ) ;
FADDX1_RVT \intadd_0/U2 ( .A ( A_reg[3] ) , .B ( \intadd_0/n2 ) , 
    .CI ( ropt_net_2 ) , .CO ( \intadd_0/n1 ) , .S ( \intadd_0/SUM[2] ) ) ;
INVX4_RVT U28 ( .A ( rst ) , .Y ( n23 ) ) ;
NOR2X0_RVT U29 ( .A1 ( opcode_reg[1] ) , .A2 ( opcode_reg[0] ) , .Y ( n39 ) ) ;
OA21X1_RVT U30 ( .A1 ( B_reg[0] ) , .A2 ( A_reg[0] ) , .A3 ( n29 ) , 
    .Y ( n27 ) ) ;
AND2X1_RVT U31 ( .A1 ( B_reg[0] ) , .A2 ( A_reg[0] ) , .Y ( \intadd_0/CI ) ) ;
MUX41X1_RVT U33 ( .A1 ( 1'b1 ) , .A3 ( opcode_reg[1] ) , 
    .A2 ( opcode_reg[1] ) , .A4 ( n40 ) , .S0 ( opcode_reg[0] ) , 
    .S1 ( \intadd_0/CI ) , .Y ( n29 ) ) ;
AND2X1_RVT U34 ( .A1 ( n39 ) , .A2 ( \intadd_0/n1 ) , .Y ( alu_carry ) ) ;
NAND3X0_RVT U35 ( .A1 ( opcode_reg[0] ) , .A2 ( B_reg[1] ) , 
    .A3 ( A_reg[1] ) , .Y ( n30 ) ) ;
INVX0_RVT U36 ( .A ( n30 ) , .Y ( n31 ) ) ;
OA222X1_RVT U37 ( .A1 ( opcode_reg[1] ) , .A2 ( n31 ) , .A3 ( n40 ) , 
    .A4 ( n30 ) , .A5 ( B_reg[1] ) , .A6 ( A_reg[1] ) , .Y ( n32 ) ) ;
AO21X1_RVT U38 ( .A1 ( n39 ) , .A2 ( \intadd_0/SUM[0] ) , .A3 ( n32 ) , 
    .Y ( n26 ) ) ;
NAND3X0_RVT U39 ( .A1 ( opcode_reg[0] ) , .A2 ( B_reg[2] ) , 
    .A3 ( A_reg[2] ) , .Y ( n33 ) ) ;
INVX0_RVT U40 ( .A ( n33 ) , .Y ( n34 ) ) ;
OA222X1_RVT U41 ( .A1 ( opcode_reg[1] ) , .A2 ( n34 ) , .A3 ( n40 ) , 
    .A4 ( n33 ) , .A5 ( B_reg[2] ) , .A6 ( A_reg[2] ) , .Y ( n35 ) ) ;
AO21X1_RVT U42 ( .A1 ( n39 ) , .A2 ( ropt_net_5 ) , .A3 ( ropt_net_1 ) , 
    .Y ( n25 ) ) ;
NAND3X0_RVT U43 ( .A1 ( opcode_reg[0] ) , .A2 ( B_reg[3] ) , 
    .A3 ( A_reg[3] ) , .Y ( n36 ) ) ;
INVX0_RVT U44 ( .A ( n36 ) , .Y ( n37 ) ) ;
OA222X1_RVT U45 ( .A1 ( opcode_reg[1] ) , .A2 ( n37 ) , .A3 ( n40 ) , 
    .A4 ( n36 ) , .A5 ( ropt_net_2 ) , .A6 ( A_reg[3] ) , .Y ( n38 ) ) ;
AO21X1_RVT U46 ( .A1 ( n39 ) , .A2 ( ropt_net_7 ) , .A3 ( ropt_net_4 ) , 
    .Y ( n24 ) ) ;
DELLN1X2_RVT ropt_h_inst_560 ( .A ( n27 ) , .Y ( ropt_net_0 ) ) ;
DELLN1X2_RVT ropt_h_inst_561 ( .A ( n35 ) , .Y ( ropt_net_1 ) ) ;
NBUFFX2_RVT ropt_h_inst_562 ( .A ( B_reg[3] ) , .Y ( ropt_net_2 ) ) ;
DELLN1X2_RVT ropt_h_inst_563 ( .A ( n26 ) , .Y ( ropt_net_3 ) ) ;
DELLN1X2_RVT ropt_h_inst_564 ( .A ( n38 ) , .Y ( ropt_net_4 ) ) ;
NBUFFX2_RVT ropt_h_inst_565 ( .A ( \intadd_0/SUM[1] ) , .Y ( ropt_net_5 ) ) ;
DELLN1X2_RVT ropt_h_inst_566 ( .A ( alu_carry ) , .Y ( ropt_net_6 ) ) ;
NBUFFX2_RVT ropt_h_inst_567 ( .A ( \intadd_0/SUM[2] ) , .Y ( ropt_net_7 ) ) ;
NBUFFX2_RVT ropt_h_inst_568 ( .A ( n24 ) , .Y ( ropt_net_8 ) ) ;
endmodule


