//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : sp_cbuffer.v
// Author        : SongYH
// Project       : 
// Create Date   : 2023.10.29
// Description   : 
// - buffer contigrous ddr data
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================


module sp_cbuffer(
    input       [   31 : 0]              arg_araddr      ,
    input       [   31 : 0]              arg_arinfo      ,
    input                                arg_arvalid     ,
    output                               arg_arready     ,

    output      [  511 : 0]              arg_rdata       ,
    output      [   31 : 0]              arg_rinfo       ,
    output                               arg_rvalid      ,
    input                                arg_rready      ,

    output      [   31 : 0]              ddr_araddr      ,
    output      [   31 : 0]              ddr_arinfo      ,
    output                               ddr_arvalid     ,
    input                                ddr_arready     ,

    input       [  511 : 0]              ddr_rdata       ,
    input       [   31 : 0]              ddr_rinfo       ,
    input                                ddr_rvalid      ,
    output                               ddr_rready      ,

    input                                clk             ,
    input                                rst
);

wire         wen_u0  ;  
wire         wen_u1  ;  

wire [8:0]   waddr_u0;
wire [543:0] wdata_u0;

wire [8:0]   waddr_u1;
wire [543:0] wdata_u1;

wire [8:0]   raddra_u0;
wire [8:0]   raddrb_u0;
wire [543:0] rdataa_u0;
wire [543:0] rdatab_u0;

wire [8:0]   raddra_u1;
wire [8:0]   raddrb_u1;
wire [543:0] rdataa_u1;
wire [543:0] rdatab_u1;

wire [8:0]   addra_u0;

wire [8:0]   addra_u1;


assign addra_u0 = wen_u0 ? waddr_u0 : raddra_u0;


assign addra_u1 = wen_u1 ? waddr_u1 : raddra_u1;

sp_crddr_mem mem_u0 (
  .a(addra_u0),     // input wire [8 : 0] a   
  .d(wdata_u0),     // input wire [543 : 0] d    
  .dpra(raddrb_u0), // input wire [8 : 0] dpra  
  .clk(clk),        // input wire clk
  .we(wen_u0),      // input wire we 
  .qspo(rdataa_u0), // output wire [543 : 0] qspo
  .qdpo(rdatab_u0)  // output wire [543 : 0] qdpo  
);

sp_crddr_mem mem_u1 (
  .a(addra_u1),     // input wire [8 : 0] a      
  .d(wdata_u1),     // input wire [543 : 0] d       
  .dpra(raddrb_u1), // input wire [8 : 0] dpra   
  .clk(clk),        // input wire clk
  .we(wen_u1),      // input wire we 
  .qspo(rdataa_u1), // output wire [543 : 0] qspo 
  .qdpo(rdatab_u1)  // output wire [543 : 0] qdpo  
);

endmodule
