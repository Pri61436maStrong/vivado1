`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/22 12:15:07
// Design Name: 
// Module Name: defer_unit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module defer_unit #(
  parameter WIDTH  =  1  ,
  parameter DLY_T  =  1
)(
  input                      clk     ,
  input                      rst     ,
  input     [WIDTH-1 : 0]    din     ,
  output    [WIDTH-1 : 0]    dout   
);

reg    [WIDTH-1 : 0]    din_dly    [DLY_T-1:0] ;

genvar i;

always @(posedge clk) begin
  if ( rst )
    din_dly[0] <= {WIDTH{1'b0}}  ;
  else 
    din_dly[0] <= din  ;
end

generate
  for (i = 1; i < DLY_T; i = i + 1) begin
    always @(posedge clk) begin
      if ( rst )
        din_dly[i] <= {WIDTH{1'b0}}  ;
      else
        din_dly[i] <= din_dly[i-1]   ;
    end
  end
endgenerate

assign  dout = din_dly[DLY_T-1]  ;

endmodule
