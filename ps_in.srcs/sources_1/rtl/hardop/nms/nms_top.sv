//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : nms_top.v
// Author        : 
// Project       : NB2337
// Create Date   : 2023.11.07
// Description   : 
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module nms_top #(parameter AW=32, PARALSM=16, IFW=32, EDW=80, DW=EDW*PARALSM, DEPTH=8192, BRAM_EN="true") (     
    mna_gp_ww_itf.slave       gpx            ,
    mna_hp_std_itf.master     nms_hp_itf     ,
    input                     hp_bvalid      ,
    input                     hp_bready      ,  
    output                    interrupt_valid,
    input                     interrupt_ready,  

    input                     gp_clk         ,
    input                     gp_rst_n       ,
    input                     hp_clk         ,
    input                     hp_rst         ,    
    input                     ddr_clk        ,
    input                     ddr_rst 
);
    wire                     rst             ;
    wire   [  AW-1 : 0 ]     arbase          ; 
    wire   [  AW-1 : 0 ]     awbase          ; 
    wire   [  AW-1 : 0 ]     last_araddr     ;
    wire   [  AW-1 : 0 ]     last_awaddr     ;
    wire   [  AW-1 : 0 ]     group_num       ;
    wire                     mode            ;
    wire   [  16-1 : 0 ]     threshold       ;
    wire                     nms_start       ;
    reg                      nms_done        ;
    wire   [   31  : 0 ]     status          ;
    wire                     soft_rst        ;
    wire                     cu_start        ;
    wire   [  AW-1 : 0 ]     anchor_hpsize   ;

    wire   [  DW-1 : 0 ]     ram_awdata      ;
    wire   [ IFW-1 : 0 ]     ram_awinfo      ;
    wire   [  AW-1 : 0 ]     ram_awaddr      ;
    wire                     ram_awvalid     ;
    wire                     ram_awready     ;

    wire   [   AW-1 : 0 ]    ram_araddr      ;
    wire   [  IFW-1 : 0 ]    ram_arinfo      ;
    wire                     ram_arvalid     ;
    wire                     ram_arready     ;
    wire   [   DW-1 : 0 ]    ram_rdata       ;
    wire   [  IFW-1 : 0 ]    ram_rinfo       ;
    wire                     ram_rvalid      ;
    wire                     ram_rready      ;

    wire   [     63 : 0 ]    iou_awdata      ;
    wire   [ IFW-1  : 0 ]    iou_awinfo      ;
    wire                     iou_awvalid     ;
    wire                     iou_awready     ;  
       
    wire   [PARALSM-1: 0 ]   unit_mask       ;
    wire                     mask_valid      ; 
    wire                     unit_first      ;
    wire                     unit_last       ;
    wire   [ EDW - 1 : 0 ]   target_data     ;
    wire   [  DW - 1 : 0 ]   iou_data        ;
    wire                     iou_first       ;
    wire                     iou_last        ;
    wire                     iou_valid       ;
    wire                     wdma_start      ;

    wire   [PARALSM-1: 0 ]   out_valid       ;
    wire   [PARALSM-1: 0 ]   out_first       ;
    wire   [PARALSM-1: 0 ]   out_last        ;

    wire   [       2 : 0 ]   arfifo_st       ;
    wire   [       2 : 0 ]   rfifo_st        ;
    wire   [       2 : 0 ]   awfifo_st       ;

    wire                     hp_b_done       ;
    wire                     nms_done_tmp    ;
    reg                      nms_done_req    ;
    reg                      nms_done_d1     ;
    wire                     nms_start_cross ;
    wire                     nms_done_d0     ;
    wire                     nms_done_cross  ;
    
    assign rst = soft_rst || ddr_rst;
    nms_ctrl #(.AW(AW)) nms_ctrl_u0(                     
        .gp_clk         (gp_clk             ) ,
        .gp_rst_n       (gp_rst_n           ) ,
        .gpx            (gpx                ) ,

        .arbase         (arbase             ) ,  
        .awbase         (awbase             ) ,  
        .last_araddr    (last_araddr        ) ,
        .last_awaddr    (last_awaddr        ) ,
        .group_num      (group_num          ) ,
        .mode           (mode               ) ,
        .threshold      (threshold          ) ,
        .nms_start      (nms_start          ) ,
        .nms_done       (nms_done_cross     ) ,
        .status         (status             ) ,
        .soft_rst       (soft_rst           ) ,
        .anchor_hpsize  (anchor_hpsize      ) ,
        .arfifo_st      (arfifo_st          ) ,
        .rfifo_st       (rfifo_st           ) ,
        .awfifo_st      (awfifo_st          ) ,
        .interrupt_valid(interrupt_valid    ) ,
        .interrupt_ready(interrupt_ready    ) ,

        .hp_clk         (hp_clk             ) ,
        .hp_rst         (hp_rst             ) ,
        .ddr_clk        (ddr_clk            ) ,
        .ddr_rst        (rst                )
    );

    nms_rdma #(.AW(AW), .NDW(64), .WDW(DW), .IFW(IFW)) nms_rdma_u0(                     
        .araddr         (nms_hp_itf.araddr  ) ,
        .arinfo         (                   ) ,
        .arvalid        (nms_hp_itf.arvalid ) ,
        .arready        (nms_hp_itf.arready ) ,
    
        .rdata          (nms_hp_itf.rdata   ) ,
        .rinfo          (32'd0              ) ,
        .rvalid         (nms_hp_itf.rvalid  ) ,
        .rready         (nms_hp_itf.rready  ) ,
    
        .ram_awdata     (ram_awdata         ) ,
        .ram_awinfo     (ram_awinfo         ) ,
        .ram_awaddr     (ram_awaddr         ) ,
        .ram_awvalid    (ram_awvalid        ) ,
        .ram_awready    (ram_awready        ) ,
    
        .start          (nms_start          ) ,
        .done           (cu_start           ) ,
        .arbase         (arbase             ) ,
        .last_araddr    (last_araddr        ) ,
        .arfifo_st      (arfifo_st          ) ,
        .rfifo_st       (rfifo_st           ) ,
    
        .hp_clk         (hp_clk             ) ,
        .hp_rst         (hp_rst             ) ,
        .ddr_clk        (ddr_clk            ) ,
        .ddr_rst        (rst                )
    );
    
    nms_wdma #(.AW(AW), .NDW(64), .IFW(IFW)) nms_wdma_u0(                     
        .awaddr          (nms_hp_itf.awaddr ) ,
        .awvalid         (nms_hp_itf.awvalid) ,
        .awready         (nms_hp_itf.awready) ,
        .wdata           (nms_hp_itf.wdata  ) ,
        .wvalid          (nms_hp_itf.wvalid ) ,
        .wready          (nms_hp_itf.wready ) ,

        .iou_awdata      (iou_awdata        ) ,
        .iou_awinfo      (iou_awinfo        ) ,
        .iou_awvalid     (iou_awvalid       ) ,
        .iou_awready     (iou_awready       ) ,  
    
        .start           (wdma_start        ) ,
        .awbase          (awbase            ) ,
        .last_awaddr     (last_awaddr       ) ,
        .done            (nms_done_tmp      ) ,
        .awfifo_st       (awfifo_st         ) ,
    
        .hp_clk          (hp_clk            ) ,
        .hp_rst          (hp_rst            ) ,
        .ddr_clk         (ddr_clk           ) ,
        .ddr_rst         (rst               )
    );
    
    nms_bram #(.AW(AW), .DW(DW), .IFW(IFW)) nms_bram_u0(                     
        .araddr          (ram_araddr        ) ,
        .arinfo          (ram_arinfo        ) ,
        .arvalid         (ram_arvalid       ) ,
        .arready         (ram_arready       ) ,
    
        .rdata           (ram_rdata         ) ,
        .rinfo           (ram_rinfo         ) ,
        .rvalid          (ram_rvalid        ) ,
        .rready          (ram_rready        ) ,
    
        .awaddr          (ram_awaddr        ) ,   
        .awdata          (ram_awdata        ) ,
        .awvalid         (ram_awvalid       ) ,
        .awready         (ram_awready       ) ,
     
        .ddr_clk         (ddr_clk           ) ,
        .ddr_rst         (rst               )    
    );

    iou_dma #(.AW(AW), .PARALSM(PARALSM), .IFW(IFW), .EDW(EDW), .DEPTH(DEPTH)) iou_dma_u0(     
        //bram
        .araddr          (ram_araddr        ) , 
        .arinfo          (ram_arinfo        ) ,
        .arvalid         (ram_arvalid       ) ,
        .arready         (ram_arready       ) ,

        .rdata           (ram_rdata         ) ,
        .rinfo           (ram_rinfo         ) ,
        .rvalid          (ram_rvalid        ) ,
        .rready          (ram_rready        ) ,
    
        .iou_awdata      (iou_awdata        ) ,
        .iou_awinfo      (iou_awinfo        ) ,
        .iou_awvalid     (iou_awvalid       ) ,
        .iou_awready     (iou_awready       ) ,  
        
        .unit_mask       (unit_mask         ) ,
        .mask_valid      (mask_valid        ) , 
        .unit_first      (unit_first        ) ,
        .unit_last       (unit_last         ) ,
        .target_data     (target_data       ) ,
        .iou_data        (iou_data          ) ,
        .iou_first       (iou_first         ) ,
        .iou_last        (iou_last          ) ,
        .iou_valid       (iou_valid         ) ,

        .addr_size       (group_num         ) ,
        .anchor_hpsize   (anchor_hpsize     ) ,
        .cu_start        (cu_start          ) ,
        .wdma_start      (wdma_start        ) ,
    
        .clk             (ddr_clk           ) ,
        .rst             (rst               ) 
    );
    
    assign mask_valid = out_valid[0];
    assign unit_first = out_first[0];
    assign unit_last = out_last[0];
    genvar i;
    generate
        for(i=0;i<PARALSM;i=i+1) begin: iou_cu_gen
            iou_cu #(.DW(16)) iou_cu_u0(                     
                .b0_x0         (target_data[ 0+: 16]    ) ,
                .b0_y0         (target_data[16+: 16]    ) ,
                .b0_x1         (target_data[32+: 16]    ) ,
                .b0_y1         (target_data[48+: 16]    ) ,
                .b0_cls        (target_data[64+: 16]    ) ,
    
                .b1_x0         (iou_data[i*EDW+ 0+: 16] ) ,
                .b1_y0         (iou_data[i*EDW+16+: 16] ) ,
                .b1_x1         (iou_data[i*EDW+32+: 16] ) ,
                .b1_y1         (iou_data[i*EDW+48+: 16] ) ,
                .b1_cls        (iou_data[i*EDW+64+: 16] ) ,
                 
                .all_cls       (mode                    ) ,
                .threshold     (threshold               ) ,  
                .in_valid      (iou_valid               ) ,
                .in_first      (iou_first               ) ,
                .in_last       (iou_last                ) ,
    
                .iou_result    (unit_mask[i]            ) ,
                .out_valid     (out_valid[i]            ) ,
                .out_first     (out_first[i]            ) ,
                .out_last      (out_last[i]             ) ,
    
                .clk           (ddr_clk                 ) ,
                .rst           (rst                     )     
            );
        end
    endgenerate

    //pulse_cross pulse_cross_u0(
    //    .a2    (nms_start_cross   ),
    //    .clk2  (hp_clk            ),
    //    .rst2  (hp_rst            ),    

    //    .a1    (nms_start         ),
    //    .clk1  (ddr_clk           ),
    //    .rst1  (rst               )
    //);

    always @( posedge hp_clk)
    begin
        if(hp_rst)
            nms_done_req <= 1'b0;
        else if(nms_start)
            nms_done_req <= 1'b0;
        else if(nms_done_tmp)
            nms_done_req <= 1'b1;            
    end

    gen_b_done u0_nms_b_done (
        .dma_start      (nms_start         ),
        .hp_awvalid     (nms_hp_itf.awvalid),
        .hp_awready     (nms_hp_itf.awready),    
        .hp_bvalid      (hp_bvalid         ),
        .hp_bready      (hp_bready         ),
        .hp_b_done      (hp_b_done         ),
        .hp_clk         (hp_clk            ),
        .hp_rst         (hp_rst            )
    );

    assign nms_done_d0 = nms_done_req & hp_b_done;

    always @( posedge hp_clk)
    begin
        if(hp_rst)
            nms_done_d1 <= 1'b0;
        else
            nms_done_d1 <= nms_done_d0;           
    end    

    assign nms_done_cross = nms_done_d0 & (~nms_done_d1);

 
endmodule
