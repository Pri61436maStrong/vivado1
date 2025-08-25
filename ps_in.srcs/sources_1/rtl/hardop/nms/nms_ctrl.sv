//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : nms_ctrl.v
// Author        : 
// Project       : NB2337
// Create Date   : 2023.06.19
// Description   : 
//------------------------------------------------------------------------------
//addr     |F000
//------------------------------------------------------------------------------
//name     |nms_start_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:1]             |[0]
//------------------------------------------------------------------------------
//authority|RO                 |wc
//bit name |rfu                |nms_start_gp
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F004
//------------------------------------------------------------------------------
//name     |nms_done_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:1]             |[0]
//------------------------------------------------------------------------------
//authority|RO                 |w1c
//bit name |rfu                |nms_done_gp
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F008
//------------------------------------------------------------------------------
//name     |nms_version_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:0]     
//------------------------------------------------------------------------------
//authority|RO           
//bit name |nms_version          
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
//bit name |rfu                |soft_rst
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F018
//------------------------------------------------------------------------------
//name     |status_gp_domain  
//------------------------------------------------------------------------------
//bit      |[31:10]   |[9:7]    |[6:4]     |[3:1]     |[0] 
//------------------------------------------------------------------------------
//authority|RO        |RO       |RO        |RO        |RO          
//bit name |rfu       |awfifo_st|rfifo_st  |arfifo_st |nms_running    
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F01C
//------------------------------------------------------------------------------
//name     |arbase_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:0]             
//------------------------------------------------------------------------------
//authority|RW               
//bit name |arbase              
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F020
//------------------------------------------------------------------------------
//name     |awbase_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:0]            
//------------------------------------------------------------------------------
//authority|RW                 
//bit name |awbase                
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F024
//------------------------------------------------------------------------------
//name     |last_araddr_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:0]        
//------------------------------------------------------------------------------
//authority|RW                 
//bit name |last_araddr             
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F028
//------------------------------------------------------------------------------
//name     |last_awaddr_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:0]            
//------------------------------------------------------------------------------
//authority|RW                 
//bit name |last_awaddr               
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F02C
//------------------------------------------------------------------------------
//name     |group_num_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:0]        
//------------------------------------------------------------------------------
//authority|RW                 
//bit name |group_num          
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F030
//------------------------------------------------------------------------------
//name     |mode_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:1]   |[0]          
//------------------------------------------------------------------------------
//authority|RO       |RW         
//bit name |rfu      |mode            
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F034
//------------------------------------------------------------------------------
//name     |threshold_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:16]        |[15:0]  
//------------------------------------------------------------------------------
//authority|RO             |RW  
//bit name |rfu            |threshold   
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//addr     |F038
//------------------------------------------------------------------------------
//name     |anchor_hpsize_gp_domain
//------------------------------------------------------------------------------
//bit      |[31:0]           
//------------------------------------------------------------------------------
//authority|RW      
//bit name |anchor_hpsize     
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module nms_ctrl #(parameter AW=32)(                     
    input                          gp_clk         ,
    input                          gp_rst_n       ,
    mna_gp_ww_itf.slave            gpx            ,

    output reg  [  AW-1 : 0 ]      arbase         ,  
    output reg  [  AW-1 : 0 ]      awbase         ,  
    output reg  [  AW-1 : 0 ]      last_araddr    ,
    output reg  [  AW-1 : 0 ]      last_awaddr    ,
    output reg  [  AW-1 : 0 ]      group_num      ,
    output reg                     mode           ,
    output reg  [  16-1 : 0 ]      threshold      ,
    output                         nms_start      ,
    input                          nms_done       ,
    input       [   31  : 0 ]      status         ,
    output reg                     soft_rst       ,
    output                         cu_start       ,
    input                          cu_done        ,
    output reg  [  AW-1 : 0 ]      anchor_hpsize  ,
    input       [     2 : 0 ]      arfifo_st      ,
    input       [     2 : 0 ]      rfifo_st       ,
    input       [     2 : 0 ]      awfifo_st      ,
    output reg                     interrupt_valid,
    input                          interrupt_ready,

    input                          hp_clk         ,
    input                          hp_rst         ,
    input                          ddr_clk        ,
    input                          ddr_rst     
);
    reg   [9 : 0]          axi_awaddr                ;
    reg   [9 : 0]          axi_araddr                ;
    reg   [31: 0]          axi_awdata                ;
    wire                   slv_reg_rden              ;
    wire                   slv_reg_wren              ;
    reg                    nms_start_gp              ;
    wire                   nms_done_cross            ;
    reg                    nms_done_gp               ;
    wire  [31: 0]          nms_version               ;
    reg   [31: 0]          test                      ;    
    reg   [31: 0]          time_cnt                  ;    
    reg                    nms_running               ;
    reg                    soft_rst_d0               ;
    reg                    soft_rst_d1               ;

    wire  [31 :0]          nms_start_gp_domain       ;
    wire  [31 :0]          nms_done_gp_domain        ;
    wire  [31 :0]          nms_version_gp_domain     ;
    wire  [31 :0]          test_gp_domain            ;
    wire  [31 :0]          time_cnt_gp_domain        ;
    wire  [31 :0]          soft_rst_gp_domain        ;
    wire  [31 :0]          status_gp_domain          ;
    wire  [31 :0]          arbase_gp_domain          ;
    wire  [31 :0]          awbase_gp_domain          ;
    wire  [31 :0]          last_araddr_gp_domain     ;
    wire  [31 :0]          last_awaddr_gp_domain     ;
    wire  [31 :0]          group_num_gp_domain       ;
    wire  [31 :0]          mode_gp_domain            ;
    wire  [31 :0]          threshold_gp_domain       ;
    wire  [31 :0]          anchor_hpsize_gp_domain   ;
    //interrupt
    reg                    done_dly                  ;
    wire                   interrupt_pulse           ;

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
    // 10'h000 : nms_start_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            nms_start_gp <= 1'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h000)
            nms_start_gp <= gpx.awwdata[0];
		else
		    nms_start_gp <= 1'h0; 
    end
    assign nms_start_gp_domain = {31'd0, nms_start_gp};

    pulse_cross pulse_cross_u0(
        .a2    (nms_start      ),
        .clk2  (ddr_clk        ),
        .rst2  (ddr_rst        ),

        .a1    (nms_start_gp   ),
        .clk1  (gp_clk         ),
        .rst1  (~gp_rst_n      )
     );

    // 10'h004 : nms_done_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            nms_done_gp <= 1'h0;
        else if(slv_reg_wren && gpx.awwaddr[9:0]==10'h004 && gpx.awwdata[0] == 1'b1)
            nms_done_gp <= 1'b0;
        else if (nms_start_gp)
            nms_done_gp <= 1'b0;
        else if (nms_done_cross)
            nms_done_gp <= 1'b1;
    end
    assign nms_done_gp_domain = {31'h0,nms_done_gp};

    //interrupt
    always @( posedge gp_clk ) begin
        if ( gp_rst_n == 1'b0 )
            done_dly <= 1'b0    ;
        else
            done_dly <= nms_done_gp;
    end
    always @( posedge gp_clk ) begin
        if ( gp_rst_n == 1'b0 )
            interrupt_valid <= 1'b0;
        else if(interrupt_pulse)
            interrupt_valid <= 1'b1;
        else if(interrupt_ready)
            interrupt_valid <= 1'b0;
    end
    assign interrupt_pulse = nms_done_gp & ~done_dly;

    pulse_cross pulse_cross_u1(
        .a2    (nms_done_cross  ),
        .clk2  (gp_clk          ),
        .rst2  (~gp_rst_n       ),

        .a1    (nms_done        ),
        .clk1  (hp_clk          ),
        .rst1  (hp_rst          )
     );
     
    // 10'h008 : nms_version_gp_domain
    assign nms_version = 32'h23110200;
    assign nms_version_gp_domain = nms_version;
    
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
        else if (nms_start_gp)
            time_cnt <= 32'h0;
        else if(nms_running)
            time_cnt <= time_cnt + 1'b1;
    end
    assign time_cnt_gp_domain = time_cnt;

    always @( posedge gp_clk )
    begin
        if(gp_rst_n == 1'b0)
            nms_running <= 1'b0;
        else if(nms_start_gp)
            nms_running <= 1'b1;
        else if(nms_done_gp)
            nms_running <= 1'b0;
    end
    // 10'h014 : soft_rst_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            soft_rst_d0 <= 1'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h014)
            soft_rst_d0 <=  gpx.awwdata[0];
    end
    assign soft_rst_gp_domain = soft_rst_d0;
    always@(posedge ddr_clk) begin
        soft_rst_d1 <= soft_rst_d0;
        soft_rst <= soft_rst_d1;
    end

    // 10'h018 : status_gp_domain

    assign status_gp_domain = {22'd0,awfifo_st,rfifo_st,arfifo_st,nms_running};

    // 10'h01C : arbase_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            arbase <= 32'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h01C)
            arbase <=  gpx.awwdata;
    end
    assign arbase_gp_domain = arbase;

    // 10'h020 : awbase_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            awbase <= 32'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h020)
            awbase <=  gpx.awwdata;
    end
    assign awbase_gp_domain = awbase;

    // 10'h024 : last_araddr_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            last_araddr <= 32'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h024)
            last_araddr <=  gpx.awwdata;
    end
    assign last_araddr_gp_domain = last_araddr;   

    // 10'h028 : last_awaddr_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            last_awaddr <= 32'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h028)
            last_awaddr <=  gpx.awwdata;
    end
    assign last_awaddr_gp_domain = last_awaddr;   

    // 10'h02C : group_num_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            group_num <= 32'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h02C)
            group_num <=  gpx.awwdata;
    end
    assign group_num_gp_domain = group_num;   

    // 10'h030 : mode_gp_domain   //[0] 0:same_class 1:all_class  
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            mode <= 32'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h030)
            mode <=  gpx.awwdata[0];
    end
    assign mode_gp_domain = {31'd0,mode};   

    // 10'h034 : threshold_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            threshold <= 32'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h034)
            threshold <=  gpx.awwdata[15:0];
    end
    assign threshold_gp_domain = {16'd0,threshold};   

    // 10'h038 : anchor_hpsize_gp_domain
    always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            anchor_hpsize <= 32'h0;
        else if (slv_reg_wren && gpx.awwaddr[9:0]==10'h038)
            anchor_hpsize <=  gpx.awwdata;
    end
    assign anchor_hpsize_gp_domain = anchor_hpsize;   

//gp read reg

always @( posedge gp_clk )
    begin
        if ( gp_rst_n == 1'b0 )
            gpx.rdata  <= 0;
        else if(slv_reg_rden )
            case(gpx.araddr[9:0])
                10'h000 :  gpx.rdata <= nms_start_gp_domain      ;
                10'h004 :  gpx.rdata <= nms_done_gp_domain       ;
                10'h008 :  gpx.rdata <= nms_version_gp_domain    ;
                10'h00C :  gpx.rdata <= test_gp_domain           ;
                10'h010 :  gpx.rdata <= time_cnt_gp_domain       ;
                10'h014 :  gpx.rdata <= soft_rst_gp_domain       ; 
                10'h018 :  gpx.rdata <= status_gp_domain        ;
                10'h01C :  gpx.rdata <= arbase_gp_domain         ;
                10'h020 :  gpx.rdata <= awbase_gp_domain         ;
                10'h024 :  gpx.rdata <= last_araddr_gp_domain    ;
                10'h028 :  gpx.rdata <= last_awaddr_gp_domain    ;
                10'h02C :  gpx.rdata <= group_num_gp_domain      ;
                10'h030 :  gpx.rdata <= mode_gp_domain           ;
                10'h034 :  gpx.rdata <= threshold_gp_domain      ;
                10'h038 :  gpx.rdata <= anchor_hpsize_gp_domain  ;
                default:  gpx.rdata <= 32'h0                     ;
            endcase
    end

endmodule
