//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : ddr_ritcn_remap.v
// Author        : 
// Project       : 
// Create Date   : 2020.02.19
// Description   :
// - ddr_ritcn : ddr r/ar channel interconnector
// - 4 input slaves, 1 output master
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
// 1.0.1   2022.7.3     xuyun        fix bug : idfifo empty -> idfifo is invalid
//==============================================================================

module ddr_ritcn_remap #(parameter DW=512, AW=32, IFW=32)(
    input        [  AW-1 : 0 ]    ftmp_ddr_araddr  ,
    input        [ IFW-1 : 0 ]    ftmp_ddr_arinfo  ,
    input                         ftmp_ddr_arvalid ,
    output                        ftmp_ddr_arready ,
    output       [  DW-1 : 0 ]    ftmp_ddr_rdata   ,
    output       [ IFW-1 : 0 ]    ftmp_ddr_rinfo   ,
    output                        ftmp_ddr_rvalid  ,
    input                         ftmp_ddr_rready  ,

    input        [  AW-1 : 0 ]    grid_ddr_araddr  ,
    input        [ IFW-1 : 0 ]    grid_ddr_arinfo  ,
    input                         grid_ddr_arvalid ,
    output                        grid_ddr_arready ,
    output       [  DW-1 : 0 ]    grid_ddr_rdata   ,
    output       [ IFW-1 : 0 ]    grid_ddr_rinfo   ,
    output                        grid_ddr_rvalid  ,
    input                         grid_ddr_rready  ,    

    output  reg  [  AW-1 : 0 ]    m_ddr_araddr     ,
    output  reg  [ IFW-1 : 0 ]    m_ddr_arinfo     ,
    output  reg                   m_ddr_arvalid    ,
    input                         m_ddr_arready    ,
    input        [  DW-1 : 0 ]    m_ddr_rdata      ,
    input        [ IFW-1 : 0 ]    m_ddr_rinfo      ,
    input                         m_ddr_rvalid     ,
    output  reg                   m_ddr_rready     ,

    input                         ddr_clk          ,
    input                         ddr_clk_rst
);

    wire  [  3 : 0]   ack_arid          ;
    wire  [  3 : 0]   idfifo_din        ;
    wire  [  3 : 0]   idfifo_dout       ;
    wire              idfifo_wr         ;
    wire              idfifo_rd         ;
    wire              idfifo_full       ;
	wire              idfifo_pfull      ;
    wire              idfifo_empty      ;

    wire              arready           ;

    assign ack_arid   = ftmp_ddr_arvalid    ? 4'd0 :
                        grid_ddr_arvalid    ? 4'd1 :
                        4'hf;

    assign m_ddr_arvalid  = (~idfifo_pfull) && (ftmp_ddr_arvalid|grid_ddr_arvalid);
    assign arready        = (~idfifo_pfull) && m_ddr_arready;

    assign ftmp_ddr_arready  = (ack_arid==4'd0 ) && arready ;
    assign grid_ddr_arready  = (ack_arid==4'd1 ) && arready ;

    always@(*) begin
        case(ack_arid)
            4'd0   : m_ddr_araddr <= ftmp_ddr_araddr ;
            4'd1   : m_ddr_araddr <= grid_ddr_araddr ;
            default: m_ddr_araddr <= 0;
        endcase
    end

   always@(*) begin
       case(ack_arid)
           4'd0   : m_ddr_arinfo <= ftmp_ddr_arinfo ;
           4'd1   : m_ddr_arinfo <= grid_ddr_arinfo ;              
           default: m_ddr_arinfo <= 0;
       endcase
   end

    assign ftmp_ddr_rdata  = ftmp_ddr_rvalid ? m_ddr_rdata : 'd0  ;
    assign grid_ddr_rdata  = grid_ddr_rvalid ? m_ddr_rdata : 'd0  ;

    assign ftmp_ddr_rvalid  = ((idfifo_dout[3:0]==4'd0 ) & ~idfifo_empty)  ? m_ddr_rvalid :  1'b0 ;
    assign grid_ddr_rvalid  = ((idfifo_dout[3:0]==4'd1 ) & ~idfifo_empty)  ? m_ddr_rvalid :  1'b0 ;

    assign ftmp_ddr_rinfo   = m_ddr_rinfo      ;
    assign grid_ddr_rinfo   = m_ddr_rinfo      ;

    always@(*) begin
        case(idfifo_dout[3:0])
            4'd0   : m_ddr_rready <= ftmp_ddr_rready  & ~idfifo_empty;
            4'd1   : m_ddr_rready <= grid_ddr_rready  & ~idfifo_empty;                  
            default: m_ddr_rready <= 0;
        endcase
    end

    assign idfifo_din = ack_arid;
    assign idfifo_wr  = m_ddr_arvalid & m_ddr_arready;
    assign idfifo_rd  = m_ddr_rvalid  & m_ddr_rready;

    mna_idfifo mna_idfifo_u0(
        .clk       (ddr_clk         ),
        .srst      (ddr_clk_rst     ),
        .din       (idfifo_din      ),
        .wr_en     (idfifo_wr       ),
        .rd_en     (idfifo_rd       ),
        .dout      (idfifo_dout     ),
        .prog_full (idfifo_pfull    ),
        .full      (idfifo_full     ),
        .empty     (idfifo_empty    )
    );

endmodule
