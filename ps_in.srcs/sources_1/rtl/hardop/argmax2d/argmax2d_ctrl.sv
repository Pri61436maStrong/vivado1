//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : argmax2d_ctrl.v
// Author        : Xu Yun
// Project       : 
// Create Date   : 2024.05.12
// Description   : 
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//      2024.08.15    You Tianwei    add cu_size
//==============================================================================

module argmax2d_ctrl #(parameter AW=32)(                     
    mna_gp_ww_itf.slave            gpx              ,
    // argmax2d ctrl & sts
    output                         argmax2d_start   ,
    input                          argmax2d_done    ,
    output reg                     argmax2d_soft_rst,
    input       [     1 : 0 ]      arfifo_st        ,
    input       [     1 : 0 ]      rfifo_st         ,
    input       [     1 : 0 ]      awfifo_st        ,  
    // argmax2d param
    output reg  [  AW-1 : 0 ]      arbase           ,  
    output reg  [  AW-1 : 0 ]      awbase           ,  
    output reg  [  AW-1 : 0 ]      last_araddr      ,
    output reg  [  AW-1 : 0 ]      last_awaddr      ,
    output reg  [   19  : 0 ]      cu_araddr_num    ,// w*h*cu/64-1，假设可以整�?
    output reg  [     2 : 0 ]      cu               ,// 0~5, log2(cu_val)
    output reg  [     4 : 0 ]      vld_cu_val       ,// vld_c_val mod cu_val
    output reg  [    25 : 0 ]      cu_size          ,//w*h*cu 

    output reg                     interrupt_valid  ,
    input                          interrupt_ready  ,

    // clk & rst
    input                          gp_clk           ,
    input                          gp_rst           ,
    input                          ddr_clk          ,
    input                          ddr_rst        
);
    wire                   gp_rst_n                    ;
    reg   [9 : 0]          axi_awaddr                  ;
    reg   [9 : 0]          axi_araddr                  ;
    reg   [31: 0]          axi_awdata                  ;
    wire                   slv_reg_rden                ;
    wire                   slv_reg_wren                ;

    reg                    argmax2d_start_gp           ;
    wire                   argmax2d_done_cross         ;
    reg                    argmax2d_done_gp            ;

    wire  [31: 0]          argmax2d_version            ;
    reg   [31: 0]          test                        ;    
    reg   [31: 0]          time_cnt                    ;    
    reg                    argmax2d_running            ;
    reg                    soft_rst_d0                 ;
    reg                    soft_rst_d1                 ;

    wire  [31 :0]          argmax2d_start_gp_domain    ;
    wire  [31 :0]          argmax2d_done_gp_domain     ;
    wire  [31 :0]          argmax2d_version_gp_domain  ;
    wire  [31 :0]          test_gp_domain              ;

    wire  [31 :0]          time_cnt_gp_domain          ;
    wire  [31 :0]          soft_rst_gp_domain          ;
    wire  [31 :0]          status_gp_domain            ;
    wire  [31 :0]          arbase_gp_domain            ;
    wire  [31 :0]          awbase_gp_domain            ;
    wire  [31 :0]          last_araddr_gp_domain       ;
    wire  [31 :0]          last_awaddr_gp_domain       ;

    wire  [31 :0]          cu_araddr_num_gp_domain     ;
    wire  [31 :0]          cu_gp_domain                ;
    wire  [31 :0]          vld_cu_val_gp_domain        ;
    wire  [31 :0]          cu_size_gp_domain           ;
    wire  [31 :0]          anchor_hpsize_gp_domain     ;
    //interrupt
    reg                    done_dly                  ;
    wire                   interrupt_pulse           ;    

    assign gp_rst_n = ~gp_rst;

    //------------------------------------------------ 
    //-- AXI-lite Write Register Control--
    //------------------------------------------------
    assign gpx.awwready = 1'b1;

    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            axi_awaddr <= 0;
        else if (gpx.awwvalid)
            axi_awaddr <= gpx.awwaddr[9:0];
    end

    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            axi_awdata <= 0;
        else if (gpx.awwvalid)
            axi_awdata <= gpx.awwdata;
    end

    assign slv_reg_wren = gpx.awwready && gpx.awwvalid;

    assign gpx.arready = 1'b1;

    always @( posedge gp_clk )
    begin
      if ( gp_rst_n == 1'b0 )
          axi_araddr  <= 10'h0;
      else if (gpx.arvalid)
          axi_araddr  <= gpx.araddr;
    end

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
    // 10'h000 : argmax2d_start_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            argmax2d_start_gp <= 1'h0          ;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h000)
            argmax2d_start_gp <= gpx.awwdata[0];
		else
		    argmax2d_start_gp <= 1'h0          ; 
    end
    assign argmax2d_start_gp_domain = {31'd0, argmax2d_start_gp};

    pulse_cross pulse_cross_u0(
        .a2    (argmax2d_start   ),
        .clk2  (ddr_clk          ),
        .rst2  (ddr_rst          ),

        .a1    (argmax2d_start_gp),
        .clk1  (gp_clk           ),
        .rst1  (~gp_rst_n        )
     );

    // 10'h004 : argmax2d_done_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            argmax2d_done_gp <= 1'h0;
        else if(slv_reg_wren && gpx.awwaddr[9:0]==10'h004 && gpx.awwdata[0] == 1'b1)
            argmax2d_done_gp <= 1'b0;
        else if (argmax2d_start_gp)
            argmax2d_done_gp <= 1'b0;
        else if (argmax2d_done_cross)
            argmax2d_done_gp <= 1'b1;
    end
    assign argmax2d_done_gp_domain = {31'h0,argmax2d_done_gp};

    //interrupt
    always @( posedge gp_clk ) begin
        if ( gp_rst_n == 1'b0 )
            done_dly <= 1'b0    ;
        else
            done_dly <= argmax2d_done_gp;
    end
    always @( posedge gp_clk ) begin
        if ( gp_rst_n == 1'b0 )
            interrupt_valid <= 1'b0;
        else if(interrupt_pulse)
            interrupt_valid <= 1'b1;
        else if(interrupt_ready)
            interrupt_valid <= 1'b0;
    end
    assign interrupt_pulse = argmax2d_done_gp & ~done_dly;

    pulse_cross pulse_cross_u1(
        .a2    (argmax2d_done_cross  ),
        .clk2  (gp_clk               ),
        .rst2  (~gp_rst_n            ),

        .a1    (argmax2d_done        ),
        .clk1  (ddr_clk              ),
        .rst1  (ddr_rst              )
     );
     
    // 10'h008 : argmax2d_version_gp_domain
    assign argmax2d_version = 32'h24073000;
    assign argmax2d_version_gp_domain = argmax2d_version;
    
    // 10'h00C : test_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            test <= 32'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h00C)
            test <= gpx.awwdata;
    end
    assign test_gp_domain = test;

    // 10'h010 : time_cnt_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            time_cnt <= 32'h0          ;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h010 && gpx.awwdata[0] == 1'b0 )
            time_cnt <= 32'h0          ;
        else if (argmax2d_start_gp)
            time_cnt <= 32'h0          ;
        else if(argmax2d_running)
            time_cnt <= time_cnt + 1'b1;
    end
    assign time_cnt_gp_domain = time_cnt;

    always @( posedge gp_clk )
    begin
        if(gp_rst_n == 1'b0)
            argmax2d_running <= 1'b0;
        else if(argmax2d_start_gp)
            argmax2d_running <= 1'b1;
        else if(argmax2d_done_gp)
            argmax2d_running <= 1'b0;
    end
    // 10'h014 : soft_rst_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            soft_rst_d0 <= 1'h0           ;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h014)
            soft_rst_d0 <=  gpx.awwdata[0];
    end
    assign soft_rst_gp_domain = soft_rst_d0;
    always@(posedge ddr_clk) begin
        soft_rst_d1 <= soft_rst_d0      ;
        argmax2d_soft_rst <= soft_rst_d1;
    end

    // 10'h018 : status_gp_domain
    assign status_gp_domain = {22'd0,awfifo_st,rfifo_st,arfifo_st,argmax2d_running};

    // 10'h01C : arbase_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            arbase <= 32'h0       ;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h01C)
            arbase <=  gpx.awwdata;
    end
    assign arbase_gp_domain = arbase;

    // 10'h020 : awbase_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            awbase <= 32'h0       ;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h020)
            awbase <=  gpx.awwdata;
    end
    assign awbase_gp_domain = awbase;

    // 10'h024 : last_araddr_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            last_araddr <= 32'h0       ;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h024)
            last_araddr <=  gpx.awwdata;
    end
    assign last_araddr_gp_domain = last_araddr;   

    // 10'h028 : last_awaddr_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            last_awaddr <= 32'h0       ;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h028)
            last_awaddr <=  gpx.awwdata;
    end
    assign last_awaddr_gp_domain = last_awaddr;   

    // 10'h02C : cu_araddr_num_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            cu_araddr_num <= 20'h0             ;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h02C)
            cu_araddr_num <=  gpx.awwdata[19:0];
    end
    assign cu_araddr_num_gp_domain = {12'd0, cu_araddr_num};   

    // 10'h030 : cu_gp_domain 
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            cu <= 3'h0             ;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h030)
            cu <=  gpx.awwdata[2:0];
    end
    assign cu_gp_domain = {29'd0,cu};   

    // 10'h034 : vld_cu_val_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            vld_cu_val <= 5'h0            ;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h034)
            vld_cu_val <=  gpx.awwdata[4:0];
    end
    assign vld_cu_val_gp_domain = {27'd0,vld_cu_val};   

    // 10'h038 : cu_size_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            cu_size  <= 26'h0            ;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h038)
            cu_size <=  gpx.awwdata[25:0];
    end
    assign cu_size_gp_domain = {6'd0,cu_size}; 

//gp read reg

always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            gpx.rdata  <= 0;
        else if(slv_reg_rden )
            case(gpx.araddr[9:0])
                10'h000 :  gpx.rdata <= argmax2d_start_gp_domain      ;
                10'h004 :  gpx.rdata <= argmax2d_done_gp_domain       ;
                10'h008 :  gpx.rdata <= argmax2d_version_gp_domain    ;
                10'h00C :  gpx.rdata <= test_gp_domain                ;
                10'h010 :  gpx.rdata <= time_cnt_gp_domain            ;
                10'h014 :  gpx.rdata <= soft_rst_gp_domain            ; 
                10'h018 :  gpx.rdata <= status_gp_domain              ;
                10'h01C :  gpx.rdata <= arbase_gp_domain              ;
                10'h020 :  gpx.rdata <= awbase_gp_domain              ;
                10'h024 :  gpx.rdata <= last_araddr_gp_domain         ;
                10'h028 :  gpx.rdata <= last_awaddr_gp_domain         ;
                10'h02C :  gpx.rdata <= cu_araddr_num_gp_domain       ;
                10'h030 :  gpx.rdata <= cu_gp_domain                  ;
                10'h034 :  gpx.rdata <= vld_cu_val_gp_domain          ;
                10'h038 :  gpx.rdata <= cu_size_gp_domain             ;                
                default:  gpx.rdata <= 32'h0                          ;
            endcase
    end

endmodule