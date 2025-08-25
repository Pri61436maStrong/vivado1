`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/14 17:00:15
// Design Name: 
// Module Name: norm_ctrl
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Revision 0.02 - Bit stream
// Revision 0.03 - Supports softmax
// Revision 1.00 - norm hardop
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module norm_ctrl (
  input                               gp_clk             ,
  input                               gp_rst_n           ,  // gp_clk
  input                               ddr_clk            ,
  input                               ddr_rst            ,  // ddr_clk
  output      reg                     soft_rst           ,

  // handshaking for writing register, under gp_clk domain
  output      reg                     interrupt_valid    ,
  input                               interrupt_ready    ,
  input                [ 31 : 0]      gpx_awwaddr        ,
  input                [ 31 : 0]      gpx_awwdata        ,
  input                               gpx_aww_vld        ,
  output                              gpx_aww_rdy        ,
     
  // handshaking for reading register address, under gp_clk domain
  input                [ 31 : 0]      gpx_araddr         ,
  input                               gpx_araddr_vld     ,
  output                              gpx_araddr_rdy     ,
     
  // handshaking for reading register data, under gp_clk domain
  output      reg      [ 31 : 0]      gpx_rdata          ,
  output      reg                     gpx_rdata_vld      ,
  input                               gpx_rdata_rdy      ,
     
  // interfaces with DMA, under ddr_clk domain
  input                               wdma_done          ,  // wdma is done, level signal
  output                              cfg_start_pulse    ,  // start instruction addressing, pulse signal
  output      reg      [ 31 : 0]      inst_addr          ,  // instruction address
  output               [ 31 : 0]      ddr_araddr_base    , 
  output               [ 31 : 0]      ddr_araddr_last    , 
  output               [ 31 : 0]      ddr_awaddr_base    , 
  output               [ 31 : 0]      ddr_awaddr_last  
);   


//____________________________ signals _______________________________
  wire                        gpx_aww_en              ;
  wire                        gpx_araddr_en           ;
  wire                        gpx_rdata_en            ;
  reg         [31 : 0]        gpx_rdata_tmp           ;
  reg                         norm_done_dly1          ;
  wire                        norm_done_pedge         ;
  wire                        cfg_start               ;
  reg                         cfg_start_dly1          ;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


//____________________________  registers ____________________________
  reg                         norm_start              ;
  reg                         norm_start_dly1         ;
  wire                        norm_start_pedge        ;
  wire        [ 31 : 0]       norm_start_gp_domain    ;
  wire                        norm_done               ;
  wire        [ 31 : 0]       norm_done_gp_domain     ;
  wire        [ 31 : 0]       norm_version            ;
  wire        [ 31 : 0]       norm_version_gp_domain  ;
  reg         [ 31 : 0]       test                    ;
  wire        [ 31 : 0]       test_gp_domain          ;
  reg         [ 31 : 0]       timer                   ;
  wire        [ 31 : 0]       timer_gp_domain         ;
  wire        [ 31 : 0]       soft_rst_gp_domain      ;
  wire        [ 31 : 0]       inst_addr_gp_domain     ;
  reg         [ 31 : 0]       araddr_base_gp_domain   ;
  reg         [ 31 : 0]       araddr_last_gp_domain   ;
  reg         [ 31 : 0]       awaddr_base_gp_domain   ;
  reg         [ 31 : 0]       awaddr_last_gp_domain   ;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  //interrupt
  reg                         done_dly                ;
  wire                        interrupt_pulse         ;


//____________________________ CDC process ___________________________
// norm_start_pedge
always @(posedge gp_clk) begin
  if ( !gp_rst_n )
    norm_start_dly1 <= 1'b0;
  else
    norm_start_dly1 <= norm_start;
end

assign norm_start_pedge = !norm_start_dly1 && norm_start ;

// synchronizes signal norm_start from gp_clk to ddr_clk
cdc_process cdc_norm_start (
  .clk    (  ddr_clk           ),
  .rst    (  ddr_rst           ),
  .din    (  norm_start_pedge  ),  // gp_clk_domain
  .dout   (  cfg_start         )   // ddr_clk_domain
);

always @(posedge ddr_clk) begin
  if ( ddr_rst )
    cfg_start_dly1 <= 1'b0;
  else
    cfg_start_dly1 <= cfg_start;
end

assign cfg_start_pulse = !cfg_start_dly1 && cfg_start;

// synchronizes signal wdma_done from ddr_clk to gp_clk
cdc_process cdc_dma_done(
  .clk    (  gp_clk       ),
  .rst    (  !gp_rst_n    ),
  .din    (  wdma_done    ),
  .dout   (  norm_done    )
);

always @(posedge gp_clk) begin
  if ( !gp_rst_n )
    norm_done_dly1 <= 1'b0;
  else
    norm_done_dly1 <= norm_done;
end

assign norm_done_pedge = !norm_done_dly1 && norm_done;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^



//____________________writes data to registers________________________
// after core starting, some registers are unwritable
assign gpx_aww_rdy = 1'b1       ;
assign gpx_aww_en  = gpx_aww_vld && gpx_aww_rdy  ;

// Register addr: 32'h0000; Function: module will start reading instruction
//------------------------------------------------------------------------
// addr      | 32'h0000
//------------------------------------------------------------------------
// name      | norm_start_gp_domain
//------------------------------------------------------------------------
// bit       | [31:1]                   | [0]
//------------------------------------------------------------------------
// authority | RO                       | RW
//------------------------------------------------------------------------
// bit name  | rfu                      | norm_start
//------------------------------------------------------------------------
always @(posedge gp_clk) begin
  if ( !gp_rst_n )
    norm_start <= 1'b0  ;
  else if ( norm_start && norm_done_pedge || soft_rst)
    norm_start <= 1'b0  ;
  else if ( gpx_aww_en && !norm_start && gpx_awwaddr[7:0]==8'h00 )
    norm_start <= gpx_awwdata[0]  ;
end

assign norm_start_gp_domain = { 31'b0, norm_start }  ;


// Register addr: 32'h0004; Function: module finished work
//------------------------------------------------------------------------
// addr      | 32'h0004
//------------------------------------------------------------------------
// name      | norm_done_gp_domain
//------------------------------------------------------------------------
// bit       | [31:1]                   | [0]
//------------------------------------------------------------------------
// authority | RO                       | RO
//------------------------------------------------------------------------
// bit name  | rfu                      | norm_done
//------------------------------------------------------------------------
assign norm_done_gp_domain = { 31'b0, norm_done }  ;

    //interrupt
    always @( posedge gp_clk ) begin
        if ( gp_rst_n == 1'b0 )
            done_dly <= 1'b0    ;
        else
            done_dly <= norm_done;
    end
    always @( posedge gp_clk ) begin
        if ( gp_rst_n == 1'b0 )
            interrupt_valid <= 1'b0;
        else if(interrupt_pulse)
            interrupt_valid <= 1'b1;
        else if(interrupt_ready)
            interrupt_valid <= 1'b0;
    end
    assign interrupt_pulse = norm_done & ~done_dly;

// Register addr: 32'h0008; Function: hardware version
//------------------------------------------------------------------------
// addr      | 32'h0008
//------------------------------------------------------------------------
// name      | norm_version_gp_domain
//------------------------------------------------------------------------
// bit       | [31:0]
//------------------------------------------------------------------------
// authority | RO
//------------------------------------------------------------------------
// bit name  | norm_version
//------------------------------------------------------------------------
assign norm_version = 32'h23110206  ;
assign norm_version_gp_domain = norm_version  ;


// Register addr: 32'h000C; Function: module will start reading instruction
//------------------------------------------------------------------------
// addr      | 32'h000C
//------------------------------------------------------------------------
// name      | test_gp_domain
//------------------------------------------------------------------------
// bit       | [31:0]
//------------------------------------------------------------------------
// authority | RW
//------------------------------------------------------------------------
// bit name  | test
//------------------------------------------------------------------------
always @(posedge gp_clk) begin
  if ( !gp_rst_n )
    test <= 32'h0  ;
  else if ( gpx_aww_en && gpx_awwaddr[7:0]==8'h0C )
    test <= gpx_awwdata  ;
end

assign test_gp_domain = test  ;


// Records the time spent for work
//------------------------------------------------------------------------
// addr      | 32'h0010
//------------------------------------------------------------------------
// name      | timer_gp_domain
//------------------------------------------------------------------------
// bit       | [31:0]
//------------------------------------------------------------------------
// authority | w0c
//------------------------------------------------------------------------
// bit name  | timer
//------------------------------------------------------------------------
always @(posedge gp_clk) begin
  if ( !gp_rst_n )
    timer <= 32'b0;
  else if ( norm_start_pedge )
    timer <= 32'b0;
  else if ( norm_start )
    timer <= timer + 32'b1;
  else if ( gpx_aww_en && gpx_awwaddr[7:0]==8'h10 )
    timer <= gpx_awwdata  ;
end

assign timer_gp_domain = timer  ;


// Register addr: 32'h0014; Function: for reset of norm_done
//------------------------------------------------------------------------
// addr      | 32'h0014
//------------------------------------------------------------------------
// name      | soft_rst_gp_domain
//------------------------------------------------------------------------
// bit       | [31:1]                   | [0]
//------------------------------------------------------------------------
// authority | RO                       | RW
//------------------------------------------------------------------------
// bit name  | rfu                      | soft_rst
//------------------------------------------------------------------------
always @(posedge gp_clk) begin
  if ( !gp_rst_n )
    soft_rst <= 1'b0;
  else if ( gpx_aww_en &&  gpx_awwaddr[7:0]==8'h14 )
    soft_rst <= gpx_awwdata[0];
end

assign soft_rst_gp_domain = { 31'b0, soft_rst }  ;


// inst addr
//------------------------------------------------------------------------
// addr      | 32'h0018
//------------------------------------------------------------------------
// name      | inst_addr_gp_domain
//------------------------------------------------------------------------
// bit       | [31:0]
//------------------------------------------------------------------------
// authority | RW
//------------------------------------------------------------------------
// bit name  | inst_addr
//------------------------------------------------------------------------
always @(posedge gp_clk) begin
 if ( !gp_rst_n )
   inst_addr <= 32'h0  ;
 else if ( gpx_aww_en && gpx_awwaddr[7:0]==8'h18 )
   inst_addr <= gpx_awwdata  ;
end

assign inst_addr_gp_domain = inst_addr  ;


// Register addr: 32'h001C; Function: araddr_base_gp_domain
//------------------------------------------------------------------------
// addr      | 32'h001C
//------------------------------------------------------------------------
// name      | araddr_base_gp_domain
//------------------------------------------------------------------------
// bit       | [31:0]
//------------------------------------------------------------------------
// authority | RW
//------------------------------------------------------------------------
// bit name  | araddr_base_gp_domain
//------------------------------------------------------------------------
always @(posedge gp_clk) begin
 if ( !gp_rst_n )
   araddr_base_gp_domain <= 32'h0  ;
 else if ( gpx_aww_en && gpx_awwaddr[7:0]==8'h1C )
   araddr_base_gp_domain <= gpx_awwdata  ;
end

defer_unit #(
  .WIDTH ( 32 ),
  .DLY_T (  2 )
) cdc_araddr_base
(
  .clk   ( ddr_clk               )  ,
  .rst   ( ddr_rst               )  ,
  .din   ( araddr_base_gp_domain )  ,
  .dout  ( ddr_araddr_base       ) 
);


// Register addr: 32'h0020; Function: araddr_last_gp_domain
//------------------------------------------------------------------------
// addr      | 32'h0020
//------------------------------------------------------------------------
// name      | araddr_last_gp_domain
//------------------------------------------------------------------------
// bit       | [31:0]
//------------------------------------------------------------------------
// authority | RW
//------------------------------------------------------------------------
// bit name  | araddr_last_gp_domain
//------------------------------------------------------------------------
always @(posedge gp_clk) begin
 if ( !gp_rst_n )
   araddr_last_gp_domain <= 32'h0  ;
 else if ( gpx_aww_en && gpx_awwaddr[7:0]==8'h20 )
   araddr_last_gp_domain <= gpx_awwdata  ;
end

defer_unit #(
  .WIDTH ( 32 ),
  .DLY_T (  2 )
) cdc_araddr_last
(
  .clk   ( ddr_clk               )  ,
  .rst   ( ddr_rst               )  ,
  .din   ( araddr_last_gp_domain )  ,
  .dout  ( ddr_araddr_last       ) 
);


// Register addr: 32'h0024; Function: awaddr_base_gp_domain
//------------------------------------------------------------------------
// addr      | 32'h0024
//------------------------------------------------------------------------
// name      | awaddr_base_gp_domain
//------------------------------------------------------------------------
// bit       | [31:0]
//------------------------------------------------------------------------
// authority | RW
//------------------------------------------------------------------------
// bit name  | awaddr_base_gp_domain
//------------------------------------------------------------------------
always @(posedge gp_clk) begin
 if ( !gp_rst_n )
   awaddr_base_gp_domain <= 32'h0  ;
 else if ( gpx_aww_en && gpx_awwaddr[7:0]==8'h24 )
   awaddr_base_gp_domain <= gpx_awwdata  ;
end

defer_unit #(
  .WIDTH ( 32 ),
  .DLY_T (  2 )
) cdc_awaddr_base
(
  .clk   ( ddr_clk               )  ,
  .rst   ( ddr_rst               )  ,
  .din   ( awaddr_base_gp_domain )  ,
  .dout  ( ddr_awaddr_base       ) 
);


// Register addr: 32'h0028; Function: awaddr_last_gp_domain
//------------------------------------------------------------------------
// addr      | 32'h0028
//------------------------------------------------------------------------
// name      | awaddr_last_gp_domain
//------------------------------------------------------------------------
// bit       | [31:0]
//------------------------------------------------------------------------
// authority | RW
//------------------------------------------------------------------------
// bit name  | awaddr_last_gp_domain
//------------------------------------------------------------------------
always @(posedge gp_clk) begin
 if ( !gp_rst_n )
   awaddr_last_gp_domain <= 32'h0  ;
 else if ( gpx_aww_en && gpx_awwaddr[7:0]==8'h28 )
   awaddr_last_gp_domain <= gpx_awwdata  ;
end

defer_unit #(
  .WIDTH ( 32 ),
  .DLY_T (  2 )
) cdc_awaddr_last
(
  .clk   ( ddr_clk               )  ,
  .rst   ( ddr_rst               )  ,
  .din   ( awaddr_last_gp_domain )  ,
  .dout  ( ddr_awaddr_last       ) 
);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^



//_____________________Reads data from registers______________________
always @(*) begin
  case (gpx_araddr[7:0])
    8'h00    :  gpx_rdata_tmp  =  norm_start_gp_domain    ;
    8'h04    :  gpx_rdata_tmp  =  norm_done_gp_domain     ;
    8'h08    :  gpx_rdata_tmp  =  norm_version_gp_domain  ;
    8'h0C    :  gpx_rdata_tmp  =  test_gp_domain          ;
    8'h10    :  gpx_rdata_tmp  =  timer_gp_domain         ;
    8'h14    :  gpx_rdata_tmp  =  soft_rst_gp_domain      ;
    8'h18    :  gpx_rdata_tmp  =  inst_addr_gp_domain     ;
    8'h1C    :  gpx_rdata_tmp  =  araddr_base_gp_domain   ;
    8'h20    :  gpx_rdata_tmp  =  araddr_last_gp_domain   ;
    8'h24    :  gpx_rdata_tmp  =  awaddr_base_gp_domain   ;
    8'h28    :  gpx_rdata_tmp  =  awaddr_last_gp_domain   ;
    default  :  gpx_rdata_tmp  =  32'h0000                ;
  endcase
end

// ready for receiving gpx_araddr only when no gpx_rdata is waiting for transferring
assign gpx_araddr_rdy = !gpx_rdata_vld;

// handshakes
assign gpx_araddr_en = gpx_araddr_vld && gpx_araddr_rdy;
assign gpx_rdata_en = gpx_rdata_vld && gpx_rdata_rdy;

// updates gpx_rdata, i.e., reading register data
always @(posedge gp_clk) begin
  if ( !gp_rst_n )
    gpx_rdata <= 32'b0;
  else if ( gpx_araddr_en )
    gpx_rdata <= gpx_rdata_tmp;
  else if ( gpx_rdata_en )
    gpx_rdata <= 32'b0;
end

// Succeeds to send data of register 
always @(posedge gp_clk) begin
  if ( !gp_rst_n )
    gpx_rdata_vld <= 1'b0;
  else if ( gpx_araddr_en )
    gpx_rdata_vld <= 1'b1;
  else if ( gpx_rdata_en )
    gpx_rdata_vld <= 1'b0;
end
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

endmodule
