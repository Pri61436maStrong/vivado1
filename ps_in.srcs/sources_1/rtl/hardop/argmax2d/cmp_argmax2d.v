//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : cmp_argmax2d.v
// Author        : Xu Yun
// Project       : 
// Create Date   : 
// Description   :
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================
module cmp_argmax2d #(parameter DW=8, IFW=32)(
    output  reg   [ DW-1  : 0 ]   m       ,
    output  reg   [ IFW-1 : 0 ]   m_info  ,

    input      [ DW-1  : 0 ]   a       ,
    input      [ IFW-1 : 0 ]   a_info  ,
    input      [ DW-1  : 0 ]   b       ,
    input      [ IFW-1 : 0 ]   b_info  ,

    input       clk                    ,
    input       rst                     
);
    wire    [ DW :  0 ]    diff    ;
    wire                   sign    ;
    assign diff   = {a[DW-1], a} - {b[DW-1], b} ;
    assign sign   = diff[DW]                    ;

    always @( posedge clk)begin
        if( rst )
            m <= 'h0 ;
        else if( sign == 1'b0)
            m <= a   ;
        else if( sign == 1'b1)
            m <= b   ;
    end

    always @( posedge clk)begin
        if( rst )
            m_info <= 'h0 ;
        else if( sign == 1'b0)
            m_info <= a_info   ;
        else if( sign == 1'b1)
            m_info <= b_info   ;
    end


endmodule