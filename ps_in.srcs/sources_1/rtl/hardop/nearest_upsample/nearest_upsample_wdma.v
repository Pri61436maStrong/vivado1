//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : nearest_upsample_wdma.v
// Author        : 
// Project       : NB2337
// Create Date   : 2023.06.16
// Description   : 

//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module nearest_upsample_wdma #(parameter AW=32,DW=512)(                     
    input     [ DW-1  : 0 ]      rdata        ,
    input     [   31  : 0 ]      rinfo        ,
    input                        rvalid       ,
    output                       rready       , 

    output    [ DW-1  : 0 ]      awdata       ,
    output    [ AW-1  : 0 ]      awaddr       ,
    output    [   71  : 0 ]      awinfo       ,
    output                       awvalid      ,
    input                        awready      ,

    input                        start        ,
    input     [ AW-1  : 0 ]      awbase       ,
    input     [ AW-1  : 0 ]      last_awaddr  ,
    input     [    3  : 0 ]      awdwdc       ,

    input                        clk          ,
    input                        rst_n       
);
    parameter  WBUS_WIDTH = 512 + 72 + 32;
    wire     [           63  : 0 ]       awen       ; 
    reg      [            6  : 0 ]       aw_unit    ;
    wire     [WBUS_WIDTH - 1 : 0 ]       aw_mbus    ;
    wire     [WBUS_WIDTH - 1 : 0 ]       aw_sbus    ;

    wire     [        DW - 1 : 0 ]       aawdata    ;
    reg      [        AW - 1 : 0 ]       aawaddr    ;
    wire     [            71 : 0 ]       aawinfo    ;
    wire                                 aawvalid   ;
    wire                                 aawready   ;
    wire                                 aawlast    ;

    always@(posedge clk) begin
        if(~rst_n)
            aawaddr <= 32'b0;
        else if(start)
            aawaddr <= awbase;
        else if(rvalid && rready)
            aawaddr <= aawaddr + aw_unit;
    end

    assign aawlast = aawaddr == last_awaddr;
    assign aawdata = rdata[255:0];
    assign aawinfo = {1'b0,64'd0,2'd0,awdwdc,aawlast};
    assign aawvalid = rvalid;
    assign rready = aawready;

    always@(*) begin
        case(awdwdc)
            4'h0:    aw_unit <= 7'd1  ;
            4'h1:    aw_unit <= 7'd2  ;
            4'h2:    aw_unit <= 7'd4  ;       
            4'h3:    aw_unit <= 7'd8  ;
            4'h4:    aw_unit <= 7'd16 ;
            4'h5:    aw_unit <= 7'd32 ;
            default: aw_unit <= 7'd1  ;
        endcase
    end
    
    assign aw_mbus = {aawaddr,aawdata,aawinfo};
    assign {awaddr,awdata,awinfo} = aw_sbus;
    avr_rs #(.DW(WBUS_WIDTH)) avr_rs_u0(
        .m_data  (aw_mbus    ),
        .m_valid (aawvalid   ),
        .m_ready (aawready   ),

        .s_data  (aw_sbus    ),
        .s_valid (awvalid    ),
        .s_ready (awready    ),

        .clk     (clk        ),
        .rst_n   (rst_n      )
    );

endmodule
