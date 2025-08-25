module argmax2d_top_tb();
reg               gp0_clk;
reg               gp0_clk_rst;
reg               hp0_clk;
reg               hp0_clk_rst;
reg               ddr_clk;
reg               ddr_clk_rst;

mna_hp_std_itf    argmax2d_hp_itf();
mna_gp_ww_itf     argmax2d_gpx()          ;
mna_ddr_rd_itf    s3_2_ddr_rd_itf()       ;

wire              s3_hp_bvalid         ;
wire              s3_hp_bready         ;

//interrupt
wire              s0_interrupt_valid   ;
wire              s0_interrupt_ready   ;
argmax2d_top 
    #(
      .AW  (32  ),
      .DW  (512 ),
      .NDW (64  ),
      .IFW (32  )
    )
    u_argmax2d_top(
    	.argmax2d_gpx    (argmax2d_gpx.slave     ),
      .argmax2d_ddr_rd (s3_2_ddr_rd_itf.master ),
      .argmax2d_hp_itf (argmax2d_hp_itf.master ),
      .gp_clk          (gp0_clk                ),
      .gp_rst          (gp0_clk_rst            ),
      .ddr_clk         (ddr_clk                ),
      .ddr_rst         (ddr_clk_rst            ),
      .hp_clk          (hp0_clk                ),
      .hp_rst          (hp0_clk_rst            ),
      .hp_bvalid       (s3_hp_bvalid           ),
      .hp_bready       (s3_hp_bready           ),
      .interrupt_valid (s0_interrupt_valid     ),
      .interrupt_ready (s0_interrupt_ready     )              
    );
endmodule