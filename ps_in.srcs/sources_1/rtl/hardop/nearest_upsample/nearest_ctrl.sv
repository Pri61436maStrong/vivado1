//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : addr_coef.v
// Author        : 
// Project       : NB2337
// Create Date   : 2023.06.19
// Description   : 
//------------------------------------------------------------------------------
//addr     |F000
//------------------------------------------------------------------------------
//name     |nearest_start_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:1]             |[0]
//------------------------------------------------------------------------------
//authority|RO                 |WC
//bit name |rfu                |img_cmd
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F004
//------------------------------------------------------------------------------
//name     |nearest_done_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:1]             |[0]
//------------------------------------------------------------------------------
//authority|RO                 |W1C
//bit name |rfu                |nearest_done
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F008
//------------------------------------------------------------------------------
//name     |nearest_version_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:0]     
//------------------------------------------------------------------------------
//authority|RO           
//bit name |nearest_version          
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F00C
//------------------------------------------------------------------------------
//name     |test_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:0]            
//------------------------------------------------------------------------------
//authority|RW            
//bit name |test           
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F010
//------------------------------------------------------------------------------
//name     |time_cnt_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:0]           
//--------------------------------------------------------------
//authority|W0C            
//bit name |time_cnt           
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F014
//------------------------------------------------------------------------------
//name     |soft_rst_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:1]             |[0]
//------------------------------------------------------------------------------
//authority|RO                 |RW
//bit name |rfu                |soft_rst_d0
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F018
//------------------------------------------------------------------------------
//name     |status0_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:0]         
//------------------------------------------------------------------------------
//authority|RO                 
//bit name |status0            
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F01C
//------------------------------------------------------------------------------
//name     |src_xbase_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:0]             
//------------------------------------------------------------------------------
//authority|RW               
//bit name |src_xbase              
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F020
//------------------------------------------------------------------------------
//name     |src_ybase_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:0]            
//------------------------------------------------------------------------------
//authority|RW                 
//bit name |src_ybase                
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F024
//------------------------------------------------------------------------------
//name     |dst_xsize_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:16]            |[15:0]
//------------------------------------------------------------------------------
//authority|RO                 |RW
//bit name |rfu                |dst_xsize
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F028
//------------------------------------------------------------------------------
//name     |dst_ysize_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:16]            |[15:0]
//------------------------------------------------------------------------------
//authority|RO                 |RW
//bit name |rfu                |dst_ysize
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F02C
//------------------------------------------------------------------------------
//name     |src_xsize_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:16]            |[15:0]
//------------------------------------------------------------------------------
//authority|RO                 |RW
//bit name |rfu                |src_xsize
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F030
//------------------------------------------------------------------------------
//name     |src_ysize_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:16]            |[15:0]
//------------------------------------------------------------------------------
//authority|RO                 |RW
//bit name |rfu                |src_ysize
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F034
//------------------------------------------------------------------------------
//name     |src_xstep_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:0]        
//------------------------------------------------------------------------------
//authority|RW          
//bit name |src_xstep   
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F038
//------------------------------------------------------------------------------
//name     |src_ystep_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:0]           
//------------------------------------------------------------------------------
//authority|RW            
//bit name |src_ystep     
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F03C
//------------------------------------------------------------------------------
//name     |ct_size_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:16]            |[15:0]
//------------------------------------------------------------------------------
//authority|RO                 |RW
//bit name |rfu                |ct_size
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F040
//------------------------------------------------------------------------------
//name     |arbase_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:0]           
//------------------------------------------------------------------------------
//authority|RW      
//bit name |arbase     
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F044
//------------------------------------------------------------------------------
//name     |awbase_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:0]           
//------------------------------------------------------------------------------
//authority|RW      
//bit name |awbase     
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F048
//------------------------------------------------------------------------------
//name     |last_awaddr_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:0]           
//------------------------------------------------------------------------------
//authority|RW      
//bit name |last_awaddr     
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F04C
//------------------------------------------------------------------------------
//name     |staus1_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:21]    |[20]          |[19]        |[18:1]    |[0]
//------------------------------------------------------------------------------
//authority|RO         |RO            |RO          |RO        |RO
//bit name |rfu1       |nearest_runing|rfu2        |ct        |coord_last
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F050
//------------------------------------------------------------------------------
//name     |ct_addr_step_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:0]           
//------------------------------------------------------------------------------
//authority|RW      
//bit name |ct_addr_step     
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F054
//------------------------------------------------------------------------------
//name     |ardwdc_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:4]       |[3:0]           
//------------------------------------------------------------------------------
//authority|RO           |RW
//bit name |rfu          |ardwdc
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F058
//------------------------------------------------------------------------------
//name     |awdwdc_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:4]       |[3:0]           
//------------------------------------------------------------------------------
//authority|RO           |RW
//bit name |rfu          |awdwdc
//------------------------------------------------------------------------------

// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module nearest_ctrl #(parameter AW=32)(                     
    input                          gp_clk         ,
    input                          gp_rst_n       ,
    mna_gp_ww_itf.slave            gpx            ,

    output reg  [  AW-1 : 0 ]      src_xbase      ,  //{16uint,16dec} 
    output reg  [  AW-1 : 0 ]      src_ybase      ,  //{16uint,16dec} 
    output reg  [AW/2-1 : 0 ]      dst_xsize      ,
    output reg  [AW/2-1 : 0 ]      dst_ysize      ,
    output reg  [AW/2-1 : 0 ]      src_xsize      ,
    output reg  [AW/2-1 : 0 ]      src_ysize      ,
    output reg  [  AW-1 : 0 ]      src_xstep      ,
    output reg  [  AW-1 : 0 ]      src_ystep      ,
    output reg  [AW/2-1 : 0 ]      ct_size        ,
    output                         start          ,
    input                          awdone         ,
    input       [   31  : 0 ]      status0        ,
    input       [   18  : 0 ]      status1        ,
    output reg  [ AW-1  : 0 ]      arbase         ,
    output reg  [ AW-1  : 0 ]      awbase         ,
    output reg  [ AW-1  : 0 ]      last_awaddr    ,
    output reg                     soft_rst       ,
    output reg  [ AW-1  : 0 ]      ct_addr_step   ,
    output reg  [    3  : 0 ]      ardwdc         ,
    output reg  [    3  : 0 ]      awdwdc         ,
    output reg                     interrupt_valid,
    input                          interrupt_ready,

    input                          ddr_clk        ,
    input                          ddr_rst     
);
    wire                   slv_reg_rden              ;
    wire                   slv_reg_wren              ;
    reg                    img_cmd                   ;
    wire                   awdone_cross              ;
    reg                    nearest_done              ;
    wire  [31: 0]          nearest_version           ;
    reg   [31: 0]          test                      ;    
    reg   [31: 0]          time_cnt                  ;    
    reg                    nearest_running           ;
    reg                    soft_rst_d0               ;
    reg                    soft_rst_d1               ;

    wire  [31 :0]          nearest_start_gp_domain   ;
    wire  [31 :0]          nearest_done_gp_domain    ;
    wire  [31 :0]          nearest_version_gp_domain ;
    wire  [31 :0]          test_gp_domain            ;
    wire  [31 :0]          time_cnt_gp_domain        ;
    wire  [31 :0]          soft_rst_gp_domain        ;
    wire  [31 :0]          status0_gp_domain         ;
    wire  [31 :0]          src_xbase_gp_domain       ;
    wire  [31 :0]          src_ybase_gp_domain       ;
    wire  [31 :0]          dst_xsize_gp_domain       ;
    wire  [31 :0]          dst_ysize_gp_domain       ;
    wire  [31 :0]          src_xsize_gp_domain       ;
    wire  [31 :0]          src_ysize_gp_domain       ;
    wire  [31 :0]          src_xstep_gp_domain       ;
    wire  [31 :0]          src_ystep_gp_domain       ;
    wire  [31 :0]          ct_size_gp_domain         ;
    wire  [31 :0]          arbase_gp_domain          ;
    wire  [31 :0]          awbase_gp_domain          ;
    wire  [31 :0]          last_awaddr_gp_domain     ;
    wire  [31 :0]          staus1_gp_domain          ;
    wire  [31 :0]          ct_addr_step_gp_domain    ;
    wire  [31 :0]          ardwdc_gp_domain          ;
    wire  [31 :0]          awdwdc_gp_domain          ;
    wire  [15 :0]          dst_x                     ;
    wire  [15 :0]          dst_y                     ;
    wire                   coord_last                ;
    wire  [17: 0]          ct                        ;
    //interrupt
    reg                    done_dly                  ;
    wire                   interrupt_pulse           ;

    //------------------------------------------------
    //-- AXI-lite Write Register Control--
    //------------------------------------------------
    assign dst_x = status0[15:0];
    assign dst_y = status0[31:16];
    assign coord_last = status1[0];
    assign ct = status1[18:1];
    assign gpx.awwready = 1'b1;

    assign slv_reg_wren = gpx.awwready && gpx.awwvalid;

    assign gpx.arready = ~gpx.rvalid | gpx.rready;

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
    // 10'h000 : nearest_start_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            img_cmd <= 1'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h000)
            img_cmd <= gpx.awwdata[0];
		else
		    img_cmd <= 1'h0; 
    end
    assign nearest_start_gp_domain = {31'd0, img_cmd};

    pulse_cross pulse_cross_u0(
        .a2    (start          ),
        .clk2  (ddr_clk        ),
        .rst2  (ddr_rst        ),

        .a1    (img_cmd        ),
        .clk1  (gp_clk         ),
        .rst1  (~gp_rst_n      )
     );

    // 10'h004 : nearest_done_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            nearest_done <= 1'h0;
        else if(slv_reg_wren && gpx.awwaddr[9:0]==10'h004 && gpx.awwdata[0] == 1'b1)
            nearest_done <= 1'b0;
        else if (img_cmd)
            nearest_done <= 1'b0;
        else if (awdone_cross)
            nearest_done <= 1'b1;
    end
    assign nearest_done_gp_domain = {31'h0,nearest_done};

    //interrupt
    always @( posedge gp_clk ) begin
        if ( gp_rst_n == 1'b0 )
            done_dly <= 1'b0    ;
        else
            done_dly <= nearest_done;
    end
    always @( posedge gp_clk ) begin
        if ( gp_rst_n == 1'b0 )
            interrupt_valid <= 1'b0;
        else if(interrupt_pulse)
            interrupt_valid <= 1'b1;
        else if(interrupt_ready)
            interrupt_valid <= 1'b0;
    end
    assign interrupt_pulse = nearest_done & ~done_dly;

    pulse_cross pulse_cross_u1(
        .a2    (awdone_cross    ),
        .clk2  (gp_clk          ),
        .rst2  (~gp_rst_n       ),

        .a1    (awdone          ),
        .clk1  (ddr_clk         ),
        .rst1  (ddr_rst         )
     );
     
    // 10'h008 : nearest_version_gp_domain
    assign nearest_version = 32'h23082200;
    assign nearest_version_gp_domain = nearest_version;
    
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
            time_cnt <= 32'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h010 && gpx.awwdata[0] == 1'b0 )
            time_cnt <= 32'h0;
        else if (img_cmd)
            time_cnt <= 32'h0;
        else if(nearest_running)
            time_cnt <= time_cnt + 1'b1;
    end
    assign time_cnt_gp_domain = time_cnt;

    always @( posedge gp_clk )
    begin
        if(gp_rst_n == 1'b0)
            nearest_running <= 1'b0;
        else if(img_cmd)
            nearest_running <= 1'b1;
        else if(awdone_cross)
            nearest_running <= 1'b0;
    end
    // 10'h014 : soft_rst_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            soft_rst_d0 <= 1'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h014)
            soft_rst_d0 <=  gpx.awwdata[0];
    end
    assign soft_rst_gp_domain = {31'd0,soft_rst_d0};
    always@(posedge ddr_clk) begin
        soft_rst_d1 <= soft_rst_d0;
        soft_rst <= soft_rst_d1;
    end

    // 10'h018 : status0_gp_domain

    //assign status0_gp_domain = status0;
    assign status0_gp_domain[15:0] = dst_x;
    assign status0_gp_domain[31:16] = dst_y;
    // 10'h01C : src_xbase_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            src_xbase <= 1'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h01C)
            src_xbase <=  gpx.awwdata;
    end
    assign src_xbase_gp_domain = src_xbase;

     // 10'h020 : src_ybase_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            src_ybase <= 1'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h020)
            src_ybase <=  gpx.awwdata;
    end
    assign src_ybase_gp_domain = src_ybase;

    // 10'h024 : dst_xsize_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            dst_xsize <= 1'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h024)
            dst_xsize <=  gpx.awwdata[15:0];
    end
    assign dst_xsize_gp_domain = {16'd0,dst_xsize};

    // 10'h028 : dst_ysize_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            dst_ysize <= 1'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h028)
            dst_ysize <=  gpx.awwdata[15:0];
    end
    assign dst_ysize_gp_domain = {16'd0,dst_ysize};

    // 10'h02C : src_xsize_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            src_xsize <= 1'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h02C)
            src_xsize <=  gpx.awwdata[15:0];
    end
    assign src_xsize_gp_domain = {16'd0,src_xsize};

    // 10'h030 : src_ysize_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            src_ysize <= 1'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h030)
            src_ysize <=  gpx.awwdata[15:0];
    end
    assign src_ysize_gp_domain = {16'd0,src_ysize};

    // 10'h034 : src_xstep_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            src_xstep <= 1'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h034)
            src_xstep <=  gpx.awwdata;
    end
    assign src_xstep_gp_domain = src_xstep;

    // 10'h038 : src_ystep_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            src_ystep <= 1'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h038)
            src_ystep <=  gpx.awwdata;
    end
    assign src_ystep_gp_domain = src_ystep;

    // 10'h03C : ct_size_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            ct_size <= 1'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h03C)
            ct_size <=  gpx.awwdata[15:0];
    end
    assign ct_size_gp_domain = {16'd0,ct_size};

    // 10'h040 : arbase_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            arbase <= 1'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h040)
            arbase <=  gpx.awwdata;
    end
    assign arbase_gp_domain = arbase;

    // 10'h044 : awbase_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            awbase <= 1'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h044)
            awbase <=  gpx.awwdata;
    end
    assign awbase_gp_domain = awbase;

    // 10'h048 : last_awaddr_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            last_awaddr <= 1'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h048)
            last_awaddr <=  gpx.awwdata;
    end
    assign last_awaddr_gp_domain = last_awaddr;   

    // 10'h04C : staus1_gp_domain
    //assign staus1_gp_domain = {11'd0,nearest_running,1'b0,status1};
    assign staus1_gp_domain[0] = coord_last;
    assign staus1_gp_domain[18:1] = ct;
    assign staus1_gp_domain[19] = 1'b0;
    assign staus1_gp_domain[20] = nearest_running;
    assign staus1_gp_domain[31:21] = 11'h0;
    // 10'h050 : ct_addr_step_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            ct_addr_step <= 1'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h050)
            ct_addr_step <=  gpx.awwdata;
    end
    assign ct_addr_step_gp_domain = ct_addr_step;   

    // 10'h054 : ardwdc_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            ardwdc <= 4'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h054)
            ardwdc <=  gpx.awwdata[3:0];
    end
    assign ardwdc_gp_domain = {28'd0,ardwdc}; 

    // 10'h058 : awdwdc_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            awdwdc <= 4'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h058)
            awdwdc <=  gpx.awwdata[3:0];
    end
    assign awdwdc_gp_domain = {28'd0,awdwdc};

//gp read reg

always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            gpx.rdata  <= 0;
        else if(slv_reg_rden )
            case(gpx.araddr[9:0])
                10'h000 :  gpx.rdata <= nearest_start_gp_domain  ;
                10'h004 :  gpx.rdata <= nearest_done_gp_domain   ;
                10'h008 :  gpx.rdata <= nearest_version_gp_domain;
                10'h00C :  gpx.rdata <= test_gp_domain           ;
                10'h010 :  gpx.rdata <= time_cnt_gp_domain       ;
                10'h014 :  gpx.rdata <= soft_rst_gp_domain       ; 
                10'h018 :  gpx.rdata <= status0_gp_domain        ;
                10'h01C :  gpx.rdata <= src_xbase_gp_domain      ;
                10'h020 :  gpx.rdata <= src_ybase_gp_domain      ;
                10'h024 :  gpx.rdata <= dst_xsize_gp_domain      ;
                10'h028 :  gpx.rdata <= dst_ysize_gp_domain      ;
                10'h02C :  gpx.rdata <= src_xsize_gp_domain      ;
                10'h030 :  gpx.rdata <= src_ysize_gp_domain      ;
                10'h034 :  gpx.rdata <= src_xstep_gp_domain      ;
                10'h038 :  gpx.rdata <= src_ystep_gp_domain      ;
                10'h03C :  gpx.rdata <= ct_size_gp_domain        ;
                10'h040 :  gpx.rdata <= arbase_gp_domain         ;
                10'h044 :  gpx.rdata <= awbase_gp_domain         ;
                10'h048 :  gpx.rdata <= last_awaddr_gp_domain    ;
                10'h04C :  gpx.rdata <= staus1_gp_domain         ;
                10'h050 :  gpx.rdata <= ct_addr_step_gp_domain   ;
                10'h054 :  gpx.rdata <= ardwdc_gp_domain         ;
                10'h058 :  gpx.rdata <= awdwdc_gp_domain         ;
                default:  gpx.rdata <= 32'h0                     ;
            endcase
    end

endmodule
