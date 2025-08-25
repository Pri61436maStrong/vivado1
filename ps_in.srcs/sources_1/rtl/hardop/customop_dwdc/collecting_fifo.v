//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : collecting_fifo.v
// Author        : 
// Project       : NB2337
// Create Date   : 2023.06.30
// Description   : 

//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module collecting_fifo #(parameter DW=616)(                     
    input     [ DW-1  : 0 ]      fifo_in_data     ,
    input                        fifo_in_last     ,
    input                        fifo_in_valid    ,
    output                       fifo_in_ready    ,

    output    [ DW-1  : 0 ]      fifo_out_data    ,
    output                       fifo_out_last    ,
    output                       fifo_out_valid   ,
    input                        fifo_out_ready   ,
    output    [    1 :  0 ]      fifo_st          ,

    input                        clk              ,
    input                        rst_n       
);
    wire                 fifo_wr          ;
    wire                 fifo_rd          ;
    wire                 fifo_full        ;
    wire                 fifo_empty       ;
    reg                  status           ;  // 1:rd_fifo
    reg                  last_ctrl        ;

    always @(posedge clk) begin
        if(~rst_n)
            last_ctrl <= 1'b0;
        else if(fifo_in_last && fifo_in_valid && fifo_in_ready)
            last_ctrl <= 1'b1;
        else if(last_ctrl == 1'b1 && fifo_out_last && fifo_rd)
            last_ctrl <= 1'b0;
    end

    always @(posedge clk) begin
        if(~rst_n)
            status <= 1'b0;
        else if(fifo_full || last_ctrl)
            status <= 1'b1;
        else if(fifo_empty)
            status <= 1'b0;
    end

    assign fifo_wr  = fifo_in_valid & fifo_in_ready;
    assign fifo_in_ready = ~fifo_full;

    assign fifo_rd  = fifo_out_valid & fifo_out_ready ;
    assign fifo_out_valid  = status == 1'b1 && ~fifo_empty ;

    assign fifo_out_last = fifo_out_data[0];
    assign fifo_st = {fifo_empty, fifo_full};

    w616d64_fifo w616d64_fifo_u0(
        .clk       (clk            ),    
        .srst      (~rst_n         ),    
        .din       (fifo_in_data   ),    
        .wr_en     (fifo_wr        ),    
        .rd_en     (fifo_rd        ),    
        .dout      (fifo_out_data  ),    
        .full      (fifo_full      ),    
        .empty     (fifo_empty     )  
    );

endmodule
