//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : nms_cdc_fifo.sv
// Author        : 
// Project       :
// Create Date   : 2023.10.24
// Description   : cdc_fifo
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module nms_cdc_fifo#(parameter DW=64)(
    input         [ DW-1 : 0]   wdata     ,
    input                       wvalid    ,
    output                      wready    ,

    output        [ DW-1 : 0]   rdata     ,
    output                      rvalid    ,
    input                       rready    ,

    output        [    2 : 0]   fifo_st   ,
    input                       wrst      ,
    input                       wclk      ,
    input                       rrst      ,
    input                       rclk
);

    wire                 fifo_rst         ;
    wire  [ DW-1 : 0]    fifo_din         ;
    wire  [ DW-1 : 0]    fifo_dout        ;
    wire                 fifo_wr          ;
    wire                 fifo_rd          ;
    wire                 fifo_full        ;
    wire                 fifo_pfull       ;
    wire                 fifo_empty       ;
    reg                  fifo_werr        ;

    wire  [ DW-1 : 0]    wwdata           ;
    wire                 wwvalid          ;
    wire                 wwready          ;

    wire  [ DW-1 : 0]    rrdata           ;
    wire                 rrvalid          ;
    wire                 rrready          ;

   //avr
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

    assign fifo_rst = wrst | rrst ;
    assign fifo_din = wwdata;
    assign fifo_wr  = wwvalid & wwready;
    assign wwready   = ~fifo_pfull;

    assign fifo_rd  = ~fifo_empty & rrready ;
    assign rrdata    = fifo_dout ;
    assign rrvalid   = ~fifo_empty ;

    assign fifo_st = {fifo_werr, fifo_empty, fifo_full};

    always@(posedge wclk)begin
        if(wrst)
            fifo_werr <= 1'b0;
        else if(fifo_full & fifo_wr)
            fifo_werr <= 1'b1;
    end

    cdc_fifo_nms_base nms_cdc_fifo_base_u0(
        .rst             (fifo_rst        ),

        .wr_clk          (wclk            ),
        .din             (fifo_din        ),
        .wr_en           (fifo_wr         ),

        .rd_clk          (rclk            ),
        .rd_en           (fifo_rd         ),
        .dout            (fifo_dout       ),

        .prog_full       (fifo_pfull      ),
        .full            (fifo_full       ),
        .empty           (fifo_empty      )
    );
endmodule
