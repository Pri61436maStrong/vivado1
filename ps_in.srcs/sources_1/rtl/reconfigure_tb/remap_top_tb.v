module remap_top_tb();
reg               gp0_clk;
reg               gp0_clk_rst;
reg               ddr_clk;
reg               ddr_clk_rst;

mna_gp_ww_itf     remap_ctrl()            ;
mna_ddr_ww_itf    s3_2_ddr_ww_itf()       ;
mna_ddr_rd_itf    s3_1_ddr_rd_itf()       ;

wire              s1_hp_bvalid         ;
wire              s1_hp_bready         ;

//interrupt
wire              s11_interrupt_valid   ;
wire              s11_interrupt_ready   ;
remap_top u0_remap_top (                     
            .remap_ddr_ww      (s3_2_ddr_ww_itf.master ),
            .remap_ddr_rd      (s3_1_ddr_rd_itf.master ),
        
            .gpx               (remap_ctrl.slave       ),
            .interrupt_valid   (s11_interrupt_valid    ),
            .interrupt_ready   (s11_interrupt_ready    ),
        
            .gp_clk            (gp0_clk                ),
            .gp_rst_n          (~gp0_clk_rst           ),    
            .ddr_clk           (ddr_clk                ),
            .ddr_clk_rst       (ddr_clk_rst            )   
        );
endmodule