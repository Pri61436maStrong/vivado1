//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : bcacu.v
// Author        : SongYH
// Project       : 
// Create Date   : 2023.10.29
// Description   : 
// - caculate bilinear interpolation
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================


module bcacu(
    input                clk         ,
    input                rst_n       ,

    input                bvalid      ,
    output               bready      ,
    input        [7:0]   u           ,
    input        [7:0]   v           ,
    input        [7:0]   iidx        ,
    input signed [15:0]  conf0       ,
    input signed [15:0]  conf1       ,
    input signed [15:0]  conf2       ,
    input signed [15:0]  conf3       ,

    input                ready       ,
    output  reg          rvalid      ,
    output       [33:0]  conf_r      ,
    output  reg  [7:0]   oidx
    );

    wire [24:0] r_h;
    wire [24:0] r_l;

    reg [7:0] v_0;
    reg [7:0] v_1;
    reg [7:0] v_2;
    reg [7:0] v_3;
    reg [7:0] oidxt0;
    reg [7:0] oidxt1;
    reg [7:0] oidxt2;
    reg [7:0] oidxt3;
    reg [7:0] oidxt4;
    reg [7:0] oidxt5;
    reg [7:0] oidxt6;

    reg valid0;
    reg valid1;
    reg valid2;
    reg valid3;
    reg valid4;
    reg valid5;
    reg valid6;

    assign bready = ready;

    always @(posedge clk ) begin
        if(!rst_n)begin
            v_0 <= 8'd0;
            v_1 <= 8'd0;
            v_2 <= 8'd0;
            v_3 <= 8'd0;
            valid0 <= 1'b0;
            valid1 <= 1'b0;
            valid2 <= 1'b0;
            valid3 <= 1'b0;
            valid4 <= 1'b0;
            valid5 <= 1'b0;
            valid6 <= 1'b0;
            rvalid <= 1'b0;
            oidxt0 <= 8'd0;
            oidxt1 <= 8'd0;
            oidxt2 <= 8'd0;
            oidxt3 <= 8'd0;
            oidxt4 <= 8'd0;
            oidxt5 <= 8'd0;
            oidxt6 <= 8'd0;
            oidx   <= 8'd0;
        end
        else begin
            v_0 <= v;
            v_1 <= v_0;
            v_2 <= v_1;
            v_3 <= v_2;
            valid0 <= bvalid;
            valid1 <= valid0;
            valid2 <= valid1;
            valid3 <= valid2;
            valid4 <= valid3;
            valid5 <= valid4;
            valid6 <= valid5;
            rvalid <= valid6;
            oidxt0 <= iidx  ;
            oidxt1 <= oidxt0;
            oidxt2 <= oidxt1;
            oidxt3 <= oidxt2;
            oidxt4 <= oidxt3;
            oidxt5 <= oidxt4;
            oidxt6 <= oidxt5;
            oidx   <= oidxt6;
        end
    end

    bdsp bdsp0 (
    .CLK(clk),         // input wire CLK
    .A(conf0),         // input wire [15 : 0] A
    .B({1'b0,u[7:1]}), // u [7].[6:0]
    .C({conf0,7'd0}),  // [22:7].[6:0]
    .D(conf1),         // input wire [15 : 0] D
    .P(r_h)            // output wire [24 : 0] P
    );

    bdsp bdsp1 (
    .CLK(clk),        // input wire CLK
    .A(conf2),        // input wire [15 : 0] A
    .B({1'b0,u[7:1]}),// input wire [7 : 0] B
    .C({conf2,7'd0}), // input wire [23 : 0] C 
    .D(conf3),        // input wire [15 : 0] D
    .P(r_l)           // output wire [24 : 0] P
    );

    lbdsp lbdsp0 (
    .CLK(clk),        // input wire CLK
    .A(r_h),          // input wire [24 : 0] A
    .B({1'b0,v_3[7:1]}),          // input wire [7 : 0] B
    .C({r_h,7'd0}),   // input wire [31 : 0] C
    .D(r_l),          // input wire [24 : 0] D
    .P(conf_r)        // output wire [33 : 0] P
    );

endmodule

