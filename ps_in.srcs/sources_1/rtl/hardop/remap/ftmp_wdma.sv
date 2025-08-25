//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : ftmp_wdma.v
// Author        : 
// Project       : NB2338
// Create Date   : 2024.05.09
// Description   : 

//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module ftmp_wdma #(parameter AW=32, DW=512, IFW=72)(                     
    input        [  DW-1 : 0 ]    n2w_wdata        ,
    input                         n2w_wfirst       ,
    input                         n2w_wlast        ,
    input                         n2w_wvalid       ,
    output                        n2w_wready       ,

    output  reg  [  AW-1 : 0 ]    m_ddr_awwaddr    ,
    output  reg  [  DW-1 : 0 ]    m_ddr_awwdata    ,
    output       [ IFW-1 : 0 ]    m_ddr_awwinfo    ,
    output  reg                   m_ddr_awwvalid   ,
    input                         m_ddr_awwready   ,

    input                         remap_start      ,
    input        [  AW-1 : 0 ]    ftmp_addr_wfrom  ,
    output                        remap_done       ,
    
    input                         ddr_clk          ,
    input                         ddr_clk_rst        
);
    
    wire         [  DW+1 : 0 ]    fifo_din         ;
    wire                          fifo_wr          ;
    wire                          fifo_rd          ;
    wire                          fifo_pfull       ;
    wire                          fifo_full        ;
    wire                          fifo_empty       ;
    wire         [  DW+1 : 0 ]    fifo_dout        ;
    wire         [  DW-1 : 0 ]    ftmp_data        ;
    wire                          ftmp_first       ;
    wire                          ftmp_last        ;
    reg                           last_ctrl        ;
    reg                           status           ;
    reg          [    31 : 0]     ftmp_wcnt        ;


    assign fifo_din   = {n2w_wdata,n2w_wfirst,n2w_wlast};
    assign fifo_wr    = n2w_wvalid & n2w_wready;
    assign n2w_wready = ~fifo_full;

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            ftmp_wcnt <= 32'b0;
        else if(remap_start)
            ftmp_wcnt <= 32'b0;
        else if(m_ddr_awwvalid && m_ddr_awwready)
            ftmp_wcnt <= ftmp_wcnt + 1'b1;
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            last_ctrl <= 1'b0;
        else if(n2w_wlast && n2w_wvalid && n2w_wready)
            last_ctrl <= 1'b1;
        else 
            last_ctrl <= 1'b0;
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            status <= 1'b0;
        else if(fifo_full || last_ctrl)
            status <= 1'b1;
        else if(fifo_empty)
            status <= 1'b0;
    end

    assign fifo_rd  = m_ddr_awwvalid & m_ddr_awwready;
    assign m_ddr_awwvalid = (status==1'b1) && ~fifo_empty; 

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

    assign {ftmp_data,ftmp_first,ftmp_last} = fifo_dout;

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            m_ddr_awwaddr <= 32'd0;
        else if(n2w_wfirst & n2w_wvalid & n2w_wready)
            m_ddr_awwaddr <= ftmp_addr_wfrom;            
        else if(m_ddr_awwvalid & m_ddr_awwready)
            m_ddr_awwaddr <= m_ddr_awwaddr + (DW/8);
    end

    //always @(posedge ddr_clk) begin
    //    if(ddr_clk_rst)
    //        remap_done <= 1'd0;
    //    else if(remap_start)
    //        remap_done <= 1'd0;
    //    else if(ftmp_last & m_ddr_awwvalid & m_ddr_awwready)
    //        remap_done <= 1'b1;            
    //end

    assign remap_done = ftmp_last & m_ddr_awwvalid & m_ddr_awwready;

    assign m_ddr_awwdata  = ftmp_data;
    assign m_ddr_awwinfo  = {1'b0,{64{1'b1}},6'd0,1'b0};

endmodule
