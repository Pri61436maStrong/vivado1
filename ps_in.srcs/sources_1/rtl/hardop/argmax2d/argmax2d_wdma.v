//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : argmax2d_wdma.v
// Author        : Xu Yun
// Project       : 
// Create Date   : 2024.05.10
// Description   : 
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module argmax2d_wdma #(parameter AW=32, NDW=64, IFW=32)(                     
    output     [  AW-1 : 0 ]      awaddr             ,
    output                        awvalid            ,
    input                         awready            ,
    output     [ NDW-1 : 0 ]      wdata              ,
    output                        wvalid             ,
    input                         wready             ,

    input     [  NDW-1 : 0 ]      cmp_awdata         ,
    input                         cmp_awvalid        ,
    output                        cmp_awready        ,  

    input                         argmax2d_start     ,
    output                        argmax2d_done      ,

    input      [  AW-1 : 0 ]      awbase             ,
    input      [  AW-1 : 0 ]      last_awaddr        ,
    
    input                         hp_clk             ,
    input                         hp_rst             ,
    input                         ddr_clk            ,
    input                         ddr_rst        
);

    reg        [  AW-1 : 0 ]      aawaddr          ;
    wire       [ NDW-1 : 0 ]      aawdata          ;
    wire                          aawvalid         ;
    wire                          addr_aawvalid    ;
    wire                          data_aawvalid    ;

    wire                          aawready         ;
    wire                          addr_aawready    ;
    wire                          data_aawready    ;

    assign aawdata     = cmp_awdata ;
    assign aawvalid    = cmp_awvalid;
    assign cmp_awready = aawready   ;
    always @(posedge ddr_clk) begin
        if(ddr_rst)
            aawaddr <= 32'd0            ;
        else if(argmax2d_start)
            aawaddr <= awbase           ;
        else if(aawvalid && aawready)
            aawaddr <= aawaddr + (NDW/8);
    end
    assign aawready      = addr_aawready  && data_aawready              ;
    assign addr_aawvalid = aawvalid && data_aawready                    ;
    assign data_aawvalid =  aawvalid && addr_aawready                   ;
    assign argmax2d_done = (awaddr == last_awaddr) && awvalid && awready;
        
    //cdc
    //ddr
    axis_fifo_cdc32 #(.DW(AW)) cmp_cdc_fifo_u0(
        .wdata      (aawaddr                 )  ,
        .wvalid     (addr_aawvalid           )  ,
        .wready     (addr_aawready           )  ,

        .rdata      (awaddr                  )  ,
        .rvalid     (awvalid                 )  ,
        .rready     (awready                 )  ,

        .fifo_st    (                        )  ,
        .wrst       (ddr_rst                 )  ,
        .wclk       (ddr_clk                 )  ,
        .rrst       (hp_rst                  )  ,
        .rclk       (hp_clk                  )
    );

    //data
    axis_fifo_cdc64 #(.DW(NDW)) cmp_cdc_fifo_u1(
        .wdata      (aawdata                 )  ,
        .wvalid     (data_aawvalid           )  ,
        .wready     (data_aawready           )  ,

        .rdata      (wdata                   )  ,
        .rvalid     (wvalid                  )  ,
        .rready     (wready                  )  ,

        .fifo_st    (                        )  ,
        .wrst       (ddr_rst                 )  ,
        .wclk       (ddr_clk                 )  ,
        .rrst       (hp_rst                  )  ,
        .rclk       (hp_clk                  )
    );

endmodule
