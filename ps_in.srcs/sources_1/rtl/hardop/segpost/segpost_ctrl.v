//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : segpost_ctrl.v
// Author        : SongYH
// Project       : 
// Create Date   : 2023.10.29
// Description   : 
// - argmax , axi-lite interface
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module segpost_ctrl #(parameter AW=32)(
    input                          S_AXI_ACLK    ,
    input                          S_AXI_ARESETN ,

    // ======== slave axi lite interface =========
    input       [ 9 : 0]           S_AXI_AWWADDR ,
    input       [31 : 0]           S_AXI_AWWDATA ,
    input                          S_AXI_AWWVALID,
    output                         S_AXI_AWWREADY,
                
    input       [ 9 : 0]           S_AXI_ARADDR  ,
    input                          S_AXI_ARVALID ,
    output                         S_AXI_ARREADY ,
        
    output reg  [31 : 0]           S_AXI_RDATA   ,
    output reg                     S_AXI_RVALID  ,
    input                          S_AXI_RREADY  ,

    // ======== module work signals =============
    output reg  [  AW-1 : 0 ]      src_xbase    , // basecoordx
    output reg  [  AW-1 : 0 ]      src_ybase    , // basecoordy
    output reg  [  AW-1 : 0 ]      dst_xsize    , // dsth       
    output reg  [  AW-1 : 0 ]      dst_ysize    , // dstw  
    output reg  [  AW-1 : 0 ]      src_xsize    , // srch       
    output reg  [  AW-1 : 0 ]      src_ysize    , // srcw 
    output reg  [  AW-1 : 0 ]      src_xstep    , // scaleh 
    output reg  [  AW-1 : 0 ]      src_ystep    , // scalew 
    output reg  [  AW-1 : 0 ]      dstw_tile    ,

    output reg  [  AW-1 : 0 ]      arbase       , // arbase 
    output reg  [  AW-1 : 0 ]      awbase       , // swbase
    output reg  [  AW-1 : 0 ]      last_awaddr  , // swbase
    output reg  [  AW-1 : 0 ]      ct_addr_step , // surface_stride
    output reg  [    15 : 0 ]      ct_size      , // ct
    output reg                     data_type    , // data_type
    output reg                     mode         , // fast
    output reg                     soft_rst     , // soft_reset
    output                         post_start   , // post_start
    output      [  AW-1 : 0 ]      ar_addr_num  , // addr_num

    input                          awdone       , // awdone

    input       [31 : 0]           status0      ,
    input       [31 : 0]           status1      ,
    output reg                     interrupt_valid,
    input                          interrupt_ready,

    
    input                          hp_clk       ,
    input                          hp_rst       ,

    input                          ddr_clk      ,
    input                          ddr_rst
    );

    wire          slv_reg_wren                  ;
    wire          slv_reg_rden                  ;
    reg           segpost_start                 ;
    wire          awdone_cross                  ;
    reg           segpost_done                  ;
    wire [31: 0]  segpost_version               ;
    wire [31: 0]  addr_num                      ;
    reg  [31: 0]  test                          ;
    reg  [31: 0]  time_cnt                      ;
    reg           segpost_running               ;
    reg           soft_rst_d0                   ;
    reg           soft_rst_d1                   ;

    wire [31: 0]  segpost_start_gp_domain       ;
    wire [31: 0]  segpost_done_gp_domain        ;
    wire [31: 0]  segpost_version_gp_domain     ;
    wire [31: 0]  test_gp_domain                ;
    wire [31: 0]  time_cnt_gp_domain            ;
    wire [31: 0]  soft_rst_gp_domain            ;
    wire [31: 0]  status0_gp_domain             ; 
    wire [31: 0]  src_xbase_gp_domain           ;
    wire [31: 0]  src_ybase_gp_domain           ;
    wire [31: 0]  dst_xsize_gp_domain           ;
    wire [31: 0]  dst_ysize_gp_domain           ;
    wire [31: 0]  src_xsize_gp_domain           ;
    wire [31: 0]  src_ysize_gp_domain           ;
    wire [31: 0]  dstw_tile_gp_domain           ;
    wire [31: 0]  src_xstep_gp_domain           ;
    wire [31: 0]  src_ystep_gp_domain           ;
    wire [31: 0]  ct_size_gp_domain             ;
    wire [31: 0]  arbase_gp_domain              ;
    wire [31: 0]  awbase_gp_domain              ;
    wire [31: 0]  last_awaddr_gp_domain         ;
    wire [31: 0]  status1_gp_domain             ;
    wire [31: 0]  ct_addr_step_gp_domain        ;
    wire [31: 0]  data_type_gp_domain           ;
    wire [31: 0]  mode_gp_domain                ;

    
    wire [31: 0]  dst_x                         ;
    wire [31: 0]  dst_y                         ;
    wire          coord_last                    ;
    wire [15: 0]  ct                            ;      
    //interrupt
    reg           done_dly                      ;
    wire          interrupt_pulse               ;



    //-- AXI-lite Write Register Control --
    assign dst_x = status0[15:0]                           ;
    assign dst_y = status0[31:16]                          ;
    assign coord_last = status1[0]                         ;
    assign ct = status1[16:1]                              ;
    assign S_AXI_AWWREADY = 1'b1                           ;
    assign addr_num = (src_xsize[15:0]) * (src_ysize[15:0]) * ct_size;
    //assign ar_addr_num = addr_num[31:1] + addr_num[0]; //origin version
    assign ar_addr_num = (src_xsize[0] && src_ysize[0] ) ? (addr_num):(addr_num[31:1] + addr_num[0]);

    assign slv_reg_wren = S_AXI_AWWREADY && S_AXI_AWWVALID;
    assign S_AXI_ARREADY = 1'b1;

    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            S_AXI_RVALID <= 0;
        else if (S_AXI_ARREADY && S_AXI_ARVALID)
            S_AXI_RVALID <= 1'b1;
        else if (S_AXI_RREADY)
            S_AXI_RVALID <= 1'b0;
    end

    assign slv_reg_rden = S_AXI_ARREADY & S_AXI_ARVALID;

    //-- Registers File Definition --

    // 10'h000 : segpost start gp domain
    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            segpost_start <= 1'h0;
        else if (slv_reg_wren && S_AXI_AWWADDR[9:0]==10'h000)
            segpost_start <= S_AXI_AWWDATA[0];
        else 
            segpost_start <= 1'h0;
    end

    assign segpost_start_gp_domain = {31'd0,segpost_start};

    pulse_cross pulse_cross_u0(
    .a2   (post_start      ),
    .clk2 (ddr_clk         ),
    .rst2 (ddr_rst         ),

    .a1   (segpost_start   ),
    .clk1 (S_AXI_ACLK      ),
    .rst1 (~S_AXI_ARESETN  )
    );

    // 10'h004 : segpost done gp domain
    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            segpost_done <= 1'h0;
        else if (slv_reg_wren && S_AXI_AWWADDR[9:0]==10'h004 && S_AXI_AWWDATA == 32'd1)
            segpost_done <= 1'h0;
        else if (segpost_start)
            segpost_done <= 1'h0;
        else if (awdone_cross)
            segpost_done <= 1'h1;
    end

    pulse_cross pulse_cross_u1(
    .a2   (awdone_cross     ),
    .clk2 (S_AXI_ACLK       ),
    .rst2 (~S_AXI_ARESETN   ),

    .a1   (awdone           ),
    .clk1 (hp_clk           ),
    .rst1 (hp_rst           )
    );

    assign segpost_done_gp_domain = {31'h0,segpost_done};

    //interrupt
    always @( posedge S_AXI_ACLK ) begin
        if ( S_AXI_ARESETN == 1'b0 )
            done_dly <= 1'b0    ;
        else
            done_dly <= segpost_done;
    end
    always @( posedge S_AXI_ACLK ) begin
        if ( S_AXI_ARESETN == 1'b0 )
            interrupt_valid <= 1'b0;
        else if(interrupt_pulse)
            interrupt_valid <= 1'b1;
        else if(interrupt_ready)
            interrupt_valid <= 1'b0;
    end
    assign interrupt_pulse = segpost_done & ~done_dly;

    // 10'h008 : segpost version gp domain
    assign segpost_version = 32'h23103000;
    assign segpost_version_gp_domain = segpost_version;

    // 10'h00C : test_gp_domain
    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            test <= 32'h0;
        else if (slv_reg_wren && S_AXI_AWWADDR[9:0]==10'h00C)
            test <= S_AXI_AWWDATA;
    end
    assign test_gp_domain = test;

    // 10'h010 : time_cnt_gp_domain
    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            time_cnt <= 32'h0;
        else if (slv_reg_wren && S_AXI_AWWADDR[9:0]==10'h010 && S_AXI_AWWDATA == 32'd0 )
            time_cnt <= 32'h0;
        else if (segpost_start)
            time_cnt <= 32'h0;
        else if (segpost_running)
            time_cnt <= time_cnt + 1'b1;
    end
    assign time_cnt_gp_domain = time_cnt;

    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            segpost_running <= 1'b0;
        else if (segpost_start)
            segpost_running <= 1'b1;
        else if (awdone_cross)
            segpost_running <= 1'b0;
    end

    // 10'h014 : soft_rst_gp_domain
    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            soft_rst_d0 <= 1'h0;
        else if (slv_reg_wren && S_AXI_AWWADDR[9:0]==10'h014 )
            soft_rst_d0 <= S_AXI_AWWDATA[0];
    end
    assign soft_rst_gp_domain = {31'd0,soft_rst_d0};

    always @(posedge ddr_clk) begin
        soft_rst_d1 <= soft_rst_d0;
        soft_rst    <= soft_rst_d1;
    end

    // 10'h018 : status0_gp_domain
    assign status0_gp_domain[15:0] = dst_x;
    assign status0_gp_domain[31:16] = dst_y;

    // 10'h01C : src_xbase_gp_domain
    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            src_xbase <= 31'h0;
        else if (slv_reg_wren && S_AXI_AWWADDR[9:0]==10'h01C)
            src_xbase <= S_AXI_AWWDATA;
    end
    assign src_xbase_gp_domain = src_xbase;

    // 10'h020 : src_xbase_gp_domain
    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            src_ybase <= 31'h0;
        else if (slv_reg_wren && S_AXI_AWWADDR[9:0]==10'h020)
            src_ybase <= S_AXI_AWWDATA;
    end
    assign src_ybase_gp_domain = src_ybase;

    // 10'h024 : dst_xsize_gp_domain
    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            dst_xsize <= 31'h0;
        else if (slv_reg_wren && S_AXI_AWWADDR[9:0]==10'h024)
            dst_xsize <= S_AXI_AWWDATA;
    end
    assign dst_xsize_gp_domain = dst_xsize;

    // 10'h028 : dst_ysize_gp_domain
    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            dst_ysize <= 31'h0;
        else if (slv_reg_wren && S_AXI_AWWADDR[9:0]==10'h028)
            dst_ysize <= S_AXI_AWWDATA;
    end
    assign dst_ysize_gp_domain = dst_ysize;

    // 10'h02C : src_xsize_gp_domain
    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            src_xsize <= 31'h0;
        else if (slv_reg_wren && S_AXI_AWWADDR[9:0]==10'h02C)
            src_xsize <= S_AXI_AWWDATA;
    end
    assign src_xsize_gp_domain = src_xsize;

    // 10'h030 : src_ysize_gp_domain
    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            src_ysize <= 31'h0;
        else if (slv_reg_wren && S_AXI_AWWADDR[9:0]==10'h030)
            src_ysize <= S_AXI_AWWDATA;
    end
    assign src_ysize_gp_domain = src_ysize;

    // 10'h034 : src_xstep_gp_domain
    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            src_xstep <= 31'h0;
        else if (slv_reg_wren && S_AXI_AWWADDR[9:0]==10'h034)
            src_xstep <= S_AXI_AWWDATA;
    end
    assign src_xstep_gp_domain = src_xstep;

    // 10'h038 : src_ystep_gp_domain
    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            src_ystep <= 31'h0;
        else if (slv_reg_wren && S_AXI_AWWADDR[9:0]==10'h038)
            src_ystep <= S_AXI_AWWDATA;
    end
    assign src_ystep_gp_domain = src_ystep;

    // 10'h03C : ct_size_gp_domain
    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            ct_size <= 31'h0;
        else if (slv_reg_wren && S_AXI_AWWADDR[9:0]==10'h03C)
            ct_size <= S_AXI_AWWDATA[15:0];
    end
    assign ct_size_gp_domain = {16'd0,ct_size};

    // 10'h040 : arbase_gp_domain
    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            arbase <= 31'h0;
        else if (slv_reg_wren && S_AXI_AWWADDR[9:0]==10'h040)
            arbase <= S_AXI_AWWDATA;
    end
    assign arbase_gp_domain = arbase;

    // 10'h044 : awbase_gp_domain
    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            awbase <= 31'h0;
        else if (slv_reg_wren && S_AXI_AWWADDR[9:0]==10'h044)
            awbase <= S_AXI_AWWDATA;
    end
    assign awbase_gp_domain = awbase;

    // 10'h048 : lase_awaddr_gp_domain
    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            last_awaddr <= 31'h0;
        else if (slv_reg_wren && S_AXI_AWWADDR[9:0]==10'h048)
            last_awaddr <= S_AXI_AWWDATA;
    end
    assign last_awaddr_gp_domain = last_awaddr;

    // 10'h04C : status1_gp_domain
    assign status1_gp_domain[0] = coord_last;
    assign status1_gp_domain[16:1] = ct;
    assign status1_gp_domain[19:17] = 3'b000;
    assign status1_gp_domain[20] = segpost_running;
    assign status1_gp_domain[31:21] = 11'h0;

    // 10'h050 : ct_addr_step_gp_domain
    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            ct_addr_step <= 31'h0;
        else if (slv_reg_wren && S_AXI_AWWADDR[9:0]==10'h050)
            ct_addr_step <= S_AXI_AWWDATA;
    end
    assign ct_addr_step_gp_domain = ct_addr_step;

    // 10'h054 : data_type
    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            data_type <= 31'h0;
        else if (slv_reg_wren && S_AXI_AWWADDR[9:0]==10'h054)
            data_type <= S_AXI_AWWDATA[0];
    end
    assign data_type_gp_domain = {31'd0,data_type};

    // 10'h058 : data_type
    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            mode <= 31'h0;
        else if (slv_reg_wren && S_AXI_AWWADDR[9:0]==10'h058)
            mode <= S_AXI_AWWDATA[0];
    end
    assign mode_gp_domain = {31'd0,mode};

    // 10'h05C : dstw_tile

    always @(posedge S_AXI_ACLK ) begin
        if( S_AXI_ARESETN == 1'b0)
            dstw_tile <= 31'h0;
        else if (slv_reg_wren && S_AXI_AWWADDR[9:0]==10'h05C)
            dstw_tile <= S_AXI_AWWDATA;
    end
    assign dstw_tile_gp_domain = dstw_tile;

    // gp read reg
    always @(posedge S_AXI_ACLK ) begin
        if ( S_AXI_ARESETN == 1'b0)
            S_AXI_RDATA <= 0;
        else if (slv_reg_rden)
        case (S_AXI_ARADDR[9:0])
            10'h000: S_AXI_RDATA <= segpost_start_gp_domain       ;
            10'h004: S_AXI_RDATA <= segpost_done_gp_domain        ;
            10'h008: S_AXI_RDATA <= segpost_version_gp_domain     ;
            10'h00C: S_AXI_RDATA <= test_gp_domain                ;
            10'h010: S_AXI_RDATA <= time_cnt_gp_domain            ;
            10'h014: S_AXI_RDATA <= soft_rst_gp_domain            ;
            10'h018: S_AXI_RDATA <= status0_gp_domain             ;
            10'h01C: S_AXI_RDATA <= src_xbase_gp_domain           ;
            10'h020: S_AXI_RDATA <= src_ybase_gp_domain           ;
            10'h024: S_AXI_RDATA <= dst_xsize_gp_domain           ;
            10'h028: S_AXI_RDATA <= dst_ysize_gp_domain           ;
            10'h02C: S_AXI_RDATA <= src_xsize_gp_domain           ;
            10'h030: S_AXI_RDATA <= src_ysize_gp_domain           ;
            10'h034: S_AXI_RDATA <= src_xstep_gp_domain           ;
            10'h038: S_AXI_RDATA <= src_ystep_gp_domain           ;
            10'h03C: S_AXI_RDATA <= ct_size_gp_domain             ;
            10'h040: S_AXI_RDATA <= arbase_gp_domain              ;
            10'h044: S_AXI_RDATA <= awbase_gp_domain              ;
            10'h048: S_AXI_RDATA <= last_awaddr_gp_domain         ;
            10'h04C: S_AXI_RDATA <= status1_gp_domain             ;
            10'h050: S_AXI_RDATA <= ct_addr_step_gp_domain        ;
            10'h054: S_AXI_RDATA <= data_type_gp_domain           ;
            10'h058: S_AXI_RDATA <= mode_gp_domain                ;
            10'h05C: S_AXI_RDATA <= dstw_tile_gp_domain           ;
            default: S_AXI_RDATA <= 32'h0;
        endcase
    end



endmodule
