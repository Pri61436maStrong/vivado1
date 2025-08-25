
//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : image_make_ctrl.v
// Author        : Luo Wei
// Project       : NB2138
// Create Date   : 2021.9.08
// Description   :
// - Host top control
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module image_make_ctrl #(parameter ICN=3,EDW=8) (
    // ======== slave axi lite interface ========
     input                      S_AXI_ACLK     ,
     input                      S_AXI_ARESETN  ,
     mna_gp_ww_itf.slave        cam_gp1_s01    ,
 
	 // ========= ctrl & status =======
     input                      dvp_vsync_start, 
     output                     img_wddr_start ,  //pulse 
     output                     img_en         ,
     output reg [     31 : 0 ]  img_wddr_base_a,
     output reg [     31 : 0 ]  img_wddr_base_b,
     output reg [     11 : 0 ]  img_width      , // max 4095,consider pad
     output reg [     11 : 0 ]  img_height     , // max 4095,consider pad
     output reg [     31 : 0 ]  img_pad        ,
     output reg [     31 : 0 ]  img_rddr_base  ,
     output reg [     23 : 0 ]  img_rddr_len   , // ((width*height-1)/8+1)*3
     output reg [      4 : 0 ]  img_last_sft   , // w*h-(len-3)/3*8
     output reg [      6 : 0 ]  channel_each   , 
     output reg [      6 : 0 ]  channel_times  ,
     output reg [EDW*ICN-1: 0 ] mean           ,  
     output reg [EDW*ICN-1: 0 ] scale          ,  
     output reg [EDW*ICN-1: 0 ] pad_data       ,
     output reg [      6 : 0 ]  imgmk_w        , //max 127
     output reg [      6 : 0 ]  imgmk_h        ,
     output reg [      6 : 0 ]  imgmk_c        ,
     output reg [     31 : 0 ]  data_arrange   ,
     output reg                 soft_rst       ,
     input      [     31 : 0 ]  data_in_num    ,
     
     input                      img_wddr_done  ,  //image make end
     input      [     31 : 0 ]  img_rstatus    ,
     input      [     31 : 0 ]  img_wstatus    ,
     output reg                 interrupt_valid,
     input                      interrupt_ready,

     input                      img_clk        ,
     input                      img_rst        
);

     //exhs 
     //parameter VERSION                =  32'h210720A0;
     //parameter ADDR_EXHS          =  10'h13C;
 
     // axi-lite reg signals
     wire   [31: 0]          slv_reg0           ;
     wire   [31: 0]          slv_reg1           ;
     wire   [31: 0]          slv_reg2           ;
     wire   [31: 0]          slv_reg3           ;
     wire   [31: 0]          slv_reg4           ;
     wire   [32*64-1: 0]     slv_reg5           ;//{mean,scale}
     wire   [31: 0]          slv_reg69          ;
     wire   [31: 0]          slv_reg70          ;
     wire   [31: 0]          slv_reg71          ;
     wire   [31: 0]          slv_reg72          ;
     wire   [31: 0]          slv_reg73          ;
     wire   [32*64-1: 0]     slv_reg74          ;//{pad}
     wire   [31: 0]          slv_reg138         ;
     wire   [31: 0]          slv_reg139         ;
     wire   [31: 0]          slv_reg140         ;
     wire   [31: 0]          slv_reg141         ;
     wire   [31: 0]          slv_reg142         ;
     wire   [31: 0]          slv_reg143         ;
     wire   [31: 0]          slv_reg144         ;
     wire   [31: 0]          slv_reg145         ;
     wire   [31: 0]          slv_reg146         ;
     wire   [31: 0]          slv_reg147         ;
     wire   [31: 0]          slv_reg148         ;
     wire   [31: 0]          slv_reg149         ;
     wire   [31: 0]          slv_reg150         ;
     wire   [31: 0]          slv_reg151         ;
     wire   [31: 0]          slv_reg152         ;

   
     wire               slv_reg_rden       ;
     wire               slv_reg_wren       ;
     integer            byte_index         ;
 
     // icore signals
     reg   [31:0 ]      icore_pre_ctrl_ver ;
     reg   [31:0 ]      time_cnt           ;
     reg   [31:0 ]      test_reg           ;
  
     // img
     wire  [31:0 ]      exhs_info          ;//exhs info
     reg   [31:0 ]      exhs_info_d0       ;//exhs info 
     reg   [31:0 ]      exhs_info_d1       ;//exhs info
     wire               img_done_pulse     ;
     reg                img_done           ;
     reg                img_done0          ;//##
     reg                img_cmd            ;
     wire               img_cmd_cross      ;
     reg                img_cmd_req        ;
     wire               ctrl_mode          ;  //0 ---> passive  1 ---> active
     reg                img_en0            ;
     wire               img_wddr_start0    ;
     wire               img_wddr_start_pulse;
     wire               img_cmd_mux        ;
     reg                soft_rst_d0        ;
     reg                soft_rst_d1        ;

     //interrupt
     reg                done_dly           ;
     wire               interrupt_pulse    ;

     assign ctrl_mode = data_arrange[3];
    //------------------------------------------------
    //-- AXI-lite Write Register Control--
    //------------------------------------------------
    assign cam_gp1_s01.awwready = 1'b1;

    assign slv_reg_wren = cam_gp1_s01.awwready && cam_gp1_s01.awwvalid;

    assign cam_gp1_s01.arready = ~cam_gp1_s01.rvalid | cam_gp1_s01.rready;

    always @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
          cam_gp1_s01.rvalid <= 0;
      else if (cam_gp1_s01.arready && cam_gp1_s01.arvalid)
          cam_gp1_s01.rvalid <= 1'b1;
      else if (cam_gp1_s01.rready)
          cam_gp1_s01.rvalid <= 1'b0;
    end
 
    assign slv_reg_rden = cam_gp1_s01.arready & cam_gp1_s01.arvalid;

    //------------------------------------------------
    //-- Registers File Definition --
    //------------------------------------------------
    // 8'h00 : slv_reg0
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            img_cmd <= 1'h0;
        else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]==10'h000)
            img_cmd <= cam_gp1_s01.awwdata[0];
		else
		    img_cmd <= 1'h0; 
    end
    assign slv_reg0 = {31'd0, img_cmd};

    pulse_cross pulse_cross_u1(
        .a2    (img_cmd_cross  ),
        .clk2  (img_clk        ),
        .rst2  (img_rst        ),

        .a1    (img_cmd        ),
        .clk1  (S_AXI_ACLK     ),
        .rst1  (~S_AXI_ARESETN  )
     );

    always @( posedge img_clk) begin
      if(img_rst)
        img_cmd_req <= 1'b0;
      else if(img_cmd_cross == 1'b1)
        img_cmd_req <= 1'b1;
      else if(dvp_vsync_start)
        img_cmd_req <= 1'b0;
    end

    always @(posedge img_clk) begin
      if(img_rst)
        img_en0 <= 1'b0;
      else if(dvp_vsync_start & img_cmd_req)
        img_en0 <= 1'b1;
      else if(dvp_vsync_start & ~img_cmd_req)
        img_en0 <= 1'b0;
    end

    assign img_wddr_start0 = dvp_vsync_start && img_cmd_req;

    pulse_cross pulse_cross_u2(
        .a2    (img_wddr_start_pulse  ),
        .clk2  (S_AXI_ACLK            ),
        .rst2  (~S_AXI_ARESETN        ),
        
        .a1    (dvp_vsync_start       ),
        .clk1  (img_clk               ),
        .rst1  (img_rst               )
    );
    //mux ctrl_mode
    assign img_en = ctrl_mode ? img_en0 : 1'b1;
    assign img_wddr_start = ctrl_mode ? img_wddr_start0 : dvp_vsync_start;
    assign img_cmd_mux = ctrl_mode ? img_cmd : img_wddr_start_pulse;

    // 10'h004 : slv_reg1
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            img_rddr_base <= 32'h0;
        else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]==10'h004)
            img_rddr_base <= cam_gp1_s01.awwdata[31:0];
    end
    assign slv_reg1 = img_rddr_base;

    //10'h008 : slv_reg2
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            img_rddr_len <= 24'h0;
        else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]==10'h008)
            img_rddr_len <= cam_gp1_s01.awwdata[23:0];
    end
    assign slv_reg2 = {8'h0, img_rddr_len};

    //10'h00C : slv_reg3
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            img_last_sft <= 5'h0;
        else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]==10'h00C)
            img_last_sft <= cam_gp1_s01.awwdata[4:0];
    end
    assign slv_reg3 = {27'h0, img_last_sft};

    //10'h010 : slv_reg4
    assign slv_reg4 = img_rstatus;

    //10'h014 ~ 10'h110:   slv_reg5 ~ slv_reg68
    genvar i;
    generate
        for(i=0;i<ICN;i=i+1)begin: mean_0
            always @( posedge S_AXI_ACLK )
            begin
               if ( S_AXI_ARESETN == 1'b0 )
                   mean[i*16+:16] <= 16'h0;
               else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]== (i*4+10'h014)) 
                   mean[i*16+:16] <= cam_gp1_s01.awwdata[31:16];                 
            end
            
            assign  slv_reg5[i*32+:32] = {mean[i*16+:16],scale[i*16+:16]};            
        end        
    endgenerate
    
    genvar j;
    generate
        for(j=0;j<ICN;j=j+1)begin: scale_0
            always @( posedge S_AXI_ACLK )
            begin
               if ( S_AXI_ARESETN == 1'b0 )
                   scale[j*16+:16] <= 16'h0;
               else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]== (j*4+10'h014))
                   scale[j*16+:16] <= cam_gp1_s01.awwdata[15:0];
            end
        end        
    endgenerate

    //genvar k;
    //generate
    //    for(k=0;k<ICN;k=k+1)begin: cut_0
    //        always @( posedge S_AXI_ACLK )
    //        begin
    //           if ( S_AXI_ARESETN == 1'b0 )
    //               cut[k*8+:8] <= 8'h0;
    //           else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]== (k*4+10'h014))
    //               cut[k*8+:8] <= cam_gp1_s01.awwdata[7:0];
    //        end
    //    end        
    //endgenerate

    //10'h114 : slv_reg69
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            img_wddr_base_a <= 32'h0;
        else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]==10'h114)
            img_wddr_base_a <= cam_gp1_s01.awwdata[31:0];
    end
    assign slv_reg69 = img_wddr_base_a;

    //10'h118 : slv_reg70
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            img_width <= 12'h0;
        else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]==10'h118)
            img_width <= cam_gp1_s01.awwdata[11:0];
    end
    assign slv_reg70 = {20'h0, img_width};

    //10'h11C : slv_reg71
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            img_height <= 12'h0;
        else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]==10'h11C)
            img_height <= cam_gp1_s01.awwdata[11:0];
    end
    assign slv_reg71 = {20'h0, img_height};

    ////10'h120 : slv_reg72
    //always @( posedge S_AXI_ACLK )
    //begin
    //    if ( S_AXI_ARESETN == 1'b0 )
    //        chan_imp <= 'h0;
    //    else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]==10'h120)
    //        chan_imp <= cam_gp1_s01.awwdata[0];
    //end
    //assign slv_reg72 = {31'h0, chan_imp};

    //10'h124 : slv_reg73
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            img_pad <= 32'h0;
        else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]==10'h124)
            img_pad <= cam_gp1_s01.awwdata;
    end
    assign slv_reg73 = img_pad;

    //10'h128 ~ 10'h224:   slv_reg74 ~ slv_reg137
    genvar m;
    generate
        for(m=0;m<ICN;m=m+1)begin: pad_0
            always @( posedge S_AXI_ACLK )
            begin
               if ( S_AXI_ARESETN == 1'b0 )
                   pad_data[m*EDW+:EDW] <= 'h0;
               else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]== (m*4+10'h128)) 
                   pad_data[m*EDW+:EDW] <= cam_gp1_s01.awwdata[EDW-1:0];      
            end
            assign slv_reg74[m*32+:32] = {'h0,pad_data[m*EDW+:EDW]};
        end        
    endgenerate

    //10'h228 : slv_reg138
    pulse_cross pulse_cross_u0(
        .a2    (img_done_pulse  ),
        .clk2  (S_AXI_ACLK      ),
        .rst2  (~S_AXI_ARESETN  ),

        .a1    (img_wddr_done   ),
        .clk1  (img_clk         ),
        .rst1  (img_rst         )
     );
     
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            img_done <= 1'h0;
        else if(slv_reg_wren && cam_gp1_s01.awwaddr[9:0]==10'h228 && cam_gp1_s01.awwdata[0] == 1'b1)
            img_done <= 1'b0;
        else if (img_cmd_mux)
            img_done <= 1'b0;
        else if (img_done_pulse)
            img_done <= 1'b1;
    end
    assign slv_reg138 = {31'h0,img_done};

    //interrupt
    always @( posedge S_AXI_ACLK ) begin
        if ( S_AXI_ARESETN == 1'b0 )
            done_dly <= 1'b0    ;
        else
            done_dly <= img_done;
    end
    always @( posedge S_AXI_ACLK ) begin
        if ( S_AXI_ARESETN == 1'b0 )
            interrupt_valid <= 1'b0;
        else if(interrupt_pulse)
            interrupt_valid <= 1'b1;
        else if(interrupt_ready)
            interrupt_valid <= 1'b0;
    end
    assign interrupt_pulse = img_done & ~done_dly;

    //10'h22C : slv_reg139
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            test_reg <= 32'h0;
        else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]==10'h22C)
            test_reg <= cam_gp1_s01.awwdata;
    end
    assign slv_reg139 =test_reg;

    // 10'h230 : slv_reg140
    assign slv_reg140 = img_wstatus;

    // 10'h234 : slv_reg141
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            icore_pre_ctrl_ver <= 0;
        else
            icore_pre_ctrl_ver <= 32'h20220623;
    end
    assign slv_reg141 = icore_pre_ctrl_ver;

    // 10'h238 : slv_reg142
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            time_cnt <= 32'h0;
        else if (img_cmd_mux)
            time_cnt <= 32'h0;
        else if(img_done)
            time_cnt <= time_cnt;
        else
            time_cnt <= time_cnt + 1;
    end
    assign slv_reg142 = time_cnt;

    // 10'h23C : slv_reg143
    //assign slv_reg143 = exhs_info_d1;

    //10'h240 : slv_reg144
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            channel_each <= 32'h0;
        else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]==10'h240)
            channel_each <= cam_gp1_s01.awwdata[6:0];
    end
    assign slv_reg144 =channel_each;

    //10'h244 : slv_reg145
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            channel_times <= 32'h0;
        else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]==10'h244)
            channel_times <= cam_gp1_s01.awwdata[6:0];
    end
    assign slv_reg145 =channel_times;

    //10'h248 : slv_reg146
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            imgmk_w <= 32'h0;
        else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]==10'h248)
            imgmk_w <= cam_gp1_s01.awwdata[6:0];
    end
    assign slv_reg146 =imgmk_w;

    //10'h24C : slv_reg147
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            imgmk_h <= 32'h0;
        else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]==10'h24C)
            imgmk_h <= cam_gp1_s01.awwdata[6:0];
    end
    assign slv_reg147 =imgmk_h;

    //10'h250 : slv_reg148
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            imgmk_c <= 32'h0;
        else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]==10'h250)
            imgmk_c <= cam_gp1_s01.awwdata[6:0];
    end
    assign slv_reg148 =imgmk_c;

    //10'h254 : slv_reg149
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            data_arrange <= 32'h0;
        else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]==10'h254)
            data_arrange <= cam_gp1_s01.awwdata[31:0];
    end
    assign slv_reg149 = data_arrange;

    //10'h258 : slv_reg150
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            img_wddr_base_b <= 32'h0;
        else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]==10'h258)
            img_wddr_base_b <= cam_gp1_s01.awwdata[31:0];
    end
    assign slv_reg150 = img_wddr_base_b;

    //10'h25C : slv_reg151
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            soft_rst_d0 <= 1'h0;
        else if (slv_reg_wren && cam_gp1_s01.awwaddr[9:0]==10'h25C)
            soft_rst_d0 <= cam_gp1_s01.awwdata[0];
    end
    assign slv_reg151 = {31'd0,soft_rst_d0};

    always@(posedge img_clk) begin
        soft_rst_d1 <= soft_rst_d0;
        soft_rst <= soft_rst_d1;
    end
    //10'h260 : slv_reg152
    assign slv_reg152 = data_in_num;
//gp read reg

always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
            cam_gp1_s01.rdata  <= 0;
        else if(slv_reg_rden )
            case(cam_gp1_s01.araddr[9:0])
                10'h000 :  cam_gp1_s01.rdata <= slv_reg0;
                10'h004 :  cam_gp1_s01.rdata <= slv_reg1;
                10'h008 :  cam_gp1_s01.rdata <= slv_reg2;
                10'h00C :  cam_gp1_s01.rdata <= slv_reg3;
                10'h010 :  cam_gp1_s01.rdata <= slv_reg4;
                10'h014 :  cam_gp1_s01.rdata <= slv_reg5[0+:32];
                10'h018 :  cam_gp1_s01.rdata <= slv_reg5[32+:32];
                10'h01C :  cam_gp1_s01.rdata <= slv_reg5[64+:32];
                10'h020 :  cam_gp1_s01.rdata <= slv_reg5[96+:32];
                10'h024 :  cam_gp1_s01.rdata <= slv_reg5[128+:32];
                10'h028 :  cam_gp1_s01.rdata <= slv_reg5[160+:32];
                10'h02C :  cam_gp1_s01.rdata <= slv_reg5[192+:32];
                10'h030 :  cam_gp1_s01.rdata <= slv_reg5[224+:32];
                10'h034 :  cam_gp1_s01.rdata <= slv_reg5[256+:32];
                10'h038 :  cam_gp1_s01.rdata <= slv_reg5[288+:32];
                10'h03C :  cam_gp1_s01.rdata <= slv_reg5[320+:32];
                10'h040 :  cam_gp1_s01.rdata <= slv_reg5[352+:32];
                10'h044 :  cam_gp1_s01.rdata <= slv_reg5[384+:32];
                10'h048 :  cam_gp1_s01.rdata <= slv_reg5[416+:32];
                10'h04C :  cam_gp1_s01.rdata <= slv_reg5[448+:32];
                10'h050 :  cam_gp1_s01.rdata <= slv_reg5[480+:32];
                10'h054 :  cam_gp1_s01.rdata <= slv_reg5[512+:32];
                10'h058 :  cam_gp1_s01.rdata <= slv_reg5[544+:32];
                10'h05C :  cam_gp1_s01.rdata <= slv_reg5[576+:32];
                10'h060 :  cam_gp1_s01.rdata <= slv_reg5[608+:32];
                10'h064 :  cam_gp1_s01.rdata <= slv_reg5[640+:32];
                10'h068 :  cam_gp1_s01.rdata <= slv_reg5[672+:32];
                10'h06C :  cam_gp1_s01.rdata <= slv_reg5[704+:32];
                10'h070 :  cam_gp1_s01.rdata <= slv_reg5[736+:32];
                10'h074 :  cam_gp1_s01.rdata <= slv_reg5[768+:32];
                10'h078 :  cam_gp1_s01.rdata <= slv_reg5[800+:32];
                10'h07C :  cam_gp1_s01.rdata <= slv_reg5[832+:32];
                10'h080 :  cam_gp1_s01.rdata <= slv_reg5[864+:32];
                10'h084 :  cam_gp1_s01.rdata <= slv_reg5[896+:32];
                10'h088 :  cam_gp1_s01.rdata <= slv_reg5[928+:32];
                10'h08C :  cam_gp1_s01.rdata <= slv_reg5[960+:32];
                10'h090 :  cam_gp1_s01.rdata <= slv_reg5[992+:32];
                10'h094 :  cam_gp1_s01.rdata <= slv_reg5[1024+:32];
                10'h098 :  cam_gp1_s01.rdata <= slv_reg5[1056+:32];
                10'h09C :  cam_gp1_s01.rdata <= slv_reg5[1088+:32];
                10'h0A0 :  cam_gp1_s01.rdata <= slv_reg5[1120+:32];
                10'h0A4 :  cam_gp1_s01.rdata <= slv_reg5[1152+:32];
                10'h0A8 :  cam_gp1_s01.rdata <= slv_reg5[1184+:32];
                10'h0AC :  cam_gp1_s01.rdata <= slv_reg5[1216+:32];
                10'h0B0 :  cam_gp1_s01.rdata <= slv_reg5[1248+:32];
                10'h0B4 :  cam_gp1_s01.rdata <= slv_reg5[1280+:32];
                10'h0B8 :  cam_gp1_s01.rdata <= slv_reg5[1312+:32];
                10'h0BC :  cam_gp1_s01.rdata <= slv_reg5[1344+:32];
                10'h0C0 :  cam_gp1_s01.rdata <= slv_reg5[1376+:32];
                10'h0C4 :  cam_gp1_s01.rdata <= slv_reg5[1408+:32];
                10'h0C8 :  cam_gp1_s01.rdata <= slv_reg5[1440+:32];
                10'h0CC :  cam_gp1_s01.rdata <= slv_reg5[1472+:32];
                10'h0D0 :  cam_gp1_s01.rdata <= slv_reg5[1504+:32];
                10'h0D4 :  cam_gp1_s01.rdata <= slv_reg5[1536+:32];
                10'h0D8 :  cam_gp1_s01.rdata <= slv_reg5[1568+:32];
                10'h0DC :  cam_gp1_s01.rdata <= slv_reg5[1600+:32];
                10'h0E0 :  cam_gp1_s01.rdata <= slv_reg5[1632+:32];
                10'h0E4 :  cam_gp1_s01.rdata <= slv_reg5[1664+:32];
                10'h0E8 :  cam_gp1_s01.rdata <= slv_reg5[1696+:32];
                10'h0EC :  cam_gp1_s01.rdata <= slv_reg5[1728+:32];
                10'h0F0 :  cam_gp1_s01.rdata <= slv_reg5[1760+:32];
                10'h0F4 :  cam_gp1_s01.rdata <= slv_reg5[1792+:32];
                10'h0F8 :  cam_gp1_s01.rdata <= slv_reg5[1824+:32];
                10'h0FC :  cam_gp1_s01.rdata <= slv_reg5[1856+:32];
                10'h100 :  cam_gp1_s01.rdata <= slv_reg5[1888+:32];
                10'h104 :  cam_gp1_s01.rdata <= slv_reg5[1920+:32];
                10'h108 :  cam_gp1_s01.rdata <= slv_reg5[1952+:32];
                10'h10C :  cam_gp1_s01.rdata <= slv_reg5[1984+:32];
                10'h110 :  cam_gp1_s01.rdata <= slv_reg5[2016+:32];
                10'h114 :  cam_gp1_s01.rdata <= slv_reg69;
                10'h118 :  cam_gp1_s01.rdata <= slv_reg70;
                10'h11C :  cam_gp1_s01.rdata <= slv_reg71;
                10'h120 :  cam_gp1_s01.rdata <= slv_reg72;
                10'h124 :  cam_gp1_s01.rdata <= slv_reg73;
                10'h128 :  cam_gp1_s01.rdata <= slv_reg74[0+:32];
                10'h12C :  cam_gp1_s01.rdata <= slv_reg74[32+:32];
                10'h130 :  cam_gp1_s01.rdata <= slv_reg74[64+:32];
                10'h134 :  cam_gp1_s01.rdata <= slv_reg74[96+:32];
                10'h138 :  cam_gp1_s01.rdata <= slv_reg74[128+:32];
                10'h13C :  cam_gp1_s01.rdata <= slv_reg74[160+:32];
                10'h140 :  cam_gp1_s01.rdata <= slv_reg74[192+:32];
                10'h144 :  cam_gp1_s01.rdata <= slv_reg74[224+:32];
                10'h148 :  cam_gp1_s01.rdata <= slv_reg74[256+:32];
                10'h14C :  cam_gp1_s01.rdata <= slv_reg74[288+:32];
                10'h150 :  cam_gp1_s01.rdata <= slv_reg74[320+:32];
                10'h154 :  cam_gp1_s01.rdata <= slv_reg74[352+:32];
                10'h158 :  cam_gp1_s01.rdata <= slv_reg74[384+:32];
                10'h15C :  cam_gp1_s01.rdata <= slv_reg74[416+:32];
                10'h160 :  cam_gp1_s01.rdata <= slv_reg74[448+:32];
                10'h164 :  cam_gp1_s01.rdata <= slv_reg74[480+:32];
                10'h168 :  cam_gp1_s01.rdata <= slv_reg74[512+:32];
                10'h16C :  cam_gp1_s01.rdata <= slv_reg74[544+:32];
                10'h170 :  cam_gp1_s01.rdata <= slv_reg74[576+:32];
                10'h174 :  cam_gp1_s01.rdata <= slv_reg74[608+:32];
                10'h178 :  cam_gp1_s01.rdata <= slv_reg74[640+:32];
                10'h17C :  cam_gp1_s01.rdata <= slv_reg74[672+:32];
                10'h180 :  cam_gp1_s01.rdata <= slv_reg74[704+:32];
                10'h184 :  cam_gp1_s01.rdata <= slv_reg74[736+:32];
                10'h188 :  cam_gp1_s01.rdata <= slv_reg74[768+:32];
                10'h18C :  cam_gp1_s01.rdata <= slv_reg74[800+:32];
                10'h190 :  cam_gp1_s01.rdata <= slv_reg74[832+:32];
                10'h194 :  cam_gp1_s01.rdata <= slv_reg74[864+:32];
                10'h198 :  cam_gp1_s01.rdata <= slv_reg74[896+:32];
                10'h19C :  cam_gp1_s01.rdata <= slv_reg74[928+:32];
                10'h1A0 :  cam_gp1_s01.rdata <= slv_reg74[960+:32];
                10'h1A4 :  cam_gp1_s01.rdata <= slv_reg74[992+:32];
                10'h1A8 :  cam_gp1_s01.rdata <= slv_reg74[1024+:32];
                10'h1AC :  cam_gp1_s01.rdata <= slv_reg74[1056+:32];
                10'h1B0 :  cam_gp1_s01.rdata <= slv_reg74[1088+:32];
                10'h1B4 :  cam_gp1_s01.rdata <= slv_reg74[1120+:32];
                10'h1B8 :  cam_gp1_s01.rdata <= slv_reg74[1152+:32];
                10'h1BC :  cam_gp1_s01.rdata <= slv_reg74[1184+:32];
                10'h1C0 :  cam_gp1_s01.rdata <= slv_reg74[1216+:32];
                10'h1C4 :  cam_gp1_s01.rdata <= slv_reg74[1248+:32];
                10'h1C8 :  cam_gp1_s01.rdata <= slv_reg74[1280+:32];
                10'h1CC :  cam_gp1_s01.rdata <= slv_reg74[1312+:32];
                10'h1D0 :  cam_gp1_s01.rdata <= slv_reg74[1344+:32];
                10'h1D4 :  cam_gp1_s01.rdata <= slv_reg74[1376+:32];
                10'h1D8 :  cam_gp1_s01.rdata <= slv_reg74[1408+:32];
                10'h1DC :  cam_gp1_s01.rdata <= slv_reg74[1440+:32];
                10'h1E0 :  cam_gp1_s01.rdata <= slv_reg74[1472+:32];
                10'h1E4 :  cam_gp1_s01.rdata <= slv_reg74[1504+:32];
                10'h1E8 :  cam_gp1_s01.rdata <= slv_reg74[1536+:32];
                10'h1EC :  cam_gp1_s01.rdata <= slv_reg74[1568+:32];
                10'h1F0 :  cam_gp1_s01.rdata <= slv_reg74[1600+:32];
                10'h1F4 :  cam_gp1_s01.rdata <= slv_reg74[1632+:32];
                10'h1F8 :  cam_gp1_s01.rdata <= slv_reg74[1664+:32];
                10'h1FC :  cam_gp1_s01.rdata <= slv_reg74[1696+:32];
                10'h200 :  cam_gp1_s01.rdata <= slv_reg74[1728+:32];
                10'h204 :  cam_gp1_s01.rdata <= slv_reg74[1760+:32];
                10'h208 :  cam_gp1_s01.rdata <= slv_reg74[1792+:32];
                10'h20C :  cam_gp1_s01.rdata <= slv_reg74[1824+:32];
                10'h210 :  cam_gp1_s01.rdata <= slv_reg74[1856+:32];
                10'h214 :  cam_gp1_s01.rdata <= slv_reg74[1888+:32];
                10'h218 :  cam_gp1_s01.rdata <= slv_reg74[1920+:32];
                10'h21C :  cam_gp1_s01.rdata <= slv_reg74[1952+:32];
                10'h220 :  cam_gp1_s01.rdata <= slv_reg74[1984+:32];
                10'h224 :  cam_gp1_s01.rdata <= slv_reg74[2016+:32];
                10'h228 :  cam_gp1_s01.rdata <= slv_reg138;
                10'h22C :  cam_gp1_s01.rdata <= slv_reg139;
                10'h230 :  cam_gp1_s01.rdata <= slv_reg140;
                10'h234 :  cam_gp1_s01.rdata <= slv_reg141;
                10'h238 :  cam_gp1_s01.rdata <= slv_reg142;
                10'h23C :  cam_gp1_s01.rdata <= slv_reg143;
                10'h240 :  cam_gp1_s01.rdata <= slv_reg144;
                10'h244 :  cam_gp1_s01.rdata <= slv_reg145;
                10'h248 :  cam_gp1_s01.rdata <= slv_reg146;
                10'h24C :  cam_gp1_s01.rdata <= slv_reg147;
                10'h250 :  cam_gp1_s01.rdata <= slv_reg148;
                10'h254 :  cam_gp1_s01.rdata <= slv_reg149;
                10'h258 :  cam_gp1_s01.rdata <= slv_reg150;
                10'h25C :  cam_gp1_s01.rdata <= slv_reg151;
                10'h260 :  cam_gp1_s01.rdata <= slv_reg152;

                default:  cam_gp1_s01.rdata <= 32'h0;
            endcase
    end

endmodule
