//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : cmp.v
// Author        : SongYH
// Project       : 
// Create Date   : 2023.10.29
// Description   : 
// - argmax , axi-lite interface
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================


module cmp(
    input  signed      [15 :  0]              a                 ,
    input              [7  :  0]              idxa              ,
    input  signed      [15 :  0]              b                 ,
    input              [7  :  0]              idxb              ,

    // output                                   r                 ,
    output signed      [15 :  0]              rdata             ,
    output             [7  :  0]              idxr
    );
    wire  r;
    assign r = a < b;
    assign rdata = r ? b : a;
    assign idxr = r ? idxb : idxa; 

endmodule
