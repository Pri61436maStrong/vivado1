//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : max_cmp.v
// Author        : SongYH
// Project       : 
// Create Date   : 2023.10.29
// Description   : 
// - argmax , axi-lite interface
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================


module max_cmp(
    input                             mode              ,
    input                             single            ,
    input                             cvalid            ,
    output                            cready            ,
    input       [511: 0]              cdata             ,
    input       [31 : 0]              cinfo             ,
    input       [11 : 0]              ct                , // 存到ddrinfo里
    input       [11 : 0]              ct_size           , // 静态ct
    input                             data_type         ,
    input       [31 : 0]              srcy              ,
    input       [31 : 0]              pause_num         ,

    output      [31 : 0]              minfo             , // [1] idx0 last  [0] idx1 last
    output                            mvalid0           ,
    input                             mready0           ,
    output      [7  : 0]              maxidx0           ,

    output                            mvalid1           ,
    input                             mready1           ,
    output      [7  : 0]              maxidx1           ,

    input                             clk               ,
    input                             rst 
    );
    wire cready0;
    wire cready1;
    wire p0valid;
    wire p1valid;
    wire [255: 0] u0data;
    wire [31 : 0] m0info;
    wire [31 : 0] m1info;
    
    assign cready = cready0 || cready1;

    wire us_single;

    // assign us_single = pause_num[0] && (ct_size > 12'd1);
    assign us_single = pause_num;

    assign u0data  = mode ? (us_single ? (cinfo[15] ? (cdata[255:  0]):(cinfo[14] ? cdata[511:256]:256'd0)) : (cdata[255:  0])) : (single ? (cinfo[15] ? (cdata[255:  0]):(cinfo[14] ? cdata[511:256]:256'd0)):(cdata[255:  0]));
    assign p0valid = mode ? (us_single ? cvalid && (cinfo[15]||cinfo[14]) : cvalid ): (single ? cvalid && (cinfo[15]||cinfo[14]) : cvalid);
    assign p1valid = mode ? (us_single ? cvalid && (!us_single) : cvalid ): cvalid && (!single);

    assign minfo = {m0info[31:8],5'd0,m0info[0],1'b0};// 31:8 for upsample 7:0 for obuffer

    one_pixel one_pixel_u0(
    .cvalid            (p0valid         ),
    .cready            (cready0         ),
    .cdata             (u0data          ),
    .ct                (ct              ),
    .ct_size           (ct_size         ), //静态ct
    .data_type         (data_type       ),
    .cinfo             (cinfo           ),


    .mready            (mready0         ),
    .maxidx            (maxidx0         ),
    .mvalid            (mvalid0         ),
    .cinfo_tr          (m0info          ),

    .clk               (clk             ),
    .rst               (rst             )
    );

    one_pixel one_pixel_u1(
    .cvalid            (p1valid         ),
    .cready            (cready1         ),
    .cdata             (cdata[511:256]  ),
    //.cdata             (cdata[255:0]  ),
    .ct                (ct              ),
    .ct_size           (ct_size         ), //静态ct
    .data_type         (data_type       ),
    .cinfo             (cinfo           ),

    .mready            (mready1         ),
    .maxidx            (maxidx1         ),
    .mvalid            (mvalid1         ),
    .cinfo_tr          (m1info          ),

    .clk               (clk             ),
    .rst               (rst             )
    );


endmodule