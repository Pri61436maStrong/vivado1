//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : segpost_top.sv
// Author        : SongYH
// Project       : 
// Create Date   : 2024.01.04
// Description   : 
// -  seg post control, axi-lite interfaceS
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module segpost_top(
    // ======== slave axi lite interface ========S
    input                          gp_clk        ,
    input                          gp_rst_n      ,
    mna_gp_ww_itf.slave            gpx           ,
    // ======== master axi lite interface ========
    input                          ddr_clk       ,
    input                          ddr_rst       ,
    mna_ddr_rd_itf.master          segpost_ddr_rd, 
    output                         interrupt_valid,
    input                          interrupt_ready,
    // ============= HP interface ================
    input                          hp_clk        ,
    input                          hp_rst        ,
    mna_hp_std_itf.master          segpost_hp_itf,
    input                          hp_bvalid     ,
    input                          hp_bready         
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
reg                      hp_awdone    ;
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
reg                      hp_awdone_req;
wire                     post_start_cross;
wire                     hp_awdone_tmp;
wire                     segpost_done_d0;
reg                      segpost_done_d1;
reg                      hp_awdone_d0 ;   
wire                     hp_awdone_cross;       
wire                     hp_b_done    ;           

assign rst = ddr_rst || soft_rst;
assign segpost_ddr_rd.rready = mode ? (rddr_rready && conf_wready && idx_wready0 && idx_wready1) : rddr_rready;

segpost_ctrl #(.AW(32))  segpost_ctrl_u0(
    .S_AXI_ACLK         (gp_clk            ),
    .S_AXI_ARESETN      (gp_rst_n          ),

    .S_AXI_AWWADDR      (gpx.awwaddr       ),
    .S_AXI_AWWDATA      (gpx.awwdata       ),
    .S_AXI_AWWVALID     (gpx.awwvalid      ),
    .S_AXI_AWWREADY     (gpx.awwready      ),

    .S_AXI_ARADDR       (gpx.araddr        ),
    .S_AXI_ARVALID      (gpx.arvalid       ),
    .S_AXI_ARREADY      (gpx.arready       ),

    .S_AXI_RDATA        (gpx.rdata         ),
    .S_AXI_RVALID       (gpx.rvalid        ),
    .S_AXI_RREADY       (gpx.rready        ),

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
    .interrupt_valid    (interrupt_valid   ),
    .interrupt_ready    (interrupt_ready   ),
    
    .hp_clk             (hp_clk            ),
    .hp_rst             (hp_rst            ),

    .ddr_clk            (ddr_clk           ),
    .ddr_rst            (ddr_rst           )

    );

argmax ag_u0(
    .single             (src_xsize[0]&&src_ysize[0]),
    .post_start         (post_start            ),
    .post_done_sts      (post_done_sts         ),
    .pl_ddr_base        (arbase                ),
    .addr_num           (ar_addr_num           ),
    .pause_num          (src_xsize             ),
    .ct_size            (ct_size[11:0]         ),
    .surface_stride     (ct_addr_step          ),
    .data_type          (data_type             ),
    .srcy               (src_ysize             ),

    .mode               (mode                  ),

    .tile_next          (tile_next             ),
    .srcline_next       (line_next             ),
    .sfifo_pfull        (sfifo_pfull           ),
    
    .rddr_araddr        (segpost_ddr_rd.araddr ),
    .rddr_arinfo        (segpost_ddr_rd.arinfo ),
    .rddr_arvalid       (segpost_ddr_rd.arvalid),
    .rddr_arready       (segpost_ddr_rd.arready),

    .rddr_rdata         (segpost_ddr_rd.rdata  ),
    .rddr_rinfo         (segpost_ddr_rd.rinfo  ),
    .rddr_rvalid        (segpost_ddr_rd.rvalid ),
    .rddr_rready        (rddr_rready           ),

    .minfo              (arg_minfo             ),
    .mvalid0            (arg_mvalid0           ),
    .ob_ready0          (arg_mready0           ),
    .idx_ready0         (idx_wready0           ),
    .maxidx0            (arg_maxidx0           ),

    .mvalid1            (arg_mvalid1           ),
    .ob_ready1          (arg_mready1           ),
    .idx_ready1         (idx_wready1           ),
    .maxidx1            (arg_maxidx1           ),

    .clk                (ddr_clk               ),
    .rst                (rst                   )
);

upsample us_u0(
    .post_start         (post_start           ),
    .dstw               (dst_xsize[15:0]      ),
    .dsth               (dst_ysize[15:0]      ),
    .srcw               (src_xsize[15:0]      ),
    .srch               (src_ysize[15:0]      ),
    .scalew             (src_xstep            ),
    .scaleh             (src_ystep            ),
    .ct_size            (ct_size              ),
    .basecoordx         (src_xbase            ),
    .basecoordy         (src_ybase            ),
    .dstw_tile          (dstw_tile            ),
    .data_type          (data_type            ),
    .us_done            (us_done_sts          ),
    .sfifo_pfull        (sfifo_pfull          ),
    
    .status0            (status0              ),  
    .status1            (status1              ),
    .mode               (mode                 ),

    .tile_next          (tile_next            ),
    .line_next          (line_next            ),

    .conf_ddrdata       (segpost_ddr_rd.rdata ),
    .conf_wvalid        (segpost_ddr_rd.rvalid),
    .conf_winfo         (segpost_ddr_rd.rinfo ),
    .conf_wready        (conf_wready          ),

    .idx_wvalid0        (arg_mvalid0          ),
    .idx_wready0        (idx_wready0          ),
    .idx_wdata0         (arg_maxidx0          ),
    
    .idx_wvalid1        (arg_mvalid1          ),
    .idx_wready1        (idx_wready1          ),
    .idx_wdata1         (arg_maxidx1          ),

    .mvalid0            (us_mvalid0           ),
    .mready0            (us_mready0           ),
    .maxidx0            (us_maxidx0           ),
    .mvalid1            (us_mvalid1           ),
    .mready1            (us_mready1           ),
    .maxidx1            (us_maxidx1           ),
    .us_minfo           (us_minfo             ),//[7:2] rfu [1] idx1 last [0] idx0 last 

    .clk                (ddr_clk              ),
    .rst                (rst                  )
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

    .hhp_awdone         (hp_awdone_tmp    ),

    .hhp_wdma_wdata     (segpost_hp_itf.wdata  ),
    .hhp_wdma_wvalid    (segpost_hp_itf.wvalid ),
    .hhp_wdma_wready    (segpost_hp_itf.wready ),
    .hhp_wdma_awaddr    (segpost_hp_itf.awaddr ),
    .hhp_wdma_awvalid   (segpost_hp_itf.awvalid),
    .hhp_wdma_awready   (segpost_hp_itf.awready),

    .clk                (ddr_clk          ),
    .hp_clk             (hp_clk           ),
    .hp_rst             (hp_rst           ),
    .rst                (rst              )
);

//pulse_cross pulse_cross_u0(
//    .a2    (post_start_cross  ),
//    .clk2  (hp_clk            ),
//    .rst2  (hp_rst            ),    
//
//    .a1    (post_start        ),
//    .clk1  (ddr_clk           ),
//    .rst1  (rst               )
//);
     
always @( posedge hp_clk)
begin
    if(hp_rst)
        hp_awdone_req <= 1'b0;
    else if(post_start)
        hp_awdone_req <= 1'b0;
    else if(hp_awdone_tmp)
        hp_awdone_req <= 1'b1;            
end

gen_b_done u0_segpost_b_done (
    .dma_start      (post_start            ),
    .hp_awvalid     (segpost_hp_itf.awvalid),
    .hp_awready     (segpost_hp_itf.awready),    
    .hp_bvalid      (hp_bvalid             ),
    .hp_bready      (hp_bready             ),
    .hp_b_done      (hp_b_done             ),
    .hp_clk         (hp_clk                ),
    .hp_rst         (hp_rst                )
);

assign segpost_done_d0 = hp_awdone_req & hp_b_done;

always @( posedge hp_clk)
begin
    if(hp_rst)
        segpost_done_d1 <= 1'b0;
    else
        segpost_done_d1 <= segpost_done_d0;           
end    

assign hp_awdone_cross = segpost_done_d0 & (~segpost_done_d1);

always@(posedge ddr_clk) begin
    if(rst) begin
        hp_awdone_d0 <= 'd0;
        hp_awdone    <= 'd0;
    end
    else begin
        hp_awdone_d0 <= hp_awdone_cross;
        hp_awdone    <= hp_awdone_d0;
    end
end
endmodule
