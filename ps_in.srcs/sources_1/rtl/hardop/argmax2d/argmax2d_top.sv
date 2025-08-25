//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : argmax2d_top.v
// Author        : Xu Yun
// Project       : 
// Create Date   : 2024.05.09
// Description   : 
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//      2024.08.15    You Tianwei    add cu_size
//==============================================================================

module argmax2d_top #(parameter AW=32, DW=512, NDW=64, IFW=32) (     
    mna_gp_ww_itf.slave       argmax2d_gpx     ,
    mna_ddr_rd_itf.master     argmax2d_ddr_rd  ,
    mna_hp_std_itf.master     argmax2d_hp_itf  ,

    input                     hp_bvalid        ,
    input                     hp_bready        ,
    output                    interrupt_valid  ,
    input                     interrupt_ready  ,    

    input                     gp_clk           ,
    input                     gp_rst           ,
    input                     ddr_clk          ,
    input                     ddr_rst          ,
    input                     hp_clk           ,
    input                     hp_rst                   
);
    wire                     rst                  ;
    wire                     argmax2d_start       ;
    wire                     argmax2d_done        ;
    wire                     argmax2d_done_temp   ;
    wire                     argmax2d_soft_rst    ;
  
    wire  [     1 : 0 ]      arfifo_st            ;
    wire  [     1 : 0 ]      rfifo_st             ;
    wire  [     1 : 0 ]      awfifo_st            ;  
    
    wire  [  AW-1 : 0 ]      arbase               ;  
    wire  [  AW-1 : 0 ]      awbase               ;  
    wire  [  AW-1 : 0 ]      last_araddr          ;
    wire  [  AW-1 : 0 ]      last_awaddr          ;
    
    wire  [   19  : 0 ]      cu_araddr_num        ;// w*h*cu/64，假设可以整�??
    wire  [     2 : 0 ]      cu                   ;// 0~5, log2(cu_val)
    wire  [     4 : 0 ]      vld_cu_val           ;// (vld_c_val mod cu_val)-1 
    wire  [    25 : 0 ]      cu_size              ;//
    wire  [  NDW-1: 0 ]      cmp_awdata           ;
    wire                     cmp_awvalid          ;
    wire                     cmp_awready          ;

    wire                     hp_b_done            ;
    wire                     argmax2d_done_tmp    ;
    reg                      argmax2d_done_req    ;
    reg                      argmax2d_done_d1     ;
    wire                     argmax2d_start_cross ;
    wire                     argmax2d_done_d0     ;
    wire                     argmax2d_done_cross  ;    
    
    assign rst = argmax2d_soft_rst || ddr_rst;

    argmax2d_ctrl 
    #(
        .AW (AW )
    )
    u_argmax2d_ctrl(
        .gpx               (argmax2d_gpx        )    ,
        .argmax2d_start    (argmax2d_start      )    ,
        .argmax2d_done     (argmax2d_done_cross )    ,
        .argmax2d_soft_rst (argmax2d_soft_rst   )    ,
        .arfifo_st         (arfifo_st           )    ,
        .rfifo_st          (rfifo_st            )    ,
        .awfifo_st         (awfifo_st           )    ,
        .arbase            (arbase              )    ,
        .awbase            (awbase              )    ,
        .last_araddr       (last_araddr         )    ,
        .last_awaddr       (last_awaddr         )    ,
        .cu_araddr_num     (cu_araddr_num       )    ,
        .cu                (cu                  )    ,
        .vld_cu_val        (vld_cu_val          )    ,
        .cu_size           (cu_size             )    ,
        .interrupt_valid   (interrupt_valid     )    ,
        .interrupt_ready   (interrupt_ready     )    ,        
        .gp_clk            (gp_clk              )    ,
        .gp_rst            (gp_rst              )    ,
        .ddr_clk           (ddr_clk             )    ,
        .ddr_rst           (rst                 )
    );
    
    argmax2d_rdma 
    #(
        .AW  (AW  ),
        .DW  (DW  ),
        .IFW (IFW )
    )
    u_argmax2d_rdma(
        .araddr          (argmax2d_ddr_rd.araddr          ),
        .arinfo          (argmax2d_ddr_rd.arinfo          ),
        .arvalid         (argmax2d_ddr_rd.arvalid         ),
        .arready         (argmax2d_ddr_rd.arready         ),
        .argmax2d_start  (argmax2d_start                  ),
        .arbase          (arbase                          ),
        .last_araddr     (last_araddr                     ),
        .cu_araddr_num   (cu_araddr_num                   ),
        .cu_size         (cu_size                         ),
        .ddr_clk         (ddr_clk                         ),
        .ddr_rst         (rst                             )
    );
    
    argmax2d_cmp
    #(
        .AW  (AW  ),
        .DW  (DW  ),
        .NDW (NDW ),
        .IFW (IFW )
    )
    u_argmax2d_cmp(
        .cmp_awdata     (cmp_awdata                   ),
        .cmp_awvalid    (cmp_awvalid                  ),
        .cmp_awready    (cmp_awready                  ),
        .rdata          (argmax2d_ddr_rd.rdata        ),
        .rinfo          (argmax2d_ddr_rd.rinfo        ),
        .rvalid         (argmax2d_ddr_rd.rvalid       ),
        .rready         (argmax2d_ddr_rd.rready       ),
        .argmax2d_start (argmax2d_start               ),
        .cu             (cu                           ),
        .vld_cu_val     (vld_cu_val                   ),
        .clk            (ddr_clk                      ),
        .rst            (rst                          )
    );
        
    argmax2d_wdma 
    #(
        .AW  (AW  ),
        .NDW (NDW ),
        .IFW (IFW )
    )
    u_argmax2d_wdma(
        .awaddr         (argmax2d_hp_itf.awaddr       ),
        .awvalid        (argmax2d_hp_itf.awvalid      ),
        .awready        (argmax2d_hp_itf.awready      ),
        .wdata          (argmax2d_hp_itf.wdata        ),
        .wvalid         (argmax2d_hp_itf.wvalid       ),
        .wready         (argmax2d_hp_itf.wready       ),
    
        .cmp_awdata     (cmp_awdata                   ),
        .cmp_awvalid    (cmp_awvalid                  ),
        .cmp_awready    (cmp_awready                  ),
        .argmax2d_start (argmax2d_start               ),
        .argmax2d_done  (argmax2d_done_temp           ),
        .awbase         (awbase                       ),
        .last_awaddr    (last_awaddr                  ),
        .hp_clk         (hp_clk                       ),
        .hp_rst         (hp_rst                       ),
        .ddr_clk        (ddr_clk                      ),
        .ddr_rst        (rst                          )
    );

    always @( posedge hp_clk)
    begin
        if(hp_rst)
            argmax2d_done_req <= 1'b0;
        else if(argmax2d_start)
            argmax2d_done_req <= 1'b0;
        else if(argmax2d_done_temp)
            argmax2d_done_req <= 1'b1;            
    end

    gen_b_done u0_argmax2d_b_done (
        .dma_start      (argmax2d_start         ),
        .hp_awvalid     (argmax2d_hp_itf.awvalid),
        .hp_awready     (argmax2d_hp_itf.awready),    
        .hp_bvalid      (hp_bvalid              ),
        .hp_bready      (hp_bready              ),
        .hp_b_done      (hp_b_done              ),
        .hp_clk         (hp_clk                 ),
        .hp_rst         (hp_rst                 )
    );

    assign argmax2d_done_d0 = argmax2d_done_req & hp_b_done;

    always @( posedge hp_clk)
    begin
        if(hp_rst)
            argmax2d_done_d1 <= 1'b0;
        else
            argmax2d_done_d1 <= argmax2d_done_d0;           
    end    

    assign argmax2d_done_cross = argmax2d_done_d0 & (~argmax2d_done_d1);

endmodule