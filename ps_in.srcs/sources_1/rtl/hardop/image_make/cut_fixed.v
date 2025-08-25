//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : cut_fixed.v
// Author        : luo wei 
// Project       : NB2138
// Create Date   : 2022.07.07
// Description   : 
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//                                   for BUYI
//==============================================================================


module cut_fixed#(parameter IDW=32, ODW=16, CUT=10)( 
    output     [ODW-1 : 0]  dout      ,
    output                  dout_valid,
    input                   dout_ready,

    input      [IDW-1 : 0]  din       ,
    input                   din_valid ,
    output                  din_ready ,

    input                   clk       ,
    input                   rst
);

    wire  [  ODW : 0]   dshift   ;
    wire  [  ODW : 0]   dsat     ;
    wire  [  ODW : 0]   dround   ;
    wire  [ODW-1 : 0]   dcut     ;

    assign dsat = {din[IDW-1], {ODW{~din[IDW-1]}}};
    assign dshift = ((&din[IDW-1:CUT-1+ODW]==1'b1) || (|din[IDW-1:CUT-1+ODW]==1'b0)) ? din[CUT-1+ODW: CUT-1] : dsat ;

	assign dround = {dshift[ODW],dshift[ODW:1]} + dshift[0];
    assign dcut   = (dround[ODW]^dround[ODW-1]) ? {dround[ODW],{(ODW-1){!dround[ODW]}}} : dround[ODW-1:0] ;

    avr_rs #(.DW(ODW)) avr_rs_u0(
        .m_data       (dcut         ),
        .m_valid      (din_valid    ),
        .m_ready      (din_ready    ),

        .s_data       (dout         ),
        .s_valid      (dout_valid   ),
        .s_ready      (dout_ready   ),

        .clk          (clk          ),
        .rst_n        (~rst         )
    );

endmodule

