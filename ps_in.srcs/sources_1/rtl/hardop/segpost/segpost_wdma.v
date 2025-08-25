//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : segpost_wdma.v
// Author        : WangYinglin 
// Project       : 
// Create Date   : 2021.11.05
// Description   :
// -- write ps_ddr dma;
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//         2024.1.4     songyiheng   for segpost
//==============================================================================
module segpost_wdma
#(parameter DW1=29, DW2=65, DW3=64)
(
   input                       block_start     ,
   input                       filter_done_sts ,
   output reg                  wr_done_sts     ,

   input      [DW2-1 : 0]      sfifo_rdata      ,
   output                      sfifo_rd         ,
   input                       sfifo_empty      ,

   output     [DW3-1 : 0]      hp_wdma_wdata   ,
   output                      hp_wdma_wvalid  ,
   input                       hp_wdma_wready  ,


   input      [DW1-1 : 0]      ps_ddr_base      ,
   input      [   31 : 0]      gt_th_num        ,
   input      [   31 : 0]      af_fifo_rd_num   ,
//    input                       filter_none_sts  ,

   output     [DW1-1 : 0]      hp_wdma_awaddr  ,
   output                      hp_wdma_awvalid ,
   input                       hp_wdma_awready ,

   output reg [   31 : 0]      wr_num           ,
  
   input                       clk              ,
   input                       rst             
);
  
//wire   [DW1-1 : 0]   wwbase           ;
//reg                  ahp_wdma_awvalid ;
//wire                 aawready         ;
reg    [   31 : 0]   wlast_cnt        ;
//wire                 wready           ;
//reg                  awvalid_reg      ; 
wire                 hp_wdma_wlast    ;
reg    [DW1-1 : 0]   wdma_addr        ;

assign hp_wdma_wdata = sfifo_rdata[64:1];
assign hp_wdma_wlast = sfifo_rdata[0] & hp_wdma_wvalid & hp_wdma_wready;
assign hp_wdma_wvalid = ~sfifo_empty & hp_wdma_awready;
//assign wready = hp_wdma_wready & (~awvalid_reg);
assign sfifo_rd = hp_wdma_wready & hp_wdma_wvalid;

assign hp_wdma_awvalid = ~sfifo_empty & hp_wdma_wready;

always @(posedge clk)begin
    if(rst)
        wlast_cnt <= 'd0;
    else if(block_start)
        wlast_cnt <= 'd0;
    else if(hp_wdma_wlast&&hp_wdma_wvalid&&hp_wdma_wready) 
        wlast_cnt <= wlast_cnt + 1'd1;
end

always @(posedge clk)begin
    if(rst)
        wr_done_sts <= 1'd0;
	else if(block_start)
		wr_done_sts <= 1'd0;
    // else if(filter_none_sts)
    //     wr_done_sts <= 1'd1;
    else if(( gt_th_num + 1'b1 == wlast_cnt) & filter_done_sts) 
        wr_done_sts <= 1'd1;
end
  
always @(posedge clk)begin
    if(rst)
        wdma_addr <= 'd0;
    else if(block_start)
        wdma_addr <= ps_ddr_base;
    else if(hp_wdma_awvalid && hp_wdma_awready)
        wdma_addr <= wdma_addr+1;
end

assign hp_wdma_awaddr = wdma_addr;

always @(posedge clk)begin
    if(rst)
        wr_num <= 'd0;
    else if(block_start)
        wr_num <= 0;
    else if(hp_wdma_awvalid && hp_wdma_awready)
        wr_num <= wr_num+1;
end

endmodule
