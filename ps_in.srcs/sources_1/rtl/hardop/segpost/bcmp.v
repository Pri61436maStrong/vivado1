//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : post_read.v
// Author        : SongYH
// Project       : 
// Create Date   : 2023.10.29
// Description   : 
// - compare result 
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================


 module bcmp(
    input               clk     ,
    input               rst_n   ,

    input               dvalid  ,
    output              dready  ,
    input signed [33:0] data0   ,
    input signed [33:0] data1   ,
    input signed [33:0] data2   ,
    input signed [33:0] data3   ,
    input        [7:0]  idx0    ,
    input        [7:0]  idx1    ,
    input        [7:0]  idx2    ,
    input        [7:0]  idx3    ,

    output reg          rvalid  ,
    input               rready  ,
    output reg   [7:0]  ridx
    );

    reg rvalid_t;
    reg signed [33:0]  max0,max1;
    reg [7:0]   maxid0,maxid1;

    assign dready = rready;
    always @(posedge clk ) begin
        if (!rst_n) begin
            rvalid <= 1'b0;
            rvalid_t <= 1'b0;
        end
        else begin
            rvalid_t <= dvalid;
            rvalid <= rvalid_t;
        end
    end

    always @(posedge clk ) begin
        if (!rst_n) begin
            max0 <= 34'd0;
            maxid0 <= 8'd0;
        end
        else begin
            if(data0 < data1) begin
                max0 <= data1;
                maxid0 <= idx1;
            end
            else begin
                max0 <= data0;
                maxid0 <= idx0;
            end
        end
    end

    always @(posedge clk ) begin
        if (!rst_n) begin
            max1 <= 34'd0;
            maxid1 <= 8'd0;
        end
        else begin
            if(data2 < data3) begin
                max1 <= data3;
                maxid1 <= idx3;
            end
            else begin
                max1 <= data2;
                maxid1 <= idx2;
            end
        end
    end

    always @(posedge clk ) begin
        if (!rst_n) begin
            ridx <= 8'd0;
        end
        else begin
            if(max0 < max1) begin
                ridx <= maxid1;
            end
            else begin
                ridx <= maxid0;
            end
        end
    end

endmodule
