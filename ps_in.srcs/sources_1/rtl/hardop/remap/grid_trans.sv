//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : grid_trans.v
// Author        : 
// Project       : NB2338
// Create Date   : 2024.04.26
// Description   : 

//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module grid_trans #(parameter DW=512,TDW=64)(                     
    input        [  DW-1 : 0 ]    grid_data        ,
    input                         grid_first       ,
    input                         grid_last        ,
    input                         grid_valid       ,
    output                        grid_ready       , 

    output       [ TDW-1 : 0 ]    trans_data       ,
    output                        trans_first      ,
    output                        trans_last       ,
    output                        trans_valid      ,
    input                         trans_ready      ,

    input        [  26-1 : 0 ]    coef_a           , //26q1
    input        [  26-1 : 0 ]    coef_b           ,
    input        [  26-1 : 0 ]    coef_c           ,
    input        [  26-1 : 0 ]    coef_d           ,
    input        [  26-1 : 0 ]    coef_e           ,
    input        [  26-1 : 0 ]    coef_f           ,

    input                         ddr_clk          ,
    input                         ddr_clk_rst        
);
    wire         [  32-1 : 0 ]    n_grid_data      ;
    wire                          n_grid_first     ;
    wire                          n_grid_last      ;
    wire                          n_grid_valid     ;
    wire                          n_grid_ready     ;
    
    wire         [   15 :  0 ]    dst_x            ;
    wire         [   15 :  0 ]    dst_y            ;

    wire         [   41 :  0 ]    a_x_mult_d0      ;
    wire         [   41 :  0 ]    b_y_mult_d0      ;
    wire         [   41 :  0 ]    d_x_mult_d0      ;
    wire         [   41 :  0 ]    e_y_mult_d0      ;

    wire         [   31 :  0 ]    a_x_mult         ;
    wire         [   31 :  0 ]    b_y_mult         ;
    wire         [   31 :  0 ]    d_x_mult         ;
    wire         [   31 :  0 ]    e_y_mult         ;

    wire         [   31 :  0 ]    a_x_mult_d1      ;
    wire         [   31 :  0 ]    b_y_mult_d1      ;
    wire         [   31 :  0 ]    d_x_mult_d1      ;
    wire         [   31 :  0 ]    e_y_mult_d1      ;

    wire                          grid_first_d1    ;
    wire                          grid_last_d1     ;   
    wire                          grid_first_d2    ;
    wire                          grid_last_d2     ; 

    wire         [2+32*4-1:0 ]    mult_mbus        ;
    wire                          mult_mvalid      ;
    wire                          mult_mready      ;

    wire         [2+32*4-1:0 ]    mult_sbus        ;
    wire                          mult_svalid      ;
    wire                          mult_sready      ;
    
    //pipe 2
    wire         [   32 :  0 ]    a_b_add          ;
    wire         [   32 :  0 ]    d_e_add          ;
    wire         [   31 :  0 ]    a_b_add_d1       ;
    wire         [   31 :  0 ]    d_e_add_d1       ;

    wire         [2+32*2-1:0 ]    add_mbus         ;
    wire                          add_mvalid       ;
    wire                          add_mready       ;

    wire         [2+32*2-1:0 ]    add_sbus         ;
    wire                          add_svalid       ;
    wire                          add_sready       ;

    //pipe 3
    wire         [   31 : 0 ]      src_x           ;
    wire         [   31 : 0 ]      src_y           ;

    wire         [2+TDW-1: 0 ]     trans_mbus      ;
    wire                           trans_mvalid    ;
    wire                           trans_mready    ;
    wire         [2+TDW-1: 0 ]     trans_sbus      ;
    wire                           trans_svalid    ;
    wire                           trans_sready    ;

    //w2n
    w2n_remap#(.NDW(32), .WDW(512), .CBW(4)) u0_w2n_remap(
        .w2n_wdata       (grid_data         ),
        .w2n_wfirst      (grid_first        ),
        .w2n_wlast       (grid_last         ),
        .w2n_wvalid      (grid_valid        ),
        .w2n_wready      (grid_ready        ),
        .valid_chn       (4'hf              ),

        .w2n_ndata       ( n_grid_data      ),
        .w2n_nfirst      ( n_grid_first     ),
        .w2n_nlast       ( n_grid_last      ),
        .w2n_nvalid      ( n_grid_valid     ),
        .w2n_nready      ( n_grid_ready     ),

        .w2n_clk_rst     (ddr_clk_rst       ),
        .w2n_clk         (ddr_clk           )
    );
    //3 pipe
    //warpaffine compute 
    //x' = a0*x + b0*y + c0
    //y' = a1*x + b1*y + c1
    //pipe 1 *
    assign dst_x = n_grid_data[15:0];
    assign dst_y = n_grid_data[31:16];
    mult_s_26_16 U0_mult_s_26_16(
        .A    (coef_a             ), //1 24 1
        .B    (dst_x              ), //1 1  14
        .P    (a_x_mult_d0        )  //1 26 15
    ); 

    mult_s_26_16 U1_mult_s_26_16(
        .A    (coef_b             ),
        .B    (dst_y              ),
        .P    (b_y_mult_d0        )
    ); 

    mult_s_26_16 U2_mult_s_26_16(
        .A    (coef_d             ),
        .B    (dst_x              ),
        .P    (d_x_mult_d0        )
    ); 

    mult_s_26_16 U3_mult_s_26_16(
        .A    (coef_e             ),
        .B    (dst_y              ),
        .P    (e_y_mult_d0        )
    ); 

    assign a_x_mult = {a_x_mult_d0[41],a_x_mult_d0[30:0]};
    assign b_y_mult = {b_y_mult_d0[41],b_y_mult_d0[30:0]};
    assign d_x_mult = {d_x_mult_d0[41],d_x_mult_d0[30:0]};
    assign e_y_mult = {e_y_mult_d0[41],e_y_mult_d0[30:0]};

    assign mult_mbus = {n_grid_first,n_grid_last,a_x_mult,b_y_mult,d_x_mult,e_y_mult};
    assign {grid_first_d1,grid_last_d1,a_x_mult_d1,b_y_mult_d1,d_x_mult_d1,e_y_mult_d1} = mult_sbus;
    assign mult_mvalid = n_grid_valid;
    assign n_grid_ready = mult_mready;

    avr_rs #(.DW(2+32*4)) U0_avr_rs(
        .m_data           (mult_mbus     ),
        .m_valid          (mult_mvalid   ),
        .m_ready          (mult_mready   ),

        .s_data           (mult_sbus     ),
        .s_valid          (mult_svalid   ),
        .s_ready          (mult_sready   ),

        .clk              (ddr_clk       ),
        .rst_n            (~ddr_clk_rst  )
    );

    //pipe 2 +
    add_s_32_32 U0_add_s_32_32(
        .A    (a_x_mult_d1     ), // 1 16 . 15
        .B    (b_y_mult_d1     ),
        .S    (a_b_add         )
    );  

    add_s_32_32 U1_add_s_32_32(
        .A    (d_x_mult_d1     ),
        .B    (e_y_mult_d1     ),
        .S    (d_e_add         )
    );  

    assign add_mbus = {grid_first_d1,grid_last_d1,{a_b_add[32],a_b_add[30:0]},{d_e_add[32],d_e_add[30:0]}};
    assign {grid_first_d2,grid_last_d2,a_b_add_d1,d_e_add_d1} = add_sbus;
    assign add_mvalid = mult_svalid;
    assign mult_sready = add_mready;

    avr_rs #(.DW(2+32*2)) U1_avr_rs(
        .m_data           (add_mbus     ),
        .m_valid          (add_mvalid   ),
        .m_ready          (add_mready   ),

        .s_data           (add_sbus     ),
        .s_valid          (add_svalid   ),
        .s_ready          (add_sready   ),

        .clk              (ddr_clk      ),
        .rst_n            (~ddr_clk_rst )
    );

    //pipe 3 +  
    add_s_32_32 U2_add_s_32_32(
        .A    (a_b_add_d1                      ),
        .B    ({coef_c[25],coef_c[16:0],14'd0} ),
        .S    (src_x                           )
    );  

    add_s_32_32 U3_add_s_32_32(
        .A    (d_e_add_d1                      ),
        .B    ({coef_f[25],coef_f[16:0],14'd0} ),
        .S    (src_y                           )
    );  
    
    assign trans_mbus = {grid_first_d2,grid_last_d2,src_y,src_x};
    assign {trans_first,trans_last,trans_data} = trans_sbus; //trans_data = {src_y,src_x}
    assign trans_mvalid = add_svalid;
    assign add_sready = trans_mready;
    assign trans_valid = trans_svalid;
    assign trans_sready = trans_ready;

    avr_rs #(.DW(2+TDW)) u2_avr_rs(
        .m_data      (trans_mbus         ),
        .m_valid     (trans_mvalid       ),
        .m_ready     (trans_mready       ),

        .s_data      (trans_sbus         ),
        .s_valid     (trans_svalid       ),
        .s_ready     (trans_sready       ),

        .clk         (ddr_clk           ),
        .rst_n       (~ddr_clk_rst      )
    );

 
endmodule
