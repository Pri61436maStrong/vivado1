//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : sel.v
// Author        : SongYH
// Project       : 
// Create Date   : 2023.10.29
// Description   : 
// select channel in confs
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================


module sel(
    input                   cfvalid,
    output                  cfready,
    input                   iptype ,
    input      [  7: 0]     idx_n  ,
    input      [255: 0]     confa  ,
    input      [255: 0]     confb  ,
    input      [255: 0]     confc  ,
    input      [255: 0]     confd  ,
    
    output reg              rvalid ,
    input                   rready ,
    output reg [  7: 0]     ridx   ,
    output     [ 15: 0]     confra ,
    output     [ 15: 0]     confrb ,
    output     [ 15: 0]     confrc ,
    output     [ 15: 0]     confrd ,

    input                   clk    ,
    input                   rst
    );
    wire [3:0] idx_h;
    reg  [7:0] idx_t;

    reg  [15:0] confra_h;
    reg  [15:0] confrb_h;
    reg  [15:0] confrc_h;
    reg  [15:0] confrd_h;
    
    wire [15:0] confra_o;
    wire [15:0] confrb_o;
    wire [15:0] confrc_o;
    wire [15:0] confrd_o;
    
    wire [15:0] confra_tmp;
    wire [15:0] confrb_tmp;
    wire [15:0] confrc_tmp;
    wire [15:0] confrd_tmp;

    assign cfready = rready;

    assign idx_h   = (iptype) ? idx_n[3:0] : idx_n[4:1];
    assign confra  = (iptype) ? confra_h : confra_o;
    assign confrb  = (iptype) ? confrb_h : confrb_o;
    assign confrc  = (iptype) ? confrc_h : confrc_o;
    assign confrd  = (iptype) ? confrd_h : confrd_o;

    assign confra_o = (idx_t[0]) ? {{8{confra_h[15]}},confra_h[15:8]} : {{8{confra_h[7]}},confra_h[7:0]}; //octal
    assign confrb_o = (idx_t[0]) ? {{8{confrb_h[15]}},confrb_h[15:8]} : {{8{confrb_h[7]}},confrb_h[7:0]};
    assign confrc_o = (idx_t[0]) ? {{8{confrc_h[15]}},confrc_h[15:8]} : {{8{confrc_h[7]}},confrc_h[7:0]};
    assign confrd_o = (idx_t[0]) ? {{8{confrd_h[15]}},confrd_h[15:8]} : {{8{confrd_h[7]}},confrd_h[7:0]};

    assign confra_tmp = {{8{confra_h[7]}},confra_h[7:0]};
    assign confrb_tmp = {{8{confrb_h[7]}},confrb_h[7:0]};
    assign confrc_tmp = {{8{confrc_h[7]}},confrc_h[7:0]};
    assign confrd_tmp = {{8{confrd_h[7]}},confrd_h[7:0]};

    always @(posedge clk ) begin
        if (rst) begin
            rvalid <= 1'b0;
            ridx   <= 8'd0;
            idx_t  <= 7'd0;
        end else begin
            rvalid <= cfvalid;
            ridx   <= idx_n;
            idx_t  <= idx_n;
        end
    end
    
    always @(posedge clk) begin
        if (rst) begin
            confra_h = 16'd0; // hex
            confrb_h = 16'd0;
            confrc_h = 16'd0;
            confrd_h = 16'd0;
        end else begin
            case (idx_h)
                4'd0:  begin
                    confra_h = confa[ 15:  0]; // hex
                    confrb_h = confb[ 15:  0];
                    confrc_h = confc[ 15:  0];
                    confrd_h = confd[ 15:  0];
                end
                4'd1:  begin
                    confra_h = confa[ 31: 16]; // hex
                    confrb_h = confb[ 31: 16];
                    confrc_h = confc[ 31: 16];
                    confrd_h = confd[ 31: 16];
                end 
                4'd2:  begin
                    confra_h = confa[ 47: 32]; // hex
                    confrb_h = confb[ 47: 32];
                    confrc_h = confc[ 47: 32];
                    confrd_h = confd[ 47: 32];
                end
                4'd3:  begin
                    confra_h = confa[ 63: 48]; // hex
                    confrb_h = confb[ 63: 48];
                    confrc_h = confc[ 63: 48];
                    confrd_h = confd[ 63: 48];
                end
                4'd4:  begin
                    confra_h = confa[ 79: 64]; // hex
                    confrb_h = confb[ 79: 64];
                    confrc_h = confc[ 79: 64];
                    confrd_h = confd[ 79: 64];
                end
                4'd5:  begin
                    confra_h = confa[ 95: 80]; // hex
                    confrb_h = confb[ 95: 80];
                    confrc_h = confc[ 95: 80];
                    confrd_h = confd[ 95: 80];
                end
                4'd6:  begin
                    confra_h = confa[111: 96]; // hex
                    confrb_h = confb[111: 96];
                    confrc_h = confc[111: 96];
                    confrd_h = confd[111: 96];
                end
                4'd7:  begin
                    confra_h = confa[127:112]; // hex
                    confrb_h = confb[127:112];
                    confrc_h = confc[127:112];
                    confrd_h = confd[127:112];
                end
                4'd8:  begin
                    confra_h = confa[143:128]; // hex
                    confrb_h = confb[143:128];
                    confrc_h = confc[143:128];
                    confrd_h = confd[143:128];
                end
                4'd9:  begin
                    confra_h = confa[159:144]; // hex
                    confrb_h = confb[159:144];
                    confrc_h = confc[159:144];
                    confrd_h = confd[159:144];
                end
                4'd10: begin
                    confra_h = confa[175:160]; // hex
                    confrb_h = confb[175:160];
                    confrc_h = confc[175:160];
                    confrd_h = confd[175:160];
                end
                4'd11: begin
                    confra_h = confa[191:176]; // hex
                    confrb_h = confb[191:176];
                    confrc_h = confc[191:176];
                    confrd_h = confd[191:176];
                end
                4'd12: begin
                    confra_h = confa[207:192]; // hex
                    confrb_h = confb[207:192];
                    confrc_h = confc[207:192];
                    confrd_h = confd[207:192];
                end
                4'd13: begin
                    confra_h = confa[223:208]; // hex
                    confrb_h = confb[223:208];
                    confrc_h = confc[223:208];
                    confrd_h = confd[223:208];
                end
                4'd14: begin
                    confra_h = confa[239:224]; // hex
                    confrb_h = confb[239:224];
                    confrc_h = confc[239:224];
                    confrd_h = confd[239:224];
                end
                4'd15: begin
                    confra_h = confa[255:240]; // hex
                    confrb_h = confb[255:240];
                    confrc_h = confc[255:240];
                    confrd_h = confd[255:240];
                end
                default: begin
                    confra_h = 16'd0; // hex
                    confrb_h = 16'd0;
                    confrc_h = 16'd0;
                    confrd_h = 16'd0;
                end
            endcase
        end
    end
endmodule
