//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : remap.v
// Author        : 
// Project       : NB2338
// Create Date   : 2024.04.28
// Description   : 

//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module remap #(parameter AW=32, BAW=10, DW=512, TDW=64)(     
    input        [ TDW-1 : 0 ]    trans_data       ,
    input                         trans_first      ,
    input                         trans_last       ,
    input                         trans_valid      ,
    output                        trans_ready      ,    
 
    input        [  DW-1 : 0 ]    ftmp_load_data   ,
    input        [ BAW-1 : 0 ]    ftmp_load_addr   ,
    input        [  AW-1 : 0 ]    ftmp_load_from   ,
    input        [  AW-1 : 0 ]    ftmp_load_to     ,
    //input                         ftmp_load_first  ,
    input                         ftmp_load_finish ,
    input                         ftmp_load_valid  ,
    output                        ftmp_load_ready  , 

    input        [  12-1 : 0 ]    ftmp_w           ,
    input        [  12-1 : 0 ]    ftmp_h           ,
    input        [    31 : 0 ]    mode             ,

    output       [  AW-1 : 0 ]    refresh_addr_base, 
    output                        refresh_flag     ,

    output       [  64-1 : 0 ]    up_left          ,
    output       [  64-1 : 0 ]    up_right         ,
    output       [  64-1 : 0 ]    low_left         ,
    output       [  64-1 : 0 ]    low_right        ,
    output       [  16-1 : 0 ]    u                ,    
    output       [  16-1 : 0 ]    v                ,    
    output       [  16-1 : 0 ]    u_1              ,    
    output       [  16-1 : 0 ]    v_1              , 
    output                        bilinear_first   ,   
    output                        bilinear_last    ,   
    output                        bilinear_valid   ,
    input                         bilinear_ready   ,

    input                         ddr_clk          ,
    input                         ddr_clk_rst        
);

    wire [   31 : 0]       x                ;
    wire [   31 : 0]       y                ;
    wire                   coord_first      ;
    wire                   coord_last       ;
    wire                   coord_valid      ;
    reg                    coord_ready      ;
    wire [   14 : 0]       dec_x            ;
    wire [   14 : 0]       dec_y            ;
    wire [   16 : 0]       int_x_temp       ;   
    wire [   16 : 0]       int_y_temp       ;   
    wire [   14 : 0]       dec_x_temp       ;   
    wire [   14 : 0]       dec_y_temp       ; 
    wire [   11 : 0]       int_x_tmp0       ;   
    wire [   11 : 0]       int_y_tmp0       ;   
    wire [   14 : 0]       dec_x_tmp0       ;   
    wire [   14 : 0]       dec_y_tmp0       ;
    wire [   11 : 0]       int_x_tmp1       ;   
    wire [   11 : 0]       int_x_tmp2       ;   
    wire [   11 : 0]       int_y_tmp1       ;   
    wire [   14 : 0]       dec_x_tmp1       ;   
    wire [   14 : 0]       dec_y_tmp1       ; 
    wire [   14 : 0]       dec_x_tmp2       ;   
    wire [   14 : 0]       dec_y_tmp2       ;        
    wire [   14 : 0]       dec_x_tmp3       ;   
    wire [   14 : 0]       dec_y_tmp3       ; 
    wire [   56 : 0]       coord_bus_tmp0   ;
    wire [   63 : 0]       trans_data  ;
    wire                   trans_first ;
    wire                   trans_last  ;
    wire                   trans_valid ;
    wire                   trans_ready ; 
    wire [   56 : 0]       coord_bus_tmp1   ;
    wire [   65 : 0]       coord_abus_tmp1  ;        
    wire                   coord_first_tmp1 ;
    wire                   coord_last_tmp1  ;
    wire                   coord_valid_tmp1 ;
    wire                   coord_ready_tmp1 ; 
    wire [   65 : 0]       coord_bus_tmp2  ;        
    wire [   53 : 0]       coord_abus_tmp2  ;        
    wire                   coord_first_tmp2 ;
    wire                   coord_last_tmp2  ;
    wire                   coord_valid_tmp2 ;
    wire                   coord_ready_tmp2 ;               
    wire [   53 : 0]       coord_bus_tmp3  ;        
    wire [  116 : 0]       coord_abus_tmp3  ;        
    wire                   coord_first_tmp3 ;
    wire                   coord_last_tmp3  ;
    wire                   coord_valid_tmp3 ;
    wire                   coord_ready_tmp3 ;       
    wire [  116 : 0]       coord_abus       ;        
    wire [   20 : 0]       up_left_addr     ;
    wire [   20 : 0]       up_right_addr    ;
    wire [   20 : 0]       low_left_addr    ;
    wire [   20 : 0]       low_right_addr   ;
    wire [   20 : 0]       up_left_addr_tmp2  ;
    wire [   20 : 0]       up_left_addr_tmp3  ;
    wire [   20 : 0]       up_right_addr_tmp ;
    wire [   20 : 0]       low_left_addr_tmp ;
    wire [   20 : 0]       low_right_addr_tmp;    
    reg                    refresh_tmp      ;
    reg                    refresh_tmp_d1   ; 
    reg  [   13 : 0]       araddr_offset_0  ;
    reg  [   13 : 0]       araddr_offset_1  ;
    reg  [   13 : 0]       araddr_offset_2  ;
    reg  [   13 : 0]       araddr_offset_3  ;    
    wire [    9 : 0]       araddr_0         ;
    wire [    9 : 0]       araddr_1         ;
    wire [    9 : 0]       araddr_2         ;
    wire [    9 : 0]       araddr_3         ;        
    reg                    arvalid          ;
    wire                   arready          ;
    wire [    5 : 0]       index_0          ;
    wire [    5 : 0]       index_1          ;
    wire [    5 : 0]       index_2          ;
    wire [    5 : 0]       index_3          ;   
    reg  [    5 : 0]       index_0_1        ;
    reg  [    5 : 0]       index_1_1        ;
    reg  [    5 : 0]       index_2_1        ;
    reg  [    5 : 0]       index_3_1        ;      
    wire [  511 : 0]       rdata_0          ;
    wire [  511 : 0]       rdata_1          ;
    wire [  511 : 0]       rdata_2          ;
    wire [  511 : 0]       rdata_3          ;    
    wire                   rfirst_0         ;
    wire                   rfirst_1         ;
    wire                   rlast_0          ;
    wire                   rlast_1          ;    
    wire                   rvalid_0         ;
    wire                   rready_0         ;
    wire                   rvalid_1         ;
    wire                   rready_1         ;
    wire                   rready_2         ; 
    wire                   rready_3         ;             
    reg                    arfirst          ;
    reg                    arlast           ;
    wire [   63 : 0]       up_left_tmp      ;
    wire [   63 : 0]       up_right_tmp     ;
    wire [   63 : 0]       low_left_tmp     ;
    wire [   63 : 0]       low_right_tmp    ;  
    reg  [   15 : 0]       u_tmp            ;
    reg  [   15 : 0]       v_tmp            ;
    reg  [   15 : 0]       u_1_tmp          ;
    reg  [   15 : 0]       v_1_tmp          ;       
    wire [64*4+16*4+2-1:0] m_bus            ;
    wire [64*4+16*4+2-1:0] s_bus            ;
    wire                   m_first          ;
    wire                   m_last           ;
    wire                   m_valid          ;
    wire                   m_ready          ;
    wire [   20 : 0]       mult_tmp1        ;
    wire [   20 : 0]       mult_tmp2        ; 

    wire                   pad_flag         ;
    wire                   pad_flag_d1      ;
    wire                   pad_flag_d2      ;
    wire                   pad_flag_d3      ;
    wire                   pad_flag_d4      ;
    reg                    pad_flag_d5      ;
    assign x = trans_data[0+: 32];
    assign y = trans_data[32+:32];
 
    assign int_x_temp = x[31:15];
    assign dec_x_temp = x[14:0];
    assign int_y_temp = y[31:15];
    assign dec_y_temp = y[14:0];

    assign int_x_tmp0 = int_x_temp[16] ? 12'h0 : (int_x_temp>=ftmp_w -1) ? (ftmp_w - 1) : int_x_temp[11:0];
    assign int_y_tmp0 = int_y_temp[16] ? 12'h0 : (int_y_temp>=ftmp_h -1) ? (ftmp_h - 1) : int_y_temp[11:0]; 
    assign dec_x_tmp0 = (int_x_temp[16] | (int_x_temp>=ftmp_w -1)) ? 15'h0 : dec_x_temp;
    assign dec_y_tmp0 = (int_y_temp[16] | (int_y_temp>=ftmp_h -1)) ? 15'h0 : dec_y_temp;     

    assign pad_flag =  int_x_temp[16] || int_y_temp[16] || (int_x_temp>ftmp_w -1) || (int_y_temp>ftmp_h -1);

    assign coord_bus_tmp0 = {int_x_tmp0,int_y_tmp0,dec_x_tmp0,dec_y_tmp0,trans_first,trans_last,pad_flag}; 
    avr_rs #(.DW(57)) u0_avr_rs(
        .m_data      (coord_bus_tmp0    ),
        .m_valid     (trans_valid       ),
        .m_ready     (trans_ready       ),

        .s_data      (coord_bus_tmp1    ),
        .s_valid     (coord_valid_tmp1  ),
        .s_ready     (coord_ready_tmp1  ),

        .clk         (ddr_clk           ),
        .rst_n       (~ddr_clk_rst      )
    );
    assign {int_x_tmp1,int_y_tmp1,dec_x_tmp1,dec_y_tmp1,coord_first_tmp1,coord_last_tmp1,pad_flag_d1} = coord_bus_tmp1;

    assign mult_tmp1 = int_y_tmp1*ftmp_w;
    assign coord_abus_tmp1 = {int_x_tmp1,mult_tmp1,dec_x_tmp1,dec_y_tmp1,coord_first_tmp1,coord_last_tmp1,pad_flag_d1};
    avr_rs #(.DW(66)) u1_avr_rs(
        .m_data      (coord_abus_tmp1     ),
        .m_valid     (coord_valid_tmp1    ),
        .m_ready     (coord_ready_tmp1    ),

        .s_data      (coord_bus_tmp2      ),
        .s_valid     (coord_valid_tmp2    ),
        .s_ready     (coord_ready_tmp2    ),

        .clk         (ddr_clk             ),
        .rst_n       (~ddr_clk_rst        )
    );
    assign {int_x_tmp2,mult_tmp2,dec_x_tmp2,dec_y_tmp2,coord_first_tmp2,coord_last_tmp2,pad_flag_d2} = coord_bus_tmp2;

    assign up_left_addr_tmp2   = int_x_tmp2 + mult_tmp2;
    assign coord_abus_tmp2 = {up_left_addr_tmp2,dec_x_tmp2,dec_y_tmp2,coord_first_tmp2,coord_last_tmp2,pad_flag_d2}; 
    avr_rs #(.DW(54)) u2_avr_rs(
        .m_data      (coord_abus_tmp2     ),
        .m_valid     (coord_valid_tmp2    ),
        .m_ready     (coord_ready_tmp2    ),

        .s_data      (coord_bus_tmp3      ),
        .s_valid     (coord_valid_tmp3    ),
        .s_ready     (coord_ready_tmp3    ),

        .clk         (ddr_clk             ),
        .rst_n       (~ddr_clk_rst        )
    );
    assign {up_left_addr_tmp3,dec_x_tmp3,dec_y_tmp3,coord_first_tmp3,coord_last_tmp3,pad_flag_d3} = coord_bus_tmp3;

    assign up_right_addr_tmp  = (|dec_x_tmp3==0) ? up_left_addr_tmp3  : up_left_addr_tmp3  + 1;
    assign low_left_addr_tmp  = (|dec_y_tmp3==0) ? up_left_addr_tmp3  : up_left_addr_tmp3  + ftmp_w;
    assign low_right_addr_tmp = (|dec_x_tmp3==0) ? low_left_addr_tmp : low_left_addr_tmp + 1;

    assign coord_abus_tmp3 = {up_left_addr_tmp3,up_right_addr_tmp,low_left_addr_tmp,low_right_addr_tmp,dec_x_tmp3,dec_y_tmp3,coord_first_tmp3,coord_last_tmp3,pad_flag_d3}; 
    avr_rs #(.DW(117)) u3_avr_rs(
        .m_data      (coord_abus_tmp3     ),
        .m_valid     (coord_valid_tmp3    ),
        .m_ready     (coord_ready_tmp3    ),

        .s_data      (coord_abus          ),
        .s_valid     (coord_valid         ),
        .s_ready     (coord_ready         ),

        .clk         (ddr_clk             ),
        .rst_n       (~ddr_clk_rst        )
    );
    assign {up_left_addr,up_right_addr,low_left_addr,low_right_addr,dec_x,dec_y,coord_first,coord_last,pad_flag_d4} = coord_abus;

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            coord_ready <= 1'd0;
        else if(ftmp_load_finish && coord_valid && ~coord_ready && arready && (mode[0]==1'b1) && (up_left_addr>=ftmp_load_from[23:3]) && (low_right_addr<=ftmp_load_to[23:3]))
            coord_ready <= 1'd1;
        else if(ftmp_load_finish && coord_valid && ~coord_ready && arready && (mode[0]==1'b0) && (up_left_addr>=ftmp_load_from[22:2]) && (low_right_addr<=ftmp_load_to[22:2]))
            coord_ready <= 1'd1;
        else    
            coord_ready <= 1'd0;
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            refresh_tmp <= 1'd0;
        else if(ftmp_load_finish && coord_valid)
            if((mode[0]==1'b1) && (up_left_addr>=ftmp_load_from[23:3]) && (low_right_addr<=ftmp_load_to[23:3]))
                refresh_tmp <= 1'd0;
            else if((mode[0]==1'b0) && (up_left_addr>=ftmp_load_from[22:2]) && (low_right_addr<=ftmp_load_to[22:2]))
                refresh_tmp <= 1'd0;
            else    
                refresh_tmp <= 1'd1;
        else
            refresh_tmp <= 1'd0;        
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            refresh_tmp_d1 <= 1'd0;
        else
            refresh_tmp_d1 <= refresh_tmp;        
    end

    assign refresh_flag = refresh_tmp & ~refresh_tmp_d1;

    //assign refresh_addr_base = refresh_flag ? {9'b0,up_left_addr[20:4],6'b0} : 32'h0;
    assign refresh_addr_base = refresh_flag ? (mode[0] ? {8'b0,up_left_addr[20:3],6'b0} : {9'b0,up_left_addr[20:4],6'b0}) : 32'h0;

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            u_tmp <= 'd0;
        else if(mode[1] & coord_valid & coord_ready)
            u_tmp <= 16'd0; 
        else if(coord_valid & coord_ready)
            u_tmp <= {1'b0,dec_x};
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            u_1_tmp <= 'd0;
        else if(mode[1] & coord_valid & coord_ready)
            u_1_tmp <= 16'h8000;
        else if(coord_valid & coord_ready)
            u_1_tmp <= 16'h8000- {1'b0,dec_x};
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            v_tmp <= 'd0;
        else if(mode[1] & coord_valid & coord_ready)
            v_tmp <= 16'd0;
        else if(coord_valid & coord_ready)
            v_tmp <= {1'b0,dec_y};
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            v_1_tmp <= 'd0;
        else if(mode[1] & coord_valid & coord_ready)
            v_1_tmp <= 16'h8000;
        else if(coord_valid & coord_ready)
            v_1_tmp <= 16'h8000- {1'b0,dec_y};
    end  

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            pad_flag_d5 <= 1'd0;
        else if(coord_valid & coord_ready)
            pad_flag_d5 <= pad_flag_d4;
    end  

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            araddr_offset_0 <= 'd0;
        else if(mode[0] & coord_valid & coord_ready)
            araddr_offset_0 <= up_left_addr  - ftmp_load_from[22:3];
        else if(coord_valid & coord_ready)
            araddr_offset_0 <= up_left_addr  - ftmp_load_from[22:2];
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            araddr_offset_1 <= 'd0;
        else if(mode[0] & coord_valid & coord_ready)
            araddr_offset_1 <= up_right_addr - ftmp_load_from[22:3];
        else if(coord_valid & coord_ready)
            araddr_offset_1 <= up_right_addr - ftmp_load_from[22:2];
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            araddr_offset_2 <= 'd0;
        else if(mode[0] & coord_valid & coord_ready)
            araddr_offset_2 <= low_left_addr - ftmp_load_from[22:3];
        else if(coord_valid & coord_ready)
            araddr_offset_2 <= low_left_addr - ftmp_load_from[22:2];
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            araddr_offset_3 <= 'd0;
        else if(mode[0] & coord_valid & coord_ready)
            araddr_offset_3 <= low_right_addr - ftmp_load_from[22:3];
        else if(coord_valid & coord_ready)
            araddr_offset_3 <= low_right_addr - ftmp_load_from[22:2];
    end

    assign araddr_0 = mode[0] ? araddr_offset_0[13:3] : araddr_offset_0[13:4];
    assign index_0  = mode[0] ? {araddr_offset_0[3:0],3'b0} : {araddr_offset_0[3:0],2'b0};  //byte 
    assign araddr_1 = mode[0] ? araddr_offset_1[13:3] : araddr_offset_1[13:4];
    assign index_1  = mode[0] ? {araddr_offset_1[3:0],3'b0} : {araddr_offset_1[3:0],2'b0};     
    assign araddr_2 = mode[0] ? araddr_offset_2[13:3] : araddr_offset_2[13:4];
    assign index_2  = mode[0] ? {araddr_offset_2[3:0],3'b0} : {araddr_offset_2[3:0],2'b0}; 
    assign araddr_3 = mode[0] ? araddr_offset_3[13:3] : araddr_offset_3[13:4];
    assign index_3  = mode[0] ? {araddr_offset_3[3:0],3'b0} : {araddr_offset_3[3:0],2'b0};     

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            arfirst <= 1'd0;
        else if(coord_valid & coord_ready & coord_first)
            arfirst <= 1'd1;
        else if(arready) 
            arfirst <= 1'd0;
    end 

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            arlast <= 1'd0;
        else if(coord_valid & coord_ready & coord_last)
            arlast <= 1'd1;
        else if(arready) 
            arlast <= 1'd0;
    end 

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            arvalid <= 1'd0;
        else if(coord_valid & coord_ready)
            arvalid <= 1'b1;
        else if(arready)
            arvalid <= 1'd0;
    end 

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            index_0_1 <= 6'd0;
        else if(arvalid & arready)
            index_0_1 <= index_0;
    end 

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            index_1_1 <= 6'd0;
        else if(arvalid & arready)
            index_1_1 <= index_1;
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            index_2_1 <= 6'd0;
        else if(arvalid & arready)
            index_2_1 <= index_2;
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            index_3_1 <= 6'd0;
        else if(arvalid & arready)
            index_3_1 <= index_3;
    end        
    genvar i;
    generate 
        for(i=0;i<4;i=i+1) begin
            assign up_left_tmp[i*16+:16]   = (mode[2] && pad_flag_d5) ?  mode[18:3] : (mode[0] ? rdata_0[index_0_1*8+i*16+:16] : {{8{rdata_0[index_0_1*8+i*8+7]}},rdata_0[index_0_1*8+i*8+:8]});
            assign up_right_tmp[i*16+:16]  = (mode[2] && pad_flag_d5) ?  mode[18:3] : (mode[0] ? rdata_1[index_1_1*8+i*16+:16] : {{8{rdata_1[index_1_1*8+i*8+7]}},rdata_1[index_1_1*8+i*8+:8]});
            assign low_left_tmp[i*16+:16]  = (mode[2] && pad_flag_d5) ?  mode[18:3] : (mode[0] ? rdata_2[index_2_1*8+i*16+:16] : {{8{rdata_2[index_2_1*8+i*8+7]}},rdata_2[index_2_1*8+i*8+:8]});
            assign low_right_tmp[i*16+:16] = (mode[2] && pad_flag_d5) ?  mode[18:3] : (mode[0] ? rdata_3[index_3_1*8+i*16+:16] : {{8{rdata_3[index_3_1*8+i*8+7]}},rdata_3[index_3_1*8+i*8+:8]});
        end
    endgenerate

    assign m_valid  = rvalid_0;
    assign m_first  = rfirst_0;
    assign m_last   = rlast_0 ;
    assign rready_0 = m_ready ;
    assign rready_1 = m_ready ;
    assign rready_2 = m_ready ;
    assign rready_3 = m_ready ;   

    remap_bram #(.BAW(BAW), .DW(DW)) u0_remap_bram(     
        .awaddr          (ftmp_load_addr        ),   
        .awdata          (ftmp_load_data        ),
        .awvalid         (ftmp_load_valid       ),
        .awready         (ftmp_load_ready       ),

        .araddr_0        (araddr_0              ),
        .arfirst_0       (arfirst               ),
        .arlast_0        (arlast                ),
        .arvalid_0       (arvalid               ),
        .arready_0       (arready               ),
        .rdata_0         (rdata_0               ),
        .rfirst_0        (rfirst_0              ),
        .rlast_0         (rlast_0               ),
        .rvalid_0        (rvalid_0              ),
        .rready_0        (rready_0              ),

        .araddr_1        (araddr_1              ),
        .arfirst_1       (                      ),
        .arlast_1        (                      ),        
        .arvalid_1       (arvalid               ),
        .arready_1       (                      ),
        .rdata_1         (rdata_1               ),
        .rfirst_1        (                      ),
        .rlast_1         (                      ),
        .rvalid_1        (                      ),
        .rready_1        (rready_1              ),

        .ddr_clk         (ddr_clk               ),
        .ddr_clk_rst     (ddr_clk_rst           )    
    );

    remap_bram #(.BAW(BAW), .DW(DW)) u1_remap_bram(     
        .awaddr          (ftmp_load_addr        ),   
        .awdata          (ftmp_load_data        ),
        .awvalid         (ftmp_load_valid       ),
        .awready         (                      ),

        .araddr_0        (araddr_2              ),
        .arfirst_0       (                      ),
        .arlast_0        (                      ),
        .arvalid_0       (arvalid               ),
        .arready_0       (                      ),
        .rdata_0         (rdata_2               ),
        .rfirst_0        (                      ),
        .rlast_0         (                      ),
        .rvalid_0        (                      ),
        .rready_0        (rready_2              ),

        .araddr_1        (araddr_3              ),
        .arfirst_1       (                      ),
        .arlast_1        (                      ),        
        .arvalid_1       (arvalid               ),
        .arready_1       (                      ),
        .rdata_1         (rdata_3               ),
        .rfirst_1        (                      ),
        .rlast_1         (                      ),
        .rvalid_1        (                      ),
        .rready_1        (rready_3              ),

        .ddr_clk         (ddr_clk               ),
        .ddr_clk_rst     (ddr_clk_rst           )    
    );

    assign m_bus = {up_left_tmp,up_right_tmp,low_left_tmp,low_right_tmp,u_tmp,v_tmp,u_1_tmp,v_1_tmp,m_first,m_last};
    avr_rb #(.DW(64*4+16*4+2)) u0_avr_rb(
        .m_rdata        (m_bus          ),//I
        .m_rvalid       (m_valid        ),//I
        .m_arready      (m_ready        ),//O

        .s_rdata        (s_bus          ),//O
        .s_rvalid       (bilinear_valid ),//O
        .s_rready       (bilinear_ready ),//I

        .clk            (ddr_clk        ),
        .rst_n          (~ddr_clk_rst   )
    );
    assign {up_left,up_right,low_left,low_right,u,v,u_1,v_1,bilinear_first,bilinear_last} = s_bus;
endmodule