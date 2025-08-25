//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : nms_rdma.v
// Author        : 
// Project       : NB2337
// Create Date   : 2023.10.24
// Description   : 

//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module nms_rdma #(parameter AW=32, NDW=64, WDW=80*16, IFW=32)(                     
    output     [  AW-1 : 0 ]      araddr           ,
    output     [ IFW-1 : 0 ]      arinfo           ,
    output                        arvalid          ,
    input                         arready          ,

    input      [ NDW-1 : 0 ]      rdata            ,
    input      [ IFW-1 : 0 ]      rinfo            ,
    input                         rvalid           ,
    output                        rready           ,

    output      [ WDW-1 : 0 ]     ram_awdata       ,
    output      [ IFW-1 : 0 ]     ram_awinfo       ,
    output reg  [  AW-1 : 0 ]     ram_awaddr       ,
    output                        ram_awvalid      ,
    input                         ram_awready      ,

    input                         start            ,
    output                        done             ,
    input      [  AW-1 : 0 ]      arbase           ,
    input      [  AW-1 : 0 ]      last_araddr      ,
    output     [     2 : 0 ]      arfifo_st        ,
    output     [     2 : 0 ]      rfifo_st         ,
    
    input                         hp_clk           ,
    input                         hp_rst           ,
    input                         ddr_clk          ,
    input                         ddr_rst        
);

    reg        [  AW-1 : 0 ]       aaraddr         ;
    wire       [ IFW-1 : 0 ]       aarinfo         ;
    reg                            aarvalid        ;
    wire                           aarready        ;
    wire                           aarlast         ;

    wire                           rlast           ;
    wire                           ram_awlast      ;
    wire                           rrlast          ;
    wire       [ NDW-1 : 0 ]       rrdata          ;
    wire                           rrvalid         ;
    wire                           rrready         ;

    reg        [    31 : 0 ]       rcnt            ;

    assign aarlast = aaraddr == last_araddr;
    assign aarinfo = {31'd0,aarlast};
   //ardma
    always @(posedge ddr_clk) begin
        if(ddr_rst)
            aaraddr <= 32'd0;
        else if(start)
            aaraddr <= arbase;
        else if(aarvalid && aarready)
            aaraddr <= aaraddr + (NDW/8);
    end

     always @(posedge ddr_clk) begin
        if(ddr_rst)
            aarvalid <= 1'b0;
        else if(start)
            aarvalid <= 1'b1;
        else if(aarvalid && aarready && aarlast)
            aarvalid <= 1'b0;
    end

    //cdc
    //ar
    nms_cdc_fifo#(.DW(NDW+1)) nms_cdc_fifo_u0(
        .wdata      ({1'b0,aarinfo,aaraddr}  )  ,
        .wvalid     (aarvalid                )  ,
        .wready     (aarready                )  ,

        .rdata      ({arinfo,araddr}         )  ,
        .rvalid     (arvalid                 )  ,
        .rready     (arready                 )  ,

        .fifo_st    (arfifo_st               )  ,
        .wrst       (ddr_rst                 )  ,
        .wclk       (ddr_clk                 )  ,
        .rrst       (hp_rst                  )  ,
        .rclk       (hp_clk                  )
    );

    //r
    always @(posedge hp_clk) begin
        if(hp_rst)
            rcnt <= 32'd0;
        else if(start)
            rcnt <= 32'd0;
        else if(rvalid && rready)
            rcnt <= rcnt + 1'b1;
    end

    assign rlast = rcnt == ((last_araddr - arbase) >> 3);
    nms_cdc_fifo#(.DW(NDW+1)) nms_cdc_fifo_u1(
        .wdata      ({rlast,rdata}           )  ,
        .wvalid     (rvalid                  )  ,
        .wready     (rready                  )  ,

        .rdata      ({rrlast,rrdata}         )  ,
        .rvalid     (rrvalid                 )  ,
        .rready     (rrready                 )  ,

        .fifo_st    (rfifo_st                )  ,
        .wrst       (hp_rst                  )  ,
        .wclk       (hp_clk                  )  ,
        .rrst       (ddr_rst                 )  ,
        .rclk       (ddr_clk                 )
    );   

    n2w_bwc_addr #(.NDW(NDW), .WDW(WDW), .AW(AW), .CBW(6)) n2w_bwc_addr_u0(
        .n2w_ndata       (rrdata             )  ,
        .n2w_naddr       (32'b0              )  ,
        .n2w_nvalid      (rrvalid            )  ,
        .n2w_nlast       (rrlast             )  ,
        .n2w_nready      (rrready            )  ,

        .n2w_wdata       (ram_awdata         )  ,
        .n2w_waddr       (                   )  ,
        .n2w_wlast       (ram_awlast         )  ,
        .n2w_wvalid      (ram_awvalid        )  ,
        .n2w_wready      (ram_awready        )  ,

        .n2w_clk_rst     (ddr_rst            )  ,
        .n2w_clk         (ddr_clk            )
    );
    assign ram_awinfo = {31'd0,ram_awlast};
    always @(posedge ddr_clk) begin
        if(ddr_rst)
            ram_awaddr <= 32'd0;
        else if(start)
            ram_awaddr <= 32'd0;
        else if(ram_awvalid && ram_awready)
            ram_awaddr <= ram_awaddr + 1; 
    end
    assign done = ram_awvalid && ram_awready && ram_awlast;

endmodule
