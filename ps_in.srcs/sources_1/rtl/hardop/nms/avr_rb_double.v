//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : axi_rb_double.v
// Author        :
// Project       : NB2014
// Create Date   : 2020.06.02
// Description   :
// - avr_rb ： AXI-Register-Buffer
//             Used for RAM-AXi interface, because RAM Read delay = 1, we need a
//             Register to buffer read-data
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module avr_rb_double #(parameter DW=128)(
    input         [DW-1 : 0]   m_rdata      ,
    input                      m_rvalid     ,
    output                     m_arready    ,

    output        [DW-1 : 0]   s_rdata      ,
    output                     s_rvalid     ,
    input                      s_rready     ,

    input                      clk          ,
    input                      rst_n
);


    reg [DW-1 : 0] data_reg_1 ,data_reg_2  ;
    reg            valid_reg_1,valid_reg_2 ;

    always@(posedge clk or negedge rst_n) begin
        if(rst_n==1'b0) begin
            data_reg_1 <= #0.1 0;
        end
        else if(m_rvalid & valid_reg_2 & ~valid_reg_1) begin
            data_reg_1 <= #0.1 m_rdata;
        end
    end

    always@(posedge clk or negedge rst_n) begin
        if(rst_n==1'b0) begin
            valid_reg_1 <= #0.1 1'b0;
        end
        else if(m_rvalid & valid_reg_2 & ~valid_reg_1) begin
            valid_reg_1 <= #0.1 1'b1;
        end
        else if(~valid_reg_2 & s_rready) begin
            valid_reg_1 <= #0.1 1'b0;
        end
    end

    always@(posedge clk or negedge rst_n) begin
        if(rst_n==1'b0) begin
            data_reg_2 <= #0.1 0;
        end
        else if(m_rvalid & ~s_rready & ~valid_reg_2 & ~valid_reg_1) begin
            data_reg_2 <= #0.1 m_rdata;
        end
    end

    always@(posedge clk or negedge rst_n) begin
        if(rst_n==1'b0) begin
            valid_reg_2 <= #0.1 1'b0;
        end
        else if(m_rvalid & ~s_rready & ~valid_reg_2 & ~valid_reg_1) begin
            valid_reg_2 <= #0.1 1'b1;
        end
        else if(s_rready) begin
            valid_reg_2 <= #0.1 1'b0;
        end
    end

    assign m_arready = s_rready & ~valid_reg_1 & ~valid_reg_2;

    assign s_rdata =     valid_reg_2 ? data_reg_2 : 
                         valid_reg_1 ? data_reg_1 : 
                         m_rdata;

    assign s_rvalid = valid_reg_1 | valid_reg_2 | m_rvalid;

endmodule


