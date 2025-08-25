//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : n2w_remap.v
// Author        : 
// Project       : 
// Create Date   : 2022.07.04
// Description   :
// - n2w_bwc   : Narrow to Wide bit width converter
// - NDW       : Narrow Data width
// - WDW       : Wide Data width
// - CBW       : Counter Bit width, CBW=ceilf(log2(WDW/NDW))
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//         2022.7.4     luo wei      add addr converter
//==============================================================================

module n2w_remap #(parameter NDW=64, WDW=512, AW=32, CBW=3)(
    input        [NDW-1: 0]    n2w_ndata       ,
    input        [ AW-1: 0]    n2w_naddr       ,
    input                      n2w_nvalid      ,
    input                      n2w_nfirst      ,
    input                      n2w_nlast       ,
    output                     n2w_nready      ,

    output       [WDW-1: 0]    n2w_wdata       ,
    output  reg  [ AW-1: 0]    n2w_waddr       ,
    output                     n2w_wfirst      ,
    output                     n2w_wlast       ,
    output                     n2w_wvalid      ,
    input                      n2w_wready      ,

    input                      n2w_clk_rst     ,
    input                      n2w_clk
);

   localparam MULT = WDW/NDW;

// bit-width convert from narrow to wide
    reg   [CBW-1 : 0]       n2w_cnt       ;
    reg   [WDW-1 : 0]       n2w_reg       ;
    reg                     n2w_reg_valid ;
    reg                     n2w_reg_first ;
    reg                     n2w_reg_last  ;
    wire                    n2w_nack      ;
    wire                    n2w_wack      ;
    wire                    n2w_nack_here ;

    assign n2w_nack = n2w_nvalid & n2w_nready;
    assign n2w_wack = n2w_wvalid & n2w_wready;
    
    assign n2w_nack_here = n2w_nack | (n2w_reg_last && ~n2w_reg_valid);
    
    assign n2w_wvalid = n2w_reg_valid;
    assign n2w_wdata = n2w_reg;
    assign n2w_wfirst = n2w_reg_first;
    assign n2w_wlast = n2w_reg_last;
    assign n2w_nready = ((~n2w_reg_valid) | n2w_wready) & ~n2w_reg_last;

    always @(posedge n2w_clk) begin
        if(n2w_clk_rst)
            n2w_reg_first <= 1'b0;
        else if(n2w_nack & n2w_nfirst)
            n2w_reg_first <= 1'b1;
        else if(n2w_wack)
            n2w_reg_first <= 1'b0;
    end

    always @(posedge n2w_clk) begin
        if(n2w_clk_rst)
            n2w_reg_last <= 1'b0;
        else if(n2w_nack)
            n2w_reg_last <= n2w_nlast;
        else if(n2w_wack)
            n2w_reg_last <= 1'b0;
    end

    //always @(posedge n2w_clk) begin
    //    if(n2w_clk_rst)
    //        n2w_wlast <= 1'b0;
    //    else if(n2w_nack_here)
    //        n2w_wlast <= n2w_reg_last;
    //end

    always @(posedge n2w_clk) begin
        if(n2w_clk_rst)
            n2w_reg <= 0;
        else if(n2w_nack_here)
            n2w_reg <= {n2w_ndata, n2w_reg[WDW-1:NDW]};
    end

    always @(posedge n2w_clk) begin
        if(n2w_clk_rst)
            n2w_waddr <= 'd0;
        else if(n2w_nack)
            n2w_waddr <= n2w_naddr[AW-1:6];
        else if(n2w_wack)
            n2w_waddr <= 'd0;
    end

    always @(posedge n2w_clk) begin
        if(n2w_clk_rst)
            n2w_reg_valid <= 1'b0;
        else if(n2w_nack_here && n2w_cnt==(MULT-1))
            n2w_reg_valid <= 1'b1;
        else if(n2w_wack)
            n2w_reg_valid <= 1'b0;
    end

    always @(posedge n2w_clk) begin
        if(n2w_clk_rst)
            n2w_cnt <= 0;
        else if(n2w_nack_here && n2w_cnt==(MULT-1))
            n2w_cnt <= 'd0;
        else if(n2w_nack_here)
            n2w_cnt <= n2w_cnt + 1;
    end

endmodule
