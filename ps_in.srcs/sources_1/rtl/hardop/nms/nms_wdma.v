//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : nms_wdma.v
// Author        : 
// Project       : NB2337
// Create Date   : 2023.10.24
// Description   : 

//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module nms_wdma #(parameter AW=32, NDW=64, IFW=32)(                     
    output     [  AW-1 : 0 ]      awaddr           ,
    output                        awvalid          ,
    input                         awready          ,
    output     [ NDW-1 : 0 ]      wdata            ,
    output                        wvalid           ,
    input                         wready           ,

    input     [     63 : 0 ]      iou_awdata       ,
    input     [ IFW-1  : 0 ]      iou_awinfo       ,
    input                         iou_awvalid      ,
    output                        iou_awready      ,  

    input                         start            ,
    input      [  AW-1 : 0 ]      awbase           ,
    input      [  AW-1 : 0 ]      last_awaddr      ,
    output                        done             ,
    output     [     2 : 0 ]      awfifo_st        ,
    
    input                         hp_clk           ,
    input                         hp_rst           ,
    input                         ddr_clk          ,
    input                         ddr_rst        
);

    reg        [  AW-1 : 0 ]      aawaddr          ;
    wire       [ NDW-1 : 0 ]      aawdata          ;
    wire       [ IFW-1 : 0 ]      aawinfo          ;
    wire                          aawvalid         ;
    wire                          addr_aawvalid    ;
    wire                          data_aawvalid    ;

    wire                          aawready         ;
    wire                          addr_aawready    ;
    wire                          data_aawready    ;
    wire       [ IFW-1  : 0 ]     awinfo           ;

    assign aawdata = iou_awdata;
    assign aawinfo = iou_awinfo;
    assign aawvalid = iou_awvalid;
    assign iou_awready = aawready;
    always @(posedge ddr_clk) begin
        if(ddr_rst)
            aawaddr <= 32'd0;
        else if(start)
            aawaddr <= awbase;
        else if(aawvalid && aawready)
            aawaddr <= aawaddr + (NDW/8);
    end
    assign aawready = addr_aawready  && data_aawready;
    assign addr_aawvalid = aawvalid && data_aawready;
    assign data_aawvalid =  aawvalid && addr_aawready;
    assign done = (awaddr == last_awaddr) && awvalid && awready;
    
    //cdc
    //info addr
    nms_cdc_fifo#(.DW(NDW+1)) nms_cdc_fifo_u0(
        .wdata      ({1'b0,aawinfo,aawaddr}  )  ,
        .wvalid     (addr_aawvalid           )  ,
        .wready     (addr_aawready           )  ,

        .rdata      ({awinfo,awaddr}         )  ,
        .rvalid     (awvalid                 )  ,
        .rready     (awready                 )  ,

        .fifo_st    (awfifo_st               )  ,
        .wrst       (ddr_rst                 )  ,
        .wclk       (ddr_clk                 )  ,
        .rrst       (hp_rst                  )  ,
        .rclk       (hp_clk                  )
    );

    //data
    nms_cdc_fifo#(.DW(NDW+1)) nms_cdc_fifo_u1(
        .wdata      ({1'b0,aawdata}          )  ,
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
