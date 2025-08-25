//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : avr_w2n_icorepost.v
// Author        : WangYinglin 
// Project       : 
// Create Date   : 2024.5.11
// Description   : 
// - w2n_bwc : wide to narrow Bit Width Convertor
// - NDW       : Narrow Data width
// - WDW       : Wide Data width
// - CBW       : Counter Bit width, CBW=ceilf(log2(WDW-NDW)) 
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module w2n_remap #(parameter NDW=64, WDW=1024, CBW=4)(
  input      [WDW-1 : 0]     w2n_wdata       ,
  input                      w2n_wfirst      ,
  input                      w2n_wlast       ,
  input                      w2n_wvalid      ,
  output                     w2n_wready      ,
  input      [CBW-1 : 0]     valid_chn       ,

  output     [NDW-1 : 0]     w2n_ndata       ,
  output                     w2n_nfirst      ,
  output                     w2n_nlast       ,
  output                     w2n_nvalid      ,
  input                      w2n_nready      ,

  input                      w2n_clk_rst     ,
  input                      w2n_clk
);

  localparam MULT = WDW/NDW;
  
 // bit-width convert from 1024 to 64 
  reg   [CBW-1 : 0]       w2n_cnt       ;
  reg   [WDW-1 : 0]       w2n_reg       ;
  reg                     w2n_reg_last  ;
  reg                     w2n_reg_first ;
  reg                     w2n_reg_valid ;
  wire                    w2n_nack      ;
  wire                    w2n_wack      ;

  assign w2n_nack = w2n_nvalid & w2n_nready; 
  assign w2n_wack = w2n_wvalid & w2n_wready; 

  always @(posedge w2n_clk) begin
      if(w2n_clk_rst)
          w2n_reg <= 0;
      else if(w2n_wack)
          w2n_reg <= w2n_wdata;
      else if(w2n_nack)
          w2n_reg <= {{NDW{1'b0}}, w2n_reg[WDW-1:NDW]};
  end

  always @(posedge w2n_clk) begin
      if(w2n_clk_rst)
          w2n_reg_first <= 1'b0;
      else if(w2n_wack)
          w2n_reg_first <= w2n_wfirst;
      else if(w2n_nack)
          w2n_reg_first <= 1'b0;
  end

  always @(posedge w2n_clk) begin
      if(w2n_clk_rst)
          w2n_reg_last <= 1'b0;
      else if(w2n_wack)
          w2n_reg_last <= w2n_wlast;
  end

  always @(posedge w2n_clk) begin
      if(w2n_clk_rst)
          w2n_reg_valid <= 1'b0;
      else if(w2n_wack)
          w2n_reg_valid <= 1'b1;
     else if(w2n_reg_last && w2n_nack && w2n_cnt==valid_chn)
          w2n_reg_valid <= 1'b0;          
      else if(w2n_nack && w2n_cnt==(MULT-1))
          w2n_reg_valid <= 1'b0;
  end

  always @(posedge w2n_clk) begin
      if(w2n_clk_rst)
          w2n_cnt <= 0;
      else if(w2n_reg_last && w2n_nack && w2n_cnt==valid_chn)
          w2n_cnt <= 0;          
      else if(w2n_nack && w2n_cnt==(MULT-1))
          w2n_cnt <= 0;
      else if(w2n_nack)
          w2n_cnt <= w2n_cnt + 1;
  end

/*
  always @(posedge w2n_clk) begin
      if(w2n_clk_rst)
          w2n_nvalid <= 1'b0;
      else if(w2n_reg_valid & (w2n_cnt<=valid_chn))
          w2n_nvalid <= 1'b1;
      else 
          w2n_nvalid <= 1'b0;
  end

  always @(posedge w2n_clk) begin
      if(w2n_clk_rst)
          w2n_ndata <= 64'b0;
      else if(w2n_reg_valid & (w2n_cnt<=valid_chn))
          w2n_ndata <= w2n_reg[NDW-1:0];
      else 
          w2n_ndata <= 64'b0;
  end

  always @(posedge w2n_clk) begin
      if(w2n_clk_rst)
          w2n_nlast <= 1'b0;
      else if(w2n_reg_last & (w2n_cnt==valid_chn))
          w2n_nlast <= 1'b1;
      else 
          w2n_nlast <= 1'b0;
  end
*/
  assign w2n_nvalid = w2n_reg_valid;
  assign w2n_ndata = w2n_reg[NDW-1:0];
  assign w2n_nfirst = w2n_reg_first;
  assign w2n_nlast = w2n_reg_last && w2n_cnt==valid_chn;
  assign w2n_wready = (~w2n_reg_valid) | (~w2n_reg_last&&w2n_nready&&w2n_cnt==(MULT-1)) | (w2n_reg_last&&w2n_nready&&w2n_cnt==valid_chn);
  
endmodule
