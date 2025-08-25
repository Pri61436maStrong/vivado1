`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/15 16:19:20
// Design Name: 
// Module Name: norm_dma
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - New version
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module norm_dma (
  input                              aclk                ,
  input                              rst                 ,
      
  // interfaces with norm_ctrl    
  input               [ 31 : 0]      ddr_araddr_base     ,
  input               [ 31 : 0]      ddr_araddr_last     ,
  input               [ 31 : 0]      ddr_awaddr_base     ,
  input               [ 31 : 0]      ddr_awaddr_last     ,
  output     reg                     wdma_done           ,
  input                              cfg_start_pulse     ,
  output     reg                     core_start          ,  // instruction registers are done, level signal
  output                             core_start_pulse    ,
  input               [ 31 : 0]      inst_addr           ,
  input               [ 31 : 0]      tiles               ,
  input               [ 31 : 0]      pieces              ,
  input               [ 31 : 0]      rest_channels       ,
  output                             inst_vld            ,
  input                              inst_rdy            ,
  input                              cache               ,  // whether stores data when accumulating

  // receives data from norm_core  
  input               [511 : 0]      core_to_dma_data    ,   
  input                              core_to_dma_vld     ,   
  output                             dma_almost_full     ,
      
  // sends data to norm_core      
  output              [511 : 0]      dma_to_core_data    , 
  output                             dma_to_core_vld     ,  
  input                              core_to_dma_rdy     ,
    
  // sends data to DDR  
  output              [511 : 0]      ddr_wwdata          ,
  output     reg      [ 31 : 0]      ddr_wwaddr          ,
  output                             ddr_ww_vld          ,
  input                              ddr_ww_rdy          ,
  output              [ 71 : 0]      awwinfo             ,
  
  // reads data from DDR, handshake for address  
  output     reg      [ 31 : 0]      ddr_araddr          ,
  output              [ 31 : 0]      arinfo              , 
  output                             ddr_araddr_vld      ,
  input                              ddr_araddr_rdy      ,
     
  // reads data from DDR, handshake for data     
  input               [511 : 0]      ddr_rdata           ,
  input                              ddr_rdata_vld       ,
  output                             ddr_rdata_rdy       
    
  //********************* Debug ***********************//
  // output                [ 31: 0]     tile_cnt            ,
  // output                [ 31: 0]     piece_cnt           ,
  // output                [ 0 : 0]     round_2nd           ,
  // output                             fifo_din_full       ,
  // output                             fifo_din_empty      ,
  // output                             fifo_din_prog_full  ,
  // output                             fifo_dout_full      ,
  // output                             fifo_dout_empty     ,
  // output                             fifo_dout_prog_full 
  //********************* Debug ***********************//
);

// sends read address to DDR
wire        [31:0]        ddr_araddr_nxt          ;
reg                       data_araddr_vld         ;
wire                      ddr_araddr_exhs         ;
wire                      data_araddr_last_exhs   ;
wire        [31:0]        ddr_wwaddr_nxt          ;
wire                      wr_last_data            ;
// wire                      wr_fifo_din_en          ;
// wire                      rd_fifo_din_en          ;
wire                      wr_fifo_dout_en         ;
wire                      rd_fifo_dout_en         ;
reg                       inst_addr_vld           ;
reg                       wdma_done_dly1          ;
wire                      wdma_done_pedge         ;
reg                       core_start_dly1         ;
reg        [31 : 0]       tile_cnt                ;  // counter for tile, times of repetition
reg        [31 : 0]       piece_cnt               ;  // counter for piece, a tile is composed of multiple pieces
reg                       last_tile               ;
reg                       last_piece              ;
reg                       round_2nd               ;
reg        [31 : 0]       ddr_araddr_round_base   ; 

// wire                      fifo_din_full           ;
// wire                      fifo_din_empty          ;
// wire                      fifo_din_prog_full      ;
wire                      fifo_dout_full          ;
wire                      fifo_dout_empty         ;
wire                      fifo_dout_prog_full     ;
wire                      dma_to_core_rdy         ;


// address offset
localparam bytesize = 32'h0000_0040;

//{1'b0,pl_awen[63:0],pl_awinfo[5:0],pl_awlast[0]}
assign awwinfo = {1'b0, {64{1'b1}}, 6'b0, 1'b1};
// assign awwinfo = {1'b0, {64{1'b1}}, 6'b0, wr_last_data && rd_fifo_dout_en};

//{25'h0,pl_arinfo,pl_arlast}
assign arinfo = {25'b0, 6'h3F, 1'b1};
 
// valid depends on ready, actually
assign inst_vld = ddr_rdata_vld && !core_start ;


//_________________________ core_start_pulse _________________________
always @(posedge aclk) begin
  if ( rst )
    wdma_done_dly1 <= 1'b0;
  else
    wdma_done_dly1 <= wdma_done;
end

assign wdma_done_pedge = !wdma_done_dly1 && wdma_done;

// core_start
always @(posedge aclk) begin
  if ( rst )
    core_start <= 1'b0;
  else if ( wdma_done_pedge )
    core_start <= 1'b0;
  else if ( inst_vld && inst_rdy )
    core_start <= 1'b1;
end

always @(posedge aclk) begin
  if ( rst )
    core_start_dly1 <= 1'b0;
  else
    core_start_dly1 <= core_start;
end

assign core_start_pulse = !core_start_dly1 && core_start;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^



//___________________ counters for sending address ___________________
// tile_cnt
always @(posedge aclk) begin
  if ( rst )
    tile_cnt <= 32'b0  ;
  else if ( core_start_pulse )
    tile_cnt <= tiles  ;
  else if ( last_tile && last_piece && ddr_araddr_exhs && round_2nd )
    tile_cnt <= 32'b0  ;
  else if ( last_piece && ddr_araddr_exhs && round_2nd )
    tile_cnt <= tile_cnt - 32'b1  ;
end

// last_tile
always @(posedge aclk) begin
  if ( rst )
    last_tile <= 1'b0  ;
  else if ( core_start_pulse )
    last_tile <= (tiles == 32'h1)  ;
  else if ( last_tile && last_piece && ddr_araddr_exhs && round_2nd )
    last_tile <= 1'b0  ;
  else if ( (tile_cnt == 32'h2) && last_piece && ddr_araddr_exhs && round_2nd )
    last_tile <= 1'b1  ;
end

// piece_cnt
always @(posedge aclk) begin
  if ( rst )
    piece_cnt <= 32'b0  ;
  else if ( last_tile && last_piece && ddr_araddr_exhs && round_2nd )
    piece_cnt <= 32'b0  ;
  else if ( core_start_pulse && (tiles == 32'h1) || (tile_cnt == 32'h2) && last_piece && ddr_araddr_exhs && round_2nd || last_tile && last_piece && ddr_araddr_exhs && !round_2nd)
    piece_cnt <= rest_channels  ;
  else if ( core_start_pulse || last_piece && ddr_araddr_exhs )
    piece_cnt <= pieces  ;
  else if ( ddr_araddr_exhs )
    piece_cnt <= piece_cnt - 32'b1  ;
end

// last_piece, time to pause accumulator
always @(posedge aclk) begin
  if ( rst )
    last_piece <= 1'b0  ;
  else if ( last_tile && last_piece && ddr_araddr_exhs && round_2nd )
    last_piece <= 1'b0  ;
  else if ( core_start_pulse && (tiles == 32'h1) || (tile_cnt == 32'h2) && last_piece && ddr_araddr_exhs && round_2nd || last_tile && last_piece && ddr_araddr_exhs && !round_2nd)
    last_piece <= (rest_channels == 32'h1)  ;
  else if ( core_start_pulse || last_piece && ddr_araddr_exhs )
    last_piece <= (pieces == 32'h1)  ;
  else if ( (piece_cnt == 32'h2) && ddr_araddr_exhs )
    last_piece <= 1'b1  ;
end

// round_2nd is stuck at 1 when cache is 1
always @(posedge aclk) begin
  if ( rst )
    round_2nd <= 1'b0  ;
  else if ( core_start_pulse )
    round_2nd <= cache ;
  else if ( last_piece && ddr_araddr_exhs && !cache)
    round_2nd <= !round_2nd  ;
end
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^



//______________________ reads data from DDR _________________________
// handshakes for ddr_araddr
assign ddr_araddr_exhs = ddr_araddr_vld && ddr_araddr_rdy && core_start  ;

// the next address for reading data from ddr
assign ddr_araddr_nxt = ddr_araddr + bytesize;
assign data_araddr_last_exhs = (ddr_araddr_nxt == ddr_araddr_last) && ddr_araddr_exhs && round_2nd;

// data_araddr_vld
always @(posedge aclk) begin
  if ( rst )
    data_araddr_vld <= 1'b0;
  else if (core_start_pulse)
    data_araddr_vld <= 1'b1;
  else if (data_araddr_last_exhs)
    data_araddr_vld <= 1'b0;
end

// Avoid sending ddr_araddr when fifo_din is almost full
assign ddr_araddr_vld = core_start && data_araddr_vld || !core_start && inst_addr_vld;

// enable to read cfg data from certain cfg addr
always @(posedge aclk) begin
  if ( rst )
    inst_addr_vld <= 1'b0;
  else if (cfg_start_pulse)
    inst_addr_vld <= 1'b1;
  else if (ddr_araddr_vld && ddr_araddr_rdy)
    inst_addr_vld <= 1'b0;
end


// ddr_araddr_round_base
always @(posedge aclk) begin
  if ( rst )
    ddr_araddr_round_base <= 32'b0;
  else if ( core_start_pulse )
    ddr_araddr_round_base <= ddr_araddr_base;
  else if ( data_araddr_last_exhs )
    ddr_araddr_round_base <= 32'b0;
  else if ( last_piece && ddr_araddr_exhs )
    ddr_araddr_round_base <= ddr_araddr_nxt;
end

// updates ddr_araddr
always @(posedge aclk) begin
  if ( rst )
    ddr_araddr <= 32'b0;
  else if ( cfg_start_pulse ) 
    ddr_araddr <= inst_addr;
  else if ( core_start_pulse )
    ddr_araddr <= ddr_araddr_base;
  else if ( data_araddr_last_exhs )
    ddr_araddr <= 32'b0;
  else if ( last_piece && ddr_araddr_exhs && !cache)
    ddr_araddr <= ddr_araddr_round_base;
  else if ( ddr_araddr_exhs )
    ddr_araddr <= ddr_araddr_nxt;
end

// handshakes for ddr_rdata, writing data to fifo_din
// handshakes for dma_to_ln_data, reading data from fifo_din
// assign ddr_rdata_rdy = !fifo_din_full || inst_rdy;
// assign wr_fifo_din_en = ddr_rdata_vld && ddr_rdata_rdy && core_start;
// assign rd_fifo_din_en = core_to_dma_rdy && dma_to_core_vld;

assign dma_to_core_data = ddr_rdata;
assign dma_to_core_vld = ddr_rdata_vld && core_start;
assign ddr_rdata_rdy = core_to_dma_rdy || inst_rdy;

// fist word fall through !!!
// fifo_w512 u_fifo_din (
//   .clk        (  aclk                 ), 
//   .srst       (  rst                  ), 
//   .din        (  ddr_rdata            ), 
//   .wr_en      (  wr_fifo_din_en       ), 
//   .rd_en      (  rd_fifo_din_en       ), 
//   .dout       (  dma_to_core_data     ), 
//   .full       (  fifo_din_full        ), 
//   .empty      (  fifo_din_empty       ), 
//   .prog_full  (  fifo_din_prog_full   )  
// );
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^



//_______________________ writes data to DDR _________________________
// when true, fifo_dout could recieve little data from ln_calc, actually
assign dma_to_core_rdy = !fifo_dout_full  ;
assign dma_almost_full = fifo_dout_prog_full  ;

// handshakes for ln_to_dma_data is not normal
assign wr_fifo_dout_en = core_to_dma_vld && dma_to_core_rdy;

// handshakes for ddr_wwdata, reading data from fifo_dout
assign ddr_ww_vld = !fifo_dout_empty ;
assign rd_fifo_dout_en = ddr_ww_vld && ddr_ww_rdy;

// the next address for writing data to ddr
assign ddr_wwaddr_nxt = ddr_wwaddr + bytesize;
// active high after transferring the last write address
assign wr_last_data = ddr_wwaddr_nxt == ddr_awaddr_last;

// updates ddr_wwaddr after successful handshakes
always @(posedge aclk) begin
  if ( rst )
    ddr_wwaddr <= 32'b0;
  else if (core_start_pulse)
    ddr_wwaddr <= ddr_awaddr_base;
  else if (rd_fifo_dout_en)
    ddr_wwaddr <= ddr_wwaddr_nxt;
end

// set wdma_done true after finishing with transferring all data to DDR
always @(posedge aclk) begin
  if ( rst )
    wdma_done <= 1'b0;
 else if ( cfg_start_pulse )
    wdma_done <= 1'b0;
  else if ( wr_last_data && rd_fifo_dout_en )
    wdma_done <= 1'b1;
end

// async fifo for transferring data from ln_calc to DDR
// input width: 256-bit, output width: 512-bit, put first 256-bit at MSB
// fist word fall through !!!
fifo_w512 u_fifo_dout (
  .clk        (  aclk                 ), 
  .srst       (  rst                  ), 
  .din        (  core_to_dma_data     ), 
  .wr_en      (  wr_fifo_dout_en      ), 
  .rd_en      (  rd_fifo_dout_en      ), 
  .dout       (  ddr_wwdata           ), 
  .full       (  fifo_dout_full       ), 
  .empty      (  fifo_dout_empty      ), 
  .prog_full  (  fifo_dout_prog_full  )  
);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

endmodule
