//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : segpost_top.v
// Author        : SongYH
// Project       : 
// Create Date   : 2023.10.29
// Description   : 
// -  seg post control, axi-lite interface
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================


module segpost_top(
    // ======== slave axi lite interface ========
    input                          S_AXI_ACLK    ,
    input                          S_AXI_ARESETN ,
        
    input       [31 : 0]           S_AXI_AWWADDR ,
    input       [31 : 0]           S_AXI_AWWDATA ,
    input                          S_AXI_AWWVALID,
    output                         S_AXI_AWWREADY,
                
    input       [31 : 0]           S_AXI_ARADDR  ,
    input                          S_AXI_ARVALID ,
    output                         S_AXI_ARREADY ,
        
    output      [31 : 0]           S_AXI_RDATA   ,
    output                         S_AXI_RVALID  ,
    input                          S_AXI_RREADY  ,

    // ======== master axi lite interface ========
    input                          M_AXI_ACLK    ,
    input                          M_AXI_ARESETN ,

    output      [31 : 0]           M_AXI_ARADDR  ,
    output      [31 : 0]           M_AXI_ARINFO  ,
    output                         M_AXI_ARVALID ,
    input                          M_AXI_ARREADY ,

    input       [511: 0]           M_AXI_RDATA   ,
    input       [31 : 0]           M_AXI_RINFO   ,
    input                          M_AXI_RVALID  ,
    output                         M_AXI_RREADY  ,
    
    // ============= HP interface ================
    input                          hp_clk        ,
    input                          hp_rst        ,
    
    output     [63 : 0]            hp_wdata      ,
    output                         hp_wvalid     ,
    input                          hp_wready     ,

    output     [31 : 0]            hp_awaddr     ,
    output                         hp_awvalid    ,
    input                          hp_awready    ,

    // ======== debug signals ====================
    output                         hp_awdone     
    // ======== debug signals ====================
    ); 

wire                     rst          ;
// align corner 靠控制basecoordx实现   
wire  [    31 : 0 ]      src_xbase    ;
wire  [    31 : 0 ]      src_ybase    ;
wire  [    31 : 0 ]      dstw_tile    ;
wire  [    31 : 0 ]      dst_xsize    ;
wire  [    31 : 0 ]      dst_ysize    ;
wire  [    31 : 0 ]      src_xsize    ;
wire  [    31 : 0 ]      src_ysize    ;
wire  [    31 : 0 ]      src_xstep    ;
wire  [    31 : 0 ]      src_ystep    ;
wire  [    31 : 0 ]      arbase       ;
wire  [    31 : 0 ]      awbase       ;
wire  [    31 : 0 ]      last_awaddr  ;
wire  [    31 : 0 ]      ct_addr_step ;
wire  [    31 : 0 ]      ar_addr_num  ;
wire  [    15 : 0 ]      ct_size      ;
wire  [    31 : 0 ]      status0      ;
wire  [    31 : 0 ]      status1      ;
wire                     soft_rst     ;
wire                     post_start   ;
wire                     data_type    ;
wire                     mode         ;

wire                     tile_next    ;
wire                     line_next    ;

wire                     sfifo_pfull  ;
wire                     post_done_sts;
//wire       awdone;

wire                     rddr_rready  ;
wire                     arg_mvalid0  ; 
wire                     arg_mready0  ; 
wire  [     7 : 0 ]      arg_maxidx0  ; 
wire                     arg_mvalid1  ; 
wire                     arg_mready1  ; 
wire  [     7 : 0 ]      arg_maxidx1  ; 
wire  [    31 : 0 ]      arg_minfo    ; 

wire                     conf_wready  ; 
wire                     us_done_sts  ;
wire                     us_mvalid0   ;   
wire                     us_mready0   ;   
wire  [     7 : 0 ]      us_maxidx0   ;   
wire                     us_mvalid1   ;   
wire                     us_mready1   ;   
wire  [     7 : 0 ]      us_maxidx1   ; 
wire  [     7 : 0 ]      us_minfo     ;   
  
wire                     idx_wready0  ;
wire                     idx_wready1  ;

assign rst = ~M_AXI_ARESETN || soft_rst;
assign M_AXI_RREADY = mode ? (rddr_rready && conf_wready && idx_wready0 && idx_wready1) : rddr_rready;

segpost_ctrl #(.AW(32))  segpost_ctrl_u0(
    .S_AXI_ACLK         (S_AXI_ACLK        ),
    .S_AXI_ARESETN      (S_AXI_ARESETN     ),

    .S_AXI_AWWADDR      (S_AXI_AWWADDR     ),
    .S_AXI_AWWDATA      (S_AXI_AWWDATA     ),
    .S_AXI_AWWVALID     (S_AXI_AWWVALID    ),
    .S_AXI_AWWREADY     (S_AXI_AWWREADY    ),

    .S_AXI_ARADDR       (S_AXI_ARADDR      ),
    .S_AXI_ARVALID      (S_AXI_ARVALID     ),
    .S_AXI_ARREADY      (S_AXI_ARREADY     ),

    .S_AXI_RDATA        (S_AXI_RDATA       ),
    .S_AXI_RVALID       (S_AXI_RVALID      ),
    .S_AXI_RREADY       (S_AXI_RREADY      ),

    .src_xbase          (src_xbase         ),// basecoordx
    .src_ybase          (src_ybase         ),// basecoordy
    .dst_xsize          (dst_xsize         ),// dsth       
    .dst_ysize          (dst_ysize         ),// dstw  
    .src_xsize          (src_xsize         ),// srch       
    .src_ysize          (src_ysize         ),// srcw 
    .src_xstep          (src_xstep         ),// scaleh 
    .src_ystep          (src_ystep         ),// scalew 
    .dstw_tile          (dstw_tile         ),

    .arbase             (arbase            ),// arbase 
    .awbase             (awbase            ),// swbase
    .last_awaddr        (last_awaddr       ),// swbase
    .ct_addr_step       (ct_addr_step      ),// surface_stride
    .ar_addr_num        (ar_addr_num       ),// addr_num
    .ct_size            (ct_size           ),// ct
    .soft_rst           (soft_rst          ),// soft_reset
    .post_start         (post_start        ),// post_start
    .data_type          (data_type         ),// data_type
    .mode               (mode              ),// fast

    .awdone             (hp_awdone         ),// awdone

    .status0            (status0           ),
    .status1            (status1           ),
    
    .hp_clk             (hp_clk            ),
    .hp_rst             (hp_rst            ),

    .ddr_clk            (M_AXI_ACLK        ),
    .ddr_rst            (~M_AXI_ARESETN    )

    );

argmax ag_u0(
    .single             (src_xsize[0]&&src_ysize[0]),
    .post_start         (post_start       ),
    .post_done_sts      (post_done_sts    ),
    .pl_ddr_base        (arbase           ),
    .addr_num           (ar_addr_num      ),
    .pause_num          (src_xsize        ),
    .ct_size            (ct_size[11:0]    ),
    .surface_stride     (ct_addr_step     ),
    .data_type          (data_type        ),
    .srcy               (src_ysize        ),

    .mode               (mode             ),

    .tile_next          (tile_next        ),
    .srcline_next       (line_next        ),
    .sfifo_pfull        (sfifo_pfull      ),

    .rddr_araddr        (M_AXI_ARADDR     ),
    .rddr_arinfo        (M_AXI_ARINFO     ),
    .rddr_arvalid       (M_AXI_ARVALID    ),
    .rddr_arready       (M_AXI_ARREADY    ),

    .rddr_rdata         (M_AXI_RDATA      ),
    .rddr_rinfo         (M_AXI_RINFO      ),
    .rddr_rvalid        (M_AXI_RVALID     ),
    .rddr_rready        (rddr_rready      ),

    .minfo              (arg_minfo        ),
    .mvalid0            (arg_mvalid0      ),
    .ob_ready0          (arg_mready0      ),
    .idx_ready0         (idx_wready0      ),
    .maxidx0            (arg_maxidx0      ),

    .mvalid1            (arg_mvalid1      ),
    .ob_ready1          (arg_mready1      ),
    .idx_ready1         (idx_wready1      ),
    .maxidx1            (arg_maxidx1      ),

    .clk                (M_AXI_ACLK       ),
    .rst                (rst              )
);

upsample us_u0(
    .post_start         (post_start       ),
    .dstw               (dst_xsize[15:0]  ),
    .dsth               (dst_ysize[15:0]  ),
    .srcw               (src_xsize[15:0]  ),
    .srch               (src_ysize[15:0]  ),
    .scalew             (src_xstep        ),
    .scaleh             (src_ystep        ),
    .ct_size            (ct_size          ),
    .basecoordx         (src_xbase        ),
    .basecoordy         (src_ybase        ),
    .dstw_tile          (dstw_tile        ),
    .data_type          (data_type        ),
    .us_done            (us_done_sts      ),
    .sfifo_pfull        (sfifo_pfull      ),
    
    .status0            (status0          ),  
    .status1            (status1          ),
    .mode               (mode             ),

    .tile_next          (tile_next        ),
    .line_next          (line_next        ),

    .conf_ddrdata       (M_AXI_RDATA      ),
    .conf_wvalid        (M_AXI_RVALID     ),
    .conf_winfo         (M_AXI_RINFO      ),
    .conf_wready        (conf_wready      ),

    .idx_wvalid0        (arg_mvalid0      ),
    .idx_wready0        (idx_wready0      ),
    .idx_wdata0         (arg_maxidx0      ),
    
    .idx_wvalid1        (arg_mvalid1      ),
    .idx_wready1        (idx_wready1      ),
    .idx_wdata1         (arg_maxidx1      ),

    .mvalid0            (us_mvalid0       ),
    .mready0            (us_mready0       ),
    .maxidx0            (us_maxidx0       ),
    .mvalid1            (us_mvalid1       ),
    .mready1            (us_mready1       ),
    .maxidx1            (us_maxidx1       ),
    .us_minfo           (us_minfo         ),//[7:2] rfu [1] idx1 last [0] idx0 last 

    .clk                (M_AXI_ACLK       ),
    .rst                (rst              )
);

obuffer ob_u0(
    .single             (src_xsize[0]&&src_ysize[0]),
    .start              (post_start       ),
    .pre_done_sts       (us_done_sts || post_done_sts),
    .awbase             (awbase           ),
    .last_awaddr        (last_awaddr      ),
    .mode               (mode             ),

    .sfifo_pfull        (sfifo_pfull      ),

    .us_minfo           (us_minfo         ),
    .us_mvalid0         (us_mvalid0       ),
    .us_mready0         (us_mready0       ),
    .us_maxidx0         (us_maxidx0       ),

    .us_mvalid1         (us_mvalid1       ),
    .us_mready1         (us_mready1       ),
    .us_maxidx1         (us_maxidx1       ),


    .arg_minfo          (arg_minfo[7:0]   ),
    .arg_mvalid0        (arg_mvalid0      ),
    .arg_mready0        (arg_mready0      ),
    .arg_maxidx0        (arg_maxidx0      ),

    .arg_mvalid1        (arg_mvalid1      ),
    .arg_mready1        (arg_mready1      ),
    .arg_maxidx1        (arg_maxidx1      ),

    .hhp_awdone         (hp_awdone        ),

    .hhp_wdma_wdata     (hp_wdata         ),
    .hhp_wdma_wvalid    (hp_wvalid        ),
    .hhp_wdma_wready    (hp_wready        ),
    .hhp_wdma_awaddr    (hp_awaddr        ),
    .hhp_wdma_awvalid   (hp_awvalid       ),
    .hhp_wdma_awready   (hp_awready       ),

    .clk                (M_AXI_ACLK       ),
    .hp_clk             (hp_clk           ),
    .hp_rst             (hp_rst           ),
    .rst                (rst              )
);

endmodule
