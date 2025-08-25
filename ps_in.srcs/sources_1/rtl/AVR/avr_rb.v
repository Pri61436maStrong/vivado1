//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : avr_rb.v
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

module avr_rb #(parameter DW=128)(
    input         [DW-1 : 0]   m_rdata      ,
    input                      m_rvalid     ,
    output                     m_arready    ,

    output        [DW-1 : 0]   s_rdata      ,
    output                     s_rvalid     ,
    input                      s_rready     ,

    input                      clk          ,
    input                      rst_n
);


    reg [DW-1 : 0] data_reg  ;
    reg            valid_reg ;

    always@(posedge clk or negedge rst_n) begin
        if(rst_n==1'b0) begin
            data_reg <= #0.1 0;
        end
        else if(m_rvalid & ~s_rready & ~valid_reg) begin
            data_reg <= #0.1 m_rdata;
        end
    end

    always@(posedge clk or negedge rst_n) begin
        if(rst_n==1'b0) begin
            valid_reg <= #0.1 1'b0;
        end
        else if(m_rvalid & ~s_rready) begin
            valid_reg <= #0.1 1'b1;
        end
        else if(s_rready) begin
            valid_reg <= #0.1 1'b0;
        end
    end

    assign m_arready = s_rready & ~valid_reg;

    assign s_rdata = valid_reg ? data_reg : m_rdata;
    assign s_rvalid = valid_reg | m_rvalid;

endmodule
