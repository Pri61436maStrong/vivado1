//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : grid_rdma.v
// Author        : 
// Project       : NB2338
// Create Date   : 2024.04.25
// Description   : 

//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module grid_rdma #(parameter AW=32, DW=512, IFW=32)(                     
    output  reg  [  AW-1 : 0 ]    araddr           ,
    output       [ IFW-1 : 0 ]    arinfo           ,
    output  reg                   arvalid          ,
    input                         arready          ,

    input        [  DW-1 : 0 ]    rdata            ,
    input        [ IFW-1 : 0 ]    rinfo            ,
    input                         rvalid           ,
    output                        rready           ,

    output       [  DW-1 : 0 ]    grid_data        ,
    output                        grid_first       ,
    output                        grid_last        ,
    output                        grid_valid       ,
    input                         grid_ready       , 

    input                         remap_start      ,
    input        [  AW-1 : 0 ]    grid_addr_rfrom  ,
    input        [  AW-1 : 0 ]    grid_addr_rto    ,
    
    input                         ddr_clk          ,
    input                         ddr_clk_rst        
);

    reg                           arfirst          ;
    wire                          arlast           ;
    wire         [  DW+1 : 0 ]    fifo_din         ;
    wire         [  DW+1 : 0 ]    fifo_dout        ;
    wire                          done             ;
    wire                          fifo_wr          ;
    wire                          fifo_rd          ;
    wire                          fifo_full        ;
    wire                          fifo_pfull       ;       
    wire                          fifo_empty       ;
    reg          [    31 : 0 ]    arcnt            ;
    reg          [    31 : 0 ]    rcnt             ;
    reg                           running          ;

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            running <= 1'b0;
        else if(remap_start)
            running <= 1'b1;
        else if(arvalid && arready && arlast)
            running <= 1'b0;
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            arcnt <= 32'b0;
        else if(remap_start)
            arcnt <= 32'b0;
        else if(arvalid && arready)
            arcnt <= arcnt + 1'b1;
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            rcnt <= 32'b0;
        else if(remap_start)
            rcnt <= 32'b0;
        else if(rvalid && rready)
            rcnt <= rcnt + 1'b1;
    end

    assign arlast = (araddr == grid_addr_rto);
    assign arinfo = {30'd0,arfirst,arlast};
   //ardma
    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            arfirst <= 1'd0;
        else if(remap_start)
            arfirst <= 1'b1;
        else if(arvalid && arready)
            arfirst <= 1'd0;
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            araddr <= 32'd0;
        else if(remap_start)
            araddr <= grid_addr_rfrom;
        else if(arvalid && arready)
            araddr <= araddr + (DW/8);
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            arvalid <= 1'b0;
        else if(remap_start)
            arvalid <= 1'b1;
        else if(arvalid && arready && arlast)
            arvalid <= 1'b0;            
        else if(fifo_pfull&&running)
            arvalid <= 1'b0;  
        else if(~fifo_pfull&&running)
            arvalid <= 1'b1;                       
    end

    assign fifo_din = {rdata,rinfo[1],rinfo[0]};
    assign fifo_wr = rvalid & rready;
    assign rready  = ~fifo_full;
    w514d512_fifo u0_w514d512_fifo(
        .clk       (ddr_clk        ),    
        .srst      (ddr_clk_rst    ),    
        .din       (fifo_din       ),    
        .wr_en     (fifo_wr        ),    
        .rd_en     (fifo_rd        ),    
        .dout      (fifo_dout      ),    
        .full      (fifo_full      ),
        .prog_full (fifo_pfull     ),    
        .empty     (fifo_empty     )  
    );
    assign fifo_rd = grid_valid & grid_ready;
    assign grid_valid = ~fifo_empty;
    assign {grid_data,grid_first,grid_last} = fifo_dout;
    assign done = grid_valid & grid_ready & grid_last;
endmodule
