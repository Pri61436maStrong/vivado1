//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : nearest_top.v
// Author        : 
// Project       : NB2337
// Create Date   : 2023.06.31
// Description   : 
//                           │GP
//                           ▼
// ┌──────┐   ┌────────────────────────────┐
// │      │   │                            │
// │      │   │       reg_controller       │
// │      │   └──────────────┬─▲──────┬─▲──┘
// │      │                  │ │      │ │
// │      │                ┌─▼─┴──┐ ┌─▼─┴──┐
// │      │   AW           │      │ │      │
// │      │ ◄──────────────┤      │ │      │
// │PL DDR│                │ WDMA │ │ RDMA │
// │      │      R         │      │ │      │
// │      │ ──────────────►│      │ │      │
// │      │                └──────┘ └──┬───┘
// │      │                            │
// │      │             AR             │
// │      │ ◄──────────────────────────┘
// └──────┘
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module nearest_top #(parameter AW=32, DW=512) (     
    mna_gp_ww_itf.slave       gpx             ,
    input                     gp_clk          ,
    input                     gp_rst_n        ,

    mna_ddr_ww_itf.master     nearest_ddr_ww  ,
    mna_ddr_rd_itf.master     nearest_ddr_rd  ,
    output                    interrupt_valid ,
    input                     interrupt_ready ,
    input                     ddr_clk         ,
    input                     ddr_rst 
);
    wire       [  AW-1 : 0 ]      src_xbase     ;
    wire       [  AW-1 : 0 ]      src_ybase     ;
    wire       [AW/2-1 : 0 ]      dst_xsize     ;
    wire       [AW/2-1 : 0 ]      dst_ysize     ;
    wire       [AW/2-1 : 0 ]      src_xsize     ;
    wire       [AW/2-1 : 0 ]      src_ysize     ;
    wire       [  AW-1 : 0 ]      src_xstep     ;
    wire       [  AW-1 : 0 ]      src_ystep     ;
    wire       [AW/2-1 : 0 ]      ct_size       ;
    wire                          start         ;
    wire                          awdone        ;
    wire       [    31 : 0 ]      status0       ;
    wire       [    18 : 0 ]      status1       ;
    wire       [    16 : 0 ]      rdma_status1  ;
    wire       [  AW-1 : 0 ]      arbase        ;
    wire       [  AW-1 : 0 ]      awbase        ;
    wire       [  AW-1 : 0 ]      last_awaddr   ;
    wire                          soft_rst      ;
    wire                          rst           ;
    wire       [  AW-1 : 0 ]      ct_addr_step  ;
    wire       [     3 : 0 ]      ardwdc        ;
    wire       [     3 : 0 ]      awdwdc        ;

    wire                          awwlast       ;



    assign rst = soft_rst || ddr_rst;

    nearest_ctrl #(.AW(AW)) nearest_ctrl_u0(                     
        .gp_clk         (gp_clk       )   ,
        .gp_rst_n       (gp_rst_n     )   ,
        .gpx            (gpx          )   ,

        .src_xbase      (src_xbase    )   , 
        .src_ybase      (src_ybase    )   , 
        .dst_xsize      (dst_xsize    )   ,  
        .dst_ysize      (dst_ysize    )   , 
        .src_xsize      (src_xsize    )   ,
        .src_ysize      (src_ysize    )   ,
        .src_xstep      (src_xstep    )   ,
        .src_ystep      (src_ystep    )   ,
        .ct_size        (ct_size      )   , 
        .start          (start        )   ,
        .awdone         (awdone       )   ,
        .status0        (status0      )   ,
        .status1        (status1      )   ,
        .arbase         (arbase       )   ,
        .awbase         (awbase       )   ,
        .last_awaddr    (last_awaddr  )   ,
        .soft_rst       (soft_rst     )   ,
        .ct_addr_step   (ct_addr_step )   ,
        .ardwdc         (ardwdc       )   ,
        .awdwdc         (awdwdc       )   ,
        .interrupt_valid(interrupt_valid) ,
        .interrupt_ready(interrupt_ready) ,

        .ddr_clk        (ddr_clk      )   ,
        .ddr_rst        (rst          )
    );

    nearest_upsample_rdma #(.AW(AW)) nearest_upsample_rdma_u0(                     
        .araddr         (nearest_ddr_rd.araddr  )  ,
        .arinfo         (nearest_ddr_rd.arinfo  )  ,
        .arvalid        (nearest_ddr_rd.arvalid )  ,
        .arready        (nearest_ddr_rd.arready )  ,

        .src_xbase      (src_xbase              )  ,
        .src_ybase      (src_ybase              )  ,
        .dst_xsize      (dst_xsize              )  , 
        .dst_ysize      (dst_ysize              )  , 
        .src_xsize      (src_xsize              )  ,
        .src_ysize      (src_ysize              )  ,
        .src_xstep      (src_xstep              )  ,
        .src_ystep      (src_ystep              )  ,
        .ct_size        (ct_size                )  , 
        .start          (start                  )  ,
        .rdma_status0   (status0                )  ,
        .rdma_status1   (rdma_status1           )  ,
        .arbase         (arbase                 )  ,
        .ct_addr_step   (ct_addr_step           )  ,
        .ardwdc         (ardwdc                 )  ,

        .clk            (ddr_clk                )  ,
        .rst_n          (~rst                   )  
    );
    
    nearest_upsample_wdma #(.AW(AW),.DW(DW)) nearest_upsample_wdma_u0(                     
        .rdata          (nearest_ddr_rd.rdata     ) ,
        .rinfo          (nearest_ddr_rd.rinfo     ) ,
        .rvalid         (nearest_ddr_rd.rvalid    ) ,
        .rready         (nearest_ddr_rd.rready    ) , 

        .awdata         (nearest_ddr_ww.awwdata   ) ,
        .awaddr         (nearest_ddr_ww.awwaddr   ) ,
        .awinfo         (nearest_ddr_ww.awwinfo   ) ,
        .awvalid        (nearest_ddr_ww.awwvalid  ) ,
        .awready        (nearest_ddr_ww.awwready  ) ,

        .start          (start                    ) ,
        .awbase         (awbase                   ) ,
        .last_awaddr    (last_awaddr              ) ,
        .awdwdc         (awdwdc                   ) ,

        .clk            (ddr_clk                  ) ,
        .rst_n          (~rst                     )
    );

    assign status1 = {2'd0,rdma_status1};
    assign awwlast = nearest_ddr_ww.awwinfo[0];
    /*

    //fifo 加一个fifo，此fifo的作用是将数据收集到一定数量后发出，从而保证valid的连续性以及不会频繁读写切换ddr的地址
    assign fifo_in_data = {awwdata,awwaddr,awwinfo};
    assign {nearest_ddr_ww.awwdata,nearest_ddr_ww.awwaddr,nearest_ddr_ww.awwinfo} = fifo_out_data;
    assign fifo_in_last = awwinfo[0];
    assign fifo_out_last = nearest_ddr_ww.awwinfo[0];
    collecting_fifo #(.DW(616)) collecting_fifo_u0(                     
        .fifo_in_data    (fifo_in_data            ) ,
        .fifo_in_last    (fifo_in_last            ) ,
        .fifo_in_valid   (awwvalid                ) ,
        .fifo_in_ready   (awwready                ) ,
                
        .fifo_out_data   (fifo_out_data           ) ,
        .fifo_out_last   (                        ) ,
        .fifo_out_valid  (nearest_ddr_ww.awwvalid ) ,
        .fifo_out_ready  (nearest_ddr_ww.awwready ) ,
        .fifo_st         (fifo_st                 ) ,

        .clk             (ddr_clk                 ) ,
        .rst_n           (~rst                    )
    );
    */
    assign awdone = awwlast && nearest_ddr_ww.awwvalid && nearest_ddr_ww.awwready ;

endmodule
