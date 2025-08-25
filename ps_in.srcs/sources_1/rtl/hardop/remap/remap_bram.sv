//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : remap_bram.v
// Author        : 
// Project       : NB2338
// Create Date   : 2024.04.28
// Description   : 

//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module remap_bram #(parameter BAW=10, DW=512)(   
    input     [ BAW-1 : 0 ]      awaddr      ,   
    input     [  DW-1 : 0 ]      awdata      ,
    input                        awvalid     ,
    output                       awready     ,

    input     [ BAW-1 : 0 ]      araddr_0    ,
    input                        arfirst_0   ,
    input                        arlast_0    ,
    input                        arvalid_0   ,
    output                       arready_0   ,
    output    [  DW-1 : 0 ]      rdata_0     ,
    output reg                   rfirst_0    ,    
    output reg                   rlast_0     ,
    output reg                   rvalid_0    ,
    input                        rready_0    ,

    input     [ BAW-1 : 0 ]      araddr_1    ,
    input                        arfirst_1   ,
    input                        arlast_1    ,    
    input                        arvalid_1   ,
    output                       arready_1   ,
    output      [DW-1 : 0 ]      rdata_1     ,
    output reg                   rfirst_1    ,
    output reg                   rlast_1     ,    
    output reg                   rvalid_1    ,
    input                        rready_1    ,

    input                        ddr_clk     ,
    input                        ddr_clk_rst        
);
    reg                          rrvalid_0  ;
    reg                          rrvalid_1  ;
    reg                          rrfirst_0  ;
    reg                          rrfirst_1  ;
    reg                          rrlast_0   ;
    reg                          rrlast_1   ; 
    wire                         ena        ;
    wire                         enb        ;
    wire                         wea        ;
    wire      [ BAW-1 : 0 ]      addra      ;
    wire      [  DW-1 : 0 ]      dina       ;

    assign arready_0 = rready_0;
    assign arready_1 = rready_0;
    assign awready = 1'b1;

    assign wea   = awvalid ? 1'b1 : 1'b0;
    assign addra = wea ? awaddr : araddr_0;
    assign dina  = wea ? awdata : 'd0;
    assign ena   = awvalid ? 1'b1 : (arvalid_0 & arready_0);
    assign enb   = arvalid_1 & arready_1;

    ftmp_dpram u0_ftmp_dpram (
        .clka       (ddr_clk     ),    // input wire clka
        .ena        (ena         ),      // input wire ena
        .wea        (wea         ),      // input wire [0 : 0] wea
        .addra      (addra       ),  // input wire [9 : 0] addra
        .dina       (dina        ),    // input wire [511 : 0] dina
        .douta      (rdata_0     ),  // output wire [511 : 0] douta

        .clkb       (ddr_clk     ),    // input wire clkb
        .enb        (enb        ),      // input wire enb
        .web        (1'b0        ),      // input wire [0 : 0] web
        .addrb      (araddr_1    ),  // input wire [9 : 0] addrb
        .dinb       (0           ),    // input wire [511 : 0] dinb
        .doutb      (rdata_1     )  // output wire [511 : 0] doutb
    );

    //2 clk delay
    always @(posedge ddr_clk) begin
        if(ddr_clk_rst) begin
            rvalid_0 <= 1'b0;
            //rvalid_0  <= 1'b0;
        end
        else begin
            rvalid_0 <= arvalid_0 & arready_0 & (~wea);
            //rvalid_0  <= rrvalid_0;
        end 
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst) begin
            rfirst_0 <= 1'b0;
            //rfirst_0  <= 1'b0;
        end
        else begin
            rfirst_0 <= arfirst_0 & arvalid_0 & arready_0 & (~wea);
            //rfirst_0  <= rrfirst_0;
        end 
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst) begin
            rlast_0 <= 1'b0;
            //rlast_0  <= 1'b0;
        end
        else begin
            rlast_0 <= arlast_0 & arvalid_0 & arready_0 & (~wea);
            //rlast_0  <= rrlast_0;
        end 
    end
//
    always @(posedge ddr_clk) begin
        if(ddr_clk_rst) begin
            rvalid_1 <= 1'b0;
            //rvalid_1  <= 1'b0;
        end
        else begin
            rvalid_1 <= arvalid_1 & arready_1;
            //rvalid_1  <= rrvalid_1;
        end         
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst) begin
            rfirst_1 <= 1'b0;
            //rfirst_1  <= 1'b0;
        end
        else begin
            rfirst_1 <= arfirst_1 & arvalid_1 & arready_1;
            //rfirst_1  <= rrfirst_1;
        end 
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst) begin
            rlast_1 <= 1'b0;
            //rlast_1  <= 1'b0;
        end
        else begin
            rlast_1 <= arlast_1 & arvalid_1 & arready_1;
            //rlast_1  <= rrlast_1;
        end 
    end

endmodule
