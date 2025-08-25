//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : argmax2d_cmp.v
// Author        : Xu Yun
// Project       : 
// Create Date   : 2024.05.09
// Description   : 
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//      2024.08.15    You Tianwei    extend case cu=0~4
//==============================================================================
module argmax2d_cmp#(parameter AW=32, DW=512, NDW=64, IFW=32)(                     
    output     [ NDW-1 : 0 ]      cmp_awdata         ,
    output                        cmp_awvalid        ,
    input                         cmp_awready        ,
    
    input      [  DW-1 : 0 ]      rdata              ,
    input      [ IFW-1 : 0 ]      rinfo              ,
    input                         rvalid             ,
    output                        rready             ,

    input                         argmax2d_start     ,

    input      [     2 : 0 ]      cu                 ,// 0~5, log2(cu_val)
    input      [     4 : 0 ]      vld_cu_val         ,// (vld_c_val mod cu_val)-1
    output     [     1 : 0 ]      wfifo_st           ,     
                    
    input                         clk                ,
    input                         rst
); 
    wire       [     2 : 0 ]      rfu              ;
    wire                          cu_raddr_first   ;
    wire                          cu_raddr_last    ;
    wire       [    19 : 0 ]      cu_raddr_cnt     ;
    wire                          rlast            ;
    wire       [     5 : 0 ]      cu_end_extra     ;
    
    wire                          din_vld          ;  
    reg                           m0_busy          ;
    wire                          m0_refresh       ;
    reg        [64*32-1: 0 ]      info             ;
    reg        [  DW-1 : 0 ]      rdata_head       ;
    reg        [  DW-1 : 0 ]      rdata_end        ;
    reg                           info_offset       ;   
//�༶�Ƚ����ĵ�һ������    
    wire       [ 32*8-1 : 0  ]    cmp_a         ;
    wire       [ 32*32-1 : 0 ]    cmp_a_info    ;
    wire       [ 32*8-1 : 0  ]    cmp_b         ;
    wire       [ 32*32-1 : 0 ]    cmp_b_info    ;

//�༶�Ƚ�����ÿ�����    
    wire       [ 32*8-1 : 0  ]    cmp_m1        ;
    wire       [ 32*32-1 : 0 ]    cmp_m1_info   ;
    wire       [ 16*8-1 : 0  ]    cmp_m2        ;
    wire       [ 16*32-1 : 0 ]    cmp_m2_info   ;
    wire       [ 8*8-1  : 0  ]    cmp_m3        ;
    wire       [ 8*32-1  : 0 ]    cmp_m3_info   ;
    wire       [ 4*8-1  : 0  ]    cmp_m4        ;
    wire       [ 4*32-1  : 0 ]    cmp_m4_info   ;
    wire       [ 2*8-1  : 0  ]    cmp_m5        ;
    wire       [ 2*32-1  : 0 ]    cmp_m5_info   ;
    wire       [ 8-1    : 0  ]    cmp_m6        ;
    wire       [ 32-1    : 0 ]    cmp_m6_info   ;      
    wire       [ 32*8-1 : 0  ]    cmp_m0         ;
    wire       [ 32*32-1 : 0 ]    cmp_m0_info    ;        

    reg        [ 32*8-1 : 0  ]    cmp_res         ;
    reg        [ 32*32-1 : 0 ]    cmp_res_info    ;

    wire                          cmp_vld         ;    
    reg                           cmp_vld_d0      ;
    reg                           cmp_vld_d1      ;
    reg                           cmp_vld_d2      ;
    reg                           cmp_vld_d3      ;
    reg                           cmp_vld_d4      ;
    reg                           cmp_vld_d5      ;

    wire                          cmp_cu_last         ; //cmp������һ��cu���ź�
    reg                           cmp_cu_last_d0      ;
    reg                           cmp_cu_last_d1      ;
    reg                           cmp_cu_last_d2      ;
    reg                           cmp_cu_last_d3      ;
    reg                           cmp_cu_last_d4      ;
    reg                           cmp_cu_last_d5      ;    
    
    wire                          cmp_last            ;//cmp�����ź� 
    wire                          rlast_d             ;  
    reg                           rlast_d0            ;
    reg                           rlast_d1            ;
    reg                           rlast_d2            ; 
    reg                           rlast_d3            ;
    reg                           rlast_d4            ;
    reg                           rlast_d5            ;
    reg                           rlast_d6            ;                   
    
    wire       [32*8-1 : 0 ]      cmpm_a           ;
    wire       [32*32-1: 0 ]      cmpm_a_info      ;
    wire       [32*8-1 : 0 ]      cmpm_b           ;
    wire       [32*32-1: 0 ]      cmpm_b_info      ;
    wire       [32*8-1 : 0 ]      cmpm_m           ;
    wire       [32*32-1: 0 ]      cmpm_m_info      ;
    
    reg        [32*8-1 : 0 ]      m0               ;
    reg        [32*32-1: 0 ]      m0_info          ;
    reg                           m0_last          ;
    reg                           cmpm_vld           ;
    reg        [    31 : 0 ]      idx              ;
    reg                           cmpm_m_vld         ;    


    reg        [     4 : 0 ]      send_cu_num      ;
    reg        [     4 : 0 ]      cu_val           ;
    reg        [     4 : 0 ]      wfifo_cnt        ;
    reg                           tx_start         ;
    wire                          tx_end           ;

    reg                           fifo_wvalid      ;
    wire                          fifo_wready      ;
    wire       [     39: 0 ]      fifo_wdata       ;
    
    wire                          fifo_rvalid      ;
    wire                          fifo_rready      ;
    wire       [     39: 0 ]      fifo_rdata       ;
    wire       [     19: 0 ]      ddr_cnt          ;
    wire       [      5: 0 ]      cu_offset        ;
    wire       [     31: 0 ]      max_idx          ;
        
    assign {rfu, cu_end_extra, cu_raddr_first, cu_raddr_last, cu_raddr_cnt, rlast} = rinfo;
    assign din_vld = rvalid & rready;
    assign rready = ~m0_busy;

    always @(posedge clk) begin
        if(rst)
            m0_busy <= 1'b0;
        else if(din_vld & cu_raddr_last)
            m0_busy <= 1'b1;
        else if(m0_refresh)
            m0_busy <= 1'b0;
    end
   
    always@(posedge clk) begin
        if(rst)
            info_offset <= 1'h0            ;
        else if(cu_raddr_last&(cu == 'd5)) 
            info_offset <= cu_end_extra[5]  ;
    end
    
  // gen info
    genvar j;
    generate
        for(j=0; j<64; j=j+1) begin:gen_info
            always@(*) begin
                case(cu)
                    'd0:info[j*32 +:32] <=  {6'b0, cu_raddr_cnt, j[5:0]   }   ;
                    'd1:info[j*32 +:32] <=  {6'b0, cu_raddr_cnt, {1'b0,j[5:1]}}   ;
                    'd2:info[j*32 +:32] <=  {6'b0, cu_raddr_cnt, {2'b0,j[5:2]}}   ;
                    'd3:info[j*32 +:32] <=  {6'b0, cu_raddr_cnt, {3'b0,j[5:3]}}   ;
                    'd4:info[j*32 +:32] <=  {6'b0, cu_raddr_cnt, {4'b0,j[5:4]}}   ;
                    'd5:info[j*32 +:32] <=  {5'b0, info_offset , cu_raddr_cnt, {5'b0,j[5]}}   ; 
                    default:info[j*32 +:32] <=  {5'b0, info_offset , cu_raddr_cnt,{5'b0,j[5]}};
                endcase                 
            end
        end
    endgenerate
    
/////// rdata_end ,get data when cu_raddr_last == 1  
    always@(*) begin
        if(cu_raddr_last) begin
            case(cu_end_extra)
            'd0: rdata_end = {64*8{1'b1}}       ;
            'd1: rdata_end = {{(64-1)*8{1'b1}}  , rdata[0 +:1*8] }      ;
            'd2: rdata_end = {{(64-2)*8{1'b1}}  , rdata[0 +:2*8] }      ;
            'd3: rdata_end = {{(64-3)*8{1'b1}}  , rdata[0 +:3*8] }      ;
            'd4: rdata_end = {{(64-4)*8{1'b1}}  , rdata[0 +:4*8] }      ;
            'd5: rdata_end = {{(64-5)*8{1'b1}}  , rdata[0 +:5*8] }      ;
            'd6: rdata_end = {{(64-6)*8{1'b1}}  , rdata[0 +:6*8] }      ;
            'd7: rdata_end = {{(64-7)*8{1'b1}}  , rdata[0 +:7*8] }      ; 
            'd8: rdata_end = {{(64-8)*8{1'b1}}  , rdata[0 +:8*8] }      ; 
            'd9: rdata_end = {{(64-9)*8{1'b1}}  , rdata[0 +:9*8] }      ;
            'd10:rdata_end = {{(64-10)*8{1'b1}} , rdata[0 +:10*8]}      ; 
            'd11:rdata_end = {{(64-11)*8{1'b1}} , rdata[0 +:11*8]}      ;
            'd12:rdata_end = {{(64-12)*8{1'b1}} , rdata[0 +:12*8]}      ;
            'd13:rdata_end = {{(64-13)*8{1'b1}} , rdata[0 +:13*8]}      ;  
            'd14:rdata_end = {{(64-14)*8{1'b1}} , rdata[0 +:14*8]}      ; 
            'd15:rdata_end = {{(64-15)*8{1'b1}} , rdata[0 +:15*8]}      ;
            'd16:rdata_end = {{(64-16)*8{1'b1}} , rdata[0 +:16*8]}      ;
            'd17:rdata_end = {{(64-17)*8{1'b1}} , rdata[0 +:17*8]}      ; 
            'd18:rdata_end = {{(64-18)*8{1'b1}} , rdata[0 +:18*8]}      ; 
            'd19:rdata_end = {{(64-19)*8{1'b1}} , rdata[0 +:19*8]}      ;
            'd20:rdata_end = {{(64-20)*8{1'b1}} , rdata[0 +:20*8]}      ;
            'd21:rdata_end = {{(64-21)*8{1'b1}} , rdata[0 +:21*8]}      ;
            'd22:rdata_end = {{(64-22)*8{1'b1}} , rdata[0 +:22*8]}      ;
            'd23:rdata_end = {{(64-23)*8{1'b1}} , rdata[0 +:23*8]}      ;  
            'd24:rdata_end = {{(64-24)*8{1'b1}} , rdata[0 +:24*8]}      ; 
            'd25:rdata_end = {{(64-25)*8{1'b1}} , rdata[0 +:25*8]}      ;
            'd26:rdata_end = {{(64-26)*8{1'b1}} , rdata[0 +:26*8]}      ;
            'd27:rdata_end = {{(64-27)*8{1'b1}} , rdata[0 +:27*8]}      ; 
            'd28:rdata_end = {{(64-28)*8{1'b1}} , rdata[0 +:28*8]}      ; 
            'd29:rdata_end = {{(64-29)*8{1'b1}} , rdata[0 +:29*8]}      ;
            'd30:rdata_end = {{(64-30)*8{1'b1}} , rdata[0 +:30*8]}      ;
            'd31:rdata_end = {{(64-31)*8{1'b1}} , rdata[0 +:31*8]}      ;
            'd32:rdata_end = {{(64-32)*8{1'b1}} , rdata[0 +:32*8]}      ;
            'd33:rdata_end = {{(64-33)*8{1'b1}} , rdata[0 +:33*8]}      ;  
            'd34:rdata_end = {{(64-34)*8{1'b1}} , rdata[0 +:34*8]}      ; 
            'd35:rdata_end = {{(64-35)*8{1'b1}} , rdata[0 +:35*8]}      ;
            'd36:rdata_end = {{(64-36)*8{1'b1}} , rdata[0 +:36*8]}      ;
            'd37:rdata_end = {{(64-37)*8{1'b1}} , rdata[0 +:37*8]}      ; 
            'd38:rdata_end = {{(64-38)*8{1'b1}} , rdata[0 +:38*8]}      ; 
            'd39:rdata_end = {{(64-39)*8{1'b1}} , rdata[0 +:39*8]}      ;
            'd40:rdata_end = {{(64-40)*8{1'b1}} , rdata[0 +:40*8]}      ;
            'd41:rdata_end = {{(64-41)*8{1'b1}} , rdata[0 +:41*8]}      ;  
            'd42:rdata_end = {{(64-42)*8{1'b1}} , rdata[0 +:42*8]}      ;
            'd43:rdata_end = {{(64-43)*8{1'b1}} , rdata[0 +:43*8]}      ;  
            'd44:rdata_end = {{(64-44)*8{1'b1}} , rdata[0 +:44*8]}      ; 
            'd45:rdata_end = {{(64-45)*8{1'b1}} , rdata[0 +:45*8]}      ;
            'd46:rdata_end = {{(64-46)*8{1'b1}} , rdata[0 +:46*8]}      ;
            'd47:rdata_end = {{(64-47)*8{1'b1}} , rdata[0 +:47*8]}      ; 
            'd48:rdata_end = {{(64-48)*8{1'b1}} , rdata[0 +:48*8]}      ; 
            'd49:rdata_end = {{(64-49)*8{1'b1}} , rdata[0 +:49*8]}      ;
            'd50:rdata_end = {{(64-50)*8{1'b1}} , rdata[0 +:50*8]}      ;
            'd51:rdata_end = {{(64-51)*8{1'b1}} , rdata[0 +:51*8]}      ;
            'd52:rdata_end = {{(64-52)*8{1'b1}} , rdata[0 +:52*8]}      ;
            'd53:rdata_end = {{(64-53)*8{1'b1}} , rdata[0 +:53*8]}      ;  
            'd54:rdata_end = {{(64-54)*8{1'b1}} , rdata[0 +:54*8]}      ; 
            'd55:rdata_end = {{(64-55)*8{1'b1}} , rdata[0 +:55*8]}      ;
            'd56:rdata_end = {{(64-56)*8{1'b1}} , rdata[0 +:56*8]}      ;
            'd57:rdata_end = {{(64-57)*8{1'b1}} , rdata[0 +:57*8]}      ; 
            'd58:rdata_end = {{(64-58)*8{1'b1}} , rdata[0 +:58*8]}      ; 
            'd59:rdata_end = {{(64-59)*8{1'b1}} , rdata[0 +:59*8]}      ;
            'd60:rdata_end = {{(64-60)*8{1'b1}} , rdata[0 +:60*8]}      ;
            'd61:rdata_end = {{(64-61)*8{1'b1}} , rdata[0 +:61*8]}      ;
            'd62:rdata_end = {{(64-62)*8{1'b1}} , rdata[0 +:62*8]}      ;
            'd63:rdata_end = {{(64-63)*8{1'b1}} , rdata[0 +:63*8]}      ;                            
            default:rdata_end = {64*8{1'b1}}       ;
            endcase
        end
        else 
            rdata_end = {64*8{1'b1}} ;
    end
/////// rdata_head ,get data when cu_raddr_first == 1      
 always@(*) begin
        if(cu_raddr_first) begin
            case(cu_end_extra)
            'd32:rdata_head = {rdata[511 :32*8] ,{32*8{1'b1}}  }      ;                        
            default:rdata_head = {64*8{1'b1}}       ;
            endcase
        end
        else 
            rdata_head = {64*8{1'b1}} ;
    end
    
//cmp input
    assign cmp_a        =   (cu_end_extra> 0) ?  ((cu_raddr_first)?rdata_head[  0+:256]: ((cu_raddr_last )?rdata_end [0+:256]: rdata[0+:256])): rdata[0+:256];
    assign cmp_b        =   (cu_end_extra> 0) ?  ((cu_raddr_first)?rdata_head[256+:256]: ((cu_raddr_last )?rdata_end [256+:256]: rdata[256+:256])): rdata[256+:256];        
    assign cmp_a_info   =     info[  0    +: 32*32] ;
    assign cmp_b_info   =     info[ 32*32 +: 32*32] ;   
 //...................................................................................
 //............................cmp pipeline........................................... 
 //cmp stage1
            genvar k;
            generate
                for(k=0; k<32; k=k+1) begin : cmp_group1
                    cmp_argmax2d cmp_u1(
                        .m       (      cmp_m1[k*8  +:  8] ),
                        .m_info  ( cmp_m1_info[k*32 +: 32] ),
                        .a       (       cmp_a[k*8  +:  8] ),
                        .a_info  (  cmp_a_info[k*32 +: 32] ),
                        .b       (       cmp_b[k*8  +:  8] ),
                        .b_info  (  cmp_b_info[k*32 +: 32] ),
                        .clk     (                     clk ),
                        .rst     (                     rst )                         
                    );                                                           
                end
            endgenerate
    //cmp stage2
            genvar l;
            generate
                for(l=0; l<16; l=l+1) begin : cmp_group2
                    cmp_argmax2d cmp_u2(
                        .m       (            cmp_m2[l*8  +:  8] ),
                        .m_info  (       cmp_m2_info[l*32 +: 32] ),
                        .a       (            cmp_m1[l*8  +:  8] ),
                        .a_info  (       cmp_m1_info[l*32 +: 32] ),
                        .b       (       cmp_m1[(l+16)*8  +:  8] ),
                        .b_info  (  cmp_m1_info[(l+16)*32 +: 32] ),
                        .clk     (                           clk ),
                        .rst     (                           rst )                         
                    );
                end
            endgenerate
    //cmp stage3
            genvar n;
            generate
                for(n=0; n<8; n=n+1) begin : cmp_group3
                    cmp_argmax2d cmp_u3(
                        .m       (           cmp_m3[n*8  +:  8] ),
                        .m_info  (      cmp_m3_info[n*32 +: 32] ),
                        .a       (           cmp_m2[n*8  +:  8] ),
                        .a_info  (      cmp_m2_info[n*32 +: 32] ),
                        .b       (       cmp_m2[(n+8)*8  +:  8] ),
                        .b_info  (  cmp_m2_info[(n+8)*32 +: 32] ),
                        .clk     (                          clk ),
                        .rst     (                          rst )                         
                    );
                end
            endgenerate
    //cmp stage4
            genvar p;
            generate
                for(p=0; p<4; p=p+1) begin : cmp_group4
                    cmp_argmax2d cmp_u4(
                        .m       (           cmp_m4[p*8  +:  8] ),
                        .m_info  (      cmp_m4_info[p*32 +: 32] ),
                        .a       (           cmp_m3[p*8  +:  8] ),
                        .a_info  (      cmp_m3_info[p*32 +: 32] ),
                        .b       (       cmp_m3[(p+4)*8  +:  8] ),
                        .b_info  (  cmp_m3_info[(p+4)*32 +: 32] ),
                        .clk     (                          clk ),
                        .rst     (                          rst )                         
                    );
                end
            endgenerate    
    //cmp stage5
            genvar q;
            generate
                for(q=0; q<2; q=q+1) begin : cmp_group5
                    cmp_argmax2d cmp_u5(
                        .m       (            cmp_m5[q*8  +:  8] ),
                        .m_info  (       cmp_m5_info[q*32 +: 32] ),
                        .a       (            cmp_m4[q*8  +:  8] ),
                        .a_info  (       cmp_m4_info[q*32 +: 32] ),
                        .b       (        cmp_m4[(q+2)*8  +:  8] ),
                        .b_info  (   cmp_m4_info[(q+2)*32 +: 32] ),
                        .clk     (                           clk ),
                        .rst     (                           rst )                         
                    );
                end
            endgenerate
    //cmp stage6
            cmp_argmax2d cmp_u6(
                .m       (             cmp_m6[0  +:  8] ),
                .m_info  (        cmp_m6_info[0  +: 32] ),
                .a       (             cmp_m5[0  +:  8] ),
                .a_info  (        cmp_m5_info[0  +: 32] ),
                .b       (             cmp_m5[8  +:  8] ),
                .b_info  (        cmp_m5_info[32 +: 32] ),
                .clk     (                          clk ),
                .rst     (                          rst )                         
            );
 //.......................................................................................
 //............................cmp pipeline end...........................................  
    assign cmp_m0 =  ( cu == 'd5) ? cmp_m1 :
                     ((cu == 'd4) ? {16*8'b0,cmp_m2} :
                     ((cu == 'd3) ? {24*8'b0,cmp_m3} :
                     ((cu == 'd2) ? {28*8'b0,cmp_m4} :
                     ((cu == 'd1) ? {30*8'b0,cmp_m5} :{31*8'b0,cmp_m6}))));
 
    assign cmp_m0_info =  ( cu == 'd5) ? cmp_m1_info :
                          ((cu == 'd4) ? {16*32'b0,cmp_m2_info} :
                          ((cu == 'd3) ? {24*32'b0,cmp_m3_info} :
                          ((cu == 'd2) ? {28*32'b0,cmp_m4_info} :
                          ((cu == 'd1) ? {30*32'b0,cmp_m5_info} :{31*32'b0,cmp_m6_info}))));
                                                          
     always @ (posedge clk) begin
        if(rst) begin
            cmp_res        <=     'b0       ;           
        end
        else    begin
            case( cu ) 
                'd0:            cmp_res        <=  {31*8'b0, cmp_m0[    8-1:0]}               ;
                'd1:            cmp_res        <=  {30*8'b0, cmp_m0[  2*8-1:0]}               ;
                'd2:            cmp_res        <=  {28*8'b0, cmp_m0[  4*8-1:0]}               ;  
                'd3:            cmp_res        <=  {24*8'b0, cmp_m0[  8*8-1:0]}               ;
                'd4:            cmp_res        <=  {16*8'b0, cmp_m0[ 16*8-1:0]}               ; 
                'd5:            cmp_res        <=  cmp_m0                                     ;    
                default:        cmp_res        <=  cmp_m0                                     ;                                                                             
            endcase              
        end
    end   
    
     always @ (posedge clk) begin
        if(rst) begin
            cmp_res_info        <=     'b0       ;           
        end
        else    begin
            case( cu ) 
                'd0:            cmp_res_info        <=  {31*32'b0, cmp_m0_info[    32-1:0]}               ;
                'd1:            cmp_res_info        <=  {30*32'b0, cmp_m0_info[  2*32-1:0]}               ;
                'd2:            cmp_res_info        <=  {28*32'b0, cmp_m0_info[  4*32-1:0]}               ;  
                'd3:            cmp_res_info        <=  {24*32'b0, cmp_m0_info[  8*32-1:0]}               ;
                'd4:            cmp_res_info        <=  {16*32'b0, cmp_m0_info[ 16*32-1:0]}               ; 
                'd5:            cmp_res_info        <=  cmp_m0_info                                       ;
                default:        cmp_res_info        <=  cmp_m0_info                                     ;                                                                                             
            endcase              
        end
    end   
 ///cmp_vld�ź���Ҫ����      
    assign cmp_vld = ( cu == 'd5) ? cmp_vld_d0 :
                     ((cu == 'd4) ? cmp_vld_d1 :
                     ((cu == 'd3) ? cmp_vld_d2 :
                     ((cu == 'd2) ? cmp_vld_d3 :
                     ((cu == 'd1) ? cmp_vld_d4 :cmp_vld_d5)))); 
    
    assign cmp_cu_last= ( cu == 'd5) ? cmp_cu_last_d0 :
                        ((cu == 'd4) ? cmp_cu_last_d1 :
                        ((cu == 'd3) ? cmp_cu_last_d2 :
                        ((cu == 'd2) ? cmp_cu_last_d3 :
                        ((cu == 'd1) ? cmp_cu_last_d4 :cmp_cu_last_d5))));  
                        
    assign rlast_d=  ( cu == 'd5) ? rlast_d0 :
                     ((cu == 'd4) ? rlast_d1 :
                     ((cu == 'd3) ? rlast_d2 :
                     ((cu == 'd2) ? rlast_d3 :
                     ((cu == 'd1) ? rlast_d4 :rlast_d5))));     
                                     
    always @ (posedge clk) begin
        if(rst) begin
            cmp_vld_d0      <= 1'd0        ;
            cmp_cu_last_d0  <= 1'd0        ;
            rlast_d0        <= 1'd0        ;
        end
        else begin
            cmp_vld_d0      <= din_vld                  ;
            cmp_cu_last_d0  <= cu_raddr_last & din_vld  ;
            rlast_d0        <= rlast                    ;            
        end
    end

    always @ (posedge clk) begin
        if(rst) begin
            cmp_vld_d1      <= 1'd0        ;
            cmp_cu_last_d1  <= 1'd0        ;
            rlast_d1        <= 1'd0        ;
        end
        else begin
            cmp_vld_d1      <= cmp_vld_d0      ;
            cmp_cu_last_d1  <= cmp_cu_last_d0  ;
            rlast_d1        <= rlast_d0        ;
        end
    end

    always @ (posedge clk) begin
        if(rst) begin
            cmp_vld_d2      <= 1'd0        ;
            cmp_cu_last_d2  <= 1'd0        ;
            rlast_d2        <= 1'd0        ;
        end
        else begin
            cmp_vld_d2      <= cmp_vld_d1     ;
            cmp_cu_last_d2  <= cmp_cu_last_d1 ;
            rlast_d2        <= rlast_d1       ;
        end
    end
    
   always @ (posedge clk) begin
        if(rst) begin
            cmp_vld_d3      <=  1'd0        ;
            cmp_cu_last_d3  <=  1'd0        ;
            rlast_d3        <=  1'd0        ;
        end
        else begin
            cmp_vld_d3      <= cmp_vld_d2     ;
            cmp_cu_last_d3  <= cmp_cu_last_d2 ;
            rlast_d3        <= rlast_d2       ;
        end
    end 
    
   always @ (posedge clk) begin
        if(rst) begin
            cmp_vld_d4      <=  1'd0        ;
            cmp_cu_last_d4  <=  1'd0        ;
            rlast_d4        <=  1'd0        ;
        end
        else begin
            cmp_vld_d4      <= cmp_vld_d3     ;
            cmp_cu_last_d4  <= cmp_cu_last_d3 ;
            rlast_d4        <= rlast_d3       ;
        end
    end    
   
   always @ (posedge clk) begin
        if(rst) begin
            cmp_vld_d5      <=  1'd0        ;
            cmp_cu_last_d5  <=  1'd0        ;
            rlast_d5        <=  1'd0        ;
        end
        else begin
            cmp_vld_d5      <= cmp_vld_d4     ;
            cmp_cu_last_d5  <= cmp_cu_last_d4 ;
            rlast_d5        <= rlast_d4       ;
        end
    end 
    
// cmpm                 
    assign cmpm_a        =    ((cmpm_vld==1'd0)&(cu_raddr_cnt=='d0)) ? 256'b0:cmpm_m                              ;
    assign cmpm_a_info   =    ((cmpm_vld==1'd0)&(cu_raddr_cnt=='d0)) ? 32*32'b0:cmpm_m_info                    ;       
    assign cmpm_b        =   cmp_res                     ;
    assign cmpm_b_info   =   cmp_res_info                ;

    genvar t;
    generate
        for(t=0; t<32; t=t+1) begin : cmp_max
            cmp_argmax2d cmp_u1(
                .m       (      cmpm_m[t*8  +:  8] ),
                .m_info  ( cmpm_m_info[t*32 +: 32] ),

                .a       (      cmpm_a[t*8  +:  8] ),
                .a_info  ( cmpm_a_info[t*32 +: 32] ),
                .b       (      cmpm_b[t*8  +:  8] ),
                .b_info  ( cmpm_b_info[t*32 +: 32] ),
                .clk     (                     clk ),
                .rst     (                     rst )                 
            );
        end
    endgenerate
    
    always @ (posedge clk) begin
        if(rst|argmax2d_start) begin
            cmpm_vld  <= 1'b0           ;
            m0_last <= 1'b0           ;
            rlast_d6<= 1'b0           ;
        end
        else if(cmp_vld) begin
            cmpm_vld  <= 1'b1           ;
            m0_last <= cmp_cu_last    ;
            rlast_d6<= rlast_d        ;
        end
        else if(fifo_wvalid & fifo_wready) begin
            cmpm_vld  <= 1'b0                      ;
            m0_last <= 1'b0                      ;
            rlast_d6<= 1'b0                      ;
        end
        else begin
            cmpm_vld  <= 1'b0                      ;
            m0_last <= 1'b0                      ;
            rlast_d6<= 1'b0                      ;
        end                    
    end

    always@( posedge clk) begin
        if(rst)
            cmpm_m_vld <= 1'b0          ;
        else
            cmpm_m_vld <= cmpm_vld        ;
    end
    
    always@( posedge clk) begin
        if(rst|argmax2d_start) begin
            m0          <= {32{8'h80}}     ;
        end
        else if(cmpm_m_vld) begin
            m0          <= cmpm_m           ;
        end
        else if(fifo_wvalid & fifo_wready)begin
            m0      <= {8'h80,      m0[32*8-1 : 8] };              
        end
        else begin
            m0      <= m0                        ;
        end          
    end 
    
    always@( posedge clk) begin
        if(rst|argmax2d_start) begin
            m0_info     <= 32*32'h0        ;
        end
        else if(cmpm_m_vld) begin
            m0_info     <= cmpm_m_info      ;
        end
        else if(fifo_wvalid & fifo_wready)begin
            m0_info <= {32'h0, m0_info[32*32-1:32] };                
        end
        else begin
            m0_info <= m0_info                   ;  
        end          
    end 
        
    // send data
    always @ (*) begin
        case(cu)
            3'h0       :        cu_val = 5'd0  ;
            3'h1       :        cu_val = 5'd1  ;
            3'h2       :        cu_val = 5'd3  ;
            3'h3       :        cu_val = 5'd7  ;
            3'h4       :        cu_val = 5'd15 ;
            3'h5       :        cu_val = 5'd31 ;
            default    :        cu_val = 5'd31 ;
        endcase
    end
    
    assign cmp_last = rlast_d6;
    always @ (posedge clk) begin
        if(rst)
            send_cu_num <= cu_val     ;
        else if(m0_last & ~cmp_last)
            send_cu_num <= cu_val     ;
        else if(m0_last & cmp_last )
            send_cu_num <= vld_cu_val ;
    end
// assign tx_start=(cmpm_vld==1'b0)&(cmpm_m_vld==1'b1);           
    always @ (posedge clk) begin
        if(rst)
            tx_start <= 1'b0;
        else if(m0_last==1'b1)
            tx_start <= 1'b1;
        else
            tx_start <= 1'b0;
    end
    
    always @ (posedge clk) begin
        if(rst)
            wfifo_cnt <= 5'h0     ;
        else if(tx_start)
            wfifo_cnt <= 5'h0     ;
        else if(fifo_wvalid & fifo_wready)
            wfifo_cnt <= wfifo_cnt + 5'h1 ;
    end
    
    assign tx_end = (wfifo_cnt == send_cu_num) & fifo_wvalid & fifo_wready;
    assign m0_refresh = tx_end;
    always @ (posedge clk) begin
        if(rst)
            fifo_wvalid <= 1'b0;
        else if(tx_start)
            fifo_wvalid <= 1'b1;
        else if(tx_end)
            fifo_wvalid <= 1'b0;
    end

    // assign fifo_wdata = {m0[7:0], m0_info[31:0]};
    assign {ddr_cnt, cu_offset} = m0_info[26] ? m0_info[25:0]-1'b1:m0_info[25:0] ;

    always @ (*) begin
        case( cu )
             3'd5     : idx = {5'd0, ddr_cnt[19:0],cu_offset[0:0]};
             3'd4     : idx = {4'd0, ddr_cnt[19:0],cu_offset[1:0]};
             3'd3     : idx = {3'd0, ddr_cnt[19:0],cu_offset[2:0]};
             3'd2     : idx = {2'd0, ddr_cnt[19:0],cu_offset[3:0]};
             3'd1     : idx = {1'd0, ddr_cnt[19:0],cu_offset[4:0]};
             3'd0     : idx = {      ddr_cnt[19:0],cu_offset[5:0]};
             default  : idx = {5'd0, ddr_cnt[19:0],cu_offset[0:0]};
        endcase
    end

    assign fifo_wdata = {idx, m0[7:0]};
    axis_fifo #(.DW(40)) argmax2d_tx_fifo(
        .wdata      (fifo_wdata              )  ,
        .wvalid     (fifo_wvalid             )  ,
        .wready     (fifo_wready             )  ,

        .rdata      (fifo_rdata              )  ,
        .rvalid     (fifo_rvalid             )  ,
        .rready     (fifo_rready             )  ,
        .fifo_st    (wfifo_st                )  ,

        .rst        (rst                     )  ,
        .clk        (clk                     )
    );
    
    assign cmp_awvalid =   fifo_rvalid                ;
    assign fifo_rready =   cmp_awready                ;
//    assign  {max_idx, max_data} = fifo_rdata          ;
    assign max_idx     =   fifo_rdata[39:8]      ;
    assign cmp_awdata  =   {32'h0, max_idx}       ;
    
endmodule
