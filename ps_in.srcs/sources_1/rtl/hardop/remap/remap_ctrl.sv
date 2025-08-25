//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : remap_ctrl.v
// Author        : 
// Project       : 
// Create Date   : 2023.06.19
// Description   : 
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module remap_ctrl (                     
    input                          gp_clk         ,
    input                          gp_rst_n       ,
    mna_gp_ww_itf.slave            gpx            ,

    output reg  [   31  : 0 ]      grid_addr_rfrom,
    output reg  [   31  : 0 ]      grid_addr_rto  ,
    output reg  [   31  : 0 ]      ftmp_addr_rfrom,
    output reg  [   31  : 0 ]      ftmp_addr_rto  ,
    output reg  [   11  : 0 ]      ftmp_w         ,
    output reg  [   11  : 0 ]      ftmp_h         ,
    output reg  [   31  : 0 ]      ftmp_addr_wfrom,
    output reg  [   25  : 0 ]      coef_a         ,
    output reg  [   25  : 0 ]      coef_b         ,
    output reg  [   25  : 0 ]      coef_c         ,
    output reg  [   25  : 0 ]      coef_d         ,
    output reg  [   25  : 0 ]      coef_e         ,
    output reg  [   25  : 0 ]      coef_f         ,
    output reg  [   31  : 0 ]      mode           ,

    output reg                     soft_rst       ,

    output                         remap_start    ,
    input                          remap_done     ,
    output reg                     interrupt_valid,
    input                          interrupt_ready,

    input                          ddr_clk        ,
    input                          ddr_clk_rst     
);

    wire  [31 : 0]          slv_reg0            ;
    wire  [31 : 0]          slv_reg1            ;
    wire  [31 : 0]          slv_reg2            ;
    wire  [31 : 0]          slv_reg3            ;
    wire  [31 : 0]          slv_reg4            ;
    wire  [31 : 0]          slv_reg5            ;
    wire  [31 : 0]          slv_reg6            ;
    wire  [31 : 0]          slv_reg7            ;
    wire  [31 : 0]          slv_reg8            ;
    wire  [31 : 0]          slv_reg9            ;
    wire  [31 : 0]          slv_reg10           ;
    wire  [31 : 0]          slv_reg11           ;
    wire  [31 : 0]          slv_reg12           ;
    wire  [31 : 0]          slv_reg13           ;
    wire  [31 : 0]          slv_reg14           ;
    wire  [31 : 0]          slv_reg15           ;
    wire  [31 : 0]          slv_reg16           ;
    wire  [31 : 0]          slv_reg17           ;
    wire  [31 : 0]          slv_reg18           ;
    wire  [31 : 0]          slv_reg19           ;

    wire                    slv_reg_rden        ;
    wire                    slv_reg_wren        ;
    reg                     remap_start_gp      ;
    reg                     remap_done_gp       ;
    wire                    remap_done_cross    ;
    wire  [31 : 0]          remap_version       ;
    reg   [31 : 0]          debug_reg           ; // for read write test
    reg   [31 : 0]          time_cnt            ;
    reg                     remap_running       ;
    reg                     soft_rst_d0         ;
    reg                     soft_rst_d1         ;
    //interrupt
     reg                    done_dly            ;
     wire                   interrupt_pulse     ;

    //------------------------------------------------ 
    //-- AXI-lite Write Register Control--
    //------------------------------------------------
    assign gpx.awwready = 1'b1;

    assign slv_reg_wren = gpx.awwready && gpx.awwvalid;

    assign gpx.arready = 1'b1;

    always @( posedge gp_clk )
    begin
      if ( gp_rst_n == 1'b0 )
          gpx.rvalid <= 0;
      else if (gpx.arready && gpx.arvalid)
          gpx.rvalid <= 1'b1;
      else if (gpx.rready)
          gpx.rvalid <= 1'b0;
    end
 
    assign slv_reg_rden = gpx.arready & gpx.arvalid;

    //------------------------------------------------
    //-- Registers File Definition --
    //------------------------------------------------
    // 10'h000 : 
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            grid_addr_rfrom <= 32'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h000)
            grid_addr_rfrom <= gpx.awwdata[31:0]; 
    end
    assign slv_reg0 = grid_addr_rfrom;

    // 10'h004 : 
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            grid_addr_rto <= 32'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h004)
            grid_addr_rto <= gpx.awwdata[31:0]; 
    end
    assign slv_reg1 = grid_addr_rto;

    // 10'h008 : 
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            ftmp_addr_rfrom <= 32'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h008)
            ftmp_addr_rfrom <= gpx.awwdata[31:0]; 
    end
    assign slv_reg2 = ftmp_addr_rfrom;

    // 10'h00C : 
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            ftmp_addr_rto <= 32'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h00C)
            ftmp_addr_rto <= gpx.awwdata[31:0]; 
    end
    assign slv_reg3 = ftmp_addr_rto;

    // 10'h010 : 
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            ftmp_w <= 12'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h010)
            ftmp_w <= gpx.awwdata[11:0]; 
    end
    assign slv_reg4 = {20'd0,ftmp_w};

    // 10'h014 : 
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            ftmp_h <= 32'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h014)
            ftmp_h <= gpx.awwdata[11:0]; 
    end
    assign slv_reg5 = {20'd0,ftmp_h};

    // 10'h018 : 
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            ftmp_addr_wfrom <= 32'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h018)
            ftmp_addr_wfrom <= gpx.awwdata[31:0]; 
    end
    assign slv_reg6 = ftmp_addr_wfrom;

    // 10'h01C : 
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            remap_start_gp <= 1'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h01C)
            remap_start_gp <= gpx.awwdata[0];
        else 
            remap_start_gp <= 1'h0;
    end
    assign slv_reg7 = {31'd0,remap_start_gp};

    pulse_cross u0_pulse_cross(
        .a2    (remap_start    ),
        .clk2  (ddr_clk        ),
        .rst2  (ddr_clk_rst    ),

        .a1    (remap_start_gp ),
        .clk1  (gp_clk         ),
        .rst1  (~gp_rst_n      )
     );

    // 10'h020 : 
    pulse_cross u1_pulse_cross(
        .a2    (remap_done_cross ),
        .clk2  (gp_clk           ),
        .rst2  (~gp_rst_n        ),
  
        .a1    (remap_done       ),
        .clk1  (ddr_clk          ),
        .rst1  (ddr_clk_rst      )
     );

    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            remap_done_gp <= 1'h0;
        else if(slv_reg_wren && gpx.awwaddr[9:0]==10'h020 && gpx.awwdata[0] == 1'b1)
            remap_done_gp <= 1'b0;
        else if (remap_start_gp)
            remap_done_gp <= 1'b0;
        else if (remap_done_cross)
            remap_done_gp <= 1'b1;
    end
    assign slv_reg8 = {31'd0,remap_done_gp};

    //interrupt
    always @( posedge gp_clk ) begin
        if ( gp_rst_n == 1'b0 )
            done_dly <= 1'b0    ;
        else
            done_dly <= remap_done_gp;
    end
    always @( posedge gp_clk ) begin
        if ( gp_rst_n == 1'b0 )
            interrupt_valid <= 1'b0;
        else if(interrupt_pulse)
            interrupt_valid <= 1'b1;
        else if(interrupt_ready)
            interrupt_valid <= 1'b0;
    end
    assign interrupt_pulse = remap_done_gp & ~done_dly;

    // 10'h024 :
    always @( posedge gp_clk )
    begin
        if(gp_rst_n == 1'b0)
            remap_running <= 1'b0;
        else if(remap_start_gp)
            remap_running <= 1'b1;
        else if(remap_done_gp)
            remap_running <= 1'b0;
    end

    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            time_cnt <= 32'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h024 && gpx.awwdata[0] == 1'b1)
            time_cnt <= 32'h0;
        else if (remap_start_gp)
            time_cnt <= 32'h0;
        else if(remap_running)
            time_cnt <= time_cnt + 1'b1;
    end
    assign slv_reg9 = time_cnt;

    // 10'h028 :
    assign remap_version = 32'h20240511; 
    assign slv_reg10 = remap_version;

    // 10'h02C : 
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            debug_reg <= 32'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h02C)
            debug_reg <= gpx.awwdata[31:0]; 
    end
    assign slv_reg11 = debug_reg; 

    // 10'h030 : 
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            coef_a <= 12'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h030)
            coef_a <= gpx.awwdata[25:0]; 
    end
    assign slv_reg12 = {6'd0,coef_a}; 

    // 10'h034 : 
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            coef_c <= 12'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h034)
            coef_c <= gpx.awwdata[25:0]; 
    end
    assign slv_reg13 = {6'd0,coef_c}; 

    // 10'h038 : 
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            coef_e <= 12'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h038)
            coef_e <= gpx.awwdata[25:0]; 
    end
    assign slv_reg14 = {6'd0,coef_e}; 

    // 10'h03C : 
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            coef_f <= 12'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h03C)
            coef_f <= gpx.awwdata[25:0]; 
    end
    assign slv_reg15 = {6'd0,coef_f};                 

    // 10'h040 : 
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            soft_rst_d0 <= 1'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h040)
            soft_rst_d0 <= gpx.awwdata[0]; 
    end
    assign slv_reg16 = {31'd0,soft_rst_d0}; 

    always@(posedge ddr_clk) begin
        soft_rst_d1 <= soft_rst_d0;
        soft_rst <= soft_rst_d1;
    end

    // 10'h044 : 
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            coef_b <= 12'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h044)
            coef_b <= gpx.awwdata[25:0]; 
    end
    assign slv_reg17 = {6'd0,coef_b};   

    // 10'h048 : 
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            coef_d <= 12'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h048)
            coef_d <= gpx.awwdata[25:0]; 
    end
    assign slv_reg18 = {6'd0,coef_d};   

    // 10'h04C : //{13 rfu,16 pad_data ,1 pad_mode,1 interp_mode,1 data_type}
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            mode <= 12'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h04C)
            mode <= gpx.awwdata[31:0]; 
    end
    assign slv_reg19 = mode;   

//gp read reg

always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            gpx.rdata  <= 0;
        else if(slv_reg_rden )
            case(gpx.araddr[9:0])
                10'h000 :  gpx.rdata <= slv_reg0 ;
                10'h004 :  gpx.rdata <= slv_reg1 ;
                10'h008 :  gpx.rdata <= slv_reg2 ;
                10'h00C :  gpx.rdata <= slv_reg3 ;
                10'h010 :  gpx.rdata <= slv_reg4 ;
                10'h014 :  gpx.rdata <= slv_reg5 ; 
                10'h018 :  gpx.rdata <= slv_reg6 ;
                10'h01C :  gpx.rdata <= slv_reg7 ; 
                10'h020 :  gpx.rdata <= slv_reg8 ; 
                10'h024 :  gpx.rdata <= slv_reg9 ;
                10'h028 :  gpx.rdata <= slv_reg10;
                10'h02C :  gpx.rdata <= slv_reg11;
                10'h030 :  gpx.rdata <= slv_reg12;
                10'h034 :  gpx.rdata <= slv_reg13;
                10'h038 :  gpx.rdata <= slv_reg14;
                10'h03C :  gpx.rdata <= slv_reg15;
                10'h040 :  gpx.rdata <= slv_reg16;
                10'h044 :  gpx.rdata <= slv_reg17;
                10'h048 :  gpx.rdata <= slv_reg18;
                10'h04C :  gpx.rdata <= slv_reg19;
                default:  gpx.rdata <= 32'h0     ;
            endcase
    end

endmodule
