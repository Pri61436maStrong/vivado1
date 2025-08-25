//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : bilinear.v
// Author        : 
// Project       : NB2338
// Create Date   : 2024.05.08
// Description   : 

//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module bilinear_remap #(parameter AW=32, DW=512)(     
    input        [  64-1 : 0 ]    up_left          ,
    input        [  64-1 : 0 ]    up_right         ,
    input        [  64-1 : 0 ]    low_left         ,
    input        [  64-1 : 0 ]    low_right        ,
    input        [  16-1 : 0 ]    u                ,//16q15    
    input        [  16-1 : 0 ]    v                ,    
    input        [  16-1 : 0 ]    u_1              ,    
    input        [  16-1 : 0 ]    v_1              ,
    input        [  32-1 : 0 ]    mode             , 
    input                         bilinear_first   , 
    input                         bilinear_last    ,     
    input                         bilinear_valid   ,
    output                        bilinear_ready   ,

    output       [  DW-1 : 0 ]    n2w_wdata        ,
    output                        n2w_wfirst       ,
    output                        n2w_wlast        ,
    output                        n2w_wvalid       ,
    input                         n2w_wready       ,        

    input                         ddr_clk          ,
    input                         ddr_clk_rst        
);
    wire         [     64-1 : 0]    up_left_tmp0     ;
    wire         [     64-1 : 0]    up_right_tmp0    ;
    wire         [     64-1 : 0]    low_left_tmp0    ;
    wire         [     64-1 : 0]    low_right_tmp0   ;
    wire         [     64-1 : 0]    up_left_tmp1     ;
    wire         [     64-1 : 0]    up_right_tmp1    ;
    wire         [     64-1 : 0]    low_left_tmp1    ;
    wire         [     64-1 : 0]    low_right_tmp1   ;    
    wire         [     16-1 : 0]    u_tmp0           ;    
    wire         [     16-1 : 0]    v_tmp0           ;    
    wire         [     16-1 : 0]    u_1_tmp0         ;    
    wire         [     16-1 : 0]    v_1_tmp0         ;
    wire         [64*4+16*4+1:0]    ss_blbus         ;
    wire         [64*4+16*4+1:0]    s0_blbus         ;
    wire         [64*4+22*4+1:0]    ss0_blbus        ;
    wire                            s0_blvalid       ;
    wire                            s0_blready       ;
    wire         [64*4+22*4+1:0]    s1_blbus         ;
    wire         [   38*16+1: 0]    ss1_blbus        ;
    wire                            s1_blvalid       ;
    wire                            s1_blready       ;  
    wire         [   38*16+1: 0]    s2_blbus         ;
    wire         [   39*8+1 : 0]    ss2_blbus        ;
    wire                            s2_blvalid       ;
    wire                            s2_blready       ;  
    wire         [   39*8+1 : 0]    s3_blbus         ;
    wire         [   40*4+1 : 0]    ss3_blbus        ;
    wire                            s3_blvalid       ;
    wire                            s3_blready       ;  
    wire         [   40*4+1 : 0]    s4_blbus         ;
    wire                            s4_blvalid       ;
    wire                            s4_blready       ;
    wire                            s4_blvalid_16    ;
    wire          [       3 :0]     s4_blready_16    ;
    wire                            s4_blvalid_8     ;
    wire          [       3 :0]     s4_blready_8     ;

    wire                            s5_blvalid       ;
    wire                            s5_blready       ;           
    wire         [     32-1 : 0]    u_v              ;
    wire         [     32-1 : 0]    u_1_v            ;
    wire         [     32-1 : 0]    u_v_1            ;
    wire         [     32-1 : 0]    u_1_v_1          ;
    wire         [     22-1 : 0]    u_v_tmp          ;
    wire         [     22-1 : 0]    u_1_v_tmp        ;
    wire         [     22-1 : 0]    u_v_1_tmp        ;
    wire         [     22-1 : 0]    u_1_v_1_tmp      ;    
    wire                            bl_first_tmp0    ;
    wire                            bl_first_tmp1    ;
    wire                            bl_first_tmp2    ;
    wire                            bl_first_tmp3    ;
    wire                            bl_first_tmp4    ;
    wire                            bl_first_tmp5    ;
    wire                            bl_last_tmp0     ;
    wire                            bl_last_tmp1     ;
    wire                            bl_last_tmp2     ;
    wire                            bl_last_tmp3     ;
    wire                            bl_last_tmp4     ;    
    wire                            bl_last_tmp5     ; 
    wire         [  38*4-1 : 0]     mult0            ;
    wire         [  38*4-1 : 0]     mult1            ;
    wire         [  38*4-1 : 0]     mult2            ;
    wire         [  38*4-1 : 0]     mult3            ;
    wire         [  38*4-1 : 0]     mult0_tmp        ;
    wire         [  38*4-1 : 0]     mult1_tmp        ;
    wire         [  38*4-1 : 0]     mult2_tmp        ;
    wire         [  38*4-1 : 0]     mult3_tmp        ;
    wire         [  39*4-1 : 0]     sum0             ; 
    wire         [  39*4-1 : 0]     sum1             ; 
    wire         [  39*4-1 : 0]     sum0_tmp         ; 
    wire         [  39*4-1 : 0]     sum1_tmp         ; 
    wire         [  40*4-1 : 0]     sum              ;
    wire         [  40*4-1 : 0]     sum_tmp          ;     

    wire         [   8*4-1 : 0]     d_sat_8          ;
    wire         [       3 : 0]     d_valid_8        ;
    wire                            d_ready_8        ;

    wire         [  16*4-1 : 0]     d_sat_16         ;
    wire         [       3 : 0]     d_valid_16       ;
    wire                            d_ready_16       ;

    wire          [  DW-1 : 0 ]     n2w_wdata_8      ;
    wire                            n2w_wfirst_8     ;
    wire                            n2w_wlast_8      ;
    wire                            n2w_wvalid_8     ;
    wire                            n2w_wready_8     ;    

    wire          [  DW-1 : 0 ]     n2w_wdata_16     ;
    wire                            n2w_wfirst_16    ;
    wire                            n2w_wlast_16     ;
    wire                            n2w_wvalid_16    ;
    wire                            n2w_wready_16    ;  
    reg                             bl_first_tmp1_d1 ;
    reg                             bl_last_tmp1_d1  ;
    reg                             s1_blvalid_d1    ;       

    //f(x,y)= f(i,j)*(1-u)*(1-v)+f(i+1,j)*u*(1-v)+f(i,j+1)*(1-u)*v+f(i+1,j+1)*u*v
    
    //1.(1-u)*(1-v)、u*(1-v)、(1-u)*v、u*v
    assign ss_blbus = {up_left,up_right,low_left,low_right,u,v,u_1,v_1,bilinear_first,bilinear_last};
    avr_rs #(.DW(64*4+16*4+2)) u0_avr_rs(
        .m_data      (ss_blbus          ),
        .m_valid     (bilinear_valid    ),
        .m_ready     (bilinear_ready    ),

        .s_data      (s0_blbus          ),
        .s_valid     (s0_blvalid        ),
        .s_ready     (s0_blready        ),

        .clk         (ddr_clk           ),
        .rst_n       (~ddr_clk_rst      )
    );
    assign {up_left_tmp0,up_right_tmp0,low_left_tmp0,low_right_tmp0,u_tmp0,v_tmp0,u_1_tmp0,v_1_tmp0,bl_first_tmp0,bl_last_tmp0} = s0_blbus;

    mult_16_16 u_mult_u_v (
      .A    (u_tmp0       ),      
      .B    (v_tmp0       ),      
      .P    (u_v          )  //32q30    
    );    

    mult_16_16 u_mult_u_1_v (
      .A    (u_1_tmp0     ),      
      .B    (v_tmp0       ),      
      .P    (u_1_v        )      
    ); 

    mult_16_16 u_mult_u_v_1 (
      .A    (u_tmp0       ),      
      .B    (v_1_tmp0     ),      
      .P    (u_v_1        )      
    ); 

    mult_16_16 u_mult_u_1_v_1 (
      .A    (u_1_tmp0     ),      
      .B    (v_1_tmp0     ),      
      .P    (u_1_v_1      )      
    );    

    //2.f(i,j)*(1-u)*(1-v)、f(i+1,j)*u*(1-v)、f(i,j+1)*(1-u)*v、f(i+1,j+1)*u*v
    //assign ss0_blbus = {up_left_tmp0,up_right_tmp0,low_left_tmp0,low_right_tmp0,u_v[31:10],u_1_v[31:10],u_v_1[31:10],u_1_v_1[31:10],bl_first_tmp0,bl_last_tmp0};
    //avr_rs #(.DW(64*4+22*4+2)) u1_avr_rs(
    //    .m_data      (ss0_blbus         ),
    //    .m_valid     (s0_blvalid        ),
    //    .m_ready     (s0_blready        ),

    //    .s_data      (s1_blbus          ),
    //    .s_valid     (s1_blvalid        ),
    //    .s_ready     (s1_blready        ),

    //    .clk         (ddr_clk           ),
    //    .rst_n       (~ddr_clk_rst      )
    //);
    //assign {up_left_tmp1,up_right_tmp1,low_left_tmp1,low_right_tmp1,u_v_tmp,u_1_v_tmp,u_v_1_tmp,u_1_v_1_tmp,bl_first_tmp1,bl_last_tmp1} = s1_blbus;       

    avr_rs #(.DW(64*2)) u1_0_avr_rs(
        .m_data      ({up_left_tmp0,up_right_tmp0}                              ),
        .m_valid     (s0_blvalid                                                ),
        .m_ready     (s0_blready                                                ),

        .s_data      ({up_left_tmp1,up_right_tmp1}                              ),
        .s_valid     (s1_blvalid                                                ),
        .s_ready     (s1_blready                                                ),

        .clk         (ddr_clk                                                   ),
        .rst_n       (~ddr_clk_rst                                              )
    );

    avr_rs #(.DW(64*2)) u1_1_avr_rs(
        .m_data      ({low_left_tmp0,low_right_tmp0}                            ),
        .m_valid     (s0_blvalid                                                ),
        .m_ready     (                                                          ),

        .s_data      ({low_left_tmp1,low_right_tmp1}                            ),
        .s_valid     (                                                          ),
        .s_ready     (s1_blready                                                ),

        .clk         (ddr_clk                                                   ),
        .rst_n       (~ddr_clk_rst                                              )
    );

    avr_rs #(.DW(22*2)) u1_2_avr_rs(
        .m_data      ({u_v[31:10],u_1_v[31:10]}                                 ),
        .m_valid     (s0_blvalid                                                ),
        .m_ready     (                                                          ),

        .s_data      ({u_v_tmp,u_1_v_tmp}                                       ),
        .s_valid     (                                                          ),
        .s_ready     (s1_blready                                                ),

        .clk         (ddr_clk                                                   ),
        .rst_n       (~ddr_clk_rst                                              )
    );

    avr_rs #(.DW(22*2+2)) u1_3_avr_rs(
        .m_data      ({u_v_1[31:10],u_1_v_1[31:10],bl_first_tmp0,bl_last_tmp0}  ),
        .m_valid     (s0_blvalid                                                ),
        .m_ready     (                                                          ),

        .s_data      ({u_v_1_tmp,u_1_v_1_tmp,bl_first_tmp1,bl_last_tmp1}        ),
        .s_valid     (                                                          ),
        .s_ready     (s1_blready                                                ),

        .clk         (ddr_clk                                                   ),
        .rst_n       (~ddr_clk_rst                                              )
    );

    genvar i;
    generate
        for(i=0;i<4;i=i+1)begin: bilinear_mult
            mult_22_16 u_mult_0 (
              .A    (u_1_v_1_tmp           ),      
              .B    (up_left_tmp1[i*16+:16]),      
              .P    (mult0[i*38+:38]       ),  //18 . 20
              .CLK  (ddr_clk               )    
            );

            mult_22_16 u_mult_1 (
              .A    (u_v_1_tmp              ),      
              .B    (up_right_tmp1[i*16+:16]),      
              .P    (mult1[i*38+:38]        ),
              .CLK  (ddr_clk                )        
            );

            mult_22_16 u_mult_2 (
              .A    (u_1_v_tmp              ),      
              .B    (low_left_tmp1[i*16+:16]),      
              .P    (mult2[i*38+:38]        ),
              .CLK  (ddr_clk                )         
            );

            mult_22_16 u_mult_3 (
              .A    (u_v_tmp                 ),      
              .B    (low_right_tmp1[i*16+:16]),      
              .P    (mult3[i*38+:38]         ),
              .CLK  (ddr_clk                )         
            );                        
        end
    endgenerate   

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            bl_first_tmp1_d1 <= 1'b0;
        else 
            bl_first_tmp1_d1 <= bl_first_tmp1;
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            bl_last_tmp1_d1 <= 1'b0;
        else 
            bl_last_tmp1_d1 <= bl_last_tmp1;
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            s1_blvalid_d1 <= 1'b0;
        else 
            s1_blvalid_d1 <= s1_blvalid;
    end

    //3.f(i,j)*(1-u)*(1-v)+f(i+1,j)*u*(1-v)、f(i,j+1)*(1-u)*v+f(i+1,j+1)*u*v
    assign ss1_blbus = {mult0,mult1,mult2,mult3,bl_first_tmp1_d1,bl_last_tmp1_d1};
    avr_rb #(.DW(38*16+2)) u0_avr_rb(
        .m_rdata     (ss1_blbus         ),
        .m_rvalid    (s1_blvalid_d1     ),
        .m_arready   (s1_blready        ),

        .s_rdata     (s2_blbus          ),
        .s_rvalid    (s2_blvalid        ),
        .s_rready    (s2_blready        ),

        .clk         (ddr_clk           ),
        .rst_n       (~ddr_clk_rst      )
    );
    assign {mult0_tmp,mult1_tmp,mult2_tmp,mult3_tmp,bl_first_tmp2,bl_last_tmp2} = s2_blbus;    

    genvar j;
    generate
        for(j=0;j<4;j=j+1)begin: bilinear_add_0
            add_38_38 u0_add_38_38 (
              .A    (mult0_tmp[j*38+:38]   ), //18 . 20      
              .B    (mult1_tmp[j*38+:38]   ),      
              .S    (sum0[j*39+:39]        )  //19 . 20 
            );

            add_38_38 u1_add_38_38 (
              .A    (mult2_tmp[j*38+:38]   ),      
              .B    (mult3_tmp[j*38+:38]   ),      
              .S    (sum1[j*39+:39]        )      
            );                       
        end
    endgenerate    

    //3.f(i,j)*(1-u)*(1-v)+f(i+1,j)*u*(1-v)+f(i,j+1)*(1-u)*v+f(i+1,j+1)*u*v
    assign ss2_blbus = {sum0,sum1,bl_first_tmp2,bl_last_tmp2};
    avr_rs #(.DW(39*8+2)) u3_avr_rs(
        .m_data      (ss2_blbus         ),
        .m_valid     (s2_blvalid        ),
        .m_ready     (s2_blready        ),

        .s_data      (s3_blbus          ),
        .s_valid     (s3_blvalid        ),
        .s_ready     (s3_blready        ),

        .clk         (ddr_clk           ),
        .rst_n       (~ddr_clk_rst      )
    );
    assign {sum0_tmp,sum1_tmp,bl_first_tmp3,bl_last_tmp3} = s3_blbus;    

    genvar k;
    generate
        for(k=0;k<4;k=k+1)begin: bilinear_add_1
            add_39_39 u0_add_39_39 (
              .A    (sum0_tmp[k*39+:39]   ), //19 . 20     
              .B    (sum1_tmp[k*39+:39]   ),      
              .S    (sum[k*40+:40]        )  //20 . 20  
            );                     
        end
    endgenerate  

    //4.round & saturation
    assign ss3_blbus = {sum,bl_first_tmp3,bl_last_tmp3};
    avr_rs #(.DW(40*4+2)) u4_avr_rs(
        .m_data      (ss3_blbus         ),
        .m_valid     (s3_blvalid        ),
        .m_ready     (s3_blready        ),

        .s_data      (s4_blbus          ),
        .s_valid     (s4_blvalid        ),
        .s_ready     (s4_blready        ),

        .clk         (ddr_clk           ),
        .rst_n       (~ddr_clk_rst      )
    );
    assign {sum_tmp,bl_first_tmp4,bl_last_tmp4} = s4_blbus;
    assign s4_blvalid_16 = (mode[0]==1'b1) && s4_blvalid;
    assign s4_blvalid_8  = (mode[0]==1'b0) && s4_blvalid;
    assign s4_blready    = (mode[0]==1'b1) ? s4_blready_16[0] : s4_blready_8[0];

    genvar l;
    generate
        for(l=0;l<4;l=l+1)begin: bilinear_round_16
            cut_fixed #(.IDW(40), .ODW(16), .CUT(20)) U0_cut_fixed( 
                .dout        (d_sat_16[l*16+:16]        ),
                .dout_valid  (d_valid_16[l]             ),
                .dout_ready  (d_ready_16                ),
                .din         (sum_tmp[l*40+:40]         ),
                .din_valid   (s4_blvalid_16             ),
                .din_ready   (s4_blready_16[l]          ),
                .clk         (ddr_clk                   ),
                .rst         (ddr_clk_rst               )
            );
        end
    endgenerate

    genvar m;
    generate
        for(m=0;m<4;m=m+1)begin: bilinear_round_8
            cut_fixed #(.IDW(40), .ODW(8), .CUT(20)) U1_cut_fixed( 
                .dout        (d_sat_8[m*8+:8]           ),
                .dout_valid  (d_valid_8[m]              ),
                .dout_ready  (d_ready_8                 ),
                .din         (sum_tmp[m*40+:40]         ),
                .din_valid   (s4_blvalid_8              ),
                .din_ready   (s4_blready_8[m]           ),
                .clk         (ddr_clk                   ),
                .rst         (ddr_clk_rst               )
            );
        end
    endgenerate

    avr_rs #(.DW(2)) U5_avr_rs(
        .m_data       ({bl_first_tmp4,bl_last_tmp4}  ),
        .m_valid      (s4_blvalid                    ),
        .m_ready      (                              ),

        .s_data       ({bl_first_tmp5,bl_last_tmp5}  ),
        .s_valid      (                              ),
        .s_ready      (s5_blready                    ),

        .clk          (ddr_clk                       ),
        .rst_n        (~ddr_clk_rst                  )
    );
    assign s5_blready = (mode[0]==1'b1) ? d_ready_16 : d_ready_8;

    n2w_remap #(.NDW(32), .WDW(512), .AW(32), .CBW(4)) u0_n2w_remap(
        .n2w_ndata       (d_sat_8         ),
        .n2w_naddr       (32'd0           ),
        .n2w_nvalid      (d_valid_8[0]    ),
        .n2w_nfirst      (bl_first_tmp5   ),
        .n2w_nlast       (bl_last_tmp5    ),
        .n2w_nready      (d_ready_8       ),

        .n2w_wdata       (n2w_wdata_8     ),
        .n2w_waddr       (                ),
        .n2w_wfirst      (n2w_wfirst_8    ),
        .n2w_wlast       (n2w_wlast_8     ),
        .n2w_wvalid      (n2w_wvalid_8    ),
        .n2w_wready      (n2w_wready_8    ),

        .n2w_clk_rst     (ddr_clk_rst     ),
        .n2w_clk         (ddr_clk         )
    );  

    n2w_remap #(.NDW(64), .WDW(512), .AW(32), .CBW(4)) u1_n2w_remap(
        .n2w_ndata       (d_sat_16        ),
        .n2w_naddr       (32'd0           ),
        .n2w_nvalid      (d_valid_16[0]   ),
        .n2w_nfirst      (bl_first_tmp5   ),
        .n2w_nlast       (bl_last_tmp5    ),
        .n2w_nready      (d_ready_16      ),

        .n2w_wdata       (n2w_wdata_16    ),
        .n2w_waddr       (                ),
        .n2w_wfirst      (n2w_wfirst_16   ),
        .n2w_wlast       (n2w_wlast_16    ),
        .n2w_wvalid      (n2w_wvalid_16   ),
        .n2w_wready      (n2w_wready_16   ),

        .n2w_clk_rst     (ddr_clk_rst     ),
        .n2w_clk         (ddr_clk         )
    );  

    assign n2w_wdata  = mode[0] ? n2w_wdata_16  : n2w_wdata_8 ;
    assign n2w_wfirst = mode[0] ? n2w_wfirst_16 : n2w_wfirst_8;
    assign n2w_wlast  = mode[0] ? n2w_wlast_16  : n2w_wlast_8 ;
    assign n2w_wvalid = mode[0] ? n2w_wvalid_16 : n2w_wvalid_8;
    assign n2w_wready_8 = (mode[0] == 1'b0) && n2w_wready;
    assign n2w_wready_16 = (mode[0] == 1'b1) && n2w_wready;

endmodule