// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 12 16:06:13 2024
// Host        : aic-ts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/norm/add_int64/add_int64_sim_netlist.v
// Design      : add_int64
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_int64,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module add_int64
   (A,
    B,
    CLK,
    C_IN,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [63:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [63:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_in_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_in_intf, LAYERED_METADATA undef" *) input C_IN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [63:0]S;

  wire [63:0]A;
  wire [63:0]B;
  wire CLK;
  wire C_IN;
  wire [63:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "64" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* c_b_width = "64" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "1" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "6" *) 
  (* c_out_width = "64" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_int64_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(C_IN),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "64" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_B_WIDTH = "64" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "1" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "6" *) 
(* C_OUT_WIDTH = "64" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module add_int64_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [63:0]A;
  input [63:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [63:0]S;

  wire \<const0> ;
  wire [63:0]A;
  wire [63:0]B;
  wire CLK;
  wire C_IN;
  wire [63:0]S;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  add_int64_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .B(B),
        .CLK(CLK),
        .C_IN(C_IN),
        .S(S));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_fabric_legacy" *) 
module add_int64_c_addsub_v12_0_12_fabric_legacy
   (\i_no_async_controls.output_reg[10] ,
    \i_no_async_controls.output_reg[9] ,
    \i_no_async_controls.output_reg[8] ,
    \i_no_async_controls.output_reg[7] ,
    \i_no_async_controls.output_reg[6] ,
    \i_no_async_controls.output_reg[5] ,
    \i_no_async_controls.output_reg[4] ,
    \i_no_async_controls.output_reg[3] ,
    \i_no_async_controls.output_reg[2] ,
    \i_no_async_controls.output_reg[1] ,
    \pipecarry[1,1] ,
    CLK,
    A,
    C_IN,
    B);
  output \i_no_async_controls.output_reg[10] ;
  output \i_no_async_controls.output_reg[9] ;
  output \i_no_async_controls.output_reg[8] ;
  output \i_no_async_controls.output_reg[7] ;
  output \i_no_async_controls.output_reg[6] ;
  output \i_no_async_controls.output_reg[5] ;
  output \i_no_async_controls.output_reg[4] ;
  output \i_no_async_controls.output_reg[3] ;
  output \i_no_async_controls.output_reg[2] ;
  output \i_no_async_controls.output_reg[1] ;
  output \pipecarry[1,1] ;
  input CLK;
  input [9:0]A;
  input C_IN;
  input [9:0]B;

  wire [9:0]A;
  wire [9:0]B;
  wire CLK;
  wire C_IN;
  wire \i_no_async_controls.output_reg[10] ;
  wire \i_no_async_controls.output_reg[1] ;
  wire \i_no_async_controls.output_reg[2] ;
  wire \i_no_async_controls.output_reg[3] ;
  wire \i_no_async_controls.output_reg[4] ;
  wire \i_no_async_controls.output_reg[5] ;
  wire \i_no_async_controls.output_reg[6] ;
  wire \i_no_async_controls.output_reg[7] ;
  wire \i_no_async_controls.output_reg[8] ;
  wire \i_no_async_controls.output_reg[9] ;
  wire \pipecarry[1,1] ;

  add_int64_c_addsub_v12_0_12_lut6_legacy \i_lut6.i_lut6_addsub 
       (.A(A),
        .B(B),
        .CLK(CLK),
        .C_IN(C_IN),
        .\i_no_async_controls.output_reg[10] (\i_no_async_controls.output_reg[10] ),
        .\i_no_async_controls.output_reg[1] (\i_no_async_controls.output_reg[1] ),
        .\i_no_async_controls.output_reg[2] (\i_no_async_controls.output_reg[2] ),
        .\i_no_async_controls.output_reg[3] (\i_no_async_controls.output_reg[3] ),
        .\i_no_async_controls.output_reg[4] (\i_no_async_controls.output_reg[4] ),
        .\i_no_async_controls.output_reg[5] (\i_no_async_controls.output_reg[5] ),
        .\i_no_async_controls.output_reg[6] (\i_no_async_controls.output_reg[6] ),
        .\i_no_async_controls.output_reg[7] (\i_no_async_controls.output_reg[7] ),
        .\i_no_async_controls.output_reg[8] (\i_no_async_controls.output_reg[8] ),
        .\i_no_async_controls.output_reg[9] (\i_no_async_controls.output_reg[9] ),
        .\pipecarry[1,1] (\pipecarry[1,1] ));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_fabric_legacy" *) 
module add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized1
   (D3_out,
    Q,
    A,
    CLK,
    diagonal_c_out_4,
    B);
  output D3_out;
  output [10:0]Q;
  input [10:0]A;
  input CLK;
  input diagonal_c_out_4;
  input [10:0]B;

  wire [10:0]A;
  wire [10:0]B;
  wire CLK;
  wire D3_out;
  wire [10:0]Q;
  wire diagonal_c_out_4;

  add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized1 \i_lut6.i_lut6_addsub 
       (.A(A),
        .B(B),
        .CLK(CLK),
        .D3_out(D3_out),
        .Q(Q),
        .diagonal_c_out_4(diagonal_c_out_4));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_fabric_legacy" *) 
module add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11
   (\i_no_async_controls.output_reg[11] ,
    \i_no_async_controls.output_reg[10] ,
    \i_no_async_controls.output_reg[9] ,
    \i_no_async_controls.output_reg[8] ,
    \i_no_async_controls.output_reg[7] ,
    \i_no_async_controls.output_reg[6] ,
    \i_no_async_controls.output_reg[5] ,
    \i_no_async_controls.output_reg[4] ,
    \i_no_async_controls.output_reg[3] ,
    \i_no_async_controls.output_reg[2] ,
    \i_no_async_controls.output_reg[1] ,
    diagonal_c_out_4,
    CLK,
    Q,
    \pipecarry[1,1] );
  output \i_no_async_controls.output_reg[11] ;
  output \i_no_async_controls.output_reg[10] ;
  output \i_no_async_controls.output_reg[9] ;
  output \i_no_async_controls.output_reg[8] ;
  output \i_no_async_controls.output_reg[7] ;
  output \i_no_async_controls.output_reg[6] ;
  output \i_no_async_controls.output_reg[5] ;
  output \i_no_async_controls.output_reg[4] ;
  output \i_no_async_controls.output_reg[3] ;
  output \i_no_async_controls.output_reg[2] ;
  output \i_no_async_controls.output_reg[1] ;
  output diagonal_c_out_4;
  input CLK;
  input [10:0]Q;
  input \pipecarry[1,1] ;

  wire CLK;
  wire [10:0]Q;
  wire diagonal_c_out_4;
  wire \i_no_async_controls.output_reg[10] ;
  wire \i_no_async_controls.output_reg[11] ;
  wire \i_no_async_controls.output_reg[1] ;
  wire \i_no_async_controls.output_reg[2] ;
  wire \i_no_async_controls.output_reg[3] ;
  wire \i_no_async_controls.output_reg[4] ;
  wire \i_no_async_controls.output_reg[5] ;
  wire \i_no_async_controls.output_reg[6] ;
  wire \i_no_async_controls.output_reg[7] ;
  wire \i_no_async_controls.output_reg[8] ;
  wire \i_no_async_controls.output_reg[9] ;
  wire \pipecarry[1,1] ;

  add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11_31 \i_lut6.i_lut6_addsub 
       (.CLK(CLK),
        .Q(Q),
        .diagonal_c_out_4(diagonal_c_out_4),
        .\i_no_async_controls.output_reg[10] (\i_no_async_controls.output_reg[10] ),
        .\i_no_async_controls.output_reg[11] (\i_no_async_controls.output_reg[11] ),
        .\i_no_async_controls.output_reg[1] (\i_no_async_controls.output_reg[1] ),
        .\i_no_async_controls.output_reg[2] (\i_no_async_controls.output_reg[2] ),
        .\i_no_async_controls.output_reg[3] (\i_no_async_controls.output_reg[3] ),
        .\i_no_async_controls.output_reg[4] (\i_no_async_controls.output_reg[4] ),
        .\i_no_async_controls.output_reg[5] (\i_no_async_controls.output_reg[5] ),
        .\i_no_async_controls.output_reg[6] (\i_no_async_controls.output_reg[6] ),
        .\i_no_async_controls.output_reg[7] (\i_no_async_controls.output_reg[7] ),
        .\i_no_async_controls.output_reg[8] (\i_no_async_controls.output_reg[8] ),
        .\i_no_async_controls.output_reg[9] (\i_no_async_controls.output_reg[9] ),
        .\pipecarry[1,1] (\pipecarry[1,1] ));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_fabric_legacy" *) 
module add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11_16
   (diagonal_c_out_1,
    Q,
    \piperegs[4]_42 ,
    \pipecarry[4,4] ,
    CLK);
  output diagonal_c_out_1;
  output [10:0]Q;
  input [10:0]\piperegs[4]_42 ;
  input \pipecarry[4,4] ;
  input CLK;

  wire CLK;
  wire [10:0]Q;
  wire diagonal_c_out_1;
  wire \pipecarry[4,4] ;
  wire [10:0]\piperegs[4]_42 ;

  add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11_26 \i_lut6.i_lut6_addsub 
       (.CLK(CLK),
        .Q(Q),
        .diagonal_c_out_1(diagonal_c_out_1),
        .\pipecarry[4,4] (\pipecarry[4,4] ),
        .\piperegs[4]_42 (\piperegs[4]_42 ));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_fabric_legacy" *) 
module add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11_2
   (\i_no_async_controls.output_reg[11] ,
    \i_no_async_controls.output_reg[10] ,
    \i_no_async_controls.output_reg[9] ,
    \i_no_async_controls.output_reg[8] ,
    \i_no_async_controls.output_reg[7] ,
    \i_no_async_controls.output_reg[6] ,
    \i_no_async_controls.output_reg[5] ,
    \i_no_async_controls.output_reg[4] ,
    \i_no_async_controls.output_reg[3] ,
    \i_no_async_controls.output_reg[2] ,
    \i_no_async_controls.output_reg[1] ,
    diagonal_c_out_3,
    CLK,
    Q,
    \pipecarry[2,2] );
  output \i_no_async_controls.output_reg[11] ;
  output \i_no_async_controls.output_reg[10] ;
  output \i_no_async_controls.output_reg[9] ;
  output \i_no_async_controls.output_reg[8] ;
  output \i_no_async_controls.output_reg[7] ;
  output \i_no_async_controls.output_reg[6] ;
  output \i_no_async_controls.output_reg[5] ;
  output \i_no_async_controls.output_reg[4] ;
  output \i_no_async_controls.output_reg[3] ;
  output \i_no_async_controls.output_reg[2] ;
  output \i_no_async_controls.output_reg[1] ;
  output diagonal_c_out_3;
  input CLK;
  input [10:0]Q;
  input \pipecarry[2,2] ;

  wire CLK;
  wire [10:0]Q;
  wire diagonal_c_out_3;
  wire \i_no_async_controls.output_reg[10] ;
  wire \i_no_async_controls.output_reg[11] ;
  wire \i_no_async_controls.output_reg[1] ;
  wire \i_no_async_controls.output_reg[2] ;
  wire \i_no_async_controls.output_reg[3] ;
  wire \i_no_async_controls.output_reg[4] ;
  wire \i_no_async_controls.output_reg[5] ;
  wire \i_no_async_controls.output_reg[6] ;
  wire \i_no_async_controls.output_reg[7] ;
  wire \i_no_async_controls.output_reg[8] ;
  wire \i_no_async_controls.output_reg[9] ;
  wire \pipecarry[2,2] ;

  add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11_29 \i_lut6.i_lut6_addsub 
       (.CLK(CLK),
        .Q(Q),
        .diagonal_c_out_3(diagonal_c_out_3),
        .\i_no_async_controls.output_reg[10] (\i_no_async_controls.output_reg[10] ),
        .\i_no_async_controls.output_reg[11] (\i_no_async_controls.output_reg[11] ),
        .\i_no_async_controls.output_reg[1] (\i_no_async_controls.output_reg[1] ),
        .\i_no_async_controls.output_reg[2] (\i_no_async_controls.output_reg[2] ),
        .\i_no_async_controls.output_reg[3] (\i_no_async_controls.output_reg[3] ),
        .\i_no_async_controls.output_reg[4] (\i_no_async_controls.output_reg[4] ),
        .\i_no_async_controls.output_reg[5] (\i_no_async_controls.output_reg[5] ),
        .\i_no_async_controls.output_reg[6] (\i_no_async_controls.output_reg[6] ),
        .\i_no_async_controls.output_reg[7] (\i_no_async_controls.output_reg[7] ),
        .\i_no_async_controls.output_reg[8] (\i_no_async_controls.output_reg[8] ),
        .\i_no_async_controls.output_reg[9] (\i_no_async_controls.output_reg[9] ),
        .\pipecarry[2,2] (\pipecarry[2,2] ));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_fabric_legacy" *) 
module add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11_24
   (S,
    \piperegs[5]_53 ,
    \pipecarry[5,5] ,
    CLK);
  output [10:0]S;
  input [10:0]\piperegs[5]_53 ;
  input \pipecarry[5,5] ;
  input CLK;

  wire CLK;
  wire [10:0]S;
  wire \pipecarry[5,5] ;
  wire [10:0]\piperegs[5]_53 ;

  add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11 \i_lut6.i_lut6_addsub 
       (.CLK(CLK),
        .S(S),
        .\pipecarry[5,5] (\pipecarry[5,5] ),
        .\piperegs[5]_53 (\piperegs[5]_53 ));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_fabric_legacy" *) 
module add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized13
   (diagonal_c_out_2,
    \i_no_async_controls.output_reg[10] ,
    Q,
    \pipecarry[3,3] ,
    CLK);
  output diagonal_c_out_2;
  output [9:0]\i_no_async_controls.output_reg[10] ;
  input [9:0]Q;
  input \pipecarry[3,3] ;
  input CLK;

  wire CLK;
  wire [9:0]Q;
  wire diagonal_c_out_2;
  wire [9:0]\i_no_async_controls.output_reg[10] ;
  wire \pipecarry[3,3] ;

  add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized13 \i_lut6.i_lut6_addsub 
       (.CLK(CLK),
        .Q(Q),
        .diagonal_c_out_2(diagonal_c_out_2),
        .\i_no_async_controls.output_reg[10] (\i_no_async_controls.output_reg[10] ),
        .\pipecarry[3,3] (\pipecarry[3,3] ));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_fabric_legacy" *) 
module add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized3
   (\i_no_async_controls.output_reg[1] ,
    Q,
    A,
    CLK,
    B);
  output \i_no_async_controls.output_reg[1] ;
  output [10:0]Q;
  input [10:0]A;
  input CLK;
  input [10:0]B;

  wire [10:0]A;
  wire [10:0]B;
  wire CLK;
  wire [10:0]Q;
  wire \i_no_async_controls.output_reg[1] ;

  add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized3 \i_lut6.i_lut6_addsub 
       (.A(A),
        .B(B),
        .CLK(CLK),
        .Q(Q),
        .\i_no_async_controls.output_reg[1] (\i_no_async_controls.output_reg[1] ));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_fabric_legacy" *) 
module add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized5
   (\i_no_async_controls.output_reg[1] ,
    Q,
    A,
    CLK,
    B);
  output \i_no_async_controls.output_reg[1] ;
  output [9:0]Q;
  input [9:0]A;
  input CLK;
  input [9:0]B;

  wire [9:0]A;
  wire [9:0]B;
  wire CLK;
  wire [9:0]Q;
  wire \i_no_async_controls.output_reg[1] ;

  add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized5 \i_lut6.i_lut6_addsub 
       (.A(A),
        .B(B),
        .CLK(CLK),
        .Q(Q),
        .\i_no_async_controls.output_reg[1] (\i_no_async_controls.output_reg[1] ));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_fabric_legacy" *) 
module add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized7
   (\i_no_async_controls.output_reg[11] ,
    \i_no_async_controls.output_reg[10] ,
    \i_no_async_controls.output_reg[9] ,
    \i_no_async_controls.output_reg[8] ,
    \i_no_async_controls.output_reg[7] ,
    \i_no_async_controls.output_reg[6] ,
    \i_no_async_controls.output_reg[5] ,
    \i_no_async_controls.output_reg[4] ,
    \i_no_async_controls.output_reg[3] ,
    \i_no_async_controls.output_reg[2] ,
    \i_no_async_controls.output_reg[1] ,
    \i_no_async_controls.output_reg[1]_0 ,
    CLK,
    A,
    B);
  output \i_no_async_controls.output_reg[11] ;
  output \i_no_async_controls.output_reg[10] ;
  output \i_no_async_controls.output_reg[9] ;
  output \i_no_async_controls.output_reg[8] ;
  output \i_no_async_controls.output_reg[7] ;
  output \i_no_async_controls.output_reg[6] ;
  output \i_no_async_controls.output_reg[5] ;
  output \i_no_async_controls.output_reg[4] ;
  output \i_no_async_controls.output_reg[3] ;
  output \i_no_async_controls.output_reg[2] ;
  output \i_no_async_controls.output_reg[1] ;
  output \i_no_async_controls.output_reg[1]_0 ;
  input CLK;
  input [10:0]A;
  input [10:0]B;

  wire [10:0]A;
  wire [10:0]B;
  wire CLK;
  wire \i_no_async_controls.output_reg[10] ;
  wire \i_no_async_controls.output_reg[11] ;
  wire \i_no_async_controls.output_reg[1] ;
  wire \i_no_async_controls.output_reg[1]_0 ;
  wire \i_no_async_controls.output_reg[2] ;
  wire \i_no_async_controls.output_reg[3] ;
  wire \i_no_async_controls.output_reg[4] ;
  wire \i_no_async_controls.output_reg[5] ;
  wire \i_no_async_controls.output_reg[6] ;
  wire \i_no_async_controls.output_reg[7] ;
  wire \i_no_async_controls.output_reg[8] ;
  wire \i_no_async_controls.output_reg[9] ;

  add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized7 \i_lut6.i_lut6_addsub 
       (.A(A),
        .B(B),
        .CLK(CLK),
        .\i_no_async_controls.output_reg[10] (\i_no_async_controls.output_reg[10] ),
        .\i_no_async_controls.output_reg[11] (\i_no_async_controls.output_reg[11] ),
        .\i_no_async_controls.output_reg[1] (\i_no_async_controls.output_reg[1] ),
        .\i_no_async_controls.output_reg[1]_0 (\i_no_async_controls.output_reg[1]_0 ),
        .\i_no_async_controls.output_reg[2] (\i_no_async_controls.output_reg[2] ),
        .\i_no_async_controls.output_reg[3] (\i_no_async_controls.output_reg[3] ),
        .\i_no_async_controls.output_reg[4] (\i_no_async_controls.output_reg[4] ),
        .\i_no_async_controls.output_reg[5] (\i_no_async_controls.output_reg[5] ),
        .\i_no_async_controls.output_reg[6] (\i_no_async_controls.output_reg[6] ),
        .\i_no_async_controls.output_reg[7] (\i_no_async_controls.output_reg[7] ),
        .\i_no_async_controls.output_reg[8] (\i_no_async_controls.output_reg[8] ),
        .\i_no_async_controls.output_reg[9] (\i_no_async_controls.output_reg[9] ));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_fabric_legacy" *) 
module add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized9
   (\i_no_async_controls.output_reg[11] ,
    \i_no_async_controls.output_reg[10] ,
    \i_no_async_controls.output_reg[9] ,
    \i_no_async_controls.output_reg[8] ,
    \i_no_async_controls.output_reg[7] ,
    \i_no_async_controls.output_reg[6] ,
    \i_no_async_controls.output_reg[5] ,
    \i_no_async_controls.output_reg[4] ,
    \i_no_async_controls.output_reg[3] ,
    \i_no_async_controls.output_reg[2] ,
    \i_no_async_controls.output_reg[1] ,
    CLK,
    A,
    B);
  output \i_no_async_controls.output_reg[11] ;
  output \i_no_async_controls.output_reg[10] ;
  output \i_no_async_controls.output_reg[9] ;
  output \i_no_async_controls.output_reg[8] ;
  output \i_no_async_controls.output_reg[7] ;
  output \i_no_async_controls.output_reg[6] ;
  output \i_no_async_controls.output_reg[5] ;
  output \i_no_async_controls.output_reg[4] ;
  output \i_no_async_controls.output_reg[3] ;
  output \i_no_async_controls.output_reg[2] ;
  output \i_no_async_controls.output_reg[1] ;
  input CLK;
  input [10:0]A;
  input [10:0]B;

  wire [10:0]A;
  wire [10:0]B;
  wire CLK;
  wire \i_no_async_controls.output_reg[10] ;
  wire \i_no_async_controls.output_reg[11] ;
  wire \i_no_async_controls.output_reg[1] ;
  wire \i_no_async_controls.output_reg[2] ;
  wire \i_no_async_controls.output_reg[3] ;
  wire \i_no_async_controls.output_reg[4] ;
  wire \i_no_async_controls.output_reg[5] ;
  wire \i_no_async_controls.output_reg[6] ;
  wire \i_no_async_controls.output_reg[7] ;
  wire \i_no_async_controls.output_reg[8] ;
  wire \i_no_async_controls.output_reg[9] ;

  add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized9 \i_lut6.i_lut6_addsub 
       (.A(A),
        .B(B),
        .CLK(CLK),
        .\i_no_async_controls.output_reg[10] (\i_no_async_controls.output_reg[10] ),
        .\i_no_async_controls.output_reg[11] (\i_no_async_controls.output_reg[11] ),
        .\i_no_async_controls.output_reg[1] (\i_no_async_controls.output_reg[1] ),
        .\i_no_async_controls.output_reg[2] (\i_no_async_controls.output_reg[2] ),
        .\i_no_async_controls.output_reg[3] (\i_no_async_controls.output_reg[3] ),
        .\i_no_async_controls.output_reg[4] (\i_no_async_controls.output_reg[4] ),
        .\i_no_async_controls.output_reg[5] (\i_no_async_controls.output_reg[5] ),
        .\i_no_async_controls.output_reg[6] (\i_no_async_controls.output_reg[6] ),
        .\i_no_async_controls.output_reg[7] (\i_no_async_controls.output_reg[7] ),
        .\i_no_async_controls.output_reg[8] (\i_no_async_controls.output_reg[8] ),
        .\i_no_async_controls.output_reg[9] (\i_no_async_controls.output_reg[9] ));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_legacy" *) 
module add_int64_c_addsub_v12_0_12_legacy
   (S,
    CLK,
    A,
    C_IN,
    B);
  output [63:0]S;
  input CLK;
  input [63:0]A;
  input C_IN;
  input [63:0]B;

  wire [63:0]A;
  wire [63:0]B;
  wire CLK;
  wire C_IN;
  wire D0_out;
  wire D1_out;
  wire D2_out;
  wire D3_out;
  wire [63:0]S;
  wire diagonal_c_out_1;
  wire diagonal_c_out_2;
  wire diagonal_c_out_3;
  wire diagonal_c_out_4;
  wire \pipecarry[1,1] ;
  wire \pipecarry[2,2] ;
  wire \pipecarry[3,3] ;
  wire \pipecarry[4,4] ;
  wire \pipecarry[5,5] ;
  wire \pipelining.stages[1].slices[1].first.first_stage_adder_n_0 ;
  wire \pipelining.stages[1].slices[1].first.first_stage_adder_n_1 ;
  wire \pipelining.stages[1].slices[1].first.first_stage_adder_n_2 ;
  wire \pipelining.stages[1].slices[1].first.first_stage_adder_n_3 ;
  wire \pipelining.stages[1].slices[1].first.first_stage_adder_n_4 ;
  wire \pipelining.stages[1].slices[1].first.first_stage_adder_n_5 ;
  wire \pipelining.stages[1].slices[1].first.first_stage_adder_n_6 ;
  wire \pipelining.stages[1].slices[1].first.first_stage_adder_n_7 ;
  wire \pipelining.stages[1].slices[1].first.first_stage_adder_n_8 ;
  wire \pipelining.stages[1].slices[1].first.first_stage_adder_n_9 ;
  wire \pipelining.stages[1].slices[3].first.first_stage_adder_n_0 ;
  wire \pipelining.stages[1].slices[3].first.first_stage_adder_n_1 ;
  wire \pipelining.stages[1].slices[3].first.first_stage_adder_n_10 ;
  wire \pipelining.stages[1].slices[3].first.first_stage_adder_n_11 ;
  wire \pipelining.stages[1].slices[3].first.first_stage_adder_n_2 ;
  wire \pipelining.stages[1].slices[3].first.first_stage_adder_n_3 ;
  wire \pipelining.stages[1].slices[3].first.first_stage_adder_n_4 ;
  wire \pipelining.stages[1].slices[3].first.first_stage_adder_n_5 ;
  wire \pipelining.stages[1].slices[3].first.first_stage_adder_n_6 ;
  wire \pipelining.stages[1].slices[3].first.first_stage_adder_n_7 ;
  wire \pipelining.stages[1].slices[3].first.first_stage_adder_n_8 ;
  wire \pipelining.stages[1].slices[3].first.first_stage_adder_n_9 ;
  wire \pipelining.stages[1].slices[4].first.first_stage_adder_n_0 ;
  wire \pipelining.stages[1].slices[4].first.first_stage_adder_n_1 ;
  wire \pipelining.stages[1].slices[4].first.first_stage_adder_n_10 ;
  wire \pipelining.stages[1].slices[4].first.first_stage_adder_n_2 ;
  wire \pipelining.stages[1].slices[4].first.first_stage_adder_n_3 ;
  wire \pipelining.stages[1].slices[4].first.first_stage_adder_n_4 ;
  wire \pipelining.stages[1].slices[4].first.first_stage_adder_n_5 ;
  wire \pipelining.stages[1].slices[4].first.first_stage_adder_n_6 ;
  wire \pipelining.stages[1].slices[4].first.first_stage_adder_n_7 ;
  wire \pipelining.stages[1].slices[4].first.first_stage_adder_n_8 ;
  wire \pipelining.stages[1].slices[4].first.first_stage_adder_n_9 ;
  wire \pipelining.stages[1].slices[5].first.first_stage_adder_n_0 ;
  wire \pipelining.stages[1].slices[5].first.first_stage_adder_n_1 ;
  wire \pipelining.stages[1].slices[5].first.first_stage_adder_n_10 ;
  wire \pipelining.stages[1].slices[5].first.first_stage_adder_n_11 ;
  wire \pipelining.stages[1].slices[5].first.first_stage_adder_n_2 ;
  wire \pipelining.stages[1].slices[5].first.first_stage_adder_n_3 ;
  wire \pipelining.stages[1].slices[5].first.first_stage_adder_n_4 ;
  wire \pipelining.stages[1].slices[5].first.first_stage_adder_n_5 ;
  wire \pipelining.stages[1].slices[5].first.first_stage_adder_n_6 ;
  wire \pipelining.stages[1].slices[5].first.first_stage_adder_n_7 ;
  wire \pipelining.stages[1].slices[5].first.first_stage_adder_n_8 ;
  wire \pipelining.stages[1].slices[5].first.first_stage_adder_n_9 ;
  wire \pipelining.stages[1].slices[6].first.first_stage_adder_n_0 ;
  wire \pipelining.stages[1].slices[6].first.first_stage_adder_n_1 ;
  wire \pipelining.stages[1].slices[6].first.first_stage_adder_n_10 ;
  wire \pipelining.stages[1].slices[6].first.first_stage_adder_n_2 ;
  wire \pipelining.stages[1].slices[6].first.first_stage_adder_n_3 ;
  wire \pipelining.stages[1].slices[6].first.first_stage_adder_n_4 ;
  wire \pipelining.stages[1].slices[6].first.first_stage_adder_n_5 ;
  wire \pipelining.stages[1].slices[6].first.first_stage_adder_n_6 ;
  wire \pipelining.stages[1].slices[6].first.first_stage_adder_n_7 ;
  wire \pipelining.stages[1].slices[6].first.first_stage_adder_n_8 ;
  wire \pipelining.stages[1].slices[6].first.first_stage_adder_n_9 ;
  wire \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_0 ;
  wire \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_1 ;
  wire \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_10 ;
  wire \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_2 ;
  wire \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_3 ;
  wire \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_4 ;
  wire \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_5 ;
  wire \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_6 ;
  wire \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_7 ;
  wire \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_8 ;
  wire \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_9 ;
  wire \pipelining.stages[2].slices[4].middlestages.abovediagonal.carryregister_n_0 ;
  wire \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_0 ;
  wire \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_1 ;
  wire \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_2 ;
  wire \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_3 ;
  wire \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_4 ;
  wire \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_5 ;
  wire \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_6 ;
  wire \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_7 ;
  wire \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_8 ;
  wire \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_9 ;
  wire \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_0 ;
  wire \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_1 ;
  wire \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_10 ;
  wire \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_2 ;
  wire \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_3 ;
  wire \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_4 ;
  wire \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_5 ;
  wire \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_6 ;
  wire \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_7 ;
  wire \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_8 ;
  wire \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_9 ;
  wire \pipelining.stages[3].slices[5].middlestages.abovediagonal.carryregister_n_0 ;
  wire \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_0 ;
  wire \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_1 ;
  wire \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_10 ;
  wire \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_2 ;
  wire \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_3 ;
  wire \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_4 ;
  wire \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_5 ;
  wire \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_6 ;
  wire \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_7 ;
  wire \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_8 ;
  wire \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_9 ;
  wire \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_1 ;
  wire \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_10 ;
  wire \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_2 ;
  wire \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_3 ;
  wire \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_4 ;
  wire \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_5 ;
  wire \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_6 ;
  wire \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_7 ;
  wire \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_8 ;
  wire \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_9 ;
  wire \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_0 ;
  wire \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_1 ;
  wire \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_10 ;
  wire \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_2 ;
  wire \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_3 ;
  wire \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_4 ;
  wire \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_5 ;
  wire \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_6 ;
  wire \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_7 ;
  wire \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_8 ;
  wire \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_9 ;
  wire \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_0 ;
  wire \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_1 ;
  wire \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_2 ;
  wire \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_3 ;
  wire \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_4 ;
  wire \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_5 ;
  wire \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_6 ;
  wire \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_7 ;
  wire \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_8 ;
  wire \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_9 ;
  wire \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_0 ;
  wire \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_1 ;
  wire \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_10 ;
  wire \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_2 ;
  wire \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_3 ;
  wire \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_4 ;
  wire \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_5 ;
  wire \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_6 ;
  wire \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_7 ;
  wire \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_8 ;
  wire \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_9 ;
  wire \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_0 ;
  wire \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_1 ;
  wire \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_10 ;
  wire \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_2 ;
  wire \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_3 ;
  wire \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_4 ;
  wire \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_5 ;
  wire \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_6 ;
  wire \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_7 ;
  wire \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_8 ;
  wire \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_9 ;
  wire \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_0 ;
  wire \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_1 ;
  wire \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_2 ;
  wire \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_3 ;
  wire \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_4 ;
  wire \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_5 ;
  wire \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_6 ;
  wire \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_7 ;
  wire \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_8 ;
  wire \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_9 ;
  wire \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_1 ;
  wire \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_10 ;
  wire \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_11 ;
  wire \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_2 ;
  wire \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_3 ;
  wire \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_4 ;
  wire \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_5 ;
  wire \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_6 ;
  wire \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_7 ;
  wire \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_8 ;
  wire \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_9 ;
  wire [10:0]\piperegs[1]_10 ;
  wire [10:0]\piperegs[2]_21 ;
  wire [9:0]\piperegs[3]_32 ;
  wire [10:0]\piperegs[4]_42 ;
  wire [10:0]\piperegs[5]_53 ;

  add_int64_c_addsub_v12_0_12_fabric_legacy \pipelining.stages[1].slices[1].first.first_stage_adder 
       (.A(A[9:0]),
        .B(B[9:0]),
        .CLK(CLK),
        .C_IN(C_IN),
        .\i_no_async_controls.output_reg[10] (\pipelining.stages[1].slices[1].first.first_stage_adder_n_0 ),
        .\i_no_async_controls.output_reg[1] (\pipelining.stages[1].slices[1].first.first_stage_adder_n_9 ),
        .\i_no_async_controls.output_reg[2] (\pipelining.stages[1].slices[1].first.first_stage_adder_n_8 ),
        .\i_no_async_controls.output_reg[3] (\pipelining.stages[1].slices[1].first.first_stage_adder_n_7 ),
        .\i_no_async_controls.output_reg[4] (\pipelining.stages[1].slices[1].first.first_stage_adder_n_6 ),
        .\i_no_async_controls.output_reg[5] (\pipelining.stages[1].slices[1].first.first_stage_adder_n_5 ),
        .\i_no_async_controls.output_reg[6] (\pipelining.stages[1].slices[1].first.first_stage_adder_n_4 ),
        .\i_no_async_controls.output_reg[7] (\pipelining.stages[1].slices[1].first.first_stage_adder_n_3 ),
        .\i_no_async_controls.output_reg[8] (\pipelining.stages[1].slices[1].first.first_stage_adder_n_2 ),
        .\i_no_async_controls.output_reg[9] (\pipelining.stages[1].slices[1].first.first_stage_adder_n_1 ),
        .\pipecarry[1,1] (\pipecarry[1,1] ));
  add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized1 \pipelining.stages[1].slices[2].first.first_stage_adder 
       (.A(A[20:10]),
        .B(B[20:10]),
        .CLK(CLK),
        .D3_out(D3_out),
        .Q(\piperegs[1]_10 ),
        .diagonal_c_out_4(diagonal_c_out_4));
  add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized3 \pipelining.stages[1].slices[3].first.first_stage_adder 
       (.A(A[31:21]),
        .B(B[31:21]),
        .CLK(CLK),
        .Q({\pipelining.stages[1].slices[3].first.first_stage_adder_n_1 ,\pipelining.stages[1].slices[3].first.first_stage_adder_n_2 ,\pipelining.stages[1].slices[3].first.first_stage_adder_n_3 ,\pipelining.stages[1].slices[3].first.first_stage_adder_n_4 ,\pipelining.stages[1].slices[3].first.first_stage_adder_n_5 ,\pipelining.stages[1].slices[3].first.first_stage_adder_n_6 ,\pipelining.stages[1].slices[3].first.first_stage_adder_n_7 ,\pipelining.stages[1].slices[3].first.first_stage_adder_n_8 ,\pipelining.stages[1].slices[3].first.first_stage_adder_n_9 ,\pipelining.stages[1].slices[3].first.first_stage_adder_n_10 ,\pipelining.stages[1].slices[3].first.first_stage_adder_n_11 }),
        .\i_no_async_controls.output_reg[1] (\pipelining.stages[1].slices[3].first.first_stage_adder_n_0 ));
  add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized5 \pipelining.stages[1].slices[4].first.first_stage_adder 
       (.A(A[41:32]),
        .B(B[41:32]),
        .CLK(CLK),
        .Q({\pipelining.stages[1].slices[4].first.first_stage_adder_n_1 ,\pipelining.stages[1].slices[4].first.first_stage_adder_n_2 ,\pipelining.stages[1].slices[4].first.first_stage_adder_n_3 ,\pipelining.stages[1].slices[4].first.first_stage_adder_n_4 ,\pipelining.stages[1].slices[4].first.first_stage_adder_n_5 ,\pipelining.stages[1].slices[4].first.first_stage_adder_n_6 ,\pipelining.stages[1].slices[4].first.first_stage_adder_n_7 ,\pipelining.stages[1].slices[4].first.first_stage_adder_n_8 ,\pipelining.stages[1].slices[4].first.first_stage_adder_n_9 ,\pipelining.stages[1].slices[4].first.first_stage_adder_n_10 }),
        .\i_no_async_controls.output_reg[1] (\pipelining.stages[1].slices[4].first.first_stage_adder_n_0 ));
  add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized7 \pipelining.stages[1].slices[5].first.first_stage_adder 
       (.A(A[52:42]),
        .B(B[52:42]),
        .CLK(CLK),
        .\i_no_async_controls.output_reg[10] (\pipelining.stages[1].slices[5].first.first_stage_adder_n_1 ),
        .\i_no_async_controls.output_reg[11] (\pipelining.stages[1].slices[5].first.first_stage_adder_n_0 ),
        .\i_no_async_controls.output_reg[1] (\pipelining.stages[1].slices[5].first.first_stage_adder_n_10 ),
        .\i_no_async_controls.output_reg[1]_0 (\pipelining.stages[1].slices[5].first.first_stage_adder_n_11 ),
        .\i_no_async_controls.output_reg[2] (\pipelining.stages[1].slices[5].first.first_stage_adder_n_9 ),
        .\i_no_async_controls.output_reg[3] (\pipelining.stages[1].slices[5].first.first_stage_adder_n_8 ),
        .\i_no_async_controls.output_reg[4] (\pipelining.stages[1].slices[5].first.first_stage_adder_n_7 ),
        .\i_no_async_controls.output_reg[5] (\pipelining.stages[1].slices[5].first.first_stage_adder_n_6 ),
        .\i_no_async_controls.output_reg[6] (\pipelining.stages[1].slices[5].first.first_stage_adder_n_5 ),
        .\i_no_async_controls.output_reg[7] (\pipelining.stages[1].slices[5].first.first_stage_adder_n_4 ),
        .\i_no_async_controls.output_reg[8] (\pipelining.stages[1].slices[5].first.first_stage_adder_n_3 ),
        .\i_no_async_controls.output_reg[9] (\pipelining.stages[1].slices[5].first.first_stage_adder_n_2 ));
  add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized9 \pipelining.stages[1].slices[6].first.first_stage_adder 
       (.A(A[63:53]),
        .B(B[63:53]),
        .CLK(CLK),
        .\i_no_async_controls.output_reg[10] (\pipelining.stages[1].slices[6].first.first_stage_adder_n_1 ),
        .\i_no_async_controls.output_reg[11] (\pipelining.stages[1].slices[6].first.first_stage_adder_n_0 ),
        .\i_no_async_controls.output_reg[1] (\pipelining.stages[1].slices[6].first.first_stage_adder_n_10 ),
        .\i_no_async_controls.output_reg[2] (\pipelining.stages[1].slices[6].first.first_stage_adder_n_9 ),
        .\i_no_async_controls.output_reg[3] (\pipelining.stages[1].slices[6].first.first_stage_adder_n_8 ),
        .\i_no_async_controls.output_reg[4] (\pipelining.stages[1].slices[6].first.first_stage_adder_n_7 ),
        .\i_no_async_controls.output_reg[5] (\pipelining.stages[1].slices[6].first.first_stage_adder_n_6 ),
        .\i_no_async_controls.output_reg[6] (\pipelining.stages[1].slices[6].first.first_stage_adder_n_5 ),
        .\i_no_async_controls.output_reg[7] (\pipelining.stages[1].slices[6].first.first_stage_adder_n_4 ),
        .\i_no_async_controls.output_reg[8] (\pipelining.stages[1].slices[6].first.first_stage_adder_n_3 ),
        .\i_no_async_controls.output_reg[9] (\pipelining.stages[1].slices[6].first.first_stage_adder_n_2 ));
  add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11 \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder 
       (.CLK(CLK),
        .Q(\piperegs[1]_10 ),
        .diagonal_c_out_4(diagonal_c_out_4),
        .\i_no_async_controls.output_reg[10] (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_1 ),
        .\i_no_async_controls.output_reg[11] (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_0 ),
        .\i_no_async_controls.output_reg[1] (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_10 ),
        .\i_no_async_controls.output_reg[2] (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_9 ),
        .\i_no_async_controls.output_reg[3] (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_8 ),
        .\i_no_async_controls.output_reg[4] (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_7 ),
        .\i_no_async_controls.output_reg[5] (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_6 ),
        .\i_no_async_controls.output_reg[6] (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_5 ),
        .\i_no_async_controls.output_reg[7] (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_4 ),
        .\i_no_async_controls.output_reg[8] (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_3 ),
        .\i_no_async_controls.output_reg[9] (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_2 ),
        .\pipecarry[1,1] (\pipecarry[1,1] ));
  add_int64_c_reg_fd_v12_0_5_viv \pipelining.stages[2].slices[2].middlestages.diagonal.i_add.addcarryregister 
       (.CLK(CLK),
        .D3_out(D3_out),
        .\pipecarry[2,2] (\pipecarry[2,2] ));
  add_int64_c_reg_fd_v12_0_5_viv_0 \pipelining.stages[2].slices[3].middlestages.abovediagonal.carryregister 
       (.CLK(CLK),
        .D2_out(D2_out),
        .diagonal_c_out_3(diagonal_c_out_3),
        .\i_no_async_controls.output_reg[1]_0 (\pipelining.stages[1].slices[3].first.first_stage_adder_n_0 ));
  add_int64_c_reg_fd_v12_0_5_viv__parameterized4 \pipelining.stages[2].slices[3].middlestages.abovediagonal.piperegister 
       (.CLK(CLK),
        .D({\pipelining.stages[1].slices[3].first.first_stage_adder_n_1 ,\pipelining.stages[1].slices[3].first.first_stage_adder_n_2 ,\pipelining.stages[1].slices[3].first.first_stage_adder_n_3 ,\pipelining.stages[1].slices[3].first.first_stage_adder_n_4 ,\pipelining.stages[1].slices[3].first.first_stage_adder_n_5 ,\pipelining.stages[1].slices[3].first.first_stage_adder_n_6 ,\pipelining.stages[1].slices[3].first.first_stage_adder_n_7 ,\pipelining.stages[1].slices[3].first.first_stage_adder_n_8 ,\pipelining.stages[1].slices[3].first.first_stage_adder_n_9 ,\pipelining.stages[1].slices[3].first.first_stage_adder_n_10 ,\pipelining.stages[1].slices[3].first.first_stage_adder_n_11 }),
        .Q(\piperegs[2]_21 ));
  add_int64_c_reg_fd_v12_0_5_viv_1 \pipelining.stages[2].slices[4].middlestages.abovediagonal.carryregister 
       (.CLK(CLK),
        .\i_no_async_controls.output_reg[1]_0 (\pipelining.stages[2].slices[4].middlestages.abovediagonal.carryregister_n_0 ),
        .\i_no_async_controls.output_reg[1]_1 (\pipelining.stages[1].slices[4].first.first_stage_adder_n_0 ));
  add_int64_c_reg_fd_v12_0_5_viv__parameterized1 \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister 
       (.CLK(CLK),
        .D({\pipelining.stages[1].slices[4].first.first_stage_adder_n_1 ,\pipelining.stages[1].slices[4].first.first_stage_adder_n_2 ,\pipelining.stages[1].slices[4].first.first_stage_adder_n_3 ,\pipelining.stages[1].slices[4].first.first_stage_adder_n_4 ,\pipelining.stages[1].slices[4].first.first_stage_adder_n_5 ,\pipelining.stages[1].slices[4].first.first_stage_adder_n_6 ,\pipelining.stages[1].slices[4].first.first_stage_adder_n_7 ,\pipelining.stages[1].slices[4].first.first_stage_adder_n_8 ,\pipelining.stages[1].slices[4].first.first_stage_adder_n_9 ,\pipelining.stages[1].slices[4].first.first_stage_adder_n_10 }),
        .Q({\pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_0 ,\pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_1 ,\pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_2 ,\pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_3 ,\pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_4 ,\pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_5 ,\pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_6 ,\pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_7 ,\pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_8 ,\pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_9 }));
  add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11_2 \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder 
       (.CLK(CLK),
        .Q(\piperegs[2]_21 ),
        .diagonal_c_out_3(diagonal_c_out_3),
        .\i_no_async_controls.output_reg[10] (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_1 ),
        .\i_no_async_controls.output_reg[11] (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_0 ),
        .\i_no_async_controls.output_reg[1] (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_10 ),
        .\i_no_async_controls.output_reg[2] (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_9 ),
        .\i_no_async_controls.output_reg[3] (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_8 ),
        .\i_no_async_controls.output_reg[4] (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_7 ),
        .\i_no_async_controls.output_reg[5] (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_6 ),
        .\i_no_async_controls.output_reg[6] (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_5 ),
        .\i_no_async_controls.output_reg[7] (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_4 ),
        .\i_no_async_controls.output_reg[8] (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_3 ),
        .\i_no_async_controls.output_reg[9] (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_2 ),
        .\pipecarry[2,2] (\pipecarry[2,2] ));
  add_int64_c_reg_fd_v12_0_5_viv_3 \pipelining.stages[3].slices[3].middlestages.diagonal.i_add.addcarryregister 
       (.CLK(CLK),
        .D2_out(D2_out),
        .\pipecarry[3,3] (\pipecarry[3,3] ));
  add_int64_c_reg_fd_v12_0_5_viv_4 \pipelining.stages[3].slices[4].middlestages.abovediagonal.carryregister 
       (.CLK(CLK),
        .D1_out(D1_out),
        .diagonal_c_out_2(diagonal_c_out_2),
        .\i_no_async_controls.output_reg[1]_0 (\pipelining.stages[2].slices[4].middlestages.abovediagonal.carryregister_n_0 ));
  add_int64_c_reg_fd_v12_0_5_viv__parameterized1_5 \pipelining.stages[3].slices[4].middlestages.abovediagonal.piperegister 
       (.CLK(CLK),
        .D({\pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_0 ,\pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_1 ,\pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_2 ,\pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_3 ,\pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_4 ,\pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_5 ,\pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_6 ,\pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_7 ,\pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_8 ,\pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_9 }),
        .Q(\piperegs[3]_32 ));
  add_int64_c_reg_fd_v12_0_5_viv_6 \pipelining.stages[3].slices[5].middlestages.abovediagonal.carryregister 
       (.CLK(CLK),
        .\i_no_async_controls.output_reg[1] (\pipelining.stages[3].slices[5].middlestages.abovediagonal.carryregister_n_0 ),
        .\i_no_async_controls.output_reg[1]_0 (\pipelining.stages[1].slices[5].first.first_stage_adder_n_11 ));
  add_int64_c_reg_fd_v12_0_5_viv__parameterized4_7 \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister 
       (.CLK(CLK),
        .\i_no_async_controls.output_reg[10] (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_1 ),
        .\i_no_async_controls.output_reg[10]_0 (\pipelining.stages[1].slices[5].first.first_stage_adder_n_1 ),
        .\i_no_async_controls.output_reg[11] (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_0 ),
        .\i_no_async_controls.output_reg[11]_0 (\pipelining.stages[1].slices[5].first.first_stage_adder_n_0 ),
        .\i_no_async_controls.output_reg[1] (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_10 ),
        .\i_no_async_controls.output_reg[1]_0 (\pipelining.stages[1].slices[5].first.first_stage_adder_n_10 ),
        .\i_no_async_controls.output_reg[2] (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_9 ),
        .\i_no_async_controls.output_reg[2]_0 (\pipelining.stages[1].slices[5].first.first_stage_adder_n_9 ),
        .\i_no_async_controls.output_reg[3] (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_8 ),
        .\i_no_async_controls.output_reg[3]_0 (\pipelining.stages[1].slices[5].first.first_stage_adder_n_8 ),
        .\i_no_async_controls.output_reg[4] (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_7 ),
        .\i_no_async_controls.output_reg[4]_0 (\pipelining.stages[1].slices[5].first.first_stage_adder_n_7 ),
        .\i_no_async_controls.output_reg[5] (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_6 ),
        .\i_no_async_controls.output_reg[5]_0 (\pipelining.stages[1].slices[5].first.first_stage_adder_n_6 ),
        .\i_no_async_controls.output_reg[6] (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_5 ),
        .\i_no_async_controls.output_reg[6]_0 (\pipelining.stages[1].slices[5].first.first_stage_adder_n_5 ),
        .\i_no_async_controls.output_reg[7] (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_4 ),
        .\i_no_async_controls.output_reg[7]_0 (\pipelining.stages[1].slices[5].first.first_stage_adder_n_4 ),
        .\i_no_async_controls.output_reg[8] (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_3 ),
        .\i_no_async_controls.output_reg[8]_0 (\pipelining.stages[1].slices[5].first.first_stage_adder_n_3 ),
        .\i_no_async_controls.output_reg[9] (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_2 ),
        .\i_no_async_controls.output_reg[9]_0 (\pipelining.stages[1].slices[5].first.first_stage_adder_n_2 ));
  add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized13 \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder 
       (.CLK(CLK),
        .Q(\piperegs[3]_32 ),
        .diagonal_c_out_2(diagonal_c_out_2),
        .\i_no_async_controls.output_reg[10] ({\pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_1 ,\pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_2 ,\pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_3 ,\pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_4 ,\pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_5 ,\pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_6 ,\pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_7 ,\pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_8 ,\pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_9 ,\pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_10 }),
        .\pipecarry[3,3] (\pipecarry[3,3] ));
  add_int64_c_reg_fd_v12_0_5_viv_8 \pipelining.stages[4].slices[4].middlestages.diagonal.i_add.addcarryregister 
       (.CLK(CLK),
        .D1_out(D1_out),
        .\pipecarry[4,4] (\pipecarry[4,4] ));
  add_int64_c_reg_fd_v12_0_5_viv_9 \pipelining.stages[4].slices[5].middlestages.abovediagonal.carryregister 
       (.CLK(CLK),
        .D0_out(D0_out),
        .diagonal_c_out_1(diagonal_c_out_1),
        .\i_no_async_controls.output_reg[1]_0 (\pipelining.stages[3].slices[5].middlestages.abovediagonal.carryregister_n_0 ));
  add_int64_c_reg_fd_v12_0_5_viv__parameterized4_10 \pipelining.stages[4].slices[5].middlestages.abovediagonal.piperegister 
       (.CLK(CLK),
        .\i_no_async_controls.output_reg[10]_0 (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_1 ),
        .\i_no_async_controls.output_reg[11]_0 (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_0 ),
        .\i_no_async_controls.output_reg[1]_0 (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_10 ),
        .\i_no_async_controls.output_reg[2]_0 (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_9 ),
        .\i_no_async_controls.output_reg[3]_0 (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_8 ),
        .\i_no_async_controls.output_reg[4]_0 (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_7 ),
        .\i_no_async_controls.output_reg[5]_0 (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_6 ),
        .\i_no_async_controls.output_reg[6]_0 (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_5 ),
        .\i_no_async_controls.output_reg[7]_0 (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_4 ),
        .\i_no_async_controls.output_reg[8]_0 (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_3 ),
        .\i_no_async_controls.output_reg[9]_0 (\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_2 ),
        .\piperegs[4]_42 (\piperegs[4]_42 ));
  add_int64_c_reg_fd_v12_0_5_viv__parameterized4_11 \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister 
       (.CLK(CLK),
        .\i_no_async_controls.output_reg[10] (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_1 ),
        .\i_no_async_controls.output_reg[10]_0 (\pipelining.stages[1].slices[6].first.first_stage_adder_n_1 ),
        .\i_no_async_controls.output_reg[11] (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_0 ),
        .\i_no_async_controls.output_reg[11]_0 (\pipelining.stages[1].slices[6].first.first_stage_adder_n_0 ),
        .\i_no_async_controls.output_reg[1] (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_10 ),
        .\i_no_async_controls.output_reg[1]_0 (\pipelining.stages[1].slices[6].first.first_stage_adder_n_10 ),
        .\i_no_async_controls.output_reg[2] (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_9 ),
        .\i_no_async_controls.output_reg[2]_0 (\pipelining.stages[1].slices[6].first.first_stage_adder_n_9 ),
        .\i_no_async_controls.output_reg[3] (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_8 ),
        .\i_no_async_controls.output_reg[3]_0 (\pipelining.stages[1].slices[6].first.first_stage_adder_n_8 ),
        .\i_no_async_controls.output_reg[4] (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_7 ),
        .\i_no_async_controls.output_reg[4]_0 (\pipelining.stages[1].slices[6].first.first_stage_adder_n_7 ),
        .\i_no_async_controls.output_reg[5] (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_6 ),
        .\i_no_async_controls.output_reg[5]_0 (\pipelining.stages[1].slices[6].first.first_stage_adder_n_6 ),
        .\i_no_async_controls.output_reg[6] (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_5 ),
        .\i_no_async_controls.output_reg[6]_0 (\pipelining.stages[1].slices[6].first.first_stage_adder_n_5 ),
        .\i_no_async_controls.output_reg[7] (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_4 ),
        .\i_no_async_controls.output_reg[7]_0 (\pipelining.stages[1].slices[6].first.first_stage_adder_n_4 ),
        .\i_no_async_controls.output_reg[8] (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_3 ),
        .\i_no_async_controls.output_reg[8]_0 (\pipelining.stages[1].slices[6].first.first_stage_adder_n_3 ),
        .\i_no_async_controls.output_reg[9] (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_2 ),
        .\i_no_async_controls.output_reg[9]_0 (\pipelining.stages[1].slices[6].first.first_stage_adder_n_2 ));
  add_int64_c_reg_fd_v12_0_5_viv__parameterized1_12 \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister 
       (.CLK(CLK),
        .\i_no_async_controls.output_reg[10] (\pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_0 ),
        .\i_no_async_controls.output_reg[10]_0 (\pipelining.stages[1].slices[1].first.first_stage_adder_n_0 ),
        .\i_no_async_controls.output_reg[1] (\pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_9 ),
        .\i_no_async_controls.output_reg[1]_0 (\pipelining.stages[1].slices[1].first.first_stage_adder_n_9 ),
        .\i_no_async_controls.output_reg[2] (\pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_8 ),
        .\i_no_async_controls.output_reg[2]_0 (\pipelining.stages[1].slices[1].first.first_stage_adder_n_8 ),
        .\i_no_async_controls.output_reg[3] (\pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_7 ),
        .\i_no_async_controls.output_reg[3]_0 (\pipelining.stages[1].slices[1].first.first_stage_adder_n_7 ),
        .\i_no_async_controls.output_reg[4] (\pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_6 ),
        .\i_no_async_controls.output_reg[4]_0 (\pipelining.stages[1].slices[1].first.first_stage_adder_n_6 ),
        .\i_no_async_controls.output_reg[5] (\pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_5 ),
        .\i_no_async_controls.output_reg[5]_0 (\pipelining.stages[1].slices[1].first.first_stage_adder_n_5 ),
        .\i_no_async_controls.output_reg[6] (\pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_4 ),
        .\i_no_async_controls.output_reg[6]_0 (\pipelining.stages[1].slices[1].first.first_stage_adder_n_4 ),
        .\i_no_async_controls.output_reg[7] (\pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_3 ),
        .\i_no_async_controls.output_reg[7]_0 (\pipelining.stages[1].slices[1].first.first_stage_adder_n_3 ),
        .\i_no_async_controls.output_reg[8] (\pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_2 ),
        .\i_no_async_controls.output_reg[8]_0 (\pipelining.stages[1].slices[1].first.first_stage_adder_n_2 ),
        .\i_no_async_controls.output_reg[9] (\pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_1 ),
        .\i_no_async_controls.output_reg[9]_0 (\pipelining.stages[1].slices[1].first.first_stage_adder_n_1 ));
  add_int64_c_reg_fd_v12_0_5_viv__parameterized4_13 \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister 
       (.CLK(CLK),
        .\i_no_async_controls.output_reg[10] (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_1 ),
        .\i_no_async_controls.output_reg[10]_0 (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_1 ),
        .\i_no_async_controls.output_reg[11] (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_0 ),
        .\i_no_async_controls.output_reg[11]_0 (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_0 ),
        .\i_no_async_controls.output_reg[1] (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_10 ),
        .\i_no_async_controls.output_reg[1]_0 (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_10 ),
        .\i_no_async_controls.output_reg[2] (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_9 ),
        .\i_no_async_controls.output_reg[2]_0 (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_9 ),
        .\i_no_async_controls.output_reg[3] (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_8 ),
        .\i_no_async_controls.output_reg[3]_0 (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_8 ),
        .\i_no_async_controls.output_reg[4] (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_7 ),
        .\i_no_async_controls.output_reg[4]_0 (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_7 ),
        .\i_no_async_controls.output_reg[5] (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_6 ),
        .\i_no_async_controls.output_reg[5]_0 (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_6 ),
        .\i_no_async_controls.output_reg[6] (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_5 ),
        .\i_no_async_controls.output_reg[6]_0 (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_5 ),
        .\i_no_async_controls.output_reg[7] (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_4 ),
        .\i_no_async_controls.output_reg[7]_0 (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_4 ),
        .\i_no_async_controls.output_reg[8] (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_3 ),
        .\i_no_async_controls.output_reg[8]_0 (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_3 ),
        .\i_no_async_controls.output_reg[9] (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_2 ),
        .\i_no_async_controls.output_reg[9]_0 (\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_2 ));
  add_int64_c_reg_fd_v12_0_5_viv__parameterized4_14 \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister 
       (.CLK(CLK),
        .\i_no_async_controls.output_reg[10] (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_1 ),
        .\i_no_async_controls.output_reg[10]_0 (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_1 ),
        .\i_no_async_controls.output_reg[11] (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_0 ),
        .\i_no_async_controls.output_reg[11]_0 (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_0 ),
        .\i_no_async_controls.output_reg[1] (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_10 ),
        .\i_no_async_controls.output_reg[1]_0 (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_10 ),
        .\i_no_async_controls.output_reg[2] (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_9 ),
        .\i_no_async_controls.output_reg[2]_0 (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_9 ),
        .\i_no_async_controls.output_reg[3] (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_8 ),
        .\i_no_async_controls.output_reg[3]_0 (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_8 ),
        .\i_no_async_controls.output_reg[4] (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_7 ),
        .\i_no_async_controls.output_reg[4]_0 (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_7 ),
        .\i_no_async_controls.output_reg[5] (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_6 ),
        .\i_no_async_controls.output_reg[5]_0 (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_6 ),
        .\i_no_async_controls.output_reg[6] (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_5 ),
        .\i_no_async_controls.output_reg[6]_0 (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_5 ),
        .\i_no_async_controls.output_reg[7] (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_4 ),
        .\i_no_async_controls.output_reg[7]_0 (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_4 ),
        .\i_no_async_controls.output_reg[8] (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_3 ),
        .\i_no_async_controls.output_reg[8]_0 (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_3 ),
        .\i_no_async_controls.output_reg[9] (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_2 ),
        .\i_no_async_controls.output_reg[9]_0 (\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_2 ));
  add_int64_c_reg_fd_v12_0_5_viv__parameterized1_15 \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister 
       (.CLK(CLK),
        .D({\pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_1 ,\pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_2 ,\pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_3 ,\pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_4 ,\pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_5 ,\pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_6 ,\pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_7 ,\pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_8 ,\pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_9 ,\pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_10 }),
        .Q({\pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_0 ,\pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_1 ,\pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_2 ,\pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_3 ,\pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_4 ,\pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_5 ,\pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_6 ,\pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_7 ,\pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_8 ,\pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_9 }));
  add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11_16 \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder 
       (.CLK(CLK),
        .Q({\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_1 ,\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_2 ,\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_3 ,\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_4 ,\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_5 ,\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_6 ,\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_7 ,\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_8 ,\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_9 ,\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_10 ,\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_11 }),
        .diagonal_c_out_1(diagonal_c_out_1),
        .\pipecarry[4,4] (\pipecarry[4,4] ),
        .\piperegs[4]_42 (\piperegs[4]_42 ));
  add_int64_c_reg_fd_v12_0_5_viv_17 \pipelining.stages[5].slices[5].middlestages.diagonal.i_add.addcarryregister 
       (.CLK(CLK),
        .D0_out(D0_out),
        .\pipecarry[5,5] (\pipecarry[5,5] ));
  add_int64_c_reg_fd_v12_0_5_viv__parameterized4_18 \pipelining.stages[5].slices[6].middlestages.abovediagonal.piperegister 
       (.CLK(CLK),
        .\i_no_async_controls.output_reg[10]_0 (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_1 ),
        .\i_no_async_controls.output_reg[11]_0 (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_0 ),
        .\i_no_async_controls.output_reg[1]_0 (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_10 ),
        .\i_no_async_controls.output_reg[2]_0 (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_9 ),
        .\i_no_async_controls.output_reg[3]_0 (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_8 ),
        .\i_no_async_controls.output_reg[4]_0 (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_7 ),
        .\i_no_async_controls.output_reg[5]_0 (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_6 ),
        .\i_no_async_controls.output_reg[6]_0 (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_5 ),
        .\i_no_async_controls.output_reg[7]_0 (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_4 ),
        .\i_no_async_controls.output_reg[8]_0 (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_3 ),
        .\i_no_async_controls.output_reg[9]_0 (\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_2 ),
        .\piperegs[5]_53 (\piperegs[5]_53 ));
  add_int64_c_reg_fd_v12_0_5_viv__parameterized1_19 \pipelining.stages[6].slices[1].laststage.belowdiagonal.piperegister 
       (.CLK(CLK),
        .S(S[9:0]),
        .\i_no_async_controls.output_reg[10]_0 (\pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_0 ),
        .\i_no_async_controls.output_reg[1]_0 (\pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_9 ),
        .\i_no_async_controls.output_reg[2]_0 (\pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_8 ),
        .\i_no_async_controls.output_reg[3]_0 (\pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_7 ),
        .\i_no_async_controls.output_reg[4]_0 (\pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_6 ),
        .\i_no_async_controls.output_reg[5]_0 (\pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_5 ),
        .\i_no_async_controls.output_reg[6]_0 (\pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_4 ),
        .\i_no_async_controls.output_reg[7]_0 (\pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_3 ),
        .\i_no_async_controls.output_reg[8]_0 (\pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_2 ),
        .\i_no_async_controls.output_reg[9]_0 (\pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_1 ));
  add_int64_c_reg_fd_v12_0_5_viv__parameterized4_20 \pipelining.stages[6].slices[2].laststage.belowdiagonal.piperegister 
       (.CLK(CLK),
        .S(S[20:10]),
        .\i_no_async_controls.output_reg[10]_0 (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_1 ),
        .\i_no_async_controls.output_reg[11]_0 (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_0 ),
        .\i_no_async_controls.output_reg[1]_0 (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_10 ),
        .\i_no_async_controls.output_reg[2]_0 (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_9 ),
        .\i_no_async_controls.output_reg[3]_0 (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_8 ),
        .\i_no_async_controls.output_reg[4]_0 (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_7 ),
        .\i_no_async_controls.output_reg[5]_0 (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_6 ),
        .\i_no_async_controls.output_reg[6]_0 (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_5 ),
        .\i_no_async_controls.output_reg[7]_0 (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_4 ),
        .\i_no_async_controls.output_reg[8]_0 (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_3 ),
        .\i_no_async_controls.output_reg[9]_0 (\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_2 ));
  add_int64_c_reg_fd_v12_0_5_viv__parameterized4_21 \pipelining.stages[6].slices[3].laststage.belowdiagonal.piperegister 
       (.CLK(CLK),
        .S(S[31:21]),
        .\i_no_async_controls.output_reg[10]_0 (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_1 ),
        .\i_no_async_controls.output_reg[11]_0 (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_0 ),
        .\i_no_async_controls.output_reg[1]_0 (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_10 ),
        .\i_no_async_controls.output_reg[2]_0 (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_9 ),
        .\i_no_async_controls.output_reg[3]_0 (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_8 ),
        .\i_no_async_controls.output_reg[4]_0 (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_7 ),
        .\i_no_async_controls.output_reg[5]_0 (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_6 ),
        .\i_no_async_controls.output_reg[6]_0 (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_5 ),
        .\i_no_async_controls.output_reg[7]_0 (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_4 ),
        .\i_no_async_controls.output_reg[8]_0 (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_3 ),
        .\i_no_async_controls.output_reg[9]_0 (\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_2 ));
  add_int64_c_reg_fd_v12_0_5_viv__parameterized1_22 \pipelining.stages[6].slices[4].laststage.belowdiagonal.piperegister 
       (.CLK(CLK),
        .D({\pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_0 ,\pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_1 ,\pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_2 ,\pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_3 ,\pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_4 ,\pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_5 ,\pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_6 ,\pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_7 ,\pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_8 ,\pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_9 }),
        .S(S[41:32]));
  add_int64_c_reg_fd_v12_0_5_viv__parameterized4_23 \pipelining.stages[6].slices[5].laststage.belowdiagonal.piperegister 
       (.CLK(CLK),
        .D({\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_1 ,\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_2 ,\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_3 ,\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_4 ,\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_5 ,\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_6 ,\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_7 ,\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_8 ,\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_9 ,\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_10 ,\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_11 }),
        .S(S[52:42]));
  add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11_24 \pipelining.stages[6].slices[6].laststage.diagonal.diagonal_adder 
       (.CLK(CLK),
        .S(S[63:53]),
        .\pipecarry[5,5] (\pipecarry[5,5] ),
        .\piperegs[5]_53 (\piperegs[5]_53 ));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_lut6_legacy" *) 
module add_int64_c_addsub_v12_0_12_lut6_legacy
   (\i_no_async_controls.output_reg[10] ,
    \i_no_async_controls.output_reg[9] ,
    \i_no_async_controls.output_reg[8] ,
    \i_no_async_controls.output_reg[7] ,
    \i_no_async_controls.output_reg[6] ,
    \i_no_async_controls.output_reg[5] ,
    \i_no_async_controls.output_reg[4] ,
    \i_no_async_controls.output_reg[3] ,
    \i_no_async_controls.output_reg[2] ,
    \i_no_async_controls.output_reg[1] ,
    \pipecarry[1,1] ,
    CLK,
    A,
    C_IN,
    B);
  output \i_no_async_controls.output_reg[10] ;
  output \i_no_async_controls.output_reg[9] ;
  output \i_no_async_controls.output_reg[8] ;
  output \i_no_async_controls.output_reg[7] ;
  output \i_no_async_controls.output_reg[6] ;
  output \i_no_async_controls.output_reg[5] ;
  output \i_no_async_controls.output_reg[4] ;
  output \i_no_async_controls.output_reg[3] ;
  output \i_no_async_controls.output_reg[2] ;
  output \i_no_async_controls.output_reg[1] ;
  output \pipecarry[1,1] ;
  input CLK;
  input [9:0]A;
  input C_IN;
  input [9:0]B;

  wire [9:0]A;
  wire [9:0]B;
  wire CLK;
  wire C_IN;
  wire LI;
  wire S;
  wire carry_simple_0;
  wire carry_simple_1;
  wire carry_simple_2;
  wire carry_simple_3;
  wire carry_simple_4;
  wire carry_simple_5;
  wire carry_simple_6;
  wire carry_simple_7;
  wire carry_simple_8;
  wire carry_simple_9;
  wire \i_no_async_controls.output_reg[10] ;
  wire \i_no_async_controls.output_reg[1] ;
  wire \i_no_async_controls.output_reg[2] ;
  wire \i_no_async_controls.output_reg[3] ;
  wire \i_no_async_controls.output_reg[4] ;
  wire \i_no_async_controls.output_reg[5] ;
  wire \i_no_async_controls.output_reg[6] ;
  wire \i_no_async_controls.output_reg[7] ;
  wire \i_no_async_controls.output_reg[8] ;
  wire \i_no_async_controls.output_reg[9] ;
  wire \i_simple_model.carryxor0__0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0 ;
  wire p_0_out;
  wire p_1_out;
  wire p_2_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire p_6_out;
  wire p_7_out;
  wire \pipecarry[1,1] ;
  wire [3:2]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED ;
  wire [3:2]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED ;

  add_int64_c_reg_fd_v12_0_5_viv__parameterized1_42 \i_q.i_simple.qreg 
       (.CLK(CLK),
        .\i_no_async_controls.output_reg[10]_0 (\i_no_async_controls.output_reg[10] ),
        .\i_no_async_controls.output_reg[1]_0 (\i_no_async_controls.output_reg[1] ),
        .\i_no_async_controls.output_reg[2]_0 (\i_no_async_controls.output_reg[2] ),
        .\i_no_async_controls.output_reg[3]_0 (\i_no_async_controls.output_reg[3] ),
        .\i_no_async_controls.output_reg[4]_0 (\i_no_async_controls.output_reg[4] ),
        .\i_no_async_controls.output_reg[5]_0 (\i_no_async_controls.output_reg[5] ),
        .\i_no_async_controls.output_reg[6]_0 (\i_no_async_controls.output_reg[6] ),
        .\i_no_async_controls.output_reg[7]_0 (\i_no_async_controls.output_reg[7] ),
        .\i_no_async_controls.output_reg[8]_0 (\i_no_async_controls.output_reg[8] ),
        .\i_no_async_controls.output_reg[9]_0 (\i_no_async_controls.output_reg[9] ),
        .\i_simple_model.carryxor0__0 (\i_simple_model.carryxor0__0 ),
        .\i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 (\i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ),
        .p_0_out(p_0_out),
        .p_1_out(p_1_out),
        .p_2_out(p_2_out),
        .p_3_out(p_3_out),
        .p_4_out(p_4_out),
        .p_5_out(p_5_out),
        .p_6_out(p_6_out),
        .p_7_out(p_7_out));
  add_int64_c_reg_fd_v12_0_5_viv_43 \i_q_c_out.i_simple.add_q_cout.q_c_outreg 
       (.CLK(CLK),
        .carry_simple_9(carry_simple_9),
        .\pipecarry[1,1] (\pipecarry[1,1] ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.carrymux0_CARRY4 
       (.CI(1'b0),
        .CO({carry_simple_3,carry_simple_2,carry_simple_1,carry_simple_0}),
        .CYINIT(C_IN),
        .DI(A[3:0]),
        .O({p_2_out,p_1_out,\i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ,\i_simple_model.carryxor0__0 }),
        .S({\i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0 ,S}));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.carrymux0_i_1 
       (.I0(B[0]),
        .I1(A[0]),
        .O(S));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1 
       (.I0(B[1]),
        .I1(A[1]),
        .O(\i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1 
       (.I0(B[2]),
        .I1(A[2]),
        .O(\i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1 
       (.I0(B[3]),
        .I1(A[3]),
        .O(\i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4 
       (.CI(carry_simple_3),
        .CO({carry_simple_7,carry_simple_6,carry_simple_5,carry_simple_4}),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O({p_6_out,p_5_out,p_4_out,p_3_out}),
        .S({\i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1 
       (.I0(B[4]),
        .I1(A[4]),
        .O(\i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1 
       (.I0(B[5]),
        .I1(A[5]),
        .O(\i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1 
       (.I0(B[6]),
        .I1(A[6]),
        .O(\i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1 
       (.I0(B[7]),
        .I1(A[7]),
        .O(\i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4 
       (.CI(carry_simple_7),
        .CO({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED [3:2],carry_simple_9,carry_simple_8}),
        .CYINIT(1'b0),
        .DI({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED [3:2],A[9:8]}),
        .O({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED [3:2],p_0_out,p_7_out}),
        .S({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED [3:2],LI,\i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1 
       (.I0(B[8]),
        .I1(A[8]),
        .O(\i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carryxortop_i_1 
       (.I0(B[9]),
        .I1(A[9]),
        .O(LI));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_lut6_legacy" *) 
module add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized1
   (D3_out,
    Q,
    A,
    CLK,
    diagonal_c_out_4,
    B);
  output D3_out;
  output [10:0]Q;
  input [10:0]A;
  input CLK;
  input diagonal_c_out_4;
  input [10:0]B;

  wire [10:0]A;
  wire [10:0]B;
  wire CI;
  wire CLK;
  wire D3_out;
  wire LI;
  wire [10:0]Q;
  wire S;
  wire carry_simple_0;
  wire carry_simple_1;
  wire carry_simple_10;
  wire carry_simple_2;
  wire carry_simple_3;
  wire carry_simple_4;
  wire carry_simple_5;
  wire carry_simple_6;
  wire carry_simple_7;
  wire carry_simple_8;
  wire diagonal_c_out_4;
  wire \i_simple_model.carryxor0__0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0 ;
  wire p_0_out;
  wire p_1_out;
  wire p_2_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire p_6_out;
  wire p_7_out;
  wire p_8_out;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED ;

  add_int64_c_reg_fd_v12_0_5_viv__parameterized4_40 \i_q.i_simple.qreg 
       (.CLK(CLK),
        .D({p_0_out,p_8_out,p_7_out,p_6_out,p_5_out,p_4_out,p_3_out,p_2_out,p_1_out,\i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ,\i_simple_model.carryxor0__0 }),
        .Q(Q));
  add_int64_c_reg_fd_v12_0_5_viv_41 \i_q_c_out.i_simple.add_q_cout.q_c_outreg 
       (.CLK(CLK),
        .D3_out(D3_out),
        .carry_simple_10(carry_simple_10),
        .diagonal_c_out_4(diagonal_c_out_4));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.carrymux0_CARRY4 
       (.CI(1'b0),
        .CO({carry_simple_3,carry_simple_2,carry_simple_1,carry_simple_0}),
        .CYINIT(1'b0),
        .DI(A[3:0]),
        .O({p_2_out,p_1_out,\i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ,\i_simple_model.carryxor0__0 }),
        .S({\i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0 ,S}));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.carrymux0_i_1 
       (.I0(B[0]),
        .I1(A[0]),
        .O(S));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1 
       (.I0(B[1]),
        .I1(A[1]),
        .O(\i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1 
       (.I0(B[2]),
        .I1(A[2]),
        .O(\i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1 
       (.I0(B[3]),
        .I1(A[3]),
        .O(\i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4 
       (.CI(carry_simple_3),
        .CO({carry_simple_7,carry_simple_6,carry_simple_5,carry_simple_4}),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O({p_6_out,p_5_out,p_4_out,p_3_out}),
        .S({\i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1 
       (.I0(B[4]),
        .I1(A[4]),
        .O(\i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1 
       (.I0(B[5]),
        .I1(A[5]),
        .O(\i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1 
       (.I0(B[6]),
        .I1(A[6]),
        .O(\i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1 
       (.I0(B[7]),
        .I1(A[7]),
        .O(\i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4 
       (.CI(carry_simple_7),
        .CO({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED [3],carry_simple_10,CI,carry_simple_8}),
        .CYINIT(1'b0),
        .DI({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED [3],A[10:8]}),
        .O({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED [3],p_0_out,p_8_out,p_7_out}),
        .S({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED [3],LI,\i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1 
       (.I0(B[8]),
        .I1(A[8]),
        .O(\i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1 
       (.I0(B[9]),
        .I1(A[9]),
        .O(\i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carryxortop_i_1 
       (.I0(B[10]),
        .I1(A[10]),
        .O(LI));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_lut6_legacy" *) 
module add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11
   (S,
    \piperegs[5]_53 ,
    \pipecarry[5,5] ,
    CLK);
  output [10:0]S;
  input [10:0]\piperegs[5]_53 ;
  input \pipecarry[5,5] ;
  input CLK;

  wire CLK;
  wire [10:0]S;
  wire carry_simple_0;
  wire carry_simple_1;
  wire carry_simple_2;
  wire carry_simple_3;
  wire carry_simple_4;
  wire carry_simple_5;
  wire carry_simple_6;
  wire carry_simple_7;
  wire carry_simple_8;
  wire carry_simple_9;
  wire \i_simple_model.carryxor0__0 ;
  wire p_0_out;
  wire p_11_out;
  wire p_13_out;
  wire p_15_out;
  wire p_17_out;
  wire p_1_out;
  wire p_3_out;
  wire p_5_out;
  wire p_7_out;
  wire p_9_out;
  wire \pipecarry[5,5] ;
  wire [10:0]\piperegs[5]_53 ;
  wire [3:2]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED ;

  add_int64_c_reg_fd_v12_0_5_viv__parameterized4_25 \i_q.i_simple.qreg 
       (.CLK(CLK),
        .D({p_0_out,p_17_out,p_15_out,p_13_out,p_11_out,p_9_out,p_7_out,p_5_out,p_3_out,p_1_out,\i_simple_model.carryxor0__0 }),
        .S(S));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.carrymux0_CARRY4 
       (.CI(1'b0),
        .CO({carry_simple_3,carry_simple_2,carry_simple_1,carry_simple_0}),
        .CYINIT(\pipecarry[5,5] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_5_out,p_3_out,p_1_out,\i_simple_model.carryxor0__0 }),
        .S(\piperegs[5]_53 [3:0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4 
       (.CI(carry_simple_3),
        .CO({carry_simple_7,carry_simple_6,carry_simple_5,carry_simple_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_13_out,p_11_out,p_9_out,p_7_out}),
        .S(\piperegs[5]_53 [7:4]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4 
       (.CI(carry_simple_7),
        .CO({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED [3:2],carry_simple_9,carry_simple_8}),
        .CYINIT(1'b0),
        .DI({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED [3:2],1'b0,1'b0}),
        .O({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED [3],p_0_out,p_17_out,p_15_out}),
        .S({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED [3],\piperegs[5]_53 [10:8]}));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_lut6_legacy" *) 
module add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11_26
   (diagonal_c_out_1,
    Q,
    \piperegs[4]_42 ,
    \pipecarry[4,4] ,
    CLK);
  output diagonal_c_out_1;
  output [10:0]Q;
  input [10:0]\piperegs[4]_42 ;
  input \pipecarry[4,4] ;
  input CLK;

  wire CLK;
  wire [10:0]Q;
  wire carry_simple_0;
  wire carry_simple_1;
  wire carry_simple_2;
  wire carry_simple_3;
  wire carry_simple_4;
  wire carry_simple_5;
  wire carry_simple_6;
  wire carry_simple_7;
  wire carry_simple_8;
  wire carry_simple_9;
  wire diagonal_c_out_1;
  wire \i_simple_model.carryxor0__0 ;
  wire p_0_out;
  wire p_11_out;
  wire p_13_out;
  wire p_15_out;
  wire p_17_out;
  wire p_1_out;
  wire p_3_out;
  wire p_5_out;
  wire p_7_out;
  wire p_9_out;
  wire \pipecarry[4,4] ;
  wire [10:0]\piperegs[4]_42 ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED ;

  add_int64_c_reg_fd_v12_0_5_viv__parameterized4_27 \i_q.i_simple.qreg 
       (.CLK(CLK),
        .D({p_0_out,p_17_out,p_15_out,p_13_out,p_11_out,p_9_out,p_7_out,p_5_out,p_3_out,p_1_out,\i_simple_model.carryxor0__0 }),
        .Q(Q));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.carrymux0_CARRY4 
       (.CI(1'b0),
        .CO({carry_simple_3,carry_simple_2,carry_simple_1,carry_simple_0}),
        .CYINIT(\pipecarry[4,4] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_5_out,p_3_out,p_1_out,\i_simple_model.carryxor0__0 }),
        .S(\piperegs[4]_42 [3:0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4 
       (.CI(carry_simple_3),
        .CO({carry_simple_7,carry_simple_6,carry_simple_5,carry_simple_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_13_out,p_11_out,p_9_out,p_7_out}),
        .S(\piperegs[4]_42 [7:4]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4 
       (.CI(carry_simple_7),
        .CO({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED [3],diagonal_c_out_1,carry_simple_9,carry_simple_8}),
        .CYINIT(1'b0),
        .DI({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED [3],p_0_out,p_17_out,p_15_out}),
        .S({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED [3],\piperegs[4]_42 [10:8]}));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_lut6_legacy" *) 
module add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11_29
   (\i_no_async_controls.output_reg[11] ,
    \i_no_async_controls.output_reg[10] ,
    \i_no_async_controls.output_reg[9] ,
    \i_no_async_controls.output_reg[8] ,
    \i_no_async_controls.output_reg[7] ,
    \i_no_async_controls.output_reg[6] ,
    \i_no_async_controls.output_reg[5] ,
    \i_no_async_controls.output_reg[4] ,
    \i_no_async_controls.output_reg[3] ,
    \i_no_async_controls.output_reg[2] ,
    \i_no_async_controls.output_reg[1] ,
    diagonal_c_out_3,
    CLK,
    Q,
    \pipecarry[2,2] );
  output \i_no_async_controls.output_reg[11] ;
  output \i_no_async_controls.output_reg[10] ;
  output \i_no_async_controls.output_reg[9] ;
  output \i_no_async_controls.output_reg[8] ;
  output \i_no_async_controls.output_reg[7] ;
  output \i_no_async_controls.output_reg[6] ;
  output \i_no_async_controls.output_reg[5] ;
  output \i_no_async_controls.output_reg[4] ;
  output \i_no_async_controls.output_reg[3] ;
  output \i_no_async_controls.output_reg[2] ;
  output \i_no_async_controls.output_reg[1] ;
  output diagonal_c_out_3;
  input CLK;
  input [10:0]Q;
  input \pipecarry[2,2] ;

  wire CLK;
  wire [10:0]Q;
  wire carry_simple_0;
  wire carry_simple_1;
  wire carry_simple_2;
  wire carry_simple_3;
  wire carry_simple_4;
  wire carry_simple_5;
  wire carry_simple_6;
  wire carry_simple_7;
  wire carry_simple_8;
  wire carry_simple_9;
  wire diagonal_c_out_3;
  wire \i_no_async_controls.output_reg[10] ;
  wire \i_no_async_controls.output_reg[11] ;
  wire \i_no_async_controls.output_reg[1] ;
  wire \i_no_async_controls.output_reg[2] ;
  wire \i_no_async_controls.output_reg[3] ;
  wire \i_no_async_controls.output_reg[4] ;
  wire \i_no_async_controls.output_reg[5] ;
  wire \i_no_async_controls.output_reg[6] ;
  wire \i_no_async_controls.output_reg[7] ;
  wire \i_no_async_controls.output_reg[8] ;
  wire \i_no_async_controls.output_reg[9] ;
  wire \i_simple_model.carryxor0__0 ;
  wire p_0_out;
  wire p_11_out;
  wire p_13_out;
  wire p_15_out;
  wire p_17_out;
  wire p_1_out;
  wire p_3_out;
  wire p_5_out;
  wire p_7_out;
  wire p_9_out;
  wire \pipecarry[2,2] ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED ;

  add_int64_c_reg_fd_v12_0_5_viv__parameterized4_30 \i_q.i_simple.qreg 
       (.CLK(CLK),
        .\i_no_async_controls.output_reg[10]_0 (\i_no_async_controls.output_reg[10] ),
        .\i_no_async_controls.output_reg[11]_0 (\i_no_async_controls.output_reg[11] ),
        .\i_no_async_controls.output_reg[1]_0 (\i_no_async_controls.output_reg[1] ),
        .\i_no_async_controls.output_reg[2]_0 (\i_no_async_controls.output_reg[2] ),
        .\i_no_async_controls.output_reg[3]_0 (\i_no_async_controls.output_reg[3] ),
        .\i_no_async_controls.output_reg[4]_0 (\i_no_async_controls.output_reg[4] ),
        .\i_no_async_controls.output_reg[5]_0 (\i_no_async_controls.output_reg[5] ),
        .\i_no_async_controls.output_reg[6]_0 (\i_no_async_controls.output_reg[6] ),
        .\i_no_async_controls.output_reg[7]_0 (\i_no_async_controls.output_reg[7] ),
        .\i_no_async_controls.output_reg[8]_0 (\i_no_async_controls.output_reg[8] ),
        .\i_no_async_controls.output_reg[9]_0 (\i_no_async_controls.output_reg[9] ),
        .\i_simple_model.carryxor0__0 (\i_simple_model.carryxor0__0 ),
        .p_0_out(p_0_out),
        .p_11_out(p_11_out),
        .p_13_out(p_13_out),
        .p_15_out(p_15_out),
        .p_17_out(p_17_out),
        .p_1_out(p_1_out),
        .p_3_out(p_3_out),
        .p_5_out(p_5_out),
        .p_7_out(p_7_out),
        .p_9_out(p_9_out));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.carrymux0_CARRY4 
       (.CI(1'b0),
        .CO({carry_simple_3,carry_simple_2,carry_simple_1,carry_simple_0}),
        .CYINIT(\pipecarry[2,2] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_5_out,p_3_out,p_1_out,\i_simple_model.carryxor0__0 }),
        .S(Q[3:0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4 
       (.CI(carry_simple_3),
        .CO({carry_simple_7,carry_simple_6,carry_simple_5,carry_simple_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_13_out,p_11_out,p_9_out,p_7_out}),
        .S(Q[7:4]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4 
       (.CI(carry_simple_7),
        .CO({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED [3],diagonal_c_out_3,carry_simple_9,carry_simple_8}),
        .CYINIT(1'b0),
        .DI({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED [3],p_0_out,p_17_out,p_15_out}),
        .S({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED [3],Q[10:8]}));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_lut6_legacy" *) 
module add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11_31
   (\i_no_async_controls.output_reg[11] ,
    \i_no_async_controls.output_reg[10] ,
    \i_no_async_controls.output_reg[9] ,
    \i_no_async_controls.output_reg[8] ,
    \i_no_async_controls.output_reg[7] ,
    \i_no_async_controls.output_reg[6] ,
    \i_no_async_controls.output_reg[5] ,
    \i_no_async_controls.output_reg[4] ,
    \i_no_async_controls.output_reg[3] ,
    \i_no_async_controls.output_reg[2] ,
    \i_no_async_controls.output_reg[1] ,
    diagonal_c_out_4,
    CLK,
    Q,
    \pipecarry[1,1] );
  output \i_no_async_controls.output_reg[11] ;
  output \i_no_async_controls.output_reg[10] ;
  output \i_no_async_controls.output_reg[9] ;
  output \i_no_async_controls.output_reg[8] ;
  output \i_no_async_controls.output_reg[7] ;
  output \i_no_async_controls.output_reg[6] ;
  output \i_no_async_controls.output_reg[5] ;
  output \i_no_async_controls.output_reg[4] ;
  output \i_no_async_controls.output_reg[3] ;
  output \i_no_async_controls.output_reg[2] ;
  output \i_no_async_controls.output_reg[1] ;
  output diagonal_c_out_4;
  input CLK;
  input [10:0]Q;
  input \pipecarry[1,1] ;

  wire CLK;
  wire [10:0]Q;
  wire carry_simple_0;
  wire carry_simple_1;
  wire carry_simple_2;
  wire carry_simple_3;
  wire carry_simple_4;
  wire carry_simple_5;
  wire carry_simple_6;
  wire carry_simple_7;
  wire carry_simple_8;
  wire carry_simple_9;
  wire diagonal_c_out_4;
  wire \i_no_async_controls.output_reg[10] ;
  wire \i_no_async_controls.output_reg[11] ;
  wire \i_no_async_controls.output_reg[1] ;
  wire \i_no_async_controls.output_reg[2] ;
  wire \i_no_async_controls.output_reg[3] ;
  wire \i_no_async_controls.output_reg[4] ;
  wire \i_no_async_controls.output_reg[5] ;
  wire \i_no_async_controls.output_reg[6] ;
  wire \i_no_async_controls.output_reg[7] ;
  wire \i_no_async_controls.output_reg[8] ;
  wire \i_no_async_controls.output_reg[9] ;
  wire \i_simple_model.carryxor0__0 ;
  wire p_0_out;
  wire p_11_out;
  wire p_13_out;
  wire p_15_out;
  wire p_17_out;
  wire p_1_out;
  wire p_3_out;
  wire p_5_out;
  wire p_7_out;
  wire p_9_out;
  wire \pipecarry[1,1] ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED ;

  add_int64_c_reg_fd_v12_0_5_viv__parameterized4_32 \i_q.i_simple.qreg 
       (.CLK(CLK),
        .\i_no_async_controls.output_reg[10]_0 (\i_no_async_controls.output_reg[10] ),
        .\i_no_async_controls.output_reg[11]_0 (\i_no_async_controls.output_reg[11] ),
        .\i_no_async_controls.output_reg[1]_0 (\i_no_async_controls.output_reg[1] ),
        .\i_no_async_controls.output_reg[2]_0 (\i_no_async_controls.output_reg[2] ),
        .\i_no_async_controls.output_reg[3]_0 (\i_no_async_controls.output_reg[3] ),
        .\i_no_async_controls.output_reg[4]_0 (\i_no_async_controls.output_reg[4] ),
        .\i_no_async_controls.output_reg[5]_0 (\i_no_async_controls.output_reg[5] ),
        .\i_no_async_controls.output_reg[6]_0 (\i_no_async_controls.output_reg[6] ),
        .\i_no_async_controls.output_reg[7]_0 (\i_no_async_controls.output_reg[7] ),
        .\i_no_async_controls.output_reg[8]_0 (\i_no_async_controls.output_reg[8] ),
        .\i_no_async_controls.output_reg[9]_0 (\i_no_async_controls.output_reg[9] ),
        .\i_simple_model.carryxor0__0 (\i_simple_model.carryxor0__0 ),
        .p_0_out(p_0_out),
        .p_11_out(p_11_out),
        .p_13_out(p_13_out),
        .p_15_out(p_15_out),
        .p_17_out(p_17_out),
        .p_1_out(p_1_out),
        .p_3_out(p_3_out),
        .p_5_out(p_5_out),
        .p_7_out(p_7_out),
        .p_9_out(p_9_out));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.carrymux0_CARRY4 
       (.CI(1'b0),
        .CO({carry_simple_3,carry_simple_2,carry_simple_1,carry_simple_0}),
        .CYINIT(\pipecarry[1,1] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_5_out,p_3_out,p_1_out,\i_simple_model.carryxor0__0 }),
        .S(Q[3:0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4 
       (.CI(carry_simple_3),
        .CO({carry_simple_7,carry_simple_6,carry_simple_5,carry_simple_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_13_out,p_11_out,p_9_out,p_7_out}),
        .S(Q[7:4]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4 
       (.CI(carry_simple_7),
        .CO({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED [3],diagonal_c_out_4,carry_simple_9,carry_simple_8}),
        .CYINIT(1'b0),
        .DI({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED [3],p_0_out,p_17_out,p_15_out}),
        .S({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED [3],Q[10:8]}));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_lut6_legacy" *) 
module add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized13
   (diagonal_c_out_2,
    \i_no_async_controls.output_reg[10] ,
    Q,
    \pipecarry[3,3] ,
    CLK);
  output diagonal_c_out_2;
  output [9:0]\i_no_async_controls.output_reg[10] ;
  input [9:0]Q;
  input \pipecarry[3,3] ;
  input CLK;

  wire CLK;
  wire [9:0]Q;
  wire carry_simple_0;
  wire carry_simple_1;
  wire carry_simple_2;
  wire carry_simple_3;
  wire carry_simple_4;
  wire carry_simple_5;
  wire carry_simple_6;
  wire carry_simple_7;
  wire carry_simple_8;
  wire diagonal_c_out_2;
  wire [9:0]\i_no_async_controls.output_reg[10] ;
  wire \i_simple_model.carryxor0__0 ;
  wire p_0_out;
  wire p_11_out;
  wire p_13_out;
  wire p_15_out;
  wire p_1_out;
  wire p_3_out;
  wire p_5_out;
  wire p_7_out;
  wire p_9_out;
  wire \pipecarry[3,3] ;
  wire [3:2]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED ;
  wire [3:2]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED ;

  add_int64_c_reg_fd_v12_0_5_viv__parameterized1_28 \i_q.i_simple.qreg 
       (.CLK(CLK),
        .D({p_0_out,p_15_out,p_13_out,p_11_out,p_9_out,p_7_out,p_5_out,p_3_out,p_1_out,\i_simple_model.carryxor0__0 }),
        .\i_no_async_controls.output_reg[10]_0 (\i_no_async_controls.output_reg[10] ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.carrymux0_CARRY4 
       (.CI(1'b0),
        .CO({carry_simple_3,carry_simple_2,carry_simple_1,carry_simple_0}),
        .CYINIT(\pipecarry[3,3] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_5_out,p_3_out,p_1_out,\i_simple_model.carryxor0__0 }),
        .S(Q[3:0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4 
       (.CI(carry_simple_3),
        .CO({carry_simple_7,carry_simple_6,carry_simple_5,carry_simple_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_13_out,p_11_out,p_9_out,p_7_out}),
        .S(Q[7:4]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4 
       (.CI(carry_simple_7),
        .CO({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED [3:2],diagonal_c_out_2,carry_simple_8}),
        .CYINIT(1'b0),
        .DI({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED [3:2],1'b0,1'b0}),
        .O({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED [3:2],p_0_out,p_15_out}),
        .S({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED [3:2],Q[9:8]}));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_lut6_legacy" *) 
module add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized3
   (\i_no_async_controls.output_reg[1] ,
    Q,
    A,
    CLK,
    B);
  output \i_no_async_controls.output_reg[1] ;
  output [10:0]Q;
  input [10:0]A;
  input CLK;
  input [10:0]B;

  wire [10:0]A;
  wire [10:0]B;
  wire CI;
  wire CLK;
  wire LI;
  wire [10:0]Q;
  wire S;
  wire carry_simple_0;
  wire carry_simple_1;
  wire carry_simple_10;
  wire carry_simple_2;
  wire carry_simple_3;
  wire carry_simple_4;
  wire carry_simple_5;
  wire carry_simple_6;
  wire carry_simple_7;
  wire carry_simple_8;
  wire \i_no_async_controls.output_reg[1] ;
  wire \i_simple_model.carryxor0__0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0 ;
  wire p_0_out;
  wire p_1_out;
  wire p_2_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire p_6_out;
  wire p_7_out;
  wire p_8_out;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED ;

  add_int64_c_reg_fd_v12_0_5_viv__parameterized4_38 \i_q.i_simple.qreg 
       (.CLK(CLK),
        .D({p_0_out,p_8_out,p_7_out,p_6_out,p_5_out,p_4_out,p_3_out,p_2_out,p_1_out,\i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ,\i_simple_model.carryxor0__0 }),
        .Q(Q));
  add_int64_c_reg_fd_v12_0_5_viv_39 \i_q_c_out.i_simple.add_q_cout.q_c_outreg 
       (.CLK(CLK),
        .carry_simple_10(carry_simple_10),
        .\i_no_async_controls.output_reg[1]_0 (\i_no_async_controls.output_reg[1] ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.carrymux0_CARRY4 
       (.CI(1'b0),
        .CO({carry_simple_3,carry_simple_2,carry_simple_1,carry_simple_0}),
        .CYINIT(1'b0),
        .DI(A[3:0]),
        .O({p_2_out,p_1_out,\i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ,\i_simple_model.carryxor0__0 }),
        .S({\i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0 ,S}));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.carrymux0_i_1 
       (.I0(B[0]),
        .I1(A[0]),
        .O(S));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1 
       (.I0(B[1]),
        .I1(A[1]),
        .O(\i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1 
       (.I0(B[2]),
        .I1(A[2]),
        .O(\i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1 
       (.I0(B[3]),
        .I1(A[3]),
        .O(\i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4 
       (.CI(carry_simple_3),
        .CO({carry_simple_7,carry_simple_6,carry_simple_5,carry_simple_4}),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O({p_6_out,p_5_out,p_4_out,p_3_out}),
        .S({\i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1 
       (.I0(B[4]),
        .I1(A[4]),
        .O(\i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1 
       (.I0(B[5]),
        .I1(A[5]),
        .O(\i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1 
       (.I0(B[6]),
        .I1(A[6]),
        .O(\i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1 
       (.I0(B[7]),
        .I1(A[7]),
        .O(\i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4 
       (.CI(carry_simple_7),
        .CO({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED [3],carry_simple_10,CI,carry_simple_8}),
        .CYINIT(1'b0),
        .DI({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED [3],A[10:8]}),
        .O({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED [3],p_0_out,p_8_out,p_7_out}),
        .S({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED [3],LI,\i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1 
       (.I0(B[8]),
        .I1(A[8]),
        .O(\i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1 
       (.I0(B[9]),
        .I1(A[9]),
        .O(\i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carryxortop_i_1 
       (.I0(B[10]),
        .I1(A[10]),
        .O(LI));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_lut6_legacy" *) 
module add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized5
   (\i_no_async_controls.output_reg[1] ,
    Q,
    A,
    CLK,
    B);
  output \i_no_async_controls.output_reg[1] ;
  output [9:0]Q;
  input [9:0]A;
  input CLK;
  input [9:0]B;

  wire [9:0]A;
  wire [9:0]B;
  wire CI;
  wire CLK;
  wire LI;
  wire [9:0]Q;
  wire S;
  wire carry_simple_0;
  wire carry_simple_1;
  wire carry_simple_2;
  wire carry_simple_3;
  wire carry_simple_4;
  wire carry_simple_5;
  wire carry_simple_6;
  wire carry_simple_7;
  wire carry_simple_9;
  wire \i_no_async_controls.output_reg[1] ;
  wire \i_simple_model.carryxor0__0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0 ;
  wire p_0_out;
  wire p_1_out;
  wire p_2_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire p_6_out;
  wire p_7_out;
  wire [3:2]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED ;
  wire [3:2]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED ;

  add_int64_c_reg_fd_v12_0_5_viv__parameterized1_36 \i_q.i_simple.qreg 
       (.CLK(CLK),
        .D({p_0_out,p_7_out,p_6_out,p_5_out,p_4_out,p_3_out,p_2_out,p_1_out,\i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ,\i_simple_model.carryxor0__0 }),
        .Q(Q));
  add_int64_c_reg_fd_v12_0_5_viv_37 \i_q_c_out.i_simple.add_q_cout.q_c_outreg 
       (.CLK(CLK),
        .carry_simple_9(carry_simple_9),
        .\i_no_async_controls.output_reg[1]_0 (\i_no_async_controls.output_reg[1] ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.carrymux0_CARRY4 
       (.CI(1'b0),
        .CO({carry_simple_3,carry_simple_2,carry_simple_1,carry_simple_0}),
        .CYINIT(1'b0),
        .DI(A[3:0]),
        .O({p_2_out,p_1_out,\i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ,\i_simple_model.carryxor0__0 }),
        .S({\i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0 ,S}));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.carrymux0_i_1 
       (.I0(B[0]),
        .I1(A[0]),
        .O(S));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1 
       (.I0(B[1]),
        .I1(A[1]),
        .O(\i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1 
       (.I0(B[2]),
        .I1(A[2]),
        .O(\i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1 
       (.I0(B[3]),
        .I1(A[3]),
        .O(\i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4 
       (.CI(carry_simple_3),
        .CO({carry_simple_7,carry_simple_6,carry_simple_5,carry_simple_4}),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O({p_6_out,p_5_out,p_4_out,p_3_out}),
        .S({\i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1 
       (.I0(B[4]),
        .I1(A[4]),
        .O(\i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1 
       (.I0(B[5]),
        .I1(A[5]),
        .O(\i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1 
       (.I0(B[6]),
        .I1(A[6]),
        .O(\i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1 
       (.I0(B[7]),
        .I1(A[7]),
        .O(\i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4 
       (.CI(carry_simple_7),
        .CO({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED [3:2],carry_simple_9,CI}),
        .CYINIT(1'b0),
        .DI({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED [3:2],A[9:8]}),
        .O({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED [3:2],p_0_out,p_7_out}),
        .S({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED [3:2],LI,\i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1 
       (.I0(B[8]),
        .I1(A[8]),
        .O(\i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carryxortop_i_1 
       (.I0(B[9]),
        .I1(A[9]),
        .O(LI));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_lut6_legacy" *) 
module add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized7
   (\i_no_async_controls.output_reg[11] ,
    \i_no_async_controls.output_reg[10] ,
    \i_no_async_controls.output_reg[9] ,
    \i_no_async_controls.output_reg[8] ,
    \i_no_async_controls.output_reg[7] ,
    \i_no_async_controls.output_reg[6] ,
    \i_no_async_controls.output_reg[5] ,
    \i_no_async_controls.output_reg[4] ,
    \i_no_async_controls.output_reg[3] ,
    \i_no_async_controls.output_reg[2] ,
    \i_no_async_controls.output_reg[1] ,
    \i_no_async_controls.output_reg[1]_0 ,
    CLK,
    A,
    B);
  output \i_no_async_controls.output_reg[11] ;
  output \i_no_async_controls.output_reg[10] ;
  output \i_no_async_controls.output_reg[9] ;
  output \i_no_async_controls.output_reg[8] ;
  output \i_no_async_controls.output_reg[7] ;
  output \i_no_async_controls.output_reg[6] ;
  output \i_no_async_controls.output_reg[5] ;
  output \i_no_async_controls.output_reg[4] ;
  output \i_no_async_controls.output_reg[3] ;
  output \i_no_async_controls.output_reg[2] ;
  output \i_no_async_controls.output_reg[1] ;
  output \i_no_async_controls.output_reg[1]_0 ;
  input CLK;
  input [10:0]A;
  input [10:0]B;

  wire [10:0]A;
  wire [10:0]B;
  wire CI;
  wire CLK;
  wire LI;
  wire S;
  wire carry_simple_0;
  wire carry_simple_1;
  wire carry_simple_10;
  wire carry_simple_2;
  wire carry_simple_3;
  wire carry_simple_4;
  wire carry_simple_5;
  wire carry_simple_6;
  wire carry_simple_7;
  wire carry_simple_8;
  wire \i_no_async_controls.output_reg[10] ;
  wire \i_no_async_controls.output_reg[11] ;
  wire \i_no_async_controls.output_reg[1] ;
  wire \i_no_async_controls.output_reg[1]_0 ;
  wire \i_no_async_controls.output_reg[2] ;
  wire \i_no_async_controls.output_reg[3] ;
  wire \i_no_async_controls.output_reg[4] ;
  wire \i_no_async_controls.output_reg[5] ;
  wire \i_no_async_controls.output_reg[6] ;
  wire \i_no_async_controls.output_reg[7] ;
  wire \i_no_async_controls.output_reg[8] ;
  wire \i_no_async_controls.output_reg[9] ;
  wire \i_simple_model.carryxor0__0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0 ;
  wire p_0_out;
  wire p_1_out;
  wire p_2_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire p_6_out;
  wire p_7_out;
  wire p_8_out;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED ;

  add_int64_c_reg_fd_v12_0_5_viv__parameterized4_34 \i_q.i_simple.qreg 
       (.CLK(CLK),
        .\i_no_async_controls.output_reg[10]_0 (\i_no_async_controls.output_reg[10] ),
        .\i_no_async_controls.output_reg[11]_0 (\i_no_async_controls.output_reg[11] ),
        .\i_no_async_controls.output_reg[1]_0 (\i_no_async_controls.output_reg[1] ),
        .\i_no_async_controls.output_reg[2]_0 (\i_no_async_controls.output_reg[2] ),
        .\i_no_async_controls.output_reg[3]_0 (\i_no_async_controls.output_reg[3] ),
        .\i_no_async_controls.output_reg[4]_0 (\i_no_async_controls.output_reg[4] ),
        .\i_no_async_controls.output_reg[5]_0 (\i_no_async_controls.output_reg[5] ),
        .\i_no_async_controls.output_reg[6]_0 (\i_no_async_controls.output_reg[6] ),
        .\i_no_async_controls.output_reg[7]_0 (\i_no_async_controls.output_reg[7] ),
        .\i_no_async_controls.output_reg[8]_0 (\i_no_async_controls.output_reg[8] ),
        .\i_no_async_controls.output_reg[9]_0 (\i_no_async_controls.output_reg[9] ),
        .\i_simple_model.carryxor0__0 (\i_simple_model.carryxor0__0 ),
        .\i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 (\i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ),
        .p_0_out(p_0_out),
        .p_1_out(p_1_out),
        .p_2_out(p_2_out),
        .p_3_out(p_3_out),
        .p_4_out(p_4_out),
        .p_5_out(p_5_out),
        .p_6_out(p_6_out),
        .p_7_out(p_7_out),
        .p_8_out(p_8_out));
  add_int64_c_reg_fd_v12_0_5_viv_35 \i_q_c_out.i_simple.add_q_cout.q_c_outreg 
       (.CLK(CLK),
        .carry_simple_10(carry_simple_10),
        .\i_no_async_controls.output_reg[1]_0 (\i_no_async_controls.output_reg[1]_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.carrymux0_CARRY4 
       (.CI(1'b0),
        .CO({carry_simple_3,carry_simple_2,carry_simple_1,carry_simple_0}),
        .CYINIT(1'b0),
        .DI(A[3:0]),
        .O({p_2_out,p_1_out,\i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ,\i_simple_model.carryxor0__0 }),
        .S({\i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0 ,S}));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.carrymux0_i_1 
       (.I0(B[0]),
        .I1(A[0]),
        .O(S));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1 
       (.I0(B[1]),
        .I1(A[1]),
        .O(\i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1 
       (.I0(B[2]),
        .I1(A[2]),
        .O(\i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1 
       (.I0(B[3]),
        .I1(A[3]),
        .O(\i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4 
       (.CI(carry_simple_3),
        .CO({carry_simple_7,carry_simple_6,carry_simple_5,carry_simple_4}),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O({p_6_out,p_5_out,p_4_out,p_3_out}),
        .S({\i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1 
       (.I0(B[4]),
        .I1(A[4]),
        .O(\i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1 
       (.I0(B[5]),
        .I1(A[5]),
        .O(\i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1 
       (.I0(B[6]),
        .I1(A[6]),
        .O(\i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1 
       (.I0(B[7]),
        .I1(A[7]),
        .O(\i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4 
       (.CI(carry_simple_7),
        .CO({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED [3],carry_simple_10,CI,carry_simple_8}),
        .CYINIT(1'b0),
        .DI({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED [3],A[10:8]}),
        .O({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED [3],p_0_out,p_8_out,p_7_out}),
        .S({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED [3],LI,\i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1 
       (.I0(B[8]),
        .I1(A[8]),
        .O(\i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1 
       (.I0(B[9]),
        .I1(A[9]),
        .O(\i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carryxortop_i_1 
       (.I0(B[10]),
        .I1(A[10]),
        .O(LI));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_lut6_legacy" *) 
module add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized9
   (\i_no_async_controls.output_reg[11] ,
    \i_no_async_controls.output_reg[10] ,
    \i_no_async_controls.output_reg[9] ,
    \i_no_async_controls.output_reg[8] ,
    \i_no_async_controls.output_reg[7] ,
    \i_no_async_controls.output_reg[6] ,
    \i_no_async_controls.output_reg[5] ,
    \i_no_async_controls.output_reg[4] ,
    \i_no_async_controls.output_reg[3] ,
    \i_no_async_controls.output_reg[2] ,
    \i_no_async_controls.output_reg[1] ,
    CLK,
    A,
    B);
  output \i_no_async_controls.output_reg[11] ;
  output \i_no_async_controls.output_reg[10] ;
  output \i_no_async_controls.output_reg[9] ;
  output \i_no_async_controls.output_reg[8] ;
  output \i_no_async_controls.output_reg[7] ;
  output \i_no_async_controls.output_reg[6] ;
  output \i_no_async_controls.output_reg[5] ;
  output \i_no_async_controls.output_reg[4] ;
  output \i_no_async_controls.output_reg[3] ;
  output \i_no_async_controls.output_reg[2] ;
  output \i_no_async_controls.output_reg[1] ;
  input CLK;
  input [10:0]A;
  input [10:0]B;

  wire [10:0]A;
  wire [10:0]B;
  wire CI;
  wire CLK;
  wire LI;
  wire S;
  wire carry_simple_0;
  wire carry_simple_1;
  wire carry_simple_2;
  wire carry_simple_3;
  wire carry_simple_4;
  wire carry_simple_5;
  wire carry_simple_6;
  wire carry_simple_7;
  wire carry_simple_8;
  wire \i_no_async_controls.output_reg[10] ;
  wire \i_no_async_controls.output_reg[11] ;
  wire \i_no_async_controls.output_reg[1] ;
  wire \i_no_async_controls.output_reg[2] ;
  wire \i_no_async_controls.output_reg[3] ;
  wire \i_no_async_controls.output_reg[4] ;
  wire \i_no_async_controls.output_reg[5] ;
  wire \i_no_async_controls.output_reg[6] ;
  wire \i_no_async_controls.output_reg[7] ;
  wire \i_no_async_controls.output_reg[8] ;
  wire \i_no_async_controls.output_reg[9] ;
  wire \i_simple_model.carryxor0__0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0 ;
  wire p_0_out;
  wire p_1_out;
  wire p_2_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire p_6_out;
  wire p_7_out;
  wire p_8_out;
  wire [3:2]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED ;

  add_int64_c_reg_fd_v12_0_5_viv__parameterized4_33 \i_q.i_simple.qreg 
       (.CLK(CLK),
        .\i_no_async_controls.output_reg[10]_0 (\i_no_async_controls.output_reg[10] ),
        .\i_no_async_controls.output_reg[11]_0 (\i_no_async_controls.output_reg[11] ),
        .\i_no_async_controls.output_reg[1]_0 (\i_no_async_controls.output_reg[1] ),
        .\i_no_async_controls.output_reg[2]_0 (\i_no_async_controls.output_reg[2] ),
        .\i_no_async_controls.output_reg[3]_0 (\i_no_async_controls.output_reg[3] ),
        .\i_no_async_controls.output_reg[4]_0 (\i_no_async_controls.output_reg[4] ),
        .\i_no_async_controls.output_reg[5]_0 (\i_no_async_controls.output_reg[5] ),
        .\i_no_async_controls.output_reg[6]_0 (\i_no_async_controls.output_reg[6] ),
        .\i_no_async_controls.output_reg[7]_0 (\i_no_async_controls.output_reg[7] ),
        .\i_no_async_controls.output_reg[8]_0 (\i_no_async_controls.output_reg[8] ),
        .\i_no_async_controls.output_reg[9]_0 (\i_no_async_controls.output_reg[9] ),
        .\i_simple_model.carryxor0__0 (\i_simple_model.carryxor0__0 ),
        .\i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 (\i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ),
        .p_0_out(p_0_out),
        .p_1_out(p_1_out),
        .p_2_out(p_2_out),
        .p_3_out(p_3_out),
        .p_4_out(p_4_out),
        .p_5_out(p_5_out),
        .p_6_out(p_6_out),
        .p_7_out(p_7_out),
        .p_8_out(p_8_out));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.carrymux0_CARRY4 
       (.CI(1'b0),
        .CO({carry_simple_3,carry_simple_2,carry_simple_1,carry_simple_0}),
        .CYINIT(1'b0),
        .DI(A[3:0]),
        .O({p_2_out,p_1_out,\i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ,\i_simple_model.carryxor0__0 }),
        .S({\i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0 ,S}));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.carrymux0_i_1 
       (.I0(B[0]),
        .I1(A[0]),
        .O(S));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1 
       (.I0(B[1]),
        .I1(A[1]),
        .O(\i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1 
       (.I0(B[2]),
        .I1(A[2]),
        .O(\i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1 
       (.I0(B[3]),
        .I1(A[3]),
        .O(\i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4 
       (.CI(carry_simple_3),
        .CO({carry_simple_7,carry_simple_6,carry_simple_5,carry_simple_4}),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O({p_6_out,p_5_out,p_4_out,p_3_out}),
        .S({\i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1 
       (.I0(B[4]),
        .I1(A[4]),
        .O(\i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1 
       (.I0(B[5]),
        .I1(A[5]),
        .O(\i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1 
       (.I0(B[6]),
        .I1(A[6]),
        .O(\i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1 
       (.I0(B[7]),
        .I1(A[7]),
        .O(\i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4 
       (.CI(carry_simple_7),
        .CO({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED [3:2],CI,carry_simple_8}),
        .CYINIT(1'b0),
        .DI({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED [3:2],A[9:8]}),
        .O({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED [3],p_0_out,p_8_out,p_7_out}),
        .S({\NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED [3],LI,\i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1 
       (.I0(B[8]),
        .I1(A[8]),
        .O(\i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1 
       (.I0(B[9]),
        .I1(A[9]),
        .O(\i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carryxortop_i_1 
       (.I0(B[10]),
        .I1(A[10]),
        .O(LI));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_viv" *) 
module add_int64_c_addsub_v12_0_12_viv
   (S,
    CLK,
    A,
    C_IN,
    B);
  output [63:0]S;
  input CLK;
  input [63:0]A;
  input C_IN;
  input [63:0]B;

  wire [63:0]A;
  wire [63:0]B;
  wire CLK;
  wire C_IN;
  wire [63:0]S;

  add_int64_c_addsub_v12_0_12_legacy \i_baseblox.i_baseblox_addsub 
       (.A(A),
        .B(B),
        .CLK(CLK),
        .C_IN(C_IN),
        .S(S));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv
   (\pipecarry[2,2] ,
    D3_out,
    CLK);
  output \pipecarry[2,2] ;
  input D3_out;
  input CLK;

  wire CLK;
  wire D3_out;
  wire \pipecarry[2,2] ;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D3_out),
        .Q(\pipecarry[2,2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv_0
   (D2_out,
    \i_no_async_controls.output_reg[1]_0 ,
    CLK,
    diagonal_c_out_3);
  output D2_out;
  input \i_no_async_controls.output_reg[1]_0 ;
  input CLK;
  input diagonal_c_out_3;

  wire CLK;
  wire D2_out;
  wire diagonal_c_out_3;
  wire \i_no_async_controls.output_reg[1]_0 ;
  wire \i_no_async_controls.output_reg_n_0_[1] ;

  LUT2 #(
    .INIT(4'hE)) 
    \i_no_async_controls.output[1]_i_1__1 
       (.I0(\i_no_async_controls.output_reg_n_0_[1] ),
        .I1(diagonal_c_out_3),
        .O(D2_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[1]_0 ),
        .Q(\i_no_async_controls.output_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv_1
   (\i_no_async_controls.output_reg[1]_0 ,
    \i_no_async_controls.output_reg[1]_1 ,
    CLK);
  output \i_no_async_controls.output_reg[1]_0 ;
  input \i_no_async_controls.output_reg[1]_1 ;
  input CLK;

  wire CLK;
  wire \i_no_async_controls.output_reg[1]_0 ;
  wire \i_no_async_controls.output_reg[1]_1 ;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[1]_1 ),
        .Q(\i_no_async_controls.output_reg[1]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv_17
   (\pipecarry[5,5] ,
    D0_out,
    CLK);
  output \pipecarry[5,5] ;
  input D0_out;
  input CLK;

  wire CLK;
  wire D0_out;
  wire \pipecarry[5,5] ;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D0_out),
        .Q(\pipecarry[5,5] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv_3
   (\pipecarry[3,3] ,
    D2_out,
    CLK);
  output \pipecarry[3,3] ;
  input D2_out;
  input CLK;

  wire CLK;
  wire D2_out;
  wire \pipecarry[3,3] ;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D2_out),
        .Q(\pipecarry[3,3] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv_35
   (\i_no_async_controls.output_reg[1]_0 ,
    carry_simple_10,
    CLK);
  output \i_no_async_controls.output_reg[1]_0 ;
  input carry_simple_10;
  input CLK;

  wire CLK;
  wire carry_simple_10;
  wire \i_no_async_controls.output_reg[1]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(carry_simple_10),
        .Q(\i_no_async_controls.output_reg[1]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv_37
   (\i_no_async_controls.output_reg[1]_0 ,
    carry_simple_9,
    CLK);
  output \i_no_async_controls.output_reg[1]_0 ;
  input carry_simple_9;
  input CLK;

  wire CLK;
  wire carry_simple_9;
  wire \i_no_async_controls.output_reg[1]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(carry_simple_9),
        .Q(\i_no_async_controls.output_reg[1]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv_39
   (\i_no_async_controls.output_reg[1]_0 ,
    carry_simple_10,
    CLK);
  output \i_no_async_controls.output_reg[1]_0 ;
  input carry_simple_10;
  input CLK;

  wire CLK;
  wire carry_simple_10;
  wire \i_no_async_controls.output_reg[1]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(carry_simple_10),
        .Q(\i_no_async_controls.output_reg[1]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv_4
   (D1_out,
    \i_no_async_controls.output_reg[1]_0 ,
    CLK,
    diagonal_c_out_2);
  output D1_out;
  input \i_no_async_controls.output_reg[1]_0 ;
  input CLK;
  input diagonal_c_out_2;

  wire CLK;
  wire D1_out;
  wire diagonal_c_out_2;
  wire \i_no_async_controls.output_reg[1]_0 ;
  wire \i_no_async_controls.output_reg_n_0_[1] ;

  LUT2 #(
    .INIT(4'hE)) 
    \i_no_async_controls.output[1]_i_1__0 
       (.I0(\i_no_async_controls.output_reg_n_0_[1] ),
        .I1(diagonal_c_out_2),
        .O(D1_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[1]_0 ),
        .Q(\i_no_async_controls.output_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv_41
   (D3_out,
    carry_simple_10,
    CLK,
    diagonal_c_out_4);
  output D3_out;
  input carry_simple_10;
  input CLK;
  input diagonal_c_out_4;

  wire CLK;
  wire D3_out;
  wire carry_simple_10;
  wire diagonal_c_out_4;
  wire \pipecarry[1,2] ;

  LUT2 #(
    .INIT(4'hE)) 
    \i_no_async_controls.output[1]_i_1__2 
       (.I0(\pipecarry[1,2] ),
        .I1(diagonal_c_out_4),
        .O(D3_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(carry_simple_10),
        .Q(\pipecarry[1,2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv_43
   (\pipecarry[1,1] ,
    carry_simple_9,
    CLK);
  output \pipecarry[1,1] ;
  input carry_simple_9;
  input CLK;

  wire CLK;
  wire carry_simple_9;
  wire \pipecarry[1,1] ;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(carry_simple_9),
        .Q(\pipecarry[1,1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv_6
   (\i_no_async_controls.output_reg[1] ,
    \i_no_async_controls.output_reg[1]_0 ,
    CLK);
  output \i_no_async_controls.output_reg[1] ;
  input \i_no_async_controls.output_reg[1]_0 ;
  input CLK;

  wire CLK;
  wire \i_no_async_controls.output_reg[1] ;
  wire \i_no_async_controls.output_reg[1]_0 ;

  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.carryregister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.carryregister/i_no_async_controls.output_reg[1]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[1]_0 ),
        .Q(\i_no_async_controls.output_reg[1] ));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv_8
   (\pipecarry[4,4] ,
    D1_out,
    CLK);
  output \pipecarry[4,4] ;
  input D1_out;
  input CLK;

  wire CLK;
  wire D1_out;
  wire \pipecarry[4,4] ;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D1_out),
        .Q(\pipecarry[4,4] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv_9
   (D0_out,
    \i_no_async_controls.output_reg[1]_0 ,
    CLK,
    diagonal_c_out_1);
  output D0_out;
  input \i_no_async_controls.output_reg[1]_0 ;
  input CLK;
  input diagonal_c_out_1;

  wire CLK;
  wire D0_out;
  wire diagonal_c_out_1;
  wire \i_no_async_controls.output_reg[1]_0 ;
  wire \i_no_async_controls.output_reg_n_0_[1] ;

  LUT2 #(
    .INIT(4'hE)) 
    \i_no_async_controls.output[1]_i_1 
       (.I0(\i_no_async_controls.output_reg_n_0_[1] ),
        .I1(diagonal_c_out_1),
        .O(D0_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[1]_0 ),
        .Q(\i_no_async_controls.output_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized1
   (Q,
    D,
    CLK);
  output [9:0]Q;
  input [9:0]D;
  input CLK;

  wire CLK;
  wire [9:0]D;
  wire [9:0]Q;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized1_12
   (\i_no_async_controls.output_reg[10] ,
    \i_no_async_controls.output_reg[9] ,
    \i_no_async_controls.output_reg[8] ,
    \i_no_async_controls.output_reg[7] ,
    \i_no_async_controls.output_reg[6] ,
    \i_no_async_controls.output_reg[5] ,
    \i_no_async_controls.output_reg[4] ,
    \i_no_async_controls.output_reg[3] ,
    \i_no_async_controls.output_reg[2] ,
    \i_no_async_controls.output_reg[1] ,
    \i_no_async_controls.output_reg[10]_0 ,
    CLK,
    \i_no_async_controls.output_reg[9]_0 ,
    \i_no_async_controls.output_reg[8]_0 ,
    \i_no_async_controls.output_reg[7]_0 ,
    \i_no_async_controls.output_reg[6]_0 ,
    \i_no_async_controls.output_reg[5]_0 ,
    \i_no_async_controls.output_reg[4]_0 ,
    \i_no_async_controls.output_reg[3]_0 ,
    \i_no_async_controls.output_reg[2]_0 ,
    \i_no_async_controls.output_reg[1]_0 );
  output \i_no_async_controls.output_reg[10] ;
  output \i_no_async_controls.output_reg[9] ;
  output \i_no_async_controls.output_reg[8] ;
  output \i_no_async_controls.output_reg[7] ;
  output \i_no_async_controls.output_reg[6] ;
  output \i_no_async_controls.output_reg[5] ;
  output \i_no_async_controls.output_reg[4] ;
  output \i_no_async_controls.output_reg[3] ;
  output \i_no_async_controls.output_reg[2] ;
  output \i_no_async_controls.output_reg[1] ;
  input \i_no_async_controls.output_reg[10]_0 ;
  input CLK;
  input \i_no_async_controls.output_reg[9]_0 ;
  input \i_no_async_controls.output_reg[8]_0 ;
  input \i_no_async_controls.output_reg[7]_0 ;
  input \i_no_async_controls.output_reg[6]_0 ;
  input \i_no_async_controls.output_reg[5]_0 ;
  input \i_no_async_controls.output_reg[4]_0 ;
  input \i_no_async_controls.output_reg[3]_0 ;
  input \i_no_async_controls.output_reg[2]_0 ;
  input \i_no_async_controls.output_reg[1]_0 ;

  wire CLK;
  wire \i_no_async_controls.output_reg[10] ;
  wire \i_no_async_controls.output_reg[10]_0 ;
  wire \i_no_async_controls.output_reg[1] ;
  wire \i_no_async_controls.output_reg[1]_0 ;
  wire \i_no_async_controls.output_reg[2] ;
  wire \i_no_async_controls.output_reg[2]_0 ;
  wire \i_no_async_controls.output_reg[3] ;
  wire \i_no_async_controls.output_reg[3]_0 ;
  wire \i_no_async_controls.output_reg[4] ;
  wire \i_no_async_controls.output_reg[4]_0 ;
  wire \i_no_async_controls.output_reg[5] ;
  wire \i_no_async_controls.output_reg[5]_0 ;
  wire \i_no_async_controls.output_reg[6] ;
  wire \i_no_async_controls.output_reg[6]_0 ;
  wire \i_no_async_controls.output_reg[7] ;
  wire \i_no_async_controls.output_reg[7]_0 ;
  wire \i_no_async_controls.output_reg[8] ;
  wire \i_no_async_controls.output_reg[8]_0 ;
  wire \i_no_async_controls.output_reg[9] ;
  wire \i_no_async_controls.output_reg[9]_0 ;

  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[10]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[10]_0 ),
        .Q(\i_no_async_controls.output_reg[10] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[1]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[1]_0 ),
        .Q(\i_no_async_controls.output_reg[1] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[2]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[2]_0 ),
        .Q(\i_no_async_controls.output_reg[2] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[3]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[3]_0 ),
        .Q(\i_no_async_controls.output_reg[3] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[4]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[4]_0 ),
        .Q(\i_no_async_controls.output_reg[4] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[5]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[5]_0 ),
        .Q(\i_no_async_controls.output_reg[5] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[6]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[6]_0 ),
        .Q(\i_no_async_controls.output_reg[6] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[7]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[7]_0 ),
        .Q(\i_no_async_controls.output_reg[7] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[8]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[8]_0 ),
        .Q(\i_no_async_controls.output_reg[8] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[9]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[9]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[9]_0 ),
        .Q(\i_no_async_controls.output_reg[9] ));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized1_15
   (Q,
    D,
    CLK);
  output [9:0]Q;
  input [9:0]D;
  input CLK;

  wire CLK;
  wire [9:0]D;
  wire [9:0]Q;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized1_19
   (S,
    \i_no_async_controls.output_reg[10]_0 ,
    CLK,
    \i_no_async_controls.output_reg[9]_0 ,
    \i_no_async_controls.output_reg[8]_0 ,
    \i_no_async_controls.output_reg[7]_0 ,
    \i_no_async_controls.output_reg[6]_0 ,
    \i_no_async_controls.output_reg[5]_0 ,
    \i_no_async_controls.output_reg[4]_0 ,
    \i_no_async_controls.output_reg[3]_0 ,
    \i_no_async_controls.output_reg[2]_0 ,
    \i_no_async_controls.output_reg[1]_0 );
  output [9:0]S;
  input \i_no_async_controls.output_reg[10]_0 ;
  input CLK;
  input \i_no_async_controls.output_reg[9]_0 ;
  input \i_no_async_controls.output_reg[8]_0 ;
  input \i_no_async_controls.output_reg[7]_0 ;
  input \i_no_async_controls.output_reg[6]_0 ;
  input \i_no_async_controls.output_reg[5]_0 ;
  input \i_no_async_controls.output_reg[4]_0 ;
  input \i_no_async_controls.output_reg[3]_0 ;
  input \i_no_async_controls.output_reg[2]_0 ;
  input \i_no_async_controls.output_reg[1]_0 ;

  wire CLK;
  wire [9:0]S;
  wire \i_no_async_controls.output_reg[10]_0 ;
  wire \i_no_async_controls.output_reg[1]_0 ;
  wire \i_no_async_controls.output_reg[2]_0 ;
  wire \i_no_async_controls.output_reg[3]_0 ;
  wire \i_no_async_controls.output_reg[4]_0 ;
  wire \i_no_async_controls.output_reg[5]_0 ;
  wire \i_no_async_controls.output_reg[6]_0 ;
  wire \i_no_async_controls.output_reg[7]_0 ;
  wire \i_no_async_controls.output_reg[8]_0 ;
  wire \i_no_async_controls.output_reg[9]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[10]_0 ),
        .Q(S[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[1]_0 ),
        .Q(S[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[2]_0 ),
        .Q(S[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[3]_0 ),
        .Q(S[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[4]_0 ),
        .Q(S[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[5]_0 ),
        .Q(S[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[6]_0 ),
        .Q(S[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[7]_0 ),
        .Q(S[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[8]_0 ),
        .Q(S[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[9]_0 ),
        .Q(S[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized1_22
   (S,
    D,
    CLK);
  output [9:0]S;
  input [9:0]D;
  input CLK;

  wire CLK;
  wire [9:0]D;
  wire [9:0]S;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(S[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(S[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(S[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(S[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(S[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(S[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(S[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(S[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(S[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(S[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized1_28
   (\i_no_async_controls.output_reg[10]_0 ,
    D,
    CLK);
  output [9:0]\i_no_async_controls.output_reg[10]_0 ;
  input [9:0]D;
  input CLK;

  wire CLK;
  wire [9:0]D;
  wire [9:0]\i_no_async_controls.output_reg[10]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(\i_no_async_controls.output_reg[10]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(\i_no_async_controls.output_reg[10]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(\i_no_async_controls.output_reg[10]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(\i_no_async_controls.output_reg[10]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(\i_no_async_controls.output_reg[10]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(\i_no_async_controls.output_reg[10]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(\i_no_async_controls.output_reg[10]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(\i_no_async_controls.output_reg[10]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(\i_no_async_controls.output_reg[10]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(\i_no_async_controls.output_reg[10]_0 [8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized1_36
   (Q,
    D,
    CLK);
  output [9:0]Q;
  input [9:0]D;
  input CLK;

  wire CLK;
  wire [9:0]D;
  wire [9:0]Q;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized1_42
   (\i_no_async_controls.output_reg[10]_0 ,
    \i_no_async_controls.output_reg[9]_0 ,
    \i_no_async_controls.output_reg[8]_0 ,
    \i_no_async_controls.output_reg[7]_0 ,
    \i_no_async_controls.output_reg[6]_0 ,
    \i_no_async_controls.output_reg[5]_0 ,
    \i_no_async_controls.output_reg[4]_0 ,
    \i_no_async_controls.output_reg[3]_0 ,
    \i_no_async_controls.output_reg[2]_0 ,
    \i_no_async_controls.output_reg[1]_0 ,
    p_0_out,
    CLK,
    p_7_out,
    p_6_out,
    p_5_out,
    p_4_out,
    p_3_out,
    p_2_out,
    p_1_out,
    \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ,
    \i_simple_model.carryxor0__0 );
  output \i_no_async_controls.output_reg[10]_0 ;
  output \i_no_async_controls.output_reg[9]_0 ;
  output \i_no_async_controls.output_reg[8]_0 ;
  output \i_no_async_controls.output_reg[7]_0 ;
  output \i_no_async_controls.output_reg[6]_0 ;
  output \i_no_async_controls.output_reg[5]_0 ;
  output \i_no_async_controls.output_reg[4]_0 ;
  output \i_no_async_controls.output_reg[3]_0 ;
  output \i_no_async_controls.output_reg[2]_0 ;
  output \i_no_async_controls.output_reg[1]_0 ;
  input p_0_out;
  input CLK;
  input p_7_out;
  input p_6_out;
  input p_5_out;
  input p_4_out;
  input p_3_out;
  input p_2_out;
  input p_1_out;
  input \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ;
  input \i_simple_model.carryxor0__0 ;

  wire CLK;
  wire \i_no_async_controls.output_reg[10]_0 ;
  wire \i_no_async_controls.output_reg[1]_0 ;
  wire \i_no_async_controls.output_reg[2]_0 ;
  wire \i_no_async_controls.output_reg[3]_0 ;
  wire \i_no_async_controls.output_reg[4]_0 ;
  wire \i_no_async_controls.output_reg[5]_0 ;
  wire \i_no_async_controls.output_reg[6]_0 ;
  wire \i_no_async_controls.output_reg[7]_0 ;
  wire \i_no_async_controls.output_reg[8]_0 ;
  wire \i_no_async_controls.output_reg[9]_0 ;
  wire \i_simple_model.carryxor0__0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ;
  wire p_0_out;
  wire p_1_out;
  wire p_2_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire p_6_out;
  wire p_7_out;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out),
        .Q(\i_no_async_controls.output_reg[10]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_simple_model.carryxor0__0 ),
        .Q(\i_no_async_controls.output_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ),
        .Q(\i_no_async_controls.output_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_out),
        .Q(\i_no_async_controls.output_reg[3]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_out),
        .Q(\i_no_async_controls.output_reg[4]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_3_out),
        .Q(\i_no_async_controls.output_reg[5]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_4_out),
        .Q(\i_no_async_controls.output_reg[6]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_5_out),
        .Q(\i_no_async_controls.output_reg[7]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_6_out),
        .Q(\i_no_async_controls.output_reg[8]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_7_out),
        .Q(\i_no_async_controls.output_reg[9]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized1_5
   (Q,
    D,
    CLK);
  output [9:0]Q;
  input [9:0]D;
  input CLK;

  wire CLK;
  wire [9:0]D;
  wire [9:0]Q;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized4
   (Q,
    D,
    CLK);
  output [10:0]Q;
  input [10:0]D;
  input CLK;

  wire CLK;
  wire [10:0]D;
  wire [10:0]Q;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized4_10
   (\piperegs[4]_42 ,
    \i_no_async_controls.output_reg[11]_0 ,
    CLK,
    \i_no_async_controls.output_reg[10]_0 ,
    \i_no_async_controls.output_reg[9]_0 ,
    \i_no_async_controls.output_reg[8]_0 ,
    \i_no_async_controls.output_reg[7]_0 ,
    \i_no_async_controls.output_reg[6]_0 ,
    \i_no_async_controls.output_reg[5]_0 ,
    \i_no_async_controls.output_reg[4]_0 ,
    \i_no_async_controls.output_reg[3]_0 ,
    \i_no_async_controls.output_reg[2]_0 ,
    \i_no_async_controls.output_reg[1]_0 );
  output [10:0]\piperegs[4]_42 ;
  input \i_no_async_controls.output_reg[11]_0 ;
  input CLK;
  input \i_no_async_controls.output_reg[10]_0 ;
  input \i_no_async_controls.output_reg[9]_0 ;
  input \i_no_async_controls.output_reg[8]_0 ;
  input \i_no_async_controls.output_reg[7]_0 ;
  input \i_no_async_controls.output_reg[6]_0 ;
  input \i_no_async_controls.output_reg[5]_0 ;
  input \i_no_async_controls.output_reg[4]_0 ;
  input \i_no_async_controls.output_reg[3]_0 ;
  input \i_no_async_controls.output_reg[2]_0 ;
  input \i_no_async_controls.output_reg[1]_0 ;

  wire CLK;
  wire \i_no_async_controls.output_reg[10]_0 ;
  wire \i_no_async_controls.output_reg[11]_0 ;
  wire \i_no_async_controls.output_reg[1]_0 ;
  wire \i_no_async_controls.output_reg[2]_0 ;
  wire \i_no_async_controls.output_reg[3]_0 ;
  wire \i_no_async_controls.output_reg[4]_0 ;
  wire \i_no_async_controls.output_reg[5]_0 ;
  wire \i_no_async_controls.output_reg[6]_0 ;
  wire \i_no_async_controls.output_reg[7]_0 ;
  wire \i_no_async_controls.output_reg[8]_0 ;
  wire \i_no_async_controls.output_reg[9]_0 ;
  wire [10:0]\piperegs[4]_42 ;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[10]_0 ),
        .Q(\piperegs[4]_42 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[11]_0 ),
        .Q(\piperegs[4]_42 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[1]_0 ),
        .Q(\piperegs[4]_42 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[2]_0 ),
        .Q(\piperegs[4]_42 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[3]_0 ),
        .Q(\piperegs[4]_42 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[4]_0 ),
        .Q(\piperegs[4]_42 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[5]_0 ),
        .Q(\piperegs[4]_42 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[6]_0 ),
        .Q(\piperegs[4]_42 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[7]_0 ),
        .Q(\piperegs[4]_42 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[8]_0 ),
        .Q(\piperegs[4]_42 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[9]_0 ),
        .Q(\piperegs[4]_42 [8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized4_11
   (\i_no_async_controls.output_reg[11] ,
    \i_no_async_controls.output_reg[10] ,
    \i_no_async_controls.output_reg[9] ,
    \i_no_async_controls.output_reg[8] ,
    \i_no_async_controls.output_reg[7] ,
    \i_no_async_controls.output_reg[6] ,
    \i_no_async_controls.output_reg[5] ,
    \i_no_async_controls.output_reg[4] ,
    \i_no_async_controls.output_reg[3] ,
    \i_no_async_controls.output_reg[2] ,
    \i_no_async_controls.output_reg[1] ,
    \i_no_async_controls.output_reg[11]_0 ,
    CLK,
    \i_no_async_controls.output_reg[10]_0 ,
    \i_no_async_controls.output_reg[9]_0 ,
    \i_no_async_controls.output_reg[8]_0 ,
    \i_no_async_controls.output_reg[7]_0 ,
    \i_no_async_controls.output_reg[6]_0 ,
    \i_no_async_controls.output_reg[5]_0 ,
    \i_no_async_controls.output_reg[4]_0 ,
    \i_no_async_controls.output_reg[3]_0 ,
    \i_no_async_controls.output_reg[2]_0 ,
    \i_no_async_controls.output_reg[1]_0 );
  output \i_no_async_controls.output_reg[11] ;
  output \i_no_async_controls.output_reg[10] ;
  output \i_no_async_controls.output_reg[9] ;
  output \i_no_async_controls.output_reg[8] ;
  output \i_no_async_controls.output_reg[7] ;
  output \i_no_async_controls.output_reg[6] ;
  output \i_no_async_controls.output_reg[5] ;
  output \i_no_async_controls.output_reg[4] ;
  output \i_no_async_controls.output_reg[3] ;
  output \i_no_async_controls.output_reg[2] ;
  output \i_no_async_controls.output_reg[1] ;
  input \i_no_async_controls.output_reg[11]_0 ;
  input CLK;
  input \i_no_async_controls.output_reg[10]_0 ;
  input \i_no_async_controls.output_reg[9]_0 ;
  input \i_no_async_controls.output_reg[8]_0 ;
  input \i_no_async_controls.output_reg[7]_0 ;
  input \i_no_async_controls.output_reg[6]_0 ;
  input \i_no_async_controls.output_reg[5]_0 ;
  input \i_no_async_controls.output_reg[4]_0 ;
  input \i_no_async_controls.output_reg[3]_0 ;
  input \i_no_async_controls.output_reg[2]_0 ;
  input \i_no_async_controls.output_reg[1]_0 ;

  wire CLK;
  wire \i_no_async_controls.output_reg[10] ;
  wire \i_no_async_controls.output_reg[10]_0 ;
  wire \i_no_async_controls.output_reg[11] ;
  wire \i_no_async_controls.output_reg[11]_0 ;
  wire \i_no_async_controls.output_reg[1] ;
  wire \i_no_async_controls.output_reg[1]_0 ;
  wire \i_no_async_controls.output_reg[2] ;
  wire \i_no_async_controls.output_reg[2]_0 ;
  wire \i_no_async_controls.output_reg[3] ;
  wire \i_no_async_controls.output_reg[3]_0 ;
  wire \i_no_async_controls.output_reg[4] ;
  wire \i_no_async_controls.output_reg[4]_0 ;
  wire \i_no_async_controls.output_reg[5] ;
  wire \i_no_async_controls.output_reg[5]_0 ;
  wire \i_no_async_controls.output_reg[6] ;
  wire \i_no_async_controls.output_reg[6]_0 ;
  wire \i_no_async_controls.output_reg[7] ;
  wire \i_no_async_controls.output_reg[7]_0 ;
  wire \i_no_async_controls.output_reg[8] ;
  wire \i_no_async_controls.output_reg[8]_0 ;
  wire \i_no_async_controls.output_reg[9] ;
  wire \i_no_async_controls.output_reg[9]_0 ;

  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[10]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[10]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[10]_0 ),
        .Q(\i_no_async_controls.output_reg[10] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[11]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[11]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[11]_0 ),
        .Q(\i_no_async_controls.output_reg[11] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[1]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[1]_0 ),
        .Q(\i_no_async_controls.output_reg[1] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[2]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[2]_0 ),
        .Q(\i_no_async_controls.output_reg[2] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[3]_0 ),
        .Q(\i_no_async_controls.output_reg[3] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[4]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[4]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[4]_0 ),
        .Q(\i_no_async_controls.output_reg[4] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[5]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[5]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[5]_0 ),
        .Q(\i_no_async_controls.output_reg[5] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[6]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[6]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[6]_0 ),
        .Q(\i_no_async_controls.output_reg[6] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[7]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[7]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[7]_0 ),
        .Q(\i_no_async_controls.output_reg[7] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[8]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[8]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[8]_0 ),
        .Q(\i_no_async_controls.output_reg[8] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[9]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[9]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[9]_0 ),
        .Q(\i_no_async_controls.output_reg[9] ));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized4_13
   (\i_no_async_controls.output_reg[11] ,
    \i_no_async_controls.output_reg[10] ,
    \i_no_async_controls.output_reg[9] ,
    \i_no_async_controls.output_reg[8] ,
    \i_no_async_controls.output_reg[7] ,
    \i_no_async_controls.output_reg[6] ,
    \i_no_async_controls.output_reg[5] ,
    \i_no_async_controls.output_reg[4] ,
    \i_no_async_controls.output_reg[3] ,
    \i_no_async_controls.output_reg[2] ,
    \i_no_async_controls.output_reg[1] ,
    \i_no_async_controls.output_reg[11]_0 ,
    CLK,
    \i_no_async_controls.output_reg[10]_0 ,
    \i_no_async_controls.output_reg[9]_0 ,
    \i_no_async_controls.output_reg[8]_0 ,
    \i_no_async_controls.output_reg[7]_0 ,
    \i_no_async_controls.output_reg[6]_0 ,
    \i_no_async_controls.output_reg[5]_0 ,
    \i_no_async_controls.output_reg[4]_0 ,
    \i_no_async_controls.output_reg[3]_0 ,
    \i_no_async_controls.output_reg[2]_0 ,
    \i_no_async_controls.output_reg[1]_0 );
  output \i_no_async_controls.output_reg[11] ;
  output \i_no_async_controls.output_reg[10] ;
  output \i_no_async_controls.output_reg[9] ;
  output \i_no_async_controls.output_reg[8] ;
  output \i_no_async_controls.output_reg[7] ;
  output \i_no_async_controls.output_reg[6] ;
  output \i_no_async_controls.output_reg[5] ;
  output \i_no_async_controls.output_reg[4] ;
  output \i_no_async_controls.output_reg[3] ;
  output \i_no_async_controls.output_reg[2] ;
  output \i_no_async_controls.output_reg[1] ;
  input \i_no_async_controls.output_reg[11]_0 ;
  input CLK;
  input \i_no_async_controls.output_reg[10]_0 ;
  input \i_no_async_controls.output_reg[9]_0 ;
  input \i_no_async_controls.output_reg[8]_0 ;
  input \i_no_async_controls.output_reg[7]_0 ;
  input \i_no_async_controls.output_reg[6]_0 ;
  input \i_no_async_controls.output_reg[5]_0 ;
  input \i_no_async_controls.output_reg[4]_0 ;
  input \i_no_async_controls.output_reg[3]_0 ;
  input \i_no_async_controls.output_reg[2]_0 ;
  input \i_no_async_controls.output_reg[1]_0 ;

  wire CLK;
  wire \i_no_async_controls.output_reg[10] ;
  wire \i_no_async_controls.output_reg[10]_0 ;
  wire \i_no_async_controls.output_reg[11] ;
  wire \i_no_async_controls.output_reg[11]_0 ;
  wire \i_no_async_controls.output_reg[1] ;
  wire \i_no_async_controls.output_reg[1]_0 ;
  wire \i_no_async_controls.output_reg[2] ;
  wire \i_no_async_controls.output_reg[2]_0 ;
  wire \i_no_async_controls.output_reg[3] ;
  wire \i_no_async_controls.output_reg[3]_0 ;
  wire \i_no_async_controls.output_reg[4] ;
  wire \i_no_async_controls.output_reg[4]_0 ;
  wire \i_no_async_controls.output_reg[5] ;
  wire \i_no_async_controls.output_reg[5]_0 ;
  wire \i_no_async_controls.output_reg[6] ;
  wire \i_no_async_controls.output_reg[6]_0 ;
  wire \i_no_async_controls.output_reg[7] ;
  wire \i_no_async_controls.output_reg[7]_0 ;
  wire \i_no_async_controls.output_reg[8] ;
  wire \i_no_async_controls.output_reg[8]_0 ;
  wire \i_no_async_controls.output_reg[9] ;
  wire \i_no_async_controls.output_reg[9]_0 ;

  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[10]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[10]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[10]_0 ),
        .Q(\i_no_async_controls.output_reg[10] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[11]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[11]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[11]_0 ),
        .Q(\i_no_async_controls.output_reg[11] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[1]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[1]_0 ),
        .Q(\i_no_async_controls.output_reg[1] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[2]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[2]_0 ),
        .Q(\i_no_async_controls.output_reg[2] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[3]_0 ),
        .Q(\i_no_async_controls.output_reg[3] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[4]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[4]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[4]_0 ),
        .Q(\i_no_async_controls.output_reg[4] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[5]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[5]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[5]_0 ),
        .Q(\i_no_async_controls.output_reg[5] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[6]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[6]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[6]_0 ),
        .Q(\i_no_async_controls.output_reg[6] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[7]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[7]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[7]_0 ),
        .Q(\i_no_async_controls.output_reg[7] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[8]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[8]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[8]_0 ),
        .Q(\i_no_async_controls.output_reg[8] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[9]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[9]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[9]_0 ),
        .Q(\i_no_async_controls.output_reg[9] ));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized4_14
   (\i_no_async_controls.output_reg[11] ,
    \i_no_async_controls.output_reg[10] ,
    \i_no_async_controls.output_reg[9] ,
    \i_no_async_controls.output_reg[8] ,
    \i_no_async_controls.output_reg[7] ,
    \i_no_async_controls.output_reg[6] ,
    \i_no_async_controls.output_reg[5] ,
    \i_no_async_controls.output_reg[4] ,
    \i_no_async_controls.output_reg[3] ,
    \i_no_async_controls.output_reg[2] ,
    \i_no_async_controls.output_reg[1] ,
    \i_no_async_controls.output_reg[11]_0 ,
    CLK,
    \i_no_async_controls.output_reg[10]_0 ,
    \i_no_async_controls.output_reg[9]_0 ,
    \i_no_async_controls.output_reg[8]_0 ,
    \i_no_async_controls.output_reg[7]_0 ,
    \i_no_async_controls.output_reg[6]_0 ,
    \i_no_async_controls.output_reg[5]_0 ,
    \i_no_async_controls.output_reg[4]_0 ,
    \i_no_async_controls.output_reg[3]_0 ,
    \i_no_async_controls.output_reg[2]_0 ,
    \i_no_async_controls.output_reg[1]_0 );
  output \i_no_async_controls.output_reg[11] ;
  output \i_no_async_controls.output_reg[10] ;
  output \i_no_async_controls.output_reg[9] ;
  output \i_no_async_controls.output_reg[8] ;
  output \i_no_async_controls.output_reg[7] ;
  output \i_no_async_controls.output_reg[6] ;
  output \i_no_async_controls.output_reg[5] ;
  output \i_no_async_controls.output_reg[4] ;
  output \i_no_async_controls.output_reg[3] ;
  output \i_no_async_controls.output_reg[2] ;
  output \i_no_async_controls.output_reg[1] ;
  input \i_no_async_controls.output_reg[11]_0 ;
  input CLK;
  input \i_no_async_controls.output_reg[10]_0 ;
  input \i_no_async_controls.output_reg[9]_0 ;
  input \i_no_async_controls.output_reg[8]_0 ;
  input \i_no_async_controls.output_reg[7]_0 ;
  input \i_no_async_controls.output_reg[6]_0 ;
  input \i_no_async_controls.output_reg[5]_0 ;
  input \i_no_async_controls.output_reg[4]_0 ;
  input \i_no_async_controls.output_reg[3]_0 ;
  input \i_no_async_controls.output_reg[2]_0 ;
  input \i_no_async_controls.output_reg[1]_0 ;

  wire CLK;
  wire \i_no_async_controls.output_reg[10] ;
  wire \i_no_async_controls.output_reg[10]_0 ;
  wire \i_no_async_controls.output_reg[11] ;
  wire \i_no_async_controls.output_reg[11]_0 ;
  wire \i_no_async_controls.output_reg[1] ;
  wire \i_no_async_controls.output_reg[1]_0 ;
  wire \i_no_async_controls.output_reg[2] ;
  wire \i_no_async_controls.output_reg[2]_0 ;
  wire \i_no_async_controls.output_reg[3] ;
  wire \i_no_async_controls.output_reg[3]_0 ;
  wire \i_no_async_controls.output_reg[4] ;
  wire \i_no_async_controls.output_reg[4]_0 ;
  wire \i_no_async_controls.output_reg[5] ;
  wire \i_no_async_controls.output_reg[5]_0 ;
  wire \i_no_async_controls.output_reg[6] ;
  wire \i_no_async_controls.output_reg[6]_0 ;
  wire \i_no_async_controls.output_reg[7] ;
  wire \i_no_async_controls.output_reg[7]_0 ;
  wire \i_no_async_controls.output_reg[8] ;
  wire \i_no_async_controls.output_reg[8]_0 ;
  wire \i_no_async_controls.output_reg[9] ;
  wire \i_no_async_controls.output_reg[9]_0 ;

  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[10]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[10]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[10]_0 ),
        .Q(\i_no_async_controls.output_reg[10] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[11]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[11]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[11]_0 ),
        .Q(\i_no_async_controls.output_reg[11] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[1]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[1]_0 ),
        .Q(\i_no_async_controls.output_reg[1] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[2]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[2]_0 ),
        .Q(\i_no_async_controls.output_reg[2] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[3]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[3]_0 ),
        .Q(\i_no_async_controls.output_reg[3] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[4]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[4]_0 ),
        .Q(\i_no_async_controls.output_reg[4] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[5]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[5]_0 ),
        .Q(\i_no_async_controls.output_reg[5] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[6]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[6]_0 ),
        .Q(\i_no_async_controls.output_reg[6] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[7]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[7]_0 ),
        .Q(\i_no_async_controls.output_reg[7] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[8]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[8]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[8]_0 ),
        .Q(\i_no_async_controls.output_reg[8] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[9]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[9]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[9]_0 ),
        .Q(\i_no_async_controls.output_reg[9] ));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized4_18
   (\piperegs[5]_53 ,
    \i_no_async_controls.output_reg[11]_0 ,
    CLK,
    \i_no_async_controls.output_reg[10]_0 ,
    \i_no_async_controls.output_reg[9]_0 ,
    \i_no_async_controls.output_reg[8]_0 ,
    \i_no_async_controls.output_reg[7]_0 ,
    \i_no_async_controls.output_reg[6]_0 ,
    \i_no_async_controls.output_reg[5]_0 ,
    \i_no_async_controls.output_reg[4]_0 ,
    \i_no_async_controls.output_reg[3]_0 ,
    \i_no_async_controls.output_reg[2]_0 ,
    \i_no_async_controls.output_reg[1]_0 );
  output [10:0]\piperegs[5]_53 ;
  input \i_no_async_controls.output_reg[11]_0 ;
  input CLK;
  input \i_no_async_controls.output_reg[10]_0 ;
  input \i_no_async_controls.output_reg[9]_0 ;
  input \i_no_async_controls.output_reg[8]_0 ;
  input \i_no_async_controls.output_reg[7]_0 ;
  input \i_no_async_controls.output_reg[6]_0 ;
  input \i_no_async_controls.output_reg[5]_0 ;
  input \i_no_async_controls.output_reg[4]_0 ;
  input \i_no_async_controls.output_reg[3]_0 ;
  input \i_no_async_controls.output_reg[2]_0 ;
  input \i_no_async_controls.output_reg[1]_0 ;

  wire CLK;
  wire \i_no_async_controls.output_reg[10]_0 ;
  wire \i_no_async_controls.output_reg[11]_0 ;
  wire \i_no_async_controls.output_reg[1]_0 ;
  wire \i_no_async_controls.output_reg[2]_0 ;
  wire \i_no_async_controls.output_reg[3]_0 ;
  wire \i_no_async_controls.output_reg[4]_0 ;
  wire \i_no_async_controls.output_reg[5]_0 ;
  wire \i_no_async_controls.output_reg[6]_0 ;
  wire \i_no_async_controls.output_reg[7]_0 ;
  wire \i_no_async_controls.output_reg[8]_0 ;
  wire \i_no_async_controls.output_reg[9]_0 ;
  wire [10:0]\piperegs[5]_53 ;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[10]_0 ),
        .Q(\piperegs[5]_53 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[11]_0 ),
        .Q(\piperegs[5]_53 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[1]_0 ),
        .Q(\piperegs[5]_53 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[2]_0 ),
        .Q(\piperegs[5]_53 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[3]_0 ),
        .Q(\piperegs[5]_53 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[4]_0 ),
        .Q(\piperegs[5]_53 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[5]_0 ),
        .Q(\piperegs[5]_53 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[6]_0 ),
        .Q(\piperegs[5]_53 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[7]_0 ),
        .Q(\piperegs[5]_53 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[8]_0 ),
        .Q(\piperegs[5]_53 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[9]_0 ),
        .Q(\piperegs[5]_53 [8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized4_20
   (S,
    \i_no_async_controls.output_reg[11]_0 ,
    CLK,
    \i_no_async_controls.output_reg[10]_0 ,
    \i_no_async_controls.output_reg[9]_0 ,
    \i_no_async_controls.output_reg[8]_0 ,
    \i_no_async_controls.output_reg[7]_0 ,
    \i_no_async_controls.output_reg[6]_0 ,
    \i_no_async_controls.output_reg[5]_0 ,
    \i_no_async_controls.output_reg[4]_0 ,
    \i_no_async_controls.output_reg[3]_0 ,
    \i_no_async_controls.output_reg[2]_0 ,
    \i_no_async_controls.output_reg[1]_0 );
  output [10:0]S;
  input \i_no_async_controls.output_reg[11]_0 ;
  input CLK;
  input \i_no_async_controls.output_reg[10]_0 ;
  input \i_no_async_controls.output_reg[9]_0 ;
  input \i_no_async_controls.output_reg[8]_0 ;
  input \i_no_async_controls.output_reg[7]_0 ;
  input \i_no_async_controls.output_reg[6]_0 ;
  input \i_no_async_controls.output_reg[5]_0 ;
  input \i_no_async_controls.output_reg[4]_0 ;
  input \i_no_async_controls.output_reg[3]_0 ;
  input \i_no_async_controls.output_reg[2]_0 ;
  input \i_no_async_controls.output_reg[1]_0 ;

  wire CLK;
  wire [10:0]S;
  wire \i_no_async_controls.output_reg[10]_0 ;
  wire \i_no_async_controls.output_reg[11]_0 ;
  wire \i_no_async_controls.output_reg[1]_0 ;
  wire \i_no_async_controls.output_reg[2]_0 ;
  wire \i_no_async_controls.output_reg[3]_0 ;
  wire \i_no_async_controls.output_reg[4]_0 ;
  wire \i_no_async_controls.output_reg[5]_0 ;
  wire \i_no_async_controls.output_reg[6]_0 ;
  wire \i_no_async_controls.output_reg[7]_0 ;
  wire \i_no_async_controls.output_reg[8]_0 ;
  wire \i_no_async_controls.output_reg[9]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[10]_0 ),
        .Q(S[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[11]_0 ),
        .Q(S[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[1]_0 ),
        .Q(S[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[2]_0 ),
        .Q(S[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[3]_0 ),
        .Q(S[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[4]_0 ),
        .Q(S[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[5]_0 ),
        .Q(S[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[6]_0 ),
        .Q(S[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[7]_0 ),
        .Q(S[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[8]_0 ),
        .Q(S[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[9]_0 ),
        .Q(S[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized4_21
   (S,
    \i_no_async_controls.output_reg[11]_0 ,
    CLK,
    \i_no_async_controls.output_reg[10]_0 ,
    \i_no_async_controls.output_reg[9]_0 ,
    \i_no_async_controls.output_reg[8]_0 ,
    \i_no_async_controls.output_reg[7]_0 ,
    \i_no_async_controls.output_reg[6]_0 ,
    \i_no_async_controls.output_reg[5]_0 ,
    \i_no_async_controls.output_reg[4]_0 ,
    \i_no_async_controls.output_reg[3]_0 ,
    \i_no_async_controls.output_reg[2]_0 ,
    \i_no_async_controls.output_reg[1]_0 );
  output [10:0]S;
  input \i_no_async_controls.output_reg[11]_0 ;
  input CLK;
  input \i_no_async_controls.output_reg[10]_0 ;
  input \i_no_async_controls.output_reg[9]_0 ;
  input \i_no_async_controls.output_reg[8]_0 ;
  input \i_no_async_controls.output_reg[7]_0 ;
  input \i_no_async_controls.output_reg[6]_0 ;
  input \i_no_async_controls.output_reg[5]_0 ;
  input \i_no_async_controls.output_reg[4]_0 ;
  input \i_no_async_controls.output_reg[3]_0 ;
  input \i_no_async_controls.output_reg[2]_0 ;
  input \i_no_async_controls.output_reg[1]_0 ;

  wire CLK;
  wire [10:0]S;
  wire \i_no_async_controls.output_reg[10]_0 ;
  wire \i_no_async_controls.output_reg[11]_0 ;
  wire \i_no_async_controls.output_reg[1]_0 ;
  wire \i_no_async_controls.output_reg[2]_0 ;
  wire \i_no_async_controls.output_reg[3]_0 ;
  wire \i_no_async_controls.output_reg[4]_0 ;
  wire \i_no_async_controls.output_reg[5]_0 ;
  wire \i_no_async_controls.output_reg[6]_0 ;
  wire \i_no_async_controls.output_reg[7]_0 ;
  wire \i_no_async_controls.output_reg[8]_0 ;
  wire \i_no_async_controls.output_reg[9]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[10]_0 ),
        .Q(S[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[11]_0 ),
        .Q(S[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[1]_0 ),
        .Q(S[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[2]_0 ),
        .Q(S[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[3]_0 ),
        .Q(S[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[4]_0 ),
        .Q(S[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[5]_0 ),
        .Q(S[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[6]_0 ),
        .Q(S[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[7]_0 ),
        .Q(S[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[8]_0 ),
        .Q(S[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_no_async_controls.output_reg[9]_0 ),
        .Q(S[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized4_23
   (S,
    D,
    CLK);
  output [10:0]S;
  input [10:0]D;
  input CLK;

  wire CLK;
  wire [10:0]D;
  wire [10:0]S;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(S[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[10]),
        .Q(S[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(S[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(S[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(S[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(S[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(S[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(S[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(S[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(S[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(S[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized4_25
   (S,
    D,
    CLK);
  output [10:0]S;
  input [10:0]D;
  input CLK;

  wire CLK;
  wire [10:0]D;
  wire [10:0]S;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(S[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[10]),
        .Q(S[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(S[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(S[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(S[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(S[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(S[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(S[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(S[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(S[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(S[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized4_27
   (Q,
    D,
    CLK);
  output [10:0]Q;
  input [10:0]D;
  input CLK;

  wire CLK;
  wire [10:0]D;
  wire [10:0]Q;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized4_30
   (\i_no_async_controls.output_reg[11]_0 ,
    \i_no_async_controls.output_reg[10]_0 ,
    \i_no_async_controls.output_reg[9]_0 ,
    \i_no_async_controls.output_reg[8]_0 ,
    \i_no_async_controls.output_reg[7]_0 ,
    \i_no_async_controls.output_reg[6]_0 ,
    \i_no_async_controls.output_reg[5]_0 ,
    \i_no_async_controls.output_reg[4]_0 ,
    \i_no_async_controls.output_reg[3]_0 ,
    \i_no_async_controls.output_reg[2]_0 ,
    \i_no_async_controls.output_reg[1]_0 ,
    p_0_out,
    CLK,
    p_17_out,
    p_15_out,
    p_13_out,
    p_11_out,
    p_9_out,
    p_7_out,
    p_5_out,
    p_3_out,
    p_1_out,
    \i_simple_model.carryxor0__0 );
  output \i_no_async_controls.output_reg[11]_0 ;
  output \i_no_async_controls.output_reg[10]_0 ;
  output \i_no_async_controls.output_reg[9]_0 ;
  output \i_no_async_controls.output_reg[8]_0 ;
  output \i_no_async_controls.output_reg[7]_0 ;
  output \i_no_async_controls.output_reg[6]_0 ;
  output \i_no_async_controls.output_reg[5]_0 ;
  output \i_no_async_controls.output_reg[4]_0 ;
  output \i_no_async_controls.output_reg[3]_0 ;
  output \i_no_async_controls.output_reg[2]_0 ;
  output \i_no_async_controls.output_reg[1]_0 ;
  input p_0_out;
  input CLK;
  input p_17_out;
  input p_15_out;
  input p_13_out;
  input p_11_out;
  input p_9_out;
  input p_7_out;
  input p_5_out;
  input p_3_out;
  input p_1_out;
  input \i_simple_model.carryxor0__0 ;

  wire CLK;
  wire \i_no_async_controls.output_reg[10]_0 ;
  wire \i_no_async_controls.output_reg[11]_0 ;
  wire \i_no_async_controls.output_reg[1]_0 ;
  wire \i_no_async_controls.output_reg[2]_0 ;
  wire \i_no_async_controls.output_reg[3]_0 ;
  wire \i_no_async_controls.output_reg[4]_0 ;
  wire \i_no_async_controls.output_reg[5]_0 ;
  wire \i_no_async_controls.output_reg[6]_0 ;
  wire \i_no_async_controls.output_reg[7]_0 ;
  wire \i_no_async_controls.output_reg[8]_0 ;
  wire \i_no_async_controls.output_reg[9]_0 ;
  wire \i_simple_model.carryxor0__0 ;
  wire p_0_out;
  wire p_11_out;
  wire p_13_out;
  wire p_15_out;
  wire p_17_out;
  wire p_1_out;
  wire p_3_out;
  wire p_5_out;
  wire p_7_out;
  wire p_9_out;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_17_out),
        .Q(\i_no_async_controls.output_reg[10]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out),
        .Q(\i_no_async_controls.output_reg[11]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_simple_model.carryxor0__0 ),
        .Q(\i_no_async_controls.output_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_out),
        .Q(\i_no_async_controls.output_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_3_out),
        .Q(\i_no_async_controls.output_reg[3]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_5_out),
        .Q(\i_no_async_controls.output_reg[4]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_7_out),
        .Q(\i_no_async_controls.output_reg[5]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_9_out),
        .Q(\i_no_async_controls.output_reg[6]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_11_out),
        .Q(\i_no_async_controls.output_reg[7]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_13_out),
        .Q(\i_no_async_controls.output_reg[8]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_15_out),
        .Q(\i_no_async_controls.output_reg[9]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized4_32
   (\i_no_async_controls.output_reg[11]_0 ,
    \i_no_async_controls.output_reg[10]_0 ,
    \i_no_async_controls.output_reg[9]_0 ,
    \i_no_async_controls.output_reg[8]_0 ,
    \i_no_async_controls.output_reg[7]_0 ,
    \i_no_async_controls.output_reg[6]_0 ,
    \i_no_async_controls.output_reg[5]_0 ,
    \i_no_async_controls.output_reg[4]_0 ,
    \i_no_async_controls.output_reg[3]_0 ,
    \i_no_async_controls.output_reg[2]_0 ,
    \i_no_async_controls.output_reg[1]_0 ,
    p_0_out,
    CLK,
    p_17_out,
    p_15_out,
    p_13_out,
    p_11_out,
    p_9_out,
    p_7_out,
    p_5_out,
    p_3_out,
    p_1_out,
    \i_simple_model.carryxor0__0 );
  output \i_no_async_controls.output_reg[11]_0 ;
  output \i_no_async_controls.output_reg[10]_0 ;
  output \i_no_async_controls.output_reg[9]_0 ;
  output \i_no_async_controls.output_reg[8]_0 ;
  output \i_no_async_controls.output_reg[7]_0 ;
  output \i_no_async_controls.output_reg[6]_0 ;
  output \i_no_async_controls.output_reg[5]_0 ;
  output \i_no_async_controls.output_reg[4]_0 ;
  output \i_no_async_controls.output_reg[3]_0 ;
  output \i_no_async_controls.output_reg[2]_0 ;
  output \i_no_async_controls.output_reg[1]_0 ;
  input p_0_out;
  input CLK;
  input p_17_out;
  input p_15_out;
  input p_13_out;
  input p_11_out;
  input p_9_out;
  input p_7_out;
  input p_5_out;
  input p_3_out;
  input p_1_out;
  input \i_simple_model.carryxor0__0 ;

  wire CLK;
  wire \i_no_async_controls.output_reg[10]_0 ;
  wire \i_no_async_controls.output_reg[11]_0 ;
  wire \i_no_async_controls.output_reg[1]_0 ;
  wire \i_no_async_controls.output_reg[2]_0 ;
  wire \i_no_async_controls.output_reg[3]_0 ;
  wire \i_no_async_controls.output_reg[4]_0 ;
  wire \i_no_async_controls.output_reg[5]_0 ;
  wire \i_no_async_controls.output_reg[6]_0 ;
  wire \i_no_async_controls.output_reg[7]_0 ;
  wire \i_no_async_controls.output_reg[8]_0 ;
  wire \i_no_async_controls.output_reg[9]_0 ;
  wire \i_simple_model.carryxor0__0 ;
  wire p_0_out;
  wire p_11_out;
  wire p_13_out;
  wire p_15_out;
  wire p_17_out;
  wire p_1_out;
  wire p_3_out;
  wire p_5_out;
  wire p_7_out;
  wire p_9_out;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_17_out),
        .Q(\i_no_async_controls.output_reg[10]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out),
        .Q(\i_no_async_controls.output_reg[11]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_simple_model.carryxor0__0 ),
        .Q(\i_no_async_controls.output_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_out),
        .Q(\i_no_async_controls.output_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_3_out),
        .Q(\i_no_async_controls.output_reg[3]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_5_out),
        .Q(\i_no_async_controls.output_reg[4]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_7_out),
        .Q(\i_no_async_controls.output_reg[5]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_9_out),
        .Q(\i_no_async_controls.output_reg[6]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_11_out),
        .Q(\i_no_async_controls.output_reg[7]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_13_out),
        .Q(\i_no_async_controls.output_reg[8]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_15_out),
        .Q(\i_no_async_controls.output_reg[9]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized4_33
   (\i_no_async_controls.output_reg[11]_0 ,
    \i_no_async_controls.output_reg[10]_0 ,
    \i_no_async_controls.output_reg[9]_0 ,
    \i_no_async_controls.output_reg[8]_0 ,
    \i_no_async_controls.output_reg[7]_0 ,
    \i_no_async_controls.output_reg[6]_0 ,
    \i_no_async_controls.output_reg[5]_0 ,
    \i_no_async_controls.output_reg[4]_0 ,
    \i_no_async_controls.output_reg[3]_0 ,
    \i_no_async_controls.output_reg[2]_0 ,
    \i_no_async_controls.output_reg[1]_0 ,
    p_0_out,
    CLK,
    p_8_out,
    p_7_out,
    p_6_out,
    p_5_out,
    p_4_out,
    p_3_out,
    p_2_out,
    p_1_out,
    \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ,
    \i_simple_model.carryxor0__0 );
  output \i_no_async_controls.output_reg[11]_0 ;
  output \i_no_async_controls.output_reg[10]_0 ;
  output \i_no_async_controls.output_reg[9]_0 ;
  output \i_no_async_controls.output_reg[8]_0 ;
  output \i_no_async_controls.output_reg[7]_0 ;
  output \i_no_async_controls.output_reg[6]_0 ;
  output \i_no_async_controls.output_reg[5]_0 ;
  output \i_no_async_controls.output_reg[4]_0 ;
  output \i_no_async_controls.output_reg[3]_0 ;
  output \i_no_async_controls.output_reg[2]_0 ;
  output \i_no_async_controls.output_reg[1]_0 ;
  input p_0_out;
  input CLK;
  input p_8_out;
  input p_7_out;
  input p_6_out;
  input p_5_out;
  input p_4_out;
  input p_3_out;
  input p_2_out;
  input p_1_out;
  input \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ;
  input \i_simple_model.carryxor0__0 ;

  wire CLK;
  wire \i_no_async_controls.output_reg[10]_0 ;
  wire \i_no_async_controls.output_reg[11]_0 ;
  wire \i_no_async_controls.output_reg[1]_0 ;
  wire \i_no_async_controls.output_reg[2]_0 ;
  wire \i_no_async_controls.output_reg[3]_0 ;
  wire \i_no_async_controls.output_reg[4]_0 ;
  wire \i_no_async_controls.output_reg[5]_0 ;
  wire \i_no_async_controls.output_reg[6]_0 ;
  wire \i_no_async_controls.output_reg[7]_0 ;
  wire \i_no_async_controls.output_reg[8]_0 ;
  wire \i_no_async_controls.output_reg[9]_0 ;
  wire \i_simple_model.carryxor0__0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ;
  wire p_0_out;
  wire p_1_out;
  wire p_2_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire p_6_out;
  wire p_7_out;
  wire p_8_out;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_8_out),
        .Q(\i_no_async_controls.output_reg[10]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out),
        .Q(\i_no_async_controls.output_reg[11]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_simple_model.carryxor0__0 ),
        .Q(\i_no_async_controls.output_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ),
        .Q(\i_no_async_controls.output_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_out),
        .Q(\i_no_async_controls.output_reg[3]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_out),
        .Q(\i_no_async_controls.output_reg[4]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_3_out),
        .Q(\i_no_async_controls.output_reg[5]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_4_out),
        .Q(\i_no_async_controls.output_reg[6]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_5_out),
        .Q(\i_no_async_controls.output_reg[7]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_6_out),
        .Q(\i_no_async_controls.output_reg[8]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_7_out),
        .Q(\i_no_async_controls.output_reg[9]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized4_34
   (\i_no_async_controls.output_reg[11]_0 ,
    \i_no_async_controls.output_reg[10]_0 ,
    \i_no_async_controls.output_reg[9]_0 ,
    \i_no_async_controls.output_reg[8]_0 ,
    \i_no_async_controls.output_reg[7]_0 ,
    \i_no_async_controls.output_reg[6]_0 ,
    \i_no_async_controls.output_reg[5]_0 ,
    \i_no_async_controls.output_reg[4]_0 ,
    \i_no_async_controls.output_reg[3]_0 ,
    \i_no_async_controls.output_reg[2]_0 ,
    \i_no_async_controls.output_reg[1]_0 ,
    p_0_out,
    CLK,
    p_8_out,
    p_7_out,
    p_6_out,
    p_5_out,
    p_4_out,
    p_3_out,
    p_2_out,
    p_1_out,
    \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ,
    \i_simple_model.carryxor0__0 );
  output \i_no_async_controls.output_reg[11]_0 ;
  output \i_no_async_controls.output_reg[10]_0 ;
  output \i_no_async_controls.output_reg[9]_0 ;
  output \i_no_async_controls.output_reg[8]_0 ;
  output \i_no_async_controls.output_reg[7]_0 ;
  output \i_no_async_controls.output_reg[6]_0 ;
  output \i_no_async_controls.output_reg[5]_0 ;
  output \i_no_async_controls.output_reg[4]_0 ;
  output \i_no_async_controls.output_reg[3]_0 ;
  output \i_no_async_controls.output_reg[2]_0 ;
  output \i_no_async_controls.output_reg[1]_0 ;
  input p_0_out;
  input CLK;
  input p_8_out;
  input p_7_out;
  input p_6_out;
  input p_5_out;
  input p_4_out;
  input p_3_out;
  input p_2_out;
  input p_1_out;
  input \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ;
  input \i_simple_model.carryxor0__0 ;

  wire CLK;
  wire \i_no_async_controls.output_reg[10]_0 ;
  wire \i_no_async_controls.output_reg[11]_0 ;
  wire \i_no_async_controls.output_reg[1]_0 ;
  wire \i_no_async_controls.output_reg[2]_0 ;
  wire \i_no_async_controls.output_reg[3]_0 ;
  wire \i_no_async_controls.output_reg[4]_0 ;
  wire \i_no_async_controls.output_reg[5]_0 ;
  wire \i_no_async_controls.output_reg[6]_0 ;
  wire \i_no_async_controls.output_reg[7]_0 ;
  wire \i_no_async_controls.output_reg[8]_0 ;
  wire \i_no_async_controls.output_reg[9]_0 ;
  wire \i_simple_model.carryxor0__0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ;
  wire p_0_out;
  wire p_1_out;
  wire p_2_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire p_6_out;
  wire p_7_out;
  wire p_8_out;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_8_out),
        .Q(\i_no_async_controls.output_reg[10]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out),
        .Q(\i_no_async_controls.output_reg[11]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_simple_model.carryxor0__0 ),
        .Q(\i_no_async_controls.output_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ),
        .Q(\i_no_async_controls.output_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_out),
        .Q(\i_no_async_controls.output_reg[3]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_out),
        .Q(\i_no_async_controls.output_reg[4]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_3_out),
        .Q(\i_no_async_controls.output_reg[5]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_4_out),
        .Q(\i_no_async_controls.output_reg[6]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_5_out),
        .Q(\i_no_async_controls.output_reg[7]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_6_out),
        .Q(\i_no_async_controls.output_reg[8]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_7_out),
        .Q(\i_no_async_controls.output_reg[9]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized4_38
   (Q,
    D,
    CLK);
  output [10:0]Q;
  input [10:0]D;
  input CLK;

  wire CLK;
  wire [10:0]D;
  wire [10:0]Q;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized4_40
   (Q,
    D,
    CLK);
  output [10:0]Q;
  input [10:0]D;
  input CLK;

  wire CLK;
  wire [10:0]D;
  wire [10:0]Q;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module add_int64_c_reg_fd_v12_0_5_viv__parameterized4_7
   (\i_no_async_controls.output_reg[11] ,
    \i_no_async_controls.output_reg[10] ,
    \i_no_async_controls.output_reg[9] ,
    \i_no_async_controls.output_reg[8] ,
    \i_no_async_controls.output_reg[7] ,
    \i_no_async_controls.output_reg[6] ,
    \i_no_async_controls.output_reg[5] ,
    \i_no_async_controls.output_reg[4] ,
    \i_no_async_controls.output_reg[3] ,
    \i_no_async_controls.output_reg[2] ,
    \i_no_async_controls.output_reg[1] ,
    \i_no_async_controls.output_reg[11]_0 ,
    CLK,
    \i_no_async_controls.output_reg[10]_0 ,
    \i_no_async_controls.output_reg[9]_0 ,
    \i_no_async_controls.output_reg[8]_0 ,
    \i_no_async_controls.output_reg[7]_0 ,
    \i_no_async_controls.output_reg[6]_0 ,
    \i_no_async_controls.output_reg[5]_0 ,
    \i_no_async_controls.output_reg[4]_0 ,
    \i_no_async_controls.output_reg[3]_0 ,
    \i_no_async_controls.output_reg[2]_0 ,
    \i_no_async_controls.output_reg[1]_0 );
  output \i_no_async_controls.output_reg[11] ;
  output \i_no_async_controls.output_reg[10] ;
  output \i_no_async_controls.output_reg[9] ;
  output \i_no_async_controls.output_reg[8] ;
  output \i_no_async_controls.output_reg[7] ;
  output \i_no_async_controls.output_reg[6] ;
  output \i_no_async_controls.output_reg[5] ;
  output \i_no_async_controls.output_reg[4] ;
  output \i_no_async_controls.output_reg[3] ;
  output \i_no_async_controls.output_reg[2] ;
  output \i_no_async_controls.output_reg[1] ;
  input \i_no_async_controls.output_reg[11]_0 ;
  input CLK;
  input \i_no_async_controls.output_reg[10]_0 ;
  input \i_no_async_controls.output_reg[9]_0 ;
  input \i_no_async_controls.output_reg[8]_0 ;
  input \i_no_async_controls.output_reg[7]_0 ;
  input \i_no_async_controls.output_reg[6]_0 ;
  input \i_no_async_controls.output_reg[5]_0 ;
  input \i_no_async_controls.output_reg[4]_0 ;
  input \i_no_async_controls.output_reg[3]_0 ;
  input \i_no_async_controls.output_reg[2]_0 ;
  input \i_no_async_controls.output_reg[1]_0 ;

  wire CLK;
  wire \i_no_async_controls.output_reg[10] ;
  wire \i_no_async_controls.output_reg[10]_0 ;
  wire \i_no_async_controls.output_reg[11] ;
  wire \i_no_async_controls.output_reg[11]_0 ;
  wire \i_no_async_controls.output_reg[1] ;
  wire \i_no_async_controls.output_reg[1]_0 ;
  wire \i_no_async_controls.output_reg[2] ;
  wire \i_no_async_controls.output_reg[2]_0 ;
  wire \i_no_async_controls.output_reg[3] ;
  wire \i_no_async_controls.output_reg[3]_0 ;
  wire \i_no_async_controls.output_reg[4] ;
  wire \i_no_async_controls.output_reg[4]_0 ;
  wire \i_no_async_controls.output_reg[5] ;
  wire \i_no_async_controls.output_reg[5]_0 ;
  wire \i_no_async_controls.output_reg[6] ;
  wire \i_no_async_controls.output_reg[6]_0 ;
  wire \i_no_async_controls.output_reg[7] ;
  wire \i_no_async_controls.output_reg[7]_0 ;
  wire \i_no_async_controls.output_reg[8] ;
  wire \i_no_async_controls.output_reg[8]_0 ;
  wire \i_no_async_controls.output_reg[9] ;
  wire \i_no_async_controls.output_reg[9]_0 ;

  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[10]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[10]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[10]_0 ),
        .Q(\i_no_async_controls.output_reg[10] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[11]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[11]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[11]_0 ),
        .Q(\i_no_async_controls.output_reg[11] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[1]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[1]_0 ),
        .Q(\i_no_async_controls.output_reg[1] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[2]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[2]_0 ),
        .Q(\i_no_async_controls.output_reg[2] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[3]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[3]_0 ),
        .Q(\i_no_async_controls.output_reg[3] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[4]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[4]_0 ),
        .Q(\i_no_async_controls.output_reg[4] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[5]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[5]_0 ),
        .Q(\i_no_async_controls.output_reg[5] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[6]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[6]_0 ),
        .Q(\i_no_async_controls.output_reg[6] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[7]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[7]_0 ),
        .Q(\i_no_async_controls.output_reg[7] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[8]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[8]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[8]_0 ),
        .Q(\i_no_async_controls.output_reg[8] ));
  (* srl_bus_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg " *) 
  (* srl_name = "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[9]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \i_no_async_controls.output_reg[9]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .D(\i_no_async_controls.output_reg[9]_0 ),
        .Q(\i_no_async_controls.output_reg[9] ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
