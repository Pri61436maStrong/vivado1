//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : bilinear.v
// Author        : SongYH
// Project       : 
// Create Date   : 2023.10.29
// Description   : 
// - caculate bilinear interpolation and compare result 
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================


module bilinear(
    input               svalid      ,
    output              sready      ,

    input       [7:0]   u           ,
    input       [7:0]   v           ,
    
    input       [7:0]   iidxa       ,
    input       [15:0]  confa0      ,
    input       [15:0]  confa1      ,
    input       [15:0]  confa2      ,
    input       [15:0]  confa3      ,
    
    input       [7:0]   iidxb       ,
    input       [15:0]  confb0      ,
    input       [15:0]  confb1      ,
    input       [15:0]  confb2      ,
    input       [15:0]  confb3      ,
    
    input       [7:0]   iidxc       ,
    input       [15:0]  confc0      ,
    input       [15:0]  confc1      ,
    input       [15:0]  confc2      ,
    input       [15:0]  confc3      ,
    
    input       [7:0]   iidxd       ,
    input       [15:0]  confd0      ,
    input       [15:0]  confd1      ,
    input       [15:0]  confd2      ,
    input       [15:0]  confd3      ,

    output              rvalid      ,
    input               rready      , 
    output      [7:0]   ridx0       ,
    
    input               clk         ,
    input               rst
    );

    wire            rst_n;

    wire [33:0]     confa;
    wire [33:0]     confb;
    wire [33:0]     confc;
    wire [33:0]     confd;

    wire [7:0]      ridxa;
    wire [7:0]      ridxb;
    wire [7:0]      ridxc;
    wire [7:0]      ridxd;

    wire dready;
    wire cvalid;
    wire cvalida;
    wire cvalidb;
    wire cvalidc;
    wire cvalidd;
    wire breadya;
    wire breadyb;
    wire breadyc;
    wire breadyd;

    assign rst_n = ~rst;

    assign cvalid = cvalida & cvalidb & cvalidc & cvalidd;

    assign sready = breadya & breadyb & breadyc & breadyd;

    bcacu bcacua(
    .clk            (clk         ),
    .rst_n          (rst_n       ),

    .bvalid         (svalid      ),
    .bready         (breadya     ),
    .u              (u           ),
    .v              (v           ),
    .iidx           (iidxa       ),
    .conf0          (confa0      ),
    .conf1          (confa1      ),
    .conf2          (confa2      ),
    .conf3          (confa3      ),

    .ready          (dready      ),
    .rvalid         (cvalida     ),
    .conf_r         (confa       ),
    .oidx           (ridxa       )
    );

    bcacu bcacub(
    .clk            (clk         ),
    .rst_n          (rst_n       ),

    .bvalid         (svalid      ),
    .bready         (breadyb     ),
    .u              (u           ),
    .v              (v           ),
    .iidx           (iidxb       ),
    .conf0          (confb0      ),
    .conf1          (confb1      ),
    .conf2          (confb2      ),
    .conf3          (confb3      ),

    .ready          (dready      ),
    .rvalid         (cvalidb     ),
    .conf_r         (confb       ),
    .oidx           (ridxb       )
    );

    bcacu bcacuc(
    .clk            (clk         ),
    .rst_n          (rst_n       ),

    .bvalid         (svalid      ),
    .bready         (breadyc     ),
    .u              (u           ),
    .v              (v           ),
    .iidx           (iidxc       ),
    .conf0          (confc0      ),
    .conf1          (confc1      ),
    .conf2          (confc2      ),
    .conf3          (confc3      ),

    .ready          (dready      ),
    .rvalid         (cvalidc     ),
    .conf_r         (confc       ),
    .oidx           (ridxc       )
    );

    bcacu bcacud(
    .clk            (clk         ),
    .rst_n          (rst_n       ),

    .bvalid         (svalid      ),
    .bready         (breadyd     ),
    .u              (u           ),
    .v              (v           ),
    .iidx           (iidxd       ),
    .conf0          (confd0      ),
    .conf1          (confd1      ),
    .conf2          (confd2      ),
    .conf3          (confd3      ),

    .ready          (dready      ),
    .rvalid         (cvalidd     ),
    .conf_r         (confd       ),
    .oidx           (ridxd       )
    );

    bcmp bcmp0(
    .clk            (clk         ),
    .rst_n          (rst_n       ),

    .dvalid         (cvalid      ),
    .dready         (dready      ),
    .data0          (confa       ),
    .data1          (confb       ),
    .data2          (confc       ),
    .data3          (confd       ),
    .idx0           (ridxa       ),
    .idx1           (ridxb       ),
    .idx2           (ridxc       ),
    .idx3           (ridxd       ),

    .rvalid         (rvalid      ),
    .rready         (rready      ),
    .ridx           (ridx0       )
    );
endmodule