//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : image_make_top.v
// Author        : Luo Wei
// Project       : NB2138
// Create Date   : 2022.2.16
// Description   :
// - Image make top module
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
// 1.01    2022.7.2     luo wei      for buyi,image make :-128   channel to 4 
//==============================================================================
module image_make_top #( parameter DDR_DW=512,EDW=16, DDR_AW=32, ICN=4, PCN=4)(
        // ======== slave axi lite interface (gp1_s01)========
        mna_gp_ww_itf.slave         cam_gp1_s01           ,
        input                       S_AXI_ACLK            ,//gp0_clk
        input                       S_AXI_ARESETN         ,//gp0_rst_n
        // =============== AXI4 Write =================
        input                       M_AXI_ACLK            ,//ddr_clk
        input                       M_AXI_ARESETN         ,//ddr_rst_n
        mna_ddr_ww_itf.master       img_ddr_ww_itf        ,

        output                      interrupt_valid       ,
        input                       interrupt_ready       ,
        output                      img_ready             ,
        input     [EDW*ICN-1:0]     img_data              ,
        input                       img_valid             ,
        input                       img_start             , 
        input                       continuous_en                    
);

    wire                             img_wddr_start  ;
    wire         [ DDR_AW-1 : 0]     img_wddr_base_a ;
    wire         [ DDR_AW-1 : 0]     img_wddr_base_b ;
    wire         [       11 : 0]     img_width       ; // max 4095,consider pad
    wire         [       11 : 0]     img_height      ; // max 4095,consider pad
    wire         [       31 : 0]     img_pad         ;

    wire         [       31 : 0]     img_rddr_base   ;
    wire         [       23 : 0]     img_rddr_len    ; // ((width*height-1)/8+1)*3
    wire         [        4 : 0]     img_last_sft    ; // w*h-(len-3)/3*8
    wire         [        6 : 0]     channel_each    ; 
    wire         [        6 : 0]     channel_times   ;
 
    wire         [ EDW*ICN-1: 0]     mean            ;  
    wire         [ EDW*ICN-1: 0]     scale           ;  
    wire         [ EDW*ICN-1: 0]     pad_data        ;
    wire                             img_wddr_done   ;
    wire         [       31 : 0]     img_wstatus     ;
    wire         [        1 : 0]     img_wddr_st     ;

    wire         [EDW*ICN-1 : 0]     img_out_data0   ; 
    wire                             img_out_valid0  ;
    wire                             img_out_ready0  ;
    wire         [EDW*ICN-1 : 0]     img_out_data    ; 
    wire                             img_out_valid   ;
    wire                             img_out_ready   ;

    wire                             img_ready0      ;
    wire         [EDW*ICN-1 : 0]     img_data0       ;
    wire                             img_valid0      ;
    wire                             img_ready1      ;
    wire         [EDW*ICN-1 : 0]     img_data1       ;
    wire                             img_valid1      ;

    wire         [        6 : 0]     imgmk_w         ;
    wire         [        6 : 0]     imgmk_h         ;
    wire         [        6 : 0]     imgmk_c         ; 
    wire         [       31 : 0]     data_arrange    ;
  
    wire         [  8*ICN-1 : 0]     pad_odata0      ;
    wire         [ DDR_AW-1 : 0]     pad_oaddr0      ;
    wire                             pad_olast0      ;
    wire                             pad_ovalid0     ;
    wire                             pad_oready0     ;

    wire         [ 16*ICN-1 : 0]     pad_odata1      ;
    wire         [ DDR_AW-1 : 0]     pad_oaddr1      ;
    wire                             pad_olast1      ;
    wire                             pad_ovalid1     ;
    wire                             pad_oready1     ;

    wire         [EDW*ICN-1 : 0]     pad_odata       ;
    wire         [ DDR_AW-1 : 0]     pad_oaddr       ;
    wire                             pad_olast       ;
    wire                             pad_ovalid      ;
    wire                             pad_oready      ;

    wire         [        1 : 0]     data_type       ;
    wire                             process_bypass  ;

    wire         [ DDR_AW-1 : 0]     img_ddr_awaddr0 ;
    wire         [ DDR_DW-1 : 0]     img_ddr_awdata0 ;
    wire                             img_ddr_awlast0 ;
    wire                             img_ddr_awvalid0;
    wire                             img_ddr_awready0;

    wire         [ DDR_AW-1 : 0]     img_ddr_awaddr1 ;
    wire         [ DDR_DW-1 : 0]     img_ddr_awdata1 ;
    wire                             img_ddr_awlast1 ;
    wire                             img_ddr_awvalid1;
    wire                             img_ddr_awready1;

    wire                             img_en          ;
    wire                             ctrl_mode       ;  //0 ---> passive  1 ---> active
    wire                             soft_rst        ;
    reg          [       31 : 0]     data_in_num     ;
    wire                             rst_n           ;

    wire          [      31 : 0]     img_ddr_ww_itf_awwaddr  ;
    wire          [     511 : 0]     img_ddr_ww_itf_awwdata  ;
    wire          [      71 : 0]     img_ddr_ww_itf_awwinfo  ; //{1'b0,pl_awen[63:0],pl_awinfo[5:0],pl_awlast[0]}
    wire                             img_ddr_ww_itf_awwvalid ;
    wire                             img_ddr_ww_itf_awwready ;

    assign img_wstatus = {30'd0,img_wddr_st};
    assign data_type = data_arrange[1:0];  //data_type[0] : 0 -> 8bit out   1 -> 16bit out        data_type[1] : 0 -> 8bit in   1 -> 16bit in    
    assign process_bypass = data_arrange[2];
    assign ctrl_mode = data_arrange[3];

    assign rst_n = M_AXI_ARESETN && ~soft_rst;
    //imagemake input data number
    always@(posedge M_AXI_ACLK) begin
        if(rst_n == 1'b0)
            data_in_num <= 32'd0;
        else if(img_start && img_valid && img_ready)
            data_in_num <= 32'd1;
        else if(img_start)
            data_in_num <= 32'd0;
        else if(img_valid && img_ready)
            data_in_num <= data_in_num + 1;
    end
  
    image_make_ctrl #(.ICN(ICN),.EDW(EDW)) image_make_ctrl_u0(
    // ======== slave axi lite interface ========
         .S_AXI_ACLK           (S_AXI_ACLK          ),
         .S_AXI_ARESETN        (S_AXI_ARESETN       ),
         .cam_gp1_s01          (cam_gp1_s01         ),
	// =========================================== 
         .dvp_vsync_start      (img_start           ) ,
         .img_wddr_start       (img_wddr_start      ),
         .img_en               (img_en              ) ,
         .img_wddr_base_a      (img_wddr_base_a     ),
         .img_wddr_base_b      (img_wddr_base_b     ),
         .img_width            (img_width           ),
         .img_height           (img_height          ),
         .img_pad              (img_pad             ),
 
         .img_rddr_base        (img_rddr_base       ),
         .img_rddr_len         (img_rddr_len        ), // ceil(w*h/21)
         .img_last_sft         (img_last_sft        ), // w*h - 21*(len-1)
         .channel_each         (channel_each        ), 
         .channel_times        (channel_times       ),
         .mean                 (mean                ), //
         .scale                (scale               ), //
         .pad_data             (pad_data            ),
         .imgmk_w              (imgmk_w             ), 
         .imgmk_h              (imgmk_h             ),
         .imgmk_c              (imgmk_c             ),
         .data_arrange         (data_arrange        ),
         .soft_rst             (soft_rst            ),
         .data_in_num          (data_in_num         ),
 
         .img_wddr_done        (img_wddr_done       ),
         .img_rstatus          (1'b0                ),
         .img_wstatus          (img_wstatus         ),
         .interrupt_valid      (interrupt_valid     ),
         .interrupt_ready      (interrupt_ready     ),
         .img_clk              (M_AXI_ACLK          ),
         .img_rst              (~rst_n              )

	); 

    image_data_processing #(.ICN(ICN),.PCN(PCN),.EDW(EDW)) image_data_processing_u0(      
        .sub_data              (mean                ),  
        .mult_data             (scale               ),  
        .channel_each          (channel_each        ), 
        .channel_times         (channel_times       ), 
        .data_type             (data_type           ),  
        .img_start             (img_start           ),

        .img_in                (img_data0           ),
        .img_in_valid          (img_valid0          ),
        .img_in_ready          (img_ready0          ),
        
        .img_out               (img_out_data0       ),
        .img_out_valid         (img_out_valid0      ),
        .img_out_ready         (img_out_ready0      ),
        
        .M_AXI_ACLK            (M_AXI_ACLK          ),//ddr_clk
        .M_AXI_ARESETN         (rst_n               )//ddr_rst_n
    );

    //支持processing bypass 
    assign img_data0 = img_data;
    assign img_valid0 = process_bypass == 1'b0 && img_valid && img_en;
    assign img_ready = (process_bypass ? img_ready1 : img_ready0) && img_en;
    assign img_data1 = img_data;
    assign img_valid1 = process_bypass == 1'b1 && img_valid && img_en;

    assign img_out_data = process_bypass ? img_data1 : img_out_data0;
    assign img_out_valid = process_bypass ? img_valid1 : img_out_valid0;
    assign img_out_ready0 = process_bypass == 1'b0 && img_out_ready;
    assign img_ready1 = process_bypass == 1'b1 && img_out_ready;

    img_padding #(.EDW(EDW),.DDR_AW(DDR_AW),.ICN(ICN)) img_padding_u0(
        .pad_idata              (img_out_data    ),
        .pad_ivalid             (img_out_valid   ),
        .pad_iready             (img_out_ready   ),
     
        .pad_odata              (pad_odata       ),
        .pad_oaddr              (pad_oaddr       ),
        .pad_olast              (pad_olast       ),
        .pad_ovalid             (pad_ovalid      ),
        .pad_oready             (pad_oready      ),
             
        .img_wddr_start         (img_wddr_start  ),
        .img_wddr_base_a        (img_wddr_base_a ),
        .img_wddr_base_b        (img_wddr_base_b ),
        .img_width              (img_width       ), // max 4095,consider pad
        .img_height             (img_height      ), // max 4095,consider pad
        .img_pad                (img_pad         ), // pad top, bot, left, right
        .img_wddr_done          (img_wddr_done   ),
        .pad_data               (pad_data        ),  
        .data_type              (data_type       ),  
        .continuous_en          (continuous_en   ),

        .clk                    (M_AXI_ACLK      ),
        .rst                    (~rst_n          )
    );
    //8bit out
    genvar i;
    generate
        for(i=0;i<ICN;i=i+1)begin: pad_out
            assign pad_odata0[8*i+:8] = pad_odata[EDW*i+:8];
        end
    endgenerate
    
    assign pad_oaddr0 = pad_oaddr;
    assign pad_ovalid0 = (data_type[0] == 1'b0) && pad_ovalid;
    assign pad_olast0 = pad_olast;
    assign pad_oready =  data_type[0] ? pad_oready1 : pad_oready0;

    //16bit out
    assign pad_odata1 = pad_odata;
    assign pad_oaddr1 = pad_oaddr;
    assign pad_ovalid1 = (data_type[0] == 1'b1) && pad_ovalid;
    assign pad_olast1 = pad_olast;

    n2w_bwc_addr #(.NDW(8*ICN), .WDW(DDR_DW), .AW(DDR_AW), .CBW(5)) n2w_bwc_addr_u0(
        .n2w_ndata       (pad_odata0           ),
        .n2w_naddr       (pad_oaddr0           ),
        .n2w_nvalid      (pad_ovalid0          ),
        .n2w_nlast       (pad_olast0           ),
        .n2w_nready      (pad_oready0          ),

        .n2w_wdata       (img_ddr_awdata0      ),
        .n2w_waddr       (img_ddr_awaddr0      ),
        .n2w_wlast       (img_ddr_awlast0      ),
        .n2w_wvalid      (img_ddr_awvalid0     ),
        .n2w_wready      (img_ddr_awready0     ),

        .n2w_clk_rst     (~rst_n               ),
        .n2w_clk         (M_AXI_ACLK           )
    );

    n2w_bwc_addr #(.NDW(16*ICN), .WDW(DDR_DW), .AW(DDR_AW), .CBW(5)) n2w_bwc_addr_u1(
        .n2w_ndata       (pad_odata1           ),
        .n2w_naddr       (pad_oaddr1           ),
        .n2w_nvalid      (pad_ovalid1          ),
        .n2w_nlast       (pad_olast1           ),
        .n2w_nready      (pad_oready1          ),

        .n2w_wdata       (img_ddr_awdata1      ),
        .n2w_waddr       (img_ddr_awaddr1      ),
        .n2w_wlast       (img_ddr_awlast1      ),
        .n2w_wvalid      (img_ddr_awvalid1     ),
        .n2w_wready      (img_ddr_awready1     ),

        .n2w_clk_rst     (~rst_n               ),
        .n2w_clk         (M_AXI_ACLK           )
    );

    assign img_ddr_ww_itf_awwaddr = data_type[0] ? {img_ddr_awaddr1,6'd0} : {img_ddr_awaddr0,6'd0};  //byte 
    assign img_ddr_ww_itf_awwdata = data_type[0] ? img_ddr_awdata1 : img_ddr_awdata0;
    assign img_ddr_ww_itf_awwinfo = data_type[0] ? {1'b0,{64{1'b1}},6'd0,img_ddr_awlast1} : {1'b0,{64{1'b1}},6'd0,img_ddr_awlast0};  //{en,last}
    assign img_ddr_ww_itf_awwvalid = data_type[0] ? img_ddr_awvalid1 : img_ddr_awvalid0;
    assign img_ddr_awready0 = (data_type[0] == 1'b0) && img_ddr_ww_itf_awwready;
    assign img_ddr_awready1 = (data_type[0] == 1'b1) && img_ddr_ww_itf_awwready;

    collecting_fifo collecting_fifo_u0(                     
        .fifo_in_data     ({img_ddr_ww_itf_awwdata,img_ddr_ww_itf_awwaddr,img_ddr_ww_itf_awwinfo}),
        .fifo_in_last     (img_ddr_ww_itf_awwinfo[0]                                             ),
        .fifo_in_valid    (img_ddr_ww_itf_awwvalid                                               ),
        .fifo_in_ready    (img_ddr_ww_itf_awwready                                               ),

        .fifo_out_data    ({img_ddr_ww_itf.awwdata,img_ddr_ww_itf.awwaddr,img_ddr_ww_itf.awwinfo}),
        .fifo_out_last    (                                                                      ),
        .fifo_out_valid   (img_ddr_ww_itf.awwvalid                                               ),
        .fifo_out_ready   (img_ddr_ww_itf.awwready                                               ),
        .fifo_st          (                                                                      ),  

        .clk              (M_AXI_ACLK                                                            ),
        .rst_n            (rst_n                                                                 )
    );

endmodule
