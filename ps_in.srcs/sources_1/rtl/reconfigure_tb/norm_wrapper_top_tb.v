module norm_wrapper_top_tb();
reg               gp0_clk;
reg               gp0_clk_rst;
reg               hp0_clk;
reg               hp0_clk_rst;
reg               ddr_clk;
reg               ddr_clk_rst;

mna_gp_ww_itf     norm_ra()               ;
mna_ddr_rd_itf    s2_1_ddr_rd_itf()       ;
mna_ddr_ww_itf    s2_3_ddr_ww_itf()       ;
//interrupt
wire              s7_interrupt_valid   ;
wire              s7_interrupt_ready   ;
norm_wrapper u_norm_wrapper
(
      .norm_gpx     (  norm_ra.slave         ),
      .norm_ddr     (  s2_1_ddr_rd_itf.master),
      .norm_ddr_ww  (  s2_3_ddr_ww_itf.master),
      .interrupt_valid(  s7_interrupt_valid    ),
      .interrupt_ready(  s7_interrupt_ready    ),
      .gp_clk       (  gp0_clk               ),
      .gp_rst_n     (  !gp0_clk_rst          ),
      .ddr_clk      (  ddr_clk               ),
      .ddr_rst      (  ddr_clk_rst           )
);

endmodule