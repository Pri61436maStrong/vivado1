//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : axis_fifo.v
// Author        : Xu Yun
// Project       : 
// Create Date   : 
// Description   :
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================
module axis_fifo_cdc64 #(parameter DW=64)(
    input  [DW-1 : 0]    wdata                ,
    input                wvalid               ,
    output               wready               ,

    output [DW-1 : 0]    rdata                ,
    output               rvalid               ,
    input                rready               ,

    output [   1 : 0]    fifo_st              ,

    input                rclk                 ,
    input                rrst                 ,
    input                wclk                 ,
    input                wrst                  
);
    wire  [ DW-1 : 0]    wwdata           ;
    wire                 wwvalid          ;
    wire                 wwready          ;
   
    wire                 rst              ;
    wire  [ DW-1 : 0]    din              ;
    wire                 wr_en            ;
    wire                 rd_en            ;
    wire  [ DW-1 : 0]    dout             ;
    wire                 full             ;
    wire                 empty            ;

    wire  [ DW-1 : 0]    rrdata           ;
    wire                 rrvalid          ;
    wire                 rrready          ;

    avr_rs #(.DW(DW)) avr_rs_u0(
        .m_data      (wdata             ),
        .m_valid     (wvalid            ),
        .m_ready     (wready            ),
               
        .s_data      (wwdata            ),
        .s_valid     (wwvalid           ),
        .s_ready     (wwready           ),

        .clk         (wclk              ),
        .rst_n       (~wrst             )
    );

    assign rst       =  wrst | rrst     ;
    assign din       =      wwdata      ;
    assign wwready   =      ~full       ;
    assign wr_en     = wwvalid & wwready;

    assign rrdata    =      dout        ;
    assign rrvalid   =     ~empty       ;
    assign rd_en     = rrvalid & rrready;

    assign fifo_st   = {empty, full}   ;

    base_axis_fifo_cdc64 base_axis_fifo_cdc64_u0 (
        .wr_clk     (wclk                    ),  // input wire wr_clk
        .rst        (rst                     ),  // input wire rst
        .rd_clk     (rclk                    ),  // input wire rd_clk
        .din        (din                     ),  // input wire [31 : 0] din
        .wr_en      (wr_en                   ),  // input wire wr_en
        .rd_en      (rd_en                   ),  // input wire rd_en
        .dout       (dout                    ),  // output wire [31 : 0] dout
        .full       (full                    ),  // output wire full
        .empty      (empty                   )   // output wire empty
    );

    avr_rs #(.DW(DW)) avr_rs_u1(
        .m_data      (rrdata            ),
        .m_valid     (rrvalid           ),
        .m_ready     (rrready           ),
               
        .s_data      (rdata             ),
        .s_valid     (rvalid            ),
        .s_ready     (rready            ),

        .clk         (rclk              ),
        .rst_n       (~rrst             )
    );

endmodule