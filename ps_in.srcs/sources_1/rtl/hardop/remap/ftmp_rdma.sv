//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : ftmp_rdma.v
// Author        : 
// Project       : NB2338
// Create Date   : 2024.04.26
// Description   : 

//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module ftmp_rdma #(parameter AW=32, BAW=10, DW=512, IFW=32)(                     
    output  reg  [  AW-1 : 0 ]    araddr           ,
    output       [ IFW-1 : 0 ]    arinfo           ,
    output  reg                   arvalid          ,
    input                         arready          ,

    input        [  DW-1 : 0 ]    rdata            ,
    input        [ IFW-1 : 0 ]    rinfo            ,
    input                         rvalid           ,
    output                        rready           ,

    output       [  DW-1 : 0 ]    ftmp_load_data   ,
    output  reg  [ BAW-1 : 0 ]    ftmp_load_addr   ,
    output  reg  [  AW-1 : 0 ]    ftmp_load_from   ,
    output  reg  [  AW-1 : 0 ]    ftmp_load_to     ,
    //output                        ftmp_load_first  ,
    output  reg                   ftmp_load_finish ,
    output                        ftmp_load_valid  ,
    input                         ftmp_load_ready  , 

    input                         remap_start      ,
    input        [  AW-1 : 0 ]    ftmp_addr_rfrom  ,
    input        [  AW-1 : 0 ]    ftmp_addr_rto    ,
    input        [  AW-1 : 0 ]    refresh_addr_base, 
    input                         refresh_flag     ,   
    
    input                         ddr_clk          ,
    input                         ddr_clk_rst        
);

    reg                           arfirst          ;
    wire                          arlast           ;
    reg          [    10 : 0 ]    load_cnt         ;
    reg          [    31 : 0 ]    ftmp_rcnt        ;

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            ftmp_rcnt <= 32'b0;
        else if(remap_start)
            ftmp_rcnt <= 32'b0;
        else if(rvalid && rready)
            ftmp_rcnt <= ftmp_rcnt + 1'b1;
    end

    //assign arlast = (araddr == ftmp_addr_rto) | (load_cnt == 512-1);
    //for refesh_test
    assign arlast = (araddr == ftmp_addr_rto) | (load_cnt ==  1024-1);
    assign arinfo = {30'd0,arfirst,arlast};
   //ardma
    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            araddr <= 32'd0;
        else if(remap_start)
            araddr <= ftmp_addr_rfrom;
        else if(refresh_flag)
            araddr <= ftmp_addr_rfrom + refresh_addr_base;            
        else if(arvalid && arready)
            araddr <= araddr + (DW/8);
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            arvalid <= 1'b0;
        else if(remap_start)
            arvalid <= 1'b1;
        else if(refresh_flag)
            arvalid <= 1'b1;            
        else if(arvalid && arready && arlast)
            arvalid <= 1'b0;
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            arfirst <= 1'b0;
        else if(remap_start)
            arfirst <= 1'b1;
        else if(refresh_flag)
            arfirst <= 1'b1;            
        else if(arvalid && arready)
            arfirst <= 1'b0;
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            load_cnt <= 'b0;
        else if(remap_start)
            load_cnt <= 'b0;
        else if(refresh_flag)
            load_cnt <= 'b0;            
        else if(arvalid && arready)
            load_cnt <= load_cnt + 1'b1;
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            ftmp_load_from <= 32'd0;
        else if(remap_start)
            ftmp_load_from <= 32'd0;
        else if(refresh_flag)
            ftmp_load_from <= refresh_addr_base;            
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            ftmp_load_to <= 32'd0;
        else if(arvalid && arready && arlast)
            ftmp_load_to <= (araddr - ftmp_addr_rfrom) | 32'b111111;           
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            ftmp_load_addr <= 10'd0;
        else if(remap_start)
            ftmp_load_addr <= 10'd0;             
        else if(refresh_flag)
            ftmp_load_addr <= 10'd0; 
        else if(ftmp_load_valid && ftmp_load_ready)
            ftmp_load_addr <= ftmp_load_addr + 1'b1;            
    end

    always @(posedge ddr_clk) begin
        if(ddr_clk_rst)
            ftmp_load_finish <= 1'd0;
        else if(remap_start)
            ftmp_load_finish <= 1'd0;            
        else if(refresh_flag)
            ftmp_load_finish <= 1'd0;
        else if(rinfo[0] & ftmp_load_valid & ftmp_load_ready)
            ftmp_load_finish <= 1'b1;             
    end

    assign ftmp_load_data    = rdata     ;
    //assign ftmp_load_first   = rinfo[1] & ftmp_load_valid & ftmp_load_ready;
    assign ftmp_load_valid   = rvalid    ;
    assign rready            = ftmp_load_ready;
endmodule
