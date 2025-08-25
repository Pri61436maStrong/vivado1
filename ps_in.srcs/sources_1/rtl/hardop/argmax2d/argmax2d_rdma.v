//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : argmax2d_rdma.v
// Author        : Xu Yun
// Project       : 
// Create Date   : 2024.05.09
// Description   : 
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//      2024.08.15    You Tianwei    add cu_end_addr and cu_end_extra
//==============================================================================

module argmax2d_rdma #(parameter AW=32, DW=512, IFW=32)(                     
    output reg [  AW-1 : 0 ]      araddr             ,
    output      [ IFW-1 : 0 ]      arinfo             ,
    output reg                    arvalid            ,
    input                         arready            ,

    input                         argmax2d_start     ,
    
    input      [  AW-1 : 0 ]      arbase             ,
    input      [  AW-1 : 0 ]      last_araddr        ,
    input      [    19 : 0 ]      cu_araddr_num      , // w*h*cu/64,向上取整
    input      [    25 : 0 ]      cu_size            , // w*h*cu
    
    input                         ddr_clk            ,
    input                         ddr_rst        
);
    wire                          start            ;
    wire                          arlast           ;
    reg        [    19 : 0 ]      cu_araddr_cnt    ;
    wire                          cu_araddr_first  ;
    wire                          cu_araddr_last   ;
    
    reg        [  AW-1 : 0 ]      cu_end_addr      ;
    reg        [     5 : 0 ]      cu_end_extra     ;
     
    assign start  = argmax2d_start         ;
    assign arlast = (araddr == last_araddr);
   //cu_end_addr=cu
    always @(posedge ddr_clk) begin
        if(ddr_rst)
            cu_end_addr <= 32'b0 ;
        else if((cu_size > 0)&(arvalid == 1'b0)&(cu_araddr_cnt == 1'b0))
            cu_end_addr <= cu_size+arbase ;
        else if(arvalid && arready&& (cu_araddr_cnt == cu_araddr_num))
            cu_end_addr <= cu_end_addr+cu_size ;
    end  
       
    always @(posedge ddr_clk) begin
        if(ddr_rst)
            cu_end_extra <= 5'd0 ;
        else if(arvalid & arready&(cu_araddr_cnt == cu_araddr_num - 'd1 ))
            cu_end_extra <= cu_end_addr -(araddr + 'd64) ;
        else if(arvalid & arready&(cu_araddr_cnt == 0 ))
            cu_end_extra <= 5'd0 ;
    end         
     
   //ar
    always @(posedge ddr_clk) begin
        if(ddr_rst)
            araddr <= 32'd0          ;
        else if(start)
            araddr <= arbase         ;
        else if(arvalid & arready & (cu_end_extra > 0)&(cu_araddr_cnt == cu_araddr_num))
            araddr <= araddr ;        
        else if(arvalid & arready)
            araddr <= araddr + ( DW/8 )     ;
    end

    always @(posedge ddr_clk) begin
        if(ddr_rst)
            arvalid <= 1'b0;
        else if(start)
            arvalid <= 1'b1;
        else if(arvalid && arready && arlast)
            arvalid <= 1'b0;
    end
    
    always @(posedge ddr_clk) begin
        if(ddr_rst)
            cu_araddr_cnt <= 20'h0               ;
        else if(start)
            cu_araddr_cnt <= 20'h0               ;
        else if(arvalid && arready && (cu_araddr_cnt == cu_araddr_num))
            cu_araddr_cnt <= 20'h0               ;
        else if(arvalid & arready)
            cu_araddr_cnt <= cu_araddr_cnt + 1'b1;
    end

    assign cu_araddr_last  = (cu_araddr_cnt == cu_araddr_num);
    assign cu_araddr_first = (cu_araddr_cnt == 20'h0)        ;
    assign arinfo          = {3'h0,cu_end_extra, cu_araddr_first, cu_araddr_last, cu_araddr_cnt, arlast};

endmodule