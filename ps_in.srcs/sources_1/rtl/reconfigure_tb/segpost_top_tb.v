module segpost_top_tb();
reg               gp0_clk;
reg               gp0_clk_rst;
reg               hp0_clk;
reg               hp0_clk_rst;
reg               ddr_clk;
reg               ddr_clk_rst;


mna_hp_std_itf    segpost_hp_itf() ;
mna_gp_ww_itf     segpost_ctrl()          ;
mna_ddr_rd_itf    s3_0_ddr_rd_itf()       ;
wire              s2_hp_bvalid         ;
wire              s2_hp_bready         ;

//interrupt
wire              s10_interrupt_valid   ;
wire              s10_interrupt_ready   ;

segpost_top segpost_top_u0(
    .gp_clk          (gp0_clk               ),
    .gp_rst_n        (~gp0_clk_rst          ),
    .gpx             (segpost_ctrl.slave    ),  

    .ddr_clk         (ddr_clk               ),
    .ddr_rst         (ddr_clk_rst           ),
    .segpost_ddr_rd  (s3_0_ddr_rd_itf.master), 
    .interrupt_valid (s10_interrupt_valid   ),
    .interrupt_ready (s10_interrupt_ready   ),
    .hp_clk          (hp0_clk               ),
    .hp_rst          (hp0_clk_rst           ),
    .segpost_hp_itf  (segpost_hp_itf.master ),
    .hp_bvalid       (s2_hp_bvalid          ),
    .hp_bready       (s2_hp_bready          )           
); 

endmodule