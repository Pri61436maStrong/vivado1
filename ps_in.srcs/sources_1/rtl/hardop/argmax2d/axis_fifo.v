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
module axis_fifo #(parameter DW=40)(
    input  [DW-1 : 0]    wdata                ,
    input                wvalid               ,
    output               wready               ,

    output [DW-1 : 0]    rdata                ,
    output               rvalid               ,
    input                rready               ,

    output [   1 : 0]    fifo_st              ,
    input                clk                  ,
    input                rst                  
);

    wire [DW-1 : 0] din     ;
    wire            wr_en   ;
    wire            rd_en   ;
    wire [DW-1 : 0] dout    ;
    wire            full    ;
    wire            empty   ;

    assign din       =      wdata      ;
    assign wready    =      ~full      ;
    assign wr_en     =  wvalid & wready;

    assign rdata     =      dout       ;
    assign rvalid    =     ~empty      ;
    assign rd_en     =  rvalid & rready;

    assign fifo_st   = {empty, full};

    base_axis_fifo base_axis_fifo_u0 (
        .clk        (clk                     ),  // input wire clk
        .srst       (rst                     ),  // input wire srst
        .din        (din                     ),  // input wire [39 : 0] din
        .wr_en      (wr_en                   ),  // input wire wr_en
        .rd_en      (rd_en                   ),  // input wire rd_en
        .dout       (dout                    ),  // output wire [39 : 0] dout
        .full       (full                    ),  // output wire full
        .empty      (empty                   )   // output wire empty
    );

endmodule