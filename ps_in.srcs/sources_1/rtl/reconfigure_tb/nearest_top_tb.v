module nearest_top_tb();
reg               gp0_clk;
reg               gp0_clk_rst;
reg               hp0_clk;
reg               hp0_clk_rst;
reg               ddr_clk;
reg               ddr_clk_rst;

mna_gp_ww_itf  nearest_upsample_ctrl() ;
mna_ddr_ww_itf s0_customop_ww_itf()    ;
mna_ddr_rd_itf s0_customop_rd_itf()    ;

//interrupt
wire              s8_interrupt_valid   ;
wire              s8_interrupt_ready   ;
nearest_top nearest_top_u0(     
        .gpx               (nearest_upsample_ctrl.slave ),
        .gp_clk            (gp0_clk                     ),
        .gp_rst_n          (~gp0_clk_rst                ),
        
        .nearest_ddr_ww    (s0_customop_ww_itf.master   ),
        .nearest_ddr_rd    (s0_customop_rd_itf.master   ),
        .interrupt_valid   (s8_interrupt_valid          ),
        .interrupt_ready   (s8_interrupt_ready          ),
        .ddr_clk           (ddr_clk                     ),
        .ddr_rst           (ddr_clk_rst                 )
);
endmodule