`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/10 09:38:47
// Design Name: 
// Module Name: serial_to_parallel
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Revision 0.02 - Bit stream
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module serial_to_parallel #(
  parameter  DOP_W   =  5    ,  
  parameter  DIN_W   =  21   ,
  parameter  DOUT_W  =  672     // equal to DIN_W * (2 ** DOP_W)
)
(
  input                                aclk      ,
  input                                rst       ,
  input            [DOP_W  - 1 : 0]    s2p_cap   ,
  input            [DIN_W  - 1 : 0]    din       ,
  input                                din_vld   ,
  output                               din_rdy   ,
  output    reg    [DOUT_W - 1 : 0]    dout      ,
  output    reg                        dout_vld  ,
  input                                dout_rdy  
);
    
localparam DOP = 2 ** DOP_W;

reg      [DOP_W  - 1 : 0]      din_cnt       ;
reg                            dout_tmp_vld  ;    
reg      [DOUT_W - 1 : 0]      dout_tmp      ;    
    

// the preparation for dout is not ready, try to load din 
assign din_rdy = !dout_tmp_vld || !dout_vld || dout_rdy  ;

// a counter for reading din
always @(posedge aclk) begin
  if ( rst )
    din_cnt <= { DOP_W{1'b0} }  ;
  else if ( din_vld && din_rdy && (din_cnt == s2p_cap) )
    din_cnt <= { DOP_W{1'b0} }  ;
  else if ( din_vld && din_rdy )
    din_cnt <= din_cnt + 1'b1   ;
end

// loading from din to dout_tmp, one by one
genvar i;
generate
  for ( i = 0; i < DOP; i = i + 1 ) begin
    always @(posedge aclk) begin
      if ( rst )
        dout_tmp[DIN_W * (i + 1) - 1 : DIN_W * i] <= { DIN_W{1'b0} }  ;
      else if ( (din_cnt==(DOP-1-i)) && din_vld && din_rdy )
        dout_tmp[DIN_W * (i + 1) - 1 : DIN_W * i] <= din  ;
    end
  end
endgenerate

// after the last data is loaded, set dout_tmp_vld true
always @(posedge aclk) begin
  if ( rst )
    dout_tmp_vld <= 1'b0  ;
  else if ( din_vld && din_rdy && (din_cnt == s2p_cap) )
    dout_tmp_vld <= 1'b1  ;
  else if ( !dout_vld || dout_rdy ) 
    dout_tmp_vld <= 1'b0  ;
end

// loads dout_tmp when dout_vld is not valid and dout_tmp is ready
always @(posedge aclk) begin
  if ( rst )
    dout <= { DOUT_W{1'b0} }  ;
  else if ( !dout_vld || dout_rdy ) 
    dout <= dout_tmp  ;
end 

// when dout_tmp_vld is 1, loads dout_tmp and sets dout_vld 1
always @(posedge aclk) begin
  if ( rst )
    dout_vld <= 1'b0  ;
  else if ( !dout_vld || dout_rdy ) 
    dout_vld <= dout_tmp_vld  ;
end 

endmodule
