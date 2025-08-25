    `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/29 13:50:44
// Design Name: 
// Module Name: cdc_process
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


module cdc_process (
  input            clk     ,
  input            rst     ,
  input            din     ,
  output    reg    dout   
);

reg  din_sync1;

always @(posedge clk) begin
  if ( rst )
    din_sync1 <= 1'b0  ;
  else 
    din_sync1 <= din  ;
end

always @(posedge clk) begin
  if ( rst )
    dout <= 1'b0  ;
  else
    dout <= din_sync1  ;
end

endmodule
