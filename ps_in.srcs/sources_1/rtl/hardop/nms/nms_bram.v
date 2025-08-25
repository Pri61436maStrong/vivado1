//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : nms_bram.v
// Author        : 
// Project       : NB2337
// Create Date   : 2023.11.1
// Description   : 

//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module nms_bram #(parameter AW=32, DW=80*32, IFW=32)(                     
    input     [  AW-1 : 0 ]      araddr      ,
    input     [ IFW-1 : 0 ]      arinfo      ,
    input                        arvalid     ,
    output                       arready     ,

    output    [  DW-1 : 0 ]      rdata       ,
    output reg[ IFW-1 : 0 ]      rinfo       ,
    output reg                   rvalid      ,
    input                        rready      ,

    input     [  AW-1 : 0 ]      awaddr      ,   
    input     [  DW-1 : 0 ]      awdata      ,
    input                        awvalid     ,
    output                       awready     ,

    input                        ddr_clk     ,
    input                        ddr_rst        
);
    reg                          rrvalid    ;
    reg       [ IFW-1 : 0 ]      rrinfo     ;
    
    //ram不做优先级控制，不存在同时读写的情况
    assign arready = 1'b1;
    assign awready = 1'b1;

    w1280_d512 w1280_d512_u0 (
        .clka       (ddr_clk      ),    // input wire clka
        .ena        (1'b1         ),    // input wire ena
        .wea        (awvalid      ),    // input wire [0 : 0] wea
        .addra      (awaddr[8:0]  ),    // input wire [8 : 0] addra
        .dina       (awdata       ),    // input wire [1280 : 0] dina
        
        .clkb       (ddr_clk      ),    // input wire clkb
        .enb        (1'b1         ),    // input wire enb
        .addrb      (araddr[8:0]  ),    // input wire [8 : 0] addrb
        .doutb      (rdata        )     // output wire [1280 : 0] doutb
    );

    //2 clk delay
    always @(posedge ddr_clk) begin
        if(ddr_rst) begin
            rrvalid <= 1'b0;
            rvalid <= 1'b0;
            rrinfo <= 'd0;
            rinfo <= 'd0;
        end
        else begin
            rrvalid <= arvalid;
            rvalid <= rrvalid;
            rrinfo <= arinfo;
            rinfo <= rrinfo;
        end 
    end

endmodule
