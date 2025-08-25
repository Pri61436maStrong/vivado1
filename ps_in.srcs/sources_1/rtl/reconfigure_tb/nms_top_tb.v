module nms_top_tb();
reg               gp0_clk;
reg               gp0_clk_rst;
reg               hp0_clk;
reg               hp0_clk_rst;
reg               ddr_clk;
reg               ddr_clk_rst;

mna_hp_std_itf    nms_hp_itf()         ;
mna_gp_ww_itf     nms_ctrl()           ;

wire              s1_hp_bvalid         ;
wire              s1_hp_bready         ;

//interrupt
wire              s9_interrupt_valid   ;
wire              s9_interrupt_ready   ;
nms_top nms_top_u0(     
        .gpx               (nms_ctrl.slave     ),
        .nms_hp_itf        (nms_hp_itf.master  ),  
        .hp_bvalid         (s1_hp_bvalid       ),
        .hp_bready         (s1_hp_bready       ),    
        .interrupt_valid   (s9_interrupt_valid ),
        .interrupt_ready   (s9_interrupt_ready ),     

        .gp_clk            (gp0_clk            ),
        .gp_rst_n          (~gp0_clk_rst       ),
        .hp_clk            (hp0_clk            ),
        .hp_rst            (hp0_clk_rst        ),    
        .ddr_clk           (ddr_clk            ),
        .ddr_rst           (ddr_clk_rst        )
        );
endmodule