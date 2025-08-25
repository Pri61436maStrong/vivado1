//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : remap_top.v
// Author        : 
// Project       : NB2338
// Create Date   : 2024.05.11
// Description   : 

//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================
module remap_top #(parameter AW=32, BAW=10, DW=512, TDW=64, RIFW=32, WIFW=72)(                     
    mna_ddr_ww_itf.master     remap_ddr_ww    ,
    mna_ddr_rd_itf.master     remap_ddr_rd    ,

    mna_gp_ww_itf.slave       gpx             ,
    output                    interrupt_valid ,
    input                     interrupt_ready ,

    input                     gp_clk          ,
    input                     gp_rst_n        ,    
    input                     ddr_clk         ,
    input                     ddr_clk_rst        
);

    wire  [   31  : 0 ]       grid_addr_rfrom   ;
    wire  [   31  : 0 ]       grid_addr_rto     ;
    wire  [   31  : 0 ]       ftmp_addr_rfrom   ;
    wire  [   31  : 0 ]       ftmp_addr_rto     ;
    wire  [   11  : 0 ]       ftmp_w            ;
    wire  [   11  : 0 ]       ftmp_h            ;
    wire  [   31  : 0 ]       ftmp_addr_wfrom   ;
    wire                      remap_start       ;
    wire                      remap_done        ;
    wire  [  AW-1 : 0 ]       ftmp_ddr_araddr   ;
    wire  [RIFW-1 : 0 ]       ftmp_ddr_arinfo   ;
    wire                      ftmp_ddr_arvalid  ;
    wire                      ftmp_ddr_arready  ;
    wire  [  DW-1 : 0 ]       ftmp_ddr_rdata    ;
    wire  [RIFW-1 : 0 ]       ftmp_ddr_rinfo    ;
    wire                      ftmp_ddr_rvalid   ;
    wire                      ftmp_ddr_rready   ;
    wire  [  AW-1 : 0 ]       grid_ddr_araddr   ;
    wire  [RIFW-1 : 0 ]       grid_ddr_arinfo   ;
    wire                      grid_ddr_arvalid  ;
    wire                      grid_ddr_arready  ;
    wire  [  DW-1 : 0 ]       grid_ddr_rdata    ;
    wire  [RIFW-1 : 0 ]       grid_ddr_rinfo    ;
    wire                      grid_ddr_rvalid   ;
    wire                      grid_ddr_rready   ;
    wire  [  DW-1 : 0 ]       grid_data         ;
    wire                      grid_first        ;
    wire                      grid_last         ;
    wire                      grid_valid        ;
    wire                      grid_ready        ;
    wire  [ TDW-1 : 0 ]       trans_data        ;
    wire                      trans_first       ;
    wire                      trans_last        ;
    wire                      trans_valid       ;
    wire                      trans_ready       ;
    wire  [  26-1 : 0 ]       coef_a            ; //12q1
    wire  [  26-1 : 0 ]       coef_b            ;
    wire  [  26-1 : 0 ]       coef_c            ;
    wire  [  26-1 : 0 ]       coef_d            ;
    wire  [  26-1 : 0 ]       coef_e            ;
    wire  [  26-1 : 0 ]       coef_f            ;
    wire  [  32-1 : 0 ]       mode              ;

    wire  [  DW-1 : 0 ]       ftmp_load_data    ;
    wire  [ BAW-1 : 0 ]       ftmp_load_addr    ;
    wire  [  AW-1 : 0 ]       ftmp_load_from    ;
    wire  [  AW-1 : 0 ]       ftmp_load_to      ;
    wire                      ftmp_load_finish  ;
    wire                      ftmp_load_valid   ;
    wire                      ftmp_load_ready   ; 
    wire  [  AW-1 : 0 ]       refresh_addr_base ; 
    wire                      refresh_flag      ;      
    wire  [  64-1 : 0 ]       up_left           ;
    wire  [  64-1 : 0 ]       up_right          ;
    wire  [  64-1 : 0 ]       low_left          ;
    wire  [  64-1 : 0 ]       low_right         ;
    wire  [  16-1 : 0 ]       u                 ;    
    wire  [  16-1 : 0 ]       v                 ;    
    wire  [  16-1 : 0 ]       u_1               ;    
    wire  [  16-1 : 0 ]       v_1               ; 
    wire                      bilinear_first    ;   
    wire                      bilinear_last     ;   
    wire                      bilinear_valid    ;
    wire                      bilinear_ready    ;
    wire  [  DW-1 : 0 ]       n2w_wdata         ;
    wire                      n2w_wfirst        ;
    wire                      n2w_wlast         ;
    wire                      n2w_wvalid        ;
    wire                      n2w_wready        ; 
    wire                      rst               ;
    wire                      soft_rst          ;     

    assign rst = ddr_clk_rst | soft_rst;

    remap_ctrl u0_remap_ctrl (                     
        .gp_clk              (gp_clk                  ),
        .gp_rst_n            (gp_rst_n                ),
        .gpx                 (gpx                     ),
           
        .grid_addr_rfrom     (grid_addr_rfrom         ),
        .grid_addr_rto       (grid_addr_rto           ),
        .ftmp_addr_rfrom     (ftmp_addr_rfrom         ),
        .ftmp_addr_rto       (ftmp_addr_rto           ),
        .ftmp_w              (ftmp_w                  ),
        .ftmp_h              (ftmp_h                  ),
        .ftmp_addr_wfrom     (ftmp_addr_wfrom         ),
        .coef_a              (coef_a                  ), //12q1
        .coef_b              (coef_b                  ),
        .coef_c              (coef_c                  ),
        .coef_d              (coef_d                  ),     
        .coef_e              (coef_e                  ), 
        .coef_f              (coef_f                  ),   
        .mode                (mode                    ), 
           
        .remap_start         (remap_start             ),
        .remap_done          (remap_done              ),
        .soft_rst            (soft_rst                ),
        .interrupt_valid     (interrupt_valid         ),
        .interrupt_ready     (interrupt_ready         ),
           
        .ddr_clk             (ddr_clk                 ),
        .ddr_clk_rst         (rst                     ) 
    );

    ddr_ritcn_remap #(.AW(AW), .DW(DW), .IFW(RIFW))u0_ddr_ritcn_remap (
        .ftmp_ddr_araddr     (ftmp_ddr_araddr         ),
        .ftmp_ddr_arinfo     (ftmp_ddr_arinfo         ),
        .ftmp_ddr_arvalid    (ftmp_ddr_arvalid        ),
        .ftmp_ddr_arready    (ftmp_ddr_arready        ),
        .ftmp_ddr_rdata      (ftmp_ddr_rdata          ),
        .ftmp_ddr_rinfo      (ftmp_ddr_rinfo          ),
        .ftmp_ddr_rvalid     (ftmp_ddr_rvalid         ),
        .ftmp_ddr_rready     (ftmp_ddr_rready         ),
           
        .grid_ddr_araddr     (grid_ddr_araddr         ),
        .grid_ddr_arinfo     (grid_ddr_arinfo         ),
        .grid_ddr_arvalid    (grid_ddr_arvalid        ),
        .grid_ddr_arready    (grid_ddr_arready        ),
        .grid_ddr_rdata      (grid_ddr_rdata          ),
        .grid_ddr_rinfo      (grid_ddr_rinfo          ),
        .grid_ddr_rvalid     (grid_ddr_rvalid         ),
        .grid_ddr_rready     (grid_ddr_rready         ),    
           
        .m_ddr_araddr        (remap_ddr_rd.araddr     ),
        .m_ddr_arinfo        (remap_ddr_rd.arinfo     ),
        .m_ddr_arvalid       (remap_ddr_rd.arvalid    ),
        .m_ddr_arready       (remap_ddr_rd.arready    ),
        .m_ddr_rdata         (remap_ddr_rd.rdata      ),
        .m_ddr_rinfo         (remap_ddr_rd.rinfo      ),
        .m_ddr_rvalid        (remap_ddr_rd.rvalid     ),
        .m_ddr_rready        (remap_ddr_rd.rready     ),
           
        .ddr_clk             (ddr_clk                 ),
        .ddr_clk_rst         (rst                     ) 
    );

    grid_rdma #(.AW(AW), .DW(DW), .IFW(RIFW))u0_grid_rdma (                     
        .araddr              (grid_ddr_araddr         ),
        .arinfo              (grid_ddr_arinfo         ),
        .arvalid             (grid_ddr_arvalid        ),
        .arready             (grid_ddr_arready        ),
            
        .rdata               (grid_ddr_rdata          ),
        .rinfo               (grid_ddr_rinfo          ),
        .rvalid              (grid_ddr_rvalid         ),
        .rready              (grid_ddr_rready         ),
            
        .grid_data           (grid_data               ),
        .grid_first          (grid_first              ),
        .grid_last           (grid_last               ),
        .grid_valid          (grid_valid              ),
        .grid_ready          (grid_ready              ), 
            
        .remap_start         (remap_start             ),
        .grid_addr_rfrom     (grid_addr_rfrom         ),
        .grid_addr_rto       (grid_addr_rto           ),
                
        .ddr_clk             (ddr_clk                 ),
        .ddr_clk_rst         (rst                     ) 
    );   

    grid_trans #(.DW(DW), .TDW(TDW))u0_grid_trans (                     
        .grid_data           (grid_data               ),
        .grid_first          (grid_first              ),
        .grid_last           (grid_last               ),
        .grid_valid          (grid_valid              ),
        .grid_ready          (grid_ready              ), 
           
        .trans_data          (trans_data              ),
        .trans_first         (trans_first             ),
        .trans_last          (trans_last              ),
        .trans_valid         (trans_valid             ),
        .trans_ready         (trans_ready             ),
           
        .coef_a              (coef_a                  ), //26q1
        .coef_b              (coef_b                  ),
        .coef_c              (coef_c                  ),
        .coef_d              (coef_d                  ),
        .coef_e              (coef_e                  ), 
        .coef_f              (coef_f                  ), 
           
        .ddr_clk             (ddr_clk                 ),
        .ddr_clk_rst         (rst                     ) 
    );     

    ftmp_rdma #(.AW(AW), .BAW(BAW), .DW(DW), .IFW(RIFW))u0_ftmp_rdma (                     
        .araddr              (ftmp_ddr_araddr         ),
        .arinfo              (ftmp_ddr_arinfo         ),
        .arvalid             (ftmp_ddr_arvalid        ),
        .arready             (ftmp_ddr_arready        ),
           
        .rdata               (ftmp_ddr_rdata          ),
        .rinfo               (ftmp_ddr_rinfo          ),
        .rvalid              (ftmp_ddr_rvalid         ),
        .rready              (ftmp_ddr_rready         ),
           
        .ftmp_load_data      (ftmp_load_data          ),
        .ftmp_load_addr      (ftmp_load_addr          ),
        .ftmp_load_from      (ftmp_load_from          ),
        .ftmp_load_to        (ftmp_load_to            ),
        .ftmp_load_finish    (ftmp_load_finish        ),
        .ftmp_load_valid     (ftmp_load_valid         ),
        .ftmp_load_ready     (ftmp_load_ready         ), 
           
        .remap_start         (remap_start             ),
        .ftmp_addr_rfrom     (ftmp_addr_rfrom         ),
        .ftmp_addr_rto       (ftmp_addr_rto           ),
        .refresh_addr_base   (refresh_addr_base       ), 
        .refresh_flag        (refresh_flag            ),   
               
        .ddr_clk             (ddr_clk                 ),
        .ddr_clk_rst         (rst                     ) 
    );    

    remap #(.AW(AW), .BAW(BAW), .DW(DW), .TDW(TDW))u0_remap (     
        .trans_data          (trans_data              ),
        .trans_first         (trans_first             ),
        .trans_last          (trans_last              ),
        .trans_valid         (trans_valid             ),
        .trans_ready         (trans_ready             ),    
            
        .ftmp_load_data      (ftmp_load_data          ),
        .ftmp_load_addr      (ftmp_load_addr          ),
        .ftmp_load_from      (ftmp_load_from          ),
        .ftmp_load_to        (ftmp_load_to            ),
        .ftmp_load_finish    (ftmp_load_finish        ),
        .ftmp_load_valid     (ftmp_load_valid         ),
        .ftmp_load_ready     (ftmp_load_ready         ), 
           
        .ftmp_w              (ftmp_w                  ),
        .ftmp_h              (ftmp_h                  ),
        .mode                (mode                    ),
           
        .refresh_addr_base   (refresh_addr_base       ), 
        .refresh_flag        (refresh_flag            ),
           
        .up_left             (up_left                 ),
        .up_right            (up_right                ),
        .low_left            (low_left                ),
        .low_right           (low_right               ),
        .u                   (u                       ),    
        .v                   (v                       ),    
        .u_1                 (u_1                     ),    
        .v_1                 (v_1                     ), 
        .bilinear_first      (bilinear_first          ),   
        .bilinear_last       (bilinear_last           ),   
        .bilinear_valid      (bilinear_valid          ),
        .bilinear_ready      (bilinear_ready          ),
           
        .ddr_clk             (ddr_clk                 ),
        .ddr_clk_rst         (rst                     ) 
    );

    bilinear_remap #(.AW(AW), .DW(DW))u0_bilinear_remap (     
        .up_left             (up_left                 ),
        .up_right            (up_right                ),
        .low_left            (low_left                ),
        .low_right           (low_right               ),
        .u                   (u                       ),//16q15    
        .v                   (v                       ),    
        .u_1                 (u_1                     ),    
        .v_1                 (v_1                     ), 
        .mode                (mode                    ),
        .bilinear_first      (bilinear_first          ), 
        .bilinear_last       (bilinear_last           ),     
        .bilinear_valid      (bilinear_valid          ),
        .bilinear_ready      (bilinear_ready          ),
           
        .n2w_wdata           (n2w_wdata               ),
        .n2w_wfirst          (n2w_wfirst              ),
        .n2w_wlast           (n2w_wlast               ),
        .n2w_wvalid          (n2w_wvalid              ),
        .n2w_wready          (n2w_wready              ),        
           
        .ddr_clk             (ddr_clk                 ),
        .ddr_clk_rst         (rst                     ) 
    );

    ftmp_wdma #(.AW(AW), .IFW(WIFW), .DW(DW))u0_ftmp_wdma (                     
        .n2w_wdata           (n2w_wdata               ),
        .n2w_wfirst          (n2w_wfirst              ),
        .n2w_wlast           (n2w_wlast               ),
        .n2w_wvalid          (n2w_wvalid              ),
        .n2w_wready          (n2w_wready              ),
    
        .m_ddr_awwaddr       (remap_ddr_ww.awwaddr    ),
        .m_ddr_awwdata       (remap_ddr_ww.awwdata    ),
        .m_ddr_awwinfo       (remap_ddr_ww.awwinfo    ),
        .m_ddr_awwvalid      (remap_ddr_ww.awwvalid   ),
        .m_ddr_awwready      (remap_ddr_ww.awwready   ),
    
        .remap_start         (remap_start             ),
        .ftmp_addr_wfrom     (ftmp_addr_wfrom         ),
        .remap_done          (remap_done              ),
               
        .ddr_clk             (ddr_clk                 ),
        .ddr_clk_rst         (rst                     ) 
    );
endmodule
