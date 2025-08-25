`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/18 19:34:56
// Design Name: 
// Module Name: parallel_to_serial
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
// Revision 1.00 - Independent handshaking for all input
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module parallel_to_serial #(
  parameter  DATA_W   =  23    
)
(
  input                              aclk          ,
  input                              rst           ,
  input          [32*DATA_W-1 : 0]   din           ,  // selection from msb to lsb
  input          [31          : 0]   din_vld       ,
  output         [31          : 0]   din_rdy       ,
  output   reg   [DATA_W-1    : 0]   dout          ,
  output   reg                       dout_vld      ,
  input                              dout_rdy      
);


reg     [4        : 0]     cvt_cnt      ;
reg     [DATA_W-1 : 0]     din_sel      ;
reg                        din_sel_vld  ;
reg                        din_sel_rdy  ;


// cvt_cnt
always @(posedge aclk) begin
  if ( rst )
    cvt_cnt <= 5'b0  ;
  else if ( din_sel_vld && din_sel_rdy )
    cvt_cnt <= cvt_cnt + 1'b1   ;
end

// selection of din, from msb to lsb
always @(*) begin
  case ( cvt_cnt )
    5'h00  :  din_sel  =  din[DATA_W * 32 - 1  :  DATA_W * 31]  ;
    5'h01  :  din_sel  =  din[DATA_W * 31 - 1  :  DATA_W * 30]  ;
    5'h02  :  din_sel  =  din[DATA_W * 30 - 1  :  DATA_W * 29]  ;
    5'h03  :  din_sel  =  din[DATA_W * 29 - 1  :  DATA_W * 28]  ;
    5'h04  :  din_sel  =  din[DATA_W * 28 - 1  :  DATA_W * 27]  ;
    5'h05  :  din_sel  =  din[DATA_W * 27 - 1  :  DATA_W * 26]  ;
    5'h06  :  din_sel  =  din[DATA_W * 26 - 1  :  DATA_W * 25]  ;
    5'h07  :  din_sel  =  din[DATA_W * 25 - 1  :  DATA_W * 24]  ;
    5'h08  :  din_sel  =  din[DATA_W * 24 - 1  :  DATA_W * 23]  ;
    5'h09  :  din_sel  =  din[DATA_W * 23 - 1  :  DATA_W * 22]  ;
    5'h0A  :  din_sel  =  din[DATA_W * 22 - 1  :  DATA_W * 21]  ;
    5'h0B  :  din_sel  =  din[DATA_W * 21 - 1  :  DATA_W * 20]  ;
    5'h0C  :  din_sel  =  din[DATA_W * 20 - 1  :  DATA_W * 19]  ;
    5'h0D  :  din_sel  =  din[DATA_W * 19 - 1  :  DATA_W * 18]  ;
    5'h0E  :  din_sel  =  din[DATA_W * 18 - 1  :  DATA_W * 17]  ;
    5'h0F  :  din_sel  =  din[DATA_W * 17 - 1  :  DATA_W * 16]  ;
    5'h10  :  din_sel  =  din[DATA_W * 16 - 1  :  DATA_W * 15]  ;
    5'h11  :  din_sel  =  din[DATA_W * 15 - 1  :  DATA_W * 14]  ;
    5'h12  :  din_sel  =  din[DATA_W * 14 - 1  :  DATA_W * 13]  ;
    5'h13  :  din_sel  =  din[DATA_W * 13 - 1  :  DATA_W * 12]  ;
    5'h14  :  din_sel  =  din[DATA_W * 12 - 1  :  DATA_W * 11]  ;
    5'h15  :  din_sel  =  din[DATA_W * 11 - 1  :  DATA_W * 10]  ;
    5'h16  :  din_sel  =  din[DATA_W * 10 - 1  :  DATA_W *  9]  ;
    5'h17  :  din_sel  =  din[DATA_W *  9 - 1  :  DATA_W *  8]  ;
    5'h18  :  din_sel  =  din[DATA_W *  8 - 1  :  DATA_W *  7]  ;
    5'h19  :  din_sel  =  din[DATA_W *  7 - 1  :  DATA_W *  6]  ;
    5'h1A  :  din_sel  =  din[DATA_W *  6 - 1  :  DATA_W *  5]  ;
    5'h1B  :  din_sel  =  din[DATA_W *  5 - 1  :  DATA_W *  4]  ;
    5'h1C  :  din_sel  =  din[DATA_W *  4 - 1  :  DATA_W *  3]  ;
    5'h1D  :  din_sel  =  din[DATA_W *  3 - 1  :  DATA_W *  2]  ;
    5'h1E  :  din_sel  =  din[DATA_W *  2 - 1  :  DATA_W *  1]  ;
    5'h1F  :  din_sel  =  din[DATA_W *  1 - 1  :  DATA_W *  0]  ;
  endcase
end

// selection of din_vld, from msb to lsb
always @(*) begin
  case ( cvt_cnt )
    5'h00  :  din_sel_vld  =  din_vld[ 31 ]  ;
    5'h01  :  din_sel_vld  =  din_vld[ 30 ]  ;
    5'h02  :  din_sel_vld  =  din_vld[ 29 ]  ;
    5'h03  :  din_sel_vld  =  din_vld[ 28 ]  ;
    5'h04  :  din_sel_vld  =  din_vld[ 27 ]  ;
    5'h05  :  din_sel_vld  =  din_vld[ 26 ]  ;
    5'h06  :  din_sel_vld  =  din_vld[ 25 ]  ;
    5'h07  :  din_sel_vld  =  din_vld[ 24 ]  ;
    5'h08  :  din_sel_vld  =  din_vld[ 23 ]  ;
    5'h09  :  din_sel_vld  =  din_vld[ 22 ]  ;
    5'h0A  :  din_sel_vld  =  din_vld[ 21 ]  ;
    5'h0B  :  din_sel_vld  =  din_vld[ 20 ]  ;
    5'h0C  :  din_sel_vld  =  din_vld[ 19 ]  ;
    5'h0D  :  din_sel_vld  =  din_vld[ 18 ]  ;
    5'h0E  :  din_sel_vld  =  din_vld[ 17 ]  ;
    5'h0F  :  din_sel_vld  =  din_vld[ 16 ]  ;
    5'h10  :  din_sel_vld  =  din_vld[ 15 ]  ;
    5'h11  :  din_sel_vld  =  din_vld[ 14 ]  ;
    5'h12  :  din_sel_vld  =  din_vld[ 13 ]  ;
    5'h13  :  din_sel_vld  =  din_vld[ 12 ]  ;
    5'h14  :  din_sel_vld  =  din_vld[ 11 ]  ;
    5'h15  :  din_sel_vld  =  din_vld[ 10 ]  ;
    5'h16  :  din_sel_vld  =  din_vld[  9 ]  ;
    5'h17  :  din_sel_vld  =  din_vld[  8 ]  ;
    5'h18  :  din_sel_vld  =  din_vld[  7 ]  ;
    5'h19  :  din_sel_vld  =  din_vld[  6 ]  ;
    5'h1A  :  din_sel_vld  =  din_vld[  5 ]  ;
    5'h1B  :  din_sel_vld  =  din_vld[  4 ]  ;
    5'h1C  :  din_sel_vld  =  din_vld[  3 ]  ;
    5'h1D  :  din_sel_vld  =  din_vld[  2 ]  ;
    5'h1E  :  din_sel_vld  =  din_vld[  1 ]  ;
    5'h1F  :  din_sel_vld  =  din_vld[  0 ]  ;
  endcase
end

// selection of din_vld, from msb to lsb
always @(*) begin
  case ( cvt_cnt )
    5'h00  :  din_sel_rdy  =  din_rdy[ 31 ]  ;
    5'h01  :  din_sel_rdy  =  din_rdy[ 30 ]  ;
    5'h02  :  din_sel_rdy  =  din_rdy[ 29 ]  ;
    5'h03  :  din_sel_rdy  =  din_rdy[ 28 ]  ;
    5'h04  :  din_sel_rdy  =  din_rdy[ 27 ]  ;
    5'h05  :  din_sel_rdy  =  din_rdy[ 26 ]  ;
    5'h06  :  din_sel_rdy  =  din_rdy[ 25 ]  ;
    5'h07  :  din_sel_rdy  =  din_rdy[ 24 ]  ;
    5'h08  :  din_sel_rdy  =  din_rdy[ 23 ]  ;
    5'h09  :  din_sel_rdy  =  din_rdy[ 22 ]  ;
    5'h0A  :  din_sel_rdy  =  din_rdy[ 21 ]  ;
    5'h0B  :  din_sel_rdy  =  din_rdy[ 20 ]  ;
    5'h0C  :  din_sel_rdy  =  din_rdy[ 19 ]  ;
    5'h0D  :  din_sel_rdy  =  din_rdy[ 18 ]  ;
    5'h0E  :  din_sel_rdy  =  din_rdy[ 17 ]  ;
    5'h0F  :  din_sel_rdy  =  din_rdy[ 16 ]  ;
    5'h10  :  din_sel_rdy  =  din_rdy[ 15 ]  ;
    5'h11  :  din_sel_rdy  =  din_rdy[ 14 ]  ;
    5'h12  :  din_sel_rdy  =  din_rdy[ 13 ]  ;
    5'h13  :  din_sel_rdy  =  din_rdy[ 12 ]  ;
    5'h14  :  din_sel_rdy  =  din_rdy[ 11 ]  ;
    5'h15  :  din_sel_rdy  =  din_rdy[ 10 ]  ;
    5'h16  :  din_sel_rdy  =  din_rdy[  9 ]  ;
    5'h17  :  din_sel_rdy  =  din_rdy[  8 ]  ;
    5'h18  :  din_sel_rdy  =  din_rdy[  7 ]  ;
    5'h19  :  din_sel_rdy  =  din_rdy[  6 ]  ;
    5'h1A  :  din_sel_rdy  =  din_rdy[  5 ]  ;
    5'h1B  :  din_sel_rdy  =  din_rdy[  4 ]  ;
    5'h1C  :  din_sel_rdy  =  din_rdy[  3 ]  ;
    5'h1D  :  din_sel_rdy  =  din_rdy[  2 ]  ;
    5'h1E  :  din_sel_rdy  =  din_rdy[  1 ]  ;
    5'h1F  :  din_sel_rdy  =  din_rdy[  0 ]  ;
  endcase
end

genvar i  ;
generate
  for ( i = 0; i < 32; i = i + 1 ) begin: gen_din_rdy
    assign din_rdy[i] = ( !dout_vld || dout_rdy ) && ( cvt_cnt == (31-i) )  ;
  end
endgenerate

// dout
always @(posedge aclk) begin
  if (rst)
    dout <= { DATA_W{1'b0} }  ;
  else if ( din_sel_vld && din_sel_rdy )
    dout <= din_sel  ;
  else if ( dout_vld && dout_rdy )
    dout <= { DATA_W{1'b0} }  ;
end

// dout_vld
always @(posedge aclk) begin
  if (rst)
    dout_vld <= 1'b0  ;
  else if ( din_sel_vld && din_sel_rdy )
    dout_vld <= 1'b1  ;
  else if ( dout_vld && dout_rdy )
    dout_vld <= 1'b0  ;
end

endmodule
