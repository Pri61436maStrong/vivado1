//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : gen_b_done.v
// Author        : Wang Yinglin
// Project       : 
// Create Date   : 2024.07.01
// Description   :
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module gen_b_done (
    input                       dma_start       ,
    input                       hp_awvalid      ,
    input                       hp_awready      ,    
    input                       hp_bvalid       ,
    input                       hp_bready       ,
    output                      hp_b_done       ,
    input                       hp_clk          ,
    input                       hp_rst          
);
    reg  [ 31 : 0]   b_num             ;
    reg  [ 31 : 0]   dma_num           ;

    always @(posedge hp_clk) begin
        if(hp_rst)
            dma_num <= 'b0;
        else if(dma_start)
            dma_num <= 'b0;
        else if(hp_awvalid & hp_awready)
            dma_num <= dma_num + 1'b1;
    end

    always @(posedge hp_clk) begin
        if(hp_rst)
            b_num <= 'b0;
        else if(dma_start)
            b_num <= 'b0;
        else if(hp_bvalid & hp_bready)
            b_num <= b_num + 1'b1;
    end

    assign hp_b_done = (dma_num == b_num) ; 
        
endmodule