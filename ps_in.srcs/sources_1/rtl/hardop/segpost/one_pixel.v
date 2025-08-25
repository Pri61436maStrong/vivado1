//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : one_pixel.v
// Author        : SongYH
// Project       : 
// Create Date   : 2023.10.29
// Description   : 
// - argmax , axi-lite interface
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================


module one_pixel(
    input                             cvalid            ,
    output                            cready            ,
    input       [255: 0]              cdata             ,
    input       [11 : 0]              ct                ,
    input       [11 : 0]              ct_size           ,
    input                             data_type         ,
    input       [31 : 0]              cinfo             ,

    output reg                        mvalid            ,
    input                             mready            ,
    output reg  [7  : 0]              maxidx            ,
    output reg  [31 : 0]              cinfo_tr          ,

    input                             clk               ,
    input                             rst 
    );

    reg  signed [15 : 0]              p1d0              ;
    reg  signed [15 : 0]              p1d1              ;
    reg  signed [15 : 0]              p1d2              ;
    reg  signed [15 : 0]              p1d3              ;
    reg  signed [15 : 0]              p1d4              ;
    reg  signed [15 : 0]              p1d5              ;
    reg  signed [15 : 0]              p1d6              ;
    reg  signed [15 : 0]              p1d7              ;
    reg  signed [15 : 0]              p1d8              ;
    reg  signed [15 : 0]              p1d9              ;
    reg  signed [15 : 0]              p1d10             ;
    reg  signed [15 : 0]              p1d11             ;
    reg  signed [15 : 0]              p1d12             ;
    reg  signed [15 : 0]              p1d13             ;
    reg  signed [15 : 0]              p1d14             ;
    reg  signed [15 : 0]              p1d15             ;
    reg  signed [15 : 0]              p1d16             ;
    reg  signed [15 : 0]              p1d17             ;
    reg  signed [15 : 0]              p1d18             ;
    reg  signed [15 : 0]              p1d19             ;
    reg  signed [15 : 0]              p1d20             ;
    reg  signed [15 : 0]              p1d21             ;
    reg  signed [15 : 0]              p1d22             ;
    reg  signed [15 : 0]              p1d23             ;
    reg  signed [15 : 0]              p1d24             ;
    reg  signed [15 : 0]              p1d25             ;
    reg  signed [15 : 0]              p1d26             ;
    reg  signed [15 : 0]              p1d27             ;
    reg  signed [15 : 0]              p1d28             ;
    reg  signed [15 : 0]              p1d29             ;
    reg  signed [15 : 0]              p1d30             ;
    reg  signed [15 : 0]              p1d31             ;

    reg         [7  : 0]              p1idx0            ;
    reg         [7  : 0]              p1idx1            ;
    reg         [7  : 0]              p1idx2            ;
    reg         [7  : 0]              p1idx3            ;
    reg         [7  : 0]              p1idx4            ;
    reg         [7  : 0]              p1idx5            ;
    reg         [7  : 0]              p1idx6            ;
    reg         [7  : 0]              p1idx7            ;
    reg         [7  : 0]              p1idx8            ;
    reg         [7  : 0]              p1idx9            ;
    reg         [7  : 0]              p1idx10           ;
    reg         [7  : 0]              p1idx11           ;
    reg         [7  : 0]              p1idx12           ;
    reg         [7  : 0]              p1idx13           ;
    reg         [7  : 0]              p1idx14           ;
    reg         [7  : 0]              p1idx15           ;
    reg         [7  : 0]              p1idx16           ;
    reg         [7  : 0]              p1idx17           ;
    reg         [7  : 0]              p1idx18           ;
    reg         [7  : 0]              p1idx19           ;
    reg         [7  : 0]              p1idx20           ;
    reg         [7  : 0]              p1idx21           ;
    reg         [7  : 0]              p1idx22           ;
    reg         [7  : 0]              p1idx23           ;
    reg         [7  : 0]              p1idx24           ;
    reg         [7  : 0]              p1idx25           ;
    reg         [7  : 0]              p1idx26           ;
    reg         [7  : 0]              p1idx27           ;
    reg         [7  : 0]              p1idx28           ;
    reg         [7  : 0]              p1idx29           ;
    reg         [7  : 0]              p1idx30           ;
    reg         [7  : 0]              p1idx31           ;

    wire signed [15 : 0]              r1d0              ;
    wire signed [15 : 0]              r1d1              ;
    wire signed [15 : 0]              r1d2              ;
    wire signed [15 : 0]              r1d3              ;
    wire signed [15 : 0]              r1d4              ;
    wire signed [15 : 0]              r1d5              ;
    wire signed [15 : 0]              r1d6              ;
    wire signed [15 : 0]              r1d7              ;
    wire signed [15 : 0]              r1d8              ;
    wire signed [15 : 0]              r1d9              ;
    wire signed [15 : 0]              r1d10             ;
    wire signed [15 : 0]              r1d11             ;
    wire signed [15 : 0]              r1d12             ;
    wire signed [15 : 0]              r1d13             ;
    wire signed [15 : 0]              r1d14             ;
    wire signed [15 : 0]              r1d15             ;

    wire        [7  : 0]              r1idx0            ;
    wire        [7  : 0]              r1idx1            ;
    wire        [7  : 0]              r1idx2            ;
    wire        [7  : 0]              r1idx3            ;
    wire        [7  : 0]              r1idx4            ;
    wire        [7  : 0]              r1idx5            ;
    wire        [7  : 0]              r1idx6            ;
    wire        [7  : 0]              r1idx7            ;
    wire        [7  : 0]              r1idx8            ;
    wire        [7  : 0]              r1idx9            ;
    wire        [7  : 0]              r1idx10           ;
    wire        [7  : 0]              r1idx11           ;
    wire        [7  : 0]              r1idx12           ;
    wire        [7  : 0]              r1idx13           ;
    wire        [7  : 0]              r1idx14           ;
    wire        [7  : 0]              r1idx15           ;

    wire signed [15 : 0]              r2d0              ;
    wire signed [15 : 0]              r2d1              ;
    wire signed [15 : 0]              r2d2              ;
    wire signed [15 : 0]              r2d3              ;
    wire signed [15 : 0]              r2d4              ;
    wire signed [15 : 0]              r2d5              ;
    wire signed [15 : 0]              r2d6              ;
    wire signed [15 : 0]              r2d7              ;

    wire        [7  : 0]              r2idx0            ;
    wire        [7  : 0]              r2idx1            ;
    wire        [7  : 0]              r2idx2            ;
    wire        [7  : 0]              r2idx3            ;
    wire        [7  : 0]              r2idx4            ;
    wire        [7  : 0]              r2idx5            ;
    wire        [7  : 0]              r2idx6            ;
    wire        [7  : 0]              r2idx7            ;

    wire signed [15 : 0]              r3d0              ;
    wire signed [15 : 0]              r3d1              ;
    wire signed [15 : 0]              r3d2              ;
    wire signed [15 : 0]              r3d3              ;

    wire        [7  : 0]              r3idx0            ;
    wire        [7  : 0]              r3idx1            ;
    wire        [7  : 0]              r3idx2            ;
    wire        [7  : 0]              r3idx3            ;

    wire signed [15 : 0]              r4d0              ;
    wire signed [15 : 0]              r4d1              ;

    wire        [7  : 0]              r4idx0            ;
    wire        [7  : 0]              r4idx1            ;

    wire signed [15 : 0]              r5d0              ;

    wire        [7  : 0]              r5idx0            ;

    
    reg  signed [15 : 0]              p2d0              ;
    reg  signed [15 : 0]              p2d1              ;
    reg  signed [15 : 0]              p2d2              ;
    reg  signed [15 : 0]              p2d3              ;
    reg  signed [15 : 0]              p2d4              ;
    reg  signed [15 : 0]              p2d5              ;
    reg  signed [15 : 0]              p2d6              ;
    reg  signed [15 : 0]              p2d7              ;
    reg  signed [15 : 0]              p2d8              ;
    reg  signed [15 : 0]              p2d9              ;
    reg  signed [15 : 0]              p2d10             ;
    reg  signed [15 : 0]              p2d11             ;
    reg  signed [15 : 0]              p2d12             ;
    reg  signed [15 : 0]              p2d13             ;
    reg  signed [15 : 0]              p2d14             ;
    reg  signed [15 : 0]              p2d15             ;

    
    reg  signed [15 : 0]              p3d0              ;
    reg  signed [15 : 0]              p3d1              ;
    reg  signed [15 : 0]              p3d2              ;
    reg  signed [15 : 0]              p3d3              ;
    reg  signed [15 : 0]              p3d4              ;
    reg  signed [15 : 0]              p3d5              ;
    reg  signed [15 : 0]              p3d6              ;
    reg  signed [15 : 0]              p3d7              ;

    
    reg  signed [15 : 0]              p4d0              ;
    reg  signed [15 : 0]              p4d1              ;
    reg  signed [15 : 0]              p4d2              ;
    reg  signed [15 : 0]              p4d3              ;
    
    reg  signed [15 : 0]              p5d0              ;
    reg  signed [15 : 0]              p5d1              ;

    reg         [7  : 0]              p2idx0            ;
    reg         [7  : 0]              p2idx1            ;
    reg         [7  : 0]              p2idx2            ;
    reg         [7  : 0]              p2idx3            ;
    reg         [7  : 0]              p2idx4            ;
    reg         [7  : 0]              p2idx5            ;
    reg         [7  : 0]              p2idx6            ;
    reg         [7  : 0]              p2idx7            ;
    reg         [7  : 0]              p2idx8            ;
    reg         [7  : 0]              p2idx9            ;
    reg         [7  : 0]              p2idx10           ;
    reg         [7  : 0]              p2idx11           ;
    reg         [7  : 0]              p2idx12           ;
    reg         [7  : 0]              p2idx13           ;
    reg         [7  : 0]              p2idx14           ;
    reg         [7  : 0]              p2idx15           ;

    reg         [7  : 0]              p3idx0            ;
    reg         [7  : 0]              p3idx1            ;
    reg         [7  : 0]              p3idx2            ;
    reg         [7  : 0]              p3idx3            ;
    reg         [7  : 0]              p3idx4            ;
    reg         [7  : 0]              p3idx5            ;
    reg         [7  : 0]              p3idx6            ;
    reg         [7  : 0]              p3idx7            ;
    
    reg         [7  : 0]              p4idx0            ;
    reg         [7  : 0]              p4idx1            ;
    reg         [7  : 0]              p4idx2            ;
    reg         [7  : 0]              p4idx3            ;

    reg         [7  : 0]              p5idx0            ;
    reg         [7  : 0]              p5idx1            ;

    reg  signed [15 : 0]              sd0               ;
    reg         [7  : 0]              sidx0             ;
    reg  signed [15 : 0]              sd1               ;
    reg         [7  : 0]              sidx1             ;
    wire signed [15 : 0]              rrdr              ;
    wire        [7  : 0]              rridxr            ;

    reg                               cvalid_t0         ;
    reg                               cvalid_t1         ;
    reg                               cvalid_t2         ;
    reg                               cvalid_t3         ;
    reg                               cvalid_t4         ;
    reg                               cvalid_t5         ;

    reg         [11 : 0]              ct_t0             ;
    reg         [11 : 0]              ct_t1             ;
    reg         [11 : 0]              ct_t2             ;
    reg         [11 : 0]              ct_t3             ;
    reg         [11 : 0]              ct_t4             ;
    reg         [11 : 0]              ct_t5             ;
    reg         [7  : 0]              treeout           ;

    reg         [31 : 0]              cinfo_t0          ;
    reg         [31 : 0]              cinfo_t1          ;
    reg         [31 : 0]              cinfo_t2          ;
    reg         [31 : 0]              cinfo_t3          ;
    reg         [31 : 0]              cinfo_t4          ;
    reg         [31 : 0]              cinfo_t5          ;

    wire                              scfirst           ;

    assign cready = mready;
    
    // generate data info
    always @(posedge clk ) begin
        if(rst) 
        begin
            cinfo_t0 <= 32'd0;
            cinfo_t1 <= 32'd0;
            cinfo_t2 <= 32'd0;
            cinfo_t3 <= 32'd0;
            cinfo_t4 <= 32'd0;
            cinfo_t5 <= 32'd0;
        end
        else
        begin
            cinfo_t0 <= cinfo;
            cinfo_t1 <= cinfo_t0;
            cinfo_t2 <= cinfo_t1;
            cinfo_t3 <= cinfo_t2;
            cinfo_t4 <= cinfo_t3;
            cinfo_t5 <= cinfo_t4;
        end
    end

    // input data distribution
    always @(posedge clk ) begin
        if (rst) begin
            p1d0  <= 16'd0;
            p1d1  <= 16'd0;
            p1d2  <= 16'd0;
            p1d3  <= 16'd0;
            p1d4  <= 16'd0;
            p1d5  <= 16'd0;
            p1d6  <= 16'd0;
            p1d7  <= 16'd0;
            p1d8  <= 16'd0;
            p1d9  <= 16'd0;
            p1d10 <= 16'd0;
            p1d11 <= 16'd0;
            p1d12 <= 16'd0;
            p1d13 <= 16'd0;
            p1d14 <= 16'd0;
            p1d15 <= 16'd0;
            p1d16 <= 16'd0;
            p1d17 <= 16'd0;
            p1d18 <= 16'd0;
            p1d19 <= 16'd0;
            p1d20 <= 16'd0;
            p1d21 <= 16'd0;
            p1d22 <= 16'd0;
            p1d23 <= 16'd0;
            p1d24 <= 16'd0;
            p1d25 <= 16'd0;
            p1d26 <= 16'd0;
            p1d27 <= 16'd0;
            p1d28 <= 16'd0;
            p1d29 <= 16'd0;
            p1d30 <= 16'd0;
            p1d31 <= 16'd0;
        end else if (cvalid) begin
            if (data_type) begin
                p1d0    <= cdata[15 :  0];
                p1d1    <= cdata[31 : 16];
                p1d2    <= cdata[47 : 32];
                p1d3    <= cdata[63 : 48];
                p1d4    <= cdata[79 : 64];
                p1d5    <= cdata[95 : 80];
                p1d6    <= cdata[111: 96];
                p1d7    <= cdata[127:112];
                p1d8    <= cdata[143:128];
                p1d9    <= cdata[159:144];
                p1d10   <= cdata[175:160];
                p1d11   <= cdata[191:176];
                p1d12   <= cdata[207:192];
                p1d13   <= cdata[223:208];
                p1d14   <= cdata[239:224];
                p1d15   <= cdata[255:240];
            end else begin
                p1d0    <= {{8{cdata[7  ]}},cdata[7  :  0]} ;
                p1d1    <= {{8{cdata[15 ]}},cdata[15 :  8]} ;
                p1d2    <= {{8{cdata[23 ]}},cdata[23 : 16]} ;
                p1d3    <= {{8{cdata[31 ]}},cdata[31 : 24]} ;
                p1d4    <= {{8{cdata[39 ]}},cdata[39 : 32]} ;
                p1d5    <= {{8{cdata[47 ]}},cdata[47 : 40]} ;
                p1d6    <= {{8{cdata[55 ]}},cdata[55 : 48]} ;
                p1d7    <= {{8{cdata[63 ]}},cdata[63 : 56]} ;
                p1d8    <= {{8{cdata[71 ]}},cdata[71 : 64]} ;
                p1d9    <= {{8{cdata[79 ]}},cdata[79 : 72]} ;
                p1d10   <= {{8{cdata[87 ]}},cdata[87 : 80]} ;
                p1d11   <= {{8{cdata[95 ]}},cdata[95 : 88]} ;
                p1d12   <= {{8{cdata[103]}},cdata[103: 96]} ;
                p1d13   <= {{8{cdata[111]}},cdata[111: 104]};
                p1d14   <= {{8{cdata[119]}},cdata[119: 112]};
                p1d15   <= {{8{cdata[127]}},cdata[127: 120]};
                p1d16   <= {{8{cdata[135]}},cdata[135: 128]};
                p1d17   <= {{8{cdata[143]}},cdata[143: 136]};
                p1d18   <= {{8{cdata[151]}},cdata[151: 144]};
                p1d19   <= {{8{cdata[159]}},cdata[159: 152]};
                p1d20   <= {{8{cdata[167]}},cdata[167: 160]};
                p1d21   <= {{8{cdata[175]}},cdata[175: 168]};
                p1d22   <= {{8{cdata[183]}},cdata[183: 176]};
                p1d23   <= {{8{cdata[191]}},cdata[191: 184]};
                p1d24   <= {{8{cdata[199]}},cdata[199: 192]};
                p1d25   <= {{8{cdata[207]}},cdata[207: 200]};
                p1d26   <= {{8{cdata[215]}},cdata[215: 208]};
                p1d27   <= {{8{cdata[223]}},cdata[223: 216]};
                p1d28   <= {{8{cdata[231]}},cdata[231: 224]};
                p1d29   <= {{8{cdata[239]}},cdata[239: 232]};
                p1d30   <= {{8{cdata[247]}},cdata[247: 240]};
                p1d31   <= {{8{cdata[255]}},cdata[255: 248]};
            end  
        end
        else begin
            p1d0  <= 16'd0;
            p1d1  <= 16'd0;
            p1d2  <= 16'd0;
            p1d3  <= 16'd0;
            p1d4  <= 16'd0;
            p1d5  <= 16'd0;
            p1d6  <= 16'd0;
            p1d7  <= 16'd0;
            p1d8  <= 16'd0;
            p1d9  <= 16'd0;
            p1d10 <= 16'd0;
            p1d11 <= 16'd0;
            p1d12 <= 16'd0;
            p1d13 <= 16'd0;
            p1d14 <= 16'd0;
            p1d15 <= 16'd0;
            p1d16 <= 16'd0;
            p1d17 <= 16'd0;
            p1d18 <= 16'd0;
            p1d19 <= 16'd0;
            p1d20 <= 16'd0;
            p1d21 <= 16'd0;
            p1d22 <= 16'd0;
            p1d23 <= 16'd0;
            p1d24 <= 16'd0;
            p1d25 <= 16'd0;
            p1d26 <= 16'd0;
            p1d27 <= 16'd0;
            p1d28 <= 16'd0;
            p1d29 <= 16'd0;
            p1d30 <= 16'd0;
            p1d31 <= 16'd0;
        end
    end

    // generate confs' index
    always @(posedge clk ) begin
        if(rst) begin
            p1idx0  <= 8'd0;
            p1idx1  <= 8'd0;
            p1idx2  <= 8'd0;
            p1idx3  <= 8'd0;
            p1idx4  <= 8'd0;
            p1idx5  <= 8'd0;
            p1idx6  <= 8'd0;
            p1idx7  <= 8'd0;
            p1idx8  <= 8'd0;
            p1idx9  <= 8'd0;
            p1idx10 <= 8'd0;
            p1idx11 <= 8'd0;
            p1idx12 <= 8'd0;
            p1idx13 <= 8'd0;
            p1idx14 <= 8'd0;
            p1idx15 <= 8'd0;
            p1idx16 <= 8'd0;
            p1idx17 <= 8'd0;
            p1idx18 <= 8'd0;
            p1idx19 <= 8'd0;
            p1idx20 <= 8'd0;
            p1idx21 <= 8'd0;
            p1idx22 <= 8'd0;
            p1idx23 <= 8'd0;
            p1idx24 <= 8'd0;
            p1idx25 <= 8'd0;
            p1idx26 <= 8'd0;
            p1idx27 <= 8'd0;
            p1idx28 <= 8'd0;
            p1idx29 <= 8'd0;
            p1idx30 <= 8'd0;
            p1idx31 <= 8'd0;
        end else if (cvalid) begin
            if (data_type) begin
                case (ct[3:0])
                    4'd0:begin
                        p1idx0  <= 8'd0 ;
                        p1idx1  <= 8'd1 ;
                        p1idx2  <= 8'd2 ;
                        p1idx3  <= 8'd3 ;
                        p1idx4  <= 8'd4 ;
                        p1idx5  <= 8'd5 ;
                        p1idx6  <= 8'd6 ;
                        p1idx7  <= 8'd7 ;
                        p1idx8  <= 8'd8 ;
                        p1idx9  <= 8'd9 ;
                        p1idx10 <= 8'd10;
                        p1idx11 <= 8'd11;
                        p1idx12 <= 8'd12;
                        p1idx13 <= 8'd13;
                        p1idx14 <= 8'd14;
                        p1idx15 <= 8'd15;
                    end 
                    4'd1:begin
                        p1idx0  <= 8'd16;
                        p1idx1  <= 8'd17;
                        p1idx2  <= 8'd18;
                        p1idx3  <= 8'd19;
                        p1idx4  <= 8'd20;
                        p1idx5  <= 8'd21;
                        p1idx6  <= 8'd22;
                        p1idx7  <= 8'd23;
                        p1idx8  <= 8'd24;
                        p1idx9  <= 8'd25;
                        p1idx10 <= 8'd26;
                        p1idx11 <= 8'd27;
                        p1idx12 <= 8'd28;
                        p1idx13 <= 8'd29;
                        p1idx14 <= 8'd30;
                        p1idx15 <= 8'd31;
                    end 
                    4'd2:begin
                        p1idx0  <= 8'd32;
                        p1idx1  <= 8'd33;
                        p1idx2  <= 8'd34;
                        p1idx3  <= 8'd35;
                        p1idx4  <= 8'd36;
                        p1idx5  <= 8'd37;
                        p1idx6  <= 8'd38;
                        p1idx7  <= 8'd39;
                        p1idx8  <= 8'd40;
                        p1idx9  <= 8'd41;
                        p1idx10 <= 8'd42;
                        p1idx11 <= 8'd43;
                        p1idx12 <= 8'd44;
                        p1idx13 <= 8'd45;
                        p1idx14 <= 8'd46;
                        p1idx15 <= 8'd47;
                    end 
                    4'd3:begin
                        p1idx0  <= 8'd48;
                        p1idx1  <= 8'd49;
                        p1idx2  <= 8'd50;
                        p1idx3  <= 8'd51;
                        p1idx4  <= 8'd52;
                        p1idx5  <= 8'd53;
                        p1idx6  <= 8'd54;
                        p1idx7  <= 8'd55;
                        p1idx8  <= 8'd56;
                        p1idx9  <= 8'd57;
                        p1idx10 <= 8'd58;
                        p1idx11 <= 8'd59;
                        p1idx12 <= 8'd60;
                        p1idx13 <= 8'd61;
                        p1idx14 <= 8'd62;
                        p1idx15 <= 8'd63;
                    end 
                    4'd4:begin
                        p1idx0  <= 8'd64;
                        p1idx1  <= 8'd65;
                        p1idx2  <= 8'd66;
                        p1idx3  <= 8'd67;
                        p1idx4  <= 8'd68;
                        p1idx5  <= 8'd69;
                        p1idx6  <= 8'd70;
                        p1idx7  <= 8'd71;
                        p1idx8  <= 8'd72;
                        p1idx9  <= 8'd73;
                        p1idx10 <= 8'd74;
                        p1idx11 <= 8'd75;
                        p1idx12 <= 8'd76;
                        p1idx13 <= 8'd77;
                        p1idx14 <= 8'd78;
                        p1idx15 <= 8'd79;
                    end 
                    4'd5:begin
                        p1idx0  <= 8'd80;
                        p1idx1  <= 8'd81;
                        p1idx2  <= 8'd82;
                        p1idx3  <= 8'd83;
                        p1idx4  <= 8'd84;
                        p1idx5  <= 8'd85;
                        p1idx6  <= 8'd86;
                        p1idx7  <= 8'd87;
                        p1idx8  <= 8'd88;
                        p1idx9  <= 8'd89;
                        p1idx10 <= 8'd90;
                        p1idx11 <= 8'd91;
                        p1idx12 <= 8'd92;
                        p1idx13 <= 8'd93;
                        p1idx14 <= 8'd94;
                        p1idx15 <= 8'd95;
                    end 
                    4'd6:begin
                        p1idx0  <= 8'd96 ;
                        p1idx1  <= 8'd97 ;
                        p1idx2  <= 8'd98 ;
                        p1idx3  <= 8'd99 ;
                        p1idx4  <= 8'd100;
                        p1idx5  <= 8'd101;
                        p1idx6  <= 8'd102;
                        p1idx7  <= 8'd103;
                        p1idx8  <= 8'd104;
                        p1idx9  <= 8'd105;
                        p1idx10 <= 8'd106;
                        p1idx11 <= 8'd107;
                        p1idx12 <= 8'd108;
                        p1idx13 <= 8'd109;
                        p1idx14 <= 8'd110;
                        p1idx15 <= 8'd111;
                    end
                    4'd7:begin
                        p1idx0  <= 8'd112;
                        p1idx1  <= 8'd113;
                        p1idx2  <= 8'd114;
                        p1idx3  <= 8'd115;
                        p1idx4  <= 8'd116;
                        p1idx5  <= 8'd117;
                        p1idx6  <= 8'd118;
                        p1idx7  <= 8'd119;
                        p1idx8  <= 8'd120;
                        p1idx9  <= 8'd121;
                        p1idx10 <= 8'd122;
                        p1idx11 <= 8'd123;
                        p1idx12 <= 8'd124;
                        p1idx13 <= 8'd125;
                        p1idx14 <= 8'd126;
                        p1idx15 <= 8'd127;
                    end
                    4'd8:begin
                        p1idx0  <= 8'd128;
                        p1idx1  <= 8'd129;
                        p1idx2  <= 8'd130;
                        p1idx3  <= 8'd131;
                        p1idx4  <= 8'd132;
                        p1idx5  <= 8'd133;
                        p1idx6  <= 8'd134;
                        p1idx7  <= 8'd135;
                        p1idx8  <= 8'd136;
                        p1idx9  <= 8'd137;
                        p1idx10 <= 8'd138;
                        p1idx11 <= 8'd139;
                        p1idx12 <= 8'd140;
                        p1idx13 <= 8'd141;
                        p1idx14 <= 8'd142;
                        p1idx15 <= 8'd143;
                    end
                    4'd9:begin
                        p1idx0  <= 8'd144;
                        p1idx1  <= 8'd145;
                        p1idx2  <= 8'd146;
                        p1idx3  <= 8'd147;
                        p1idx4  <= 8'd148;
                        p1idx5  <= 8'd149;
                        p1idx6  <= 8'd150;
                        p1idx7  <= 8'd151;
                        p1idx8  <= 8'd152;
                        p1idx9  <= 8'd153;
                        p1idx10 <= 8'd154;
                        p1idx11 <= 8'd155;
                        p1idx12 <= 8'd156;
                        p1idx13 <= 8'd157;
                        p1idx14 <= 8'd158;
                        p1idx15 <= 8'd159;
                    end
                    default: begin
                        p1idx0  <= 8'd0;
                        p1idx1  <= 8'd0;
                        p1idx2  <= 8'd0;
                        p1idx3  <= 8'd0;
                        p1idx4  <= 8'd0;
                        p1idx5  <= 8'd0;
                        p1idx6  <= 8'd0;
                        p1idx7  <= 8'd0;
                        p1idx8  <= 8'd0;
                        p1idx9  <= 8'd0;
                        p1idx10 <= 8'd0;
                        p1idx11 <= 8'd0;
                        p1idx12 <= 8'd0;
                        p1idx13 <= 8'd0;
                        p1idx14 <= 8'd0;
                        p1idx15 <= 8'd0;
                    end
                endcase
            end else begin
                case (ct[2:0])
                    3'd0:begin
                        p1idx0  <= 8'd0 ;
                        p1idx1  <= 8'd1 ;
                        p1idx2  <= 8'd2 ;
                        p1idx3  <= 8'd3 ;
                        p1idx4  <= 8'd4 ;
                        p1idx5  <= 8'd5 ;
                        p1idx6  <= 8'd6 ;
                        p1idx7  <= 8'd7 ;
                        p1idx8  <= 8'd8 ;
                        p1idx9  <= 8'd9 ;
                        p1idx10 <= 8'd10;
                        p1idx11 <= 8'd11;
                        p1idx12 <= 8'd12;
                        p1idx13 <= 8'd13;
                        p1idx14 <= 8'd14;
                        p1idx15 <= 8'd15;
                        p1idx16 <= 8'd16;
                        p1idx17 <= 8'd17;
                        p1idx18 <= 8'd18;
                        p1idx19 <= 8'd19;
                        p1idx20 <= 8'd20;
                        p1idx21 <= 8'd21;
                        p1idx22 <= 8'd22;
                        p1idx23 <= 8'd23;
                        p1idx24 <= 8'd24;
                        p1idx25 <= 8'd25;
                        p1idx26 <= 8'd26;
                        p1idx27 <= 8'd27;
                        p1idx28 <= 8'd28;
                        p1idx29 <= 8'd29;
                        p1idx30 <= 8'd30;
                        p1idx31 <= 8'd31;
                        
                    end 
                    3'd1:begin
                        p1idx0  <= 8'd32;
                        p1idx1  <= 8'd33;
                        p1idx2  <= 8'd34;
                        p1idx3  <= 8'd35;
                        p1idx4  <= 8'd36;
                        p1idx5  <= 8'd37;
                        p1idx6  <= 8'd38;
                        p1idx7  <= 8'd39;
                        p1idx8  <= 8'd40;
                        p1idx9  <= 8'd41;
                        p1idx10 <= 8'd42;
                        p1idx11 <= 8'd43;
                        p1idx12 <= 8'd44;
                        p1idx13 <= 8'd45;
                        p1idx14 <= 8'd46;
                        p1idx15 <= 8'd47;
                        p1idx16 <= 8'd48;
                        p1idx17 <= 8'd49;
                        p1idx18 <= 8'd50;
                        p1idx19 <= 8'd51;
                        p1idx20 <= 8'd52;
                        p1idx21 <= 8'd53;
                        p1idx22 <= 8'd54;
                        p1idx23 <= 8'd55;
                        p1idx24 <= 8'd56;
                        p1idx25 <= 8'd57;
                        p1idx26 <= 8'd58;
                        p1idx27 <= 8'd59;
                        p1idx28 <= 8'd60;
                        p1idx29 <= 8'd61;
                        p1idx30 <= 8'd62;
                        p1idx31 <= 8'd63;
                    end 
                    3'd2:begin
                        p1idx0  <= 8'd64;
                        p1idx1  <= 8'd65;
                        p1idx2  <= 8'd66;
                        p1idx3  <= 8'd67;
                        p1idx4  <= 8'd68;
                        p1idx5  <= 8'd69;
                        p1idx6  <= 8'd70;
                        p1idx7  <= 8'd71;
                        p1idx8  <= 8'd72;
                        p1idx9  <= 8'd73;
                        p1idx10 <= 8'd74;
                        p1idx11 <= 8'd75;
                        p1idx12 <= 8'd76;
                        p1idx13 <= 8'd77;
                        p1idx14 <= 8'd78;
                        p1idx15 <= 8'd79;
                        p1idx16 <= 8'd80;
                        p1idx17 <= 8'd81;
                        p1idx18 <= 8'd82;
                        p1idx19 <= 8'd83;
                        p1idx20 <= 8'd84;
                        p1idx21 <= 8'd85;
                        p1idx22 <= 8'd86;
                        p1idx23 <= 8'd87;
                        p1idx24 <= 8'd88;
                        p1idx25 <= 8'd89;
                        p1idx26 <= 8'd90;
                        p1idx27 <= 8'd91;
                        p1idx28 <= 8'd92;
                        p1idx29 <= 8'd93;
                        p1idx30 <= 8'd94;
                        p1idx31 <= 8'd95;
                    end 
                    3'd3:begin
                        p1idx0  <= 8'd96 ;
                        p1idx1  <= 8'd97 ;
                        p1idx2  <= 8'd98 ;
                        p1idx3  <= 8'd99 ;
                        p1idx4  <= 8'd100;
                        p1idx5  <= 8'd101;
                        p1idx6  <= 8'd102;
                        p1idx7  <= 8'd103;
                        p1idx8  <= 8'd104;
                        p1idx9  <= 8'd105;
                        p1idx10 <= 8'd106;
                        p1idx11 <= 8'd107;
                        p1idx12 <= 8'd108;
                        p1idx13 <= 8'd109;
                        p1idx14 <= 8'd110;
                        p1idx15 <= 8'd111;
                        p1idx16 <= 8'd112;
                        p1idx17 <= 8'd113;
                        p1idx18 <= 8'd114;
                        p1idx19 <= 8'd115;
                        p1idx20 <= 8'd116;
                        p1idx21 <= 8'd117;
                        p1idx22 <= 8'd118;
                        p1idx23 <= 8'd119;
                        p1idx24 <= 8'd120;
                        p1idx25 <= 8'd121;
                        p1idx26 <= 8'd122;
                        p1idx27 <= 8'd123;
                        p1idx28 <= 8'd124;
                        p1idx29 <= 8'd125;
                        p1idx30 <= 8'd126;
                        p1idx31 <= 8'd127;
                    end 
                    3'd4:begin
                        p1idx0  <= 8'd128;
                        p1idx1  <= 8'd129;
                        p1idx2  <= 8'd130;
                        p1idx3  <= 8'd131;
                        p1idx4  <= 8'd132;
                        p1idx5  <= 8'd133;
                        p1idx6  <= 8'd134;
                        p1idx7  <= 8'd135;
                        p1idx8  <= 8'd136;
                        p1idx9  <= 8'd137;
                        p1idx10 <= 8'd138;
                        p1idx11 <= 8'd139;
                        p1idx12 <= 8'd140;
                        p1idx13 <= 8'd141;
                        p1idx14 <= 8'd142;
                        p1idx15 <= 8'd143;
                        p1idx16 <= 8'd144;
                        p1idx17 <= 8'd145;
                        p1idx18 <= 8'd146;
                        p1idx19 <= 8'd147;
                        p1idx20 <= 8'd148;
                        p1idx21 <= 8'd149;
                        p1idx22 <= 8'd150;
                        p1idx23 <= 8'd151;
                        p1idx24 <= 8'd152;
                        p1idx25 <= 8'd153;
                        p1idx26 <= 8'd154;
                        p1idx27 <= 8'd155;
                        p1idx28 <= 8'd156;
                        p1idx29 <= 8'd157;
                        p1idx30 <= 8'd158;
                        p1idx31 <= 8'd159;
                    end 
                    default: begin
                        p1idx0  <= 8'd0;
                        p1idx1  <= 8'd0;
                        p1idx2  <= 8'd0;
                        p1idx3  <= 8'd0;
                        p1idx4  <= 8'd0;
                        p1idx5  <= 8'd0;
                        p1idx6  <= 8'd0;
                        p1idx7  <= 8'd0;
                        p1idx8  <= 8'd0;
                        p1idx9  <= 8'd0;
                        p1idx10 <= 8'd0;
                        p1idx11 <= 8'd0;
                        p1idx12 <= 8'd0;
                        p1idx13 <= 8'd0;
                        p1idx14 <= 8'd0;
                        p1idx15 <= 8'd0;
                        p1idx16 <= 8'd0;
                        p1idx17 <= 8'd0;
                        p1idx18 <= 8'd0;
                        p1idx19 <= 8'd0;
                        p1idx20 <= 8'd0;
                        p1idx21 <= 8'd0;
                        p1idx22 <= 8'd0;
                        p1idx23 <= 8'd0;
                        p1idx24 <= 8'd0;
                        p1idx25 <= 8'd0;
                        p1idx26 <= 8'd0;
                        p1idx27 <= 8'd0;
                        p1idx28 <= 8'd0;
                        p1idx29 <= 8'd0;
                        p1idx30 <= 8'd0;
                        p1idx31 <= 8'd0;
                    end
                endcase
            end
        end
    end

    always @(posedge clk ) begin
        if (rst) begin
            p2d0  <= 16'd0;
            p2d1  <= 16'd0;
            p2d2  <= 16'd0;
            p2d3  <= 16'd0;
            p2d4  <= 16'd0;
            p2d5  <= 16'd0;
            p2d6  <= 16'd0;
            p2d7  <= 16'd0;
            p2d8  <= 16'd0;
            p2d9  <= 16'd0;
            p2d10 <= 16'd0;
            p2d11 <= 16'd0;
            p2d12 <= 16'd0;
            p2d13 <= 16'd0;
            p2d14 <= 16'd0;
            p2d15 <= 16'd0;
            p2idx0  <= 8'd0;
            p2idx1  <= 8'd0;
            p2idx2  <= 8'd0;
            p2idx3  <= 8'd0;
            p2idx4  <= 8'd0;
            p2idx5  <= 8'd0;
            p2idx6  <= 8'd0;
            p2idx7  <= 8'd0;
            p2idx8  <= 8'd0;
            p2idx9  <= 8'd0;
            p2idx10 <= 8'd0;
            p2idx11 <= 8'd0;
            p2idx12 <= 8'd0;
            p2idx13 <= 8'd0;
            p2idx14 <= 8'd0;
            p2idx15 <= 8'd0;

            p3d0  <= 16'd0;
            p3d1  <= 16'd0;
            p3d2  <= 16'd0;
            p3d3  <= 16'd0;
            p3d4  <= 16'd0;
            p3d5  <= 16'd0;
            p3d6  <= 16'd0;
            p3d7  <= 16'd0;
            
            p3idx0  <= 8'd0;
            p3idx1  <= 8'd0;
            p3idx2  <= 8'd0;
            p3idx3  <= 8'd0;
            p3idx4  <= 8'd0;
            p3idx5  <= 8'd0;
            p3idx6  <= 8'd0;
            p3idx7  <= 8'd0;

            p4d0    <= 16'd0;
            p4d1    <= 16'd0;
            p4d2    <= 16'd0;
            p4d3    <= 16'd0;

            p4idx0  <= 8'd0;
            p4idx1  <= 8'd0;
            p4idx2  <= 8'd0;
            p4idx3  <= 8'd0;

            p5d0    <= 16'd0;
            p5d1    <= 16'd0;

            p5idx0  <= 8'd0;
            p5idx1  <= 8'd0;
        end else begin
            p2d0    <= r1d0   ;
            p2d1    <= r1d1   ;
            p2d2    <= r1d2   ;
            p2d3    <= r1d3   ;
            p2d4    <= r1d4   ;
            p2d5    <= r1d5   ;
            p2d6    <= r1d6   ;
            p2d7    <= r1d7   ;
            p2d8    <= r1d8   ;
            p2d9    <= r1d9   ;
            p2d10   <= r1d10  ;
            p2d11   <= r1d11  ;
            p2d12   <= r1d12  ;
            p2d13   <= r1d13  ;
            p2d14   <= r1d14  ;
            p2d15   <= r1d15  ;

            p2idx0  <= r1idx0 ;
            p2idx1  <= r1idx1 ;
            p2idx2  <= r1idx2 ;
            p2idx3  <= r1idx3 ;
            p2idx4  <= r1idx4 ;
            p2idx5  <= r1idx5 ;
            p2idx6  <= r1idx6 ;
            p2idx7  <= r1idx7 ;
            p2idx8  <= r1idx8 ;
            p2idx9  <= r1idx9 ;
            p2idx10 <= r1idx10;
            p2idx11 <= r1idx11;
            p2idx12 <= r1idx12;
            p2idx13 <= r1idx13;
            p2idx14 <= r1idx14;
            p2idx15 <= r1idx15;
            
            p3d0  <= r2d0;
            p3d1  <= r2d1;
            p3d2  <= r2d2;
            p3d3  <= r2d3;
            p3d4  <= r2d4;
            p3d5  <= r2d5;
            p3d6  <= r2d6;
            p3d7  <= r2d7;

            p3idx0  <= r2idx0 ;
            p3idx1  <= r2idx1 ;
            p3idx2  <= r2idx2 ;
            p3idx3  <= r2idx3 ;
            p3idx4  <= r2idx4 ;
            p3idx5  <= r2idx5 ;
            p3idx6  <= r2idx6 ;
            p3idx7  <= r2idx7 ;

            p4d0    <= r3d0  ;
            p4d1    <= r3d1  ;
            p4d2    <= r3d2  ;
            p4d3    <= r3d3  ;

            p4idx0  <= r3idx0;
            p4idx1  <= r3idx1;
            p4idx2  <= r3idx2;
            p4idx3  <= r3idx3;

            p5d0    <= r4d0;
            p5d1    <= r4d1;

            p5idx0  <= r4idx0;
            p5idx1  <= r4idx1;
        end
    end

    // tree output
    always @(posedge clk ) begin
        if (rst) begin
            treeout <= 8'd0;
        end else begin
            if (data_type) begin
                //treeout <= r4idx0;
                treeout <= p5idx0;
            end else begin
                treeout <= r5idx0;
            end
        end
    end

    // serial cmp
    always @(posedge clk ) begin
        if (rst) begin
            ct_t0  <= 12'd0;
            ct_t1  <= 12'd0;
            ct_t2  <= 12'd0;
            ct_t3  <= 12'd0;
            ct_t4  <= 12'd0;
            ct_t5  <= 12'd0;
            cvalid_t0 <= 1'b0 ;
            cvalid_t1 <= 1'b0 ;
            cvalid_t2 <= 1'b0 ;
            cvalid_t3 <= 1'b0 ;
            cvalid_t4 <= 1'b0 ;
            cvalid_t5 <= 1'b0 ;
        end
        else begin
            ct_t0  <= ct     ;
            ct_t1  <= ct_t0  ;
            ct_t2  <= ct_t1  ;
            ct_t3  <= ct_t2  ;
            ct_t4  <= ct_t3  ;
            ct_t5  <= ct_t4  ;
            cvalid_t0 <= cvalid   ;
            cvalid_t1 <= cvalid_t0;
            cvalid_t2 <= cvalid_t1;
            cvalid_t3 <= cvalid_t2;
            cvalid_t4 <= cvalid_t3;
            cvalid_t5 <= cvalid_t4;
        end
    end
    
    assign scfirst = cvalid_t4 && (ct_t4 == 12'd0); // tree out

    reg [31:0]  scinfo;

    always @(posedge clk ) begin
        if (rst) begin
            sd0   <= 16'd0;
            sd1   <= 16'd0;
            sidx0 <= 8'd0;            
            sidx1 <= 8'd0;
            scinfo<= 32'd0;
        end
        else begin
            if (scfirst) 
            begin
                if (data_type) begin
                    sd0     <= p5d0;
                    sd1     <= 16'Hff80;
                    sidx0   <= p5idx0;
                    sidx1   <= 8'd0;
                    scinfo  <= cinfo_t4;
                end else begin
                    sd0     <= r5d0;
                    sd1     <= 16'Hff80;
                    sidx0   <= r5idx0;
                    sidx1   <= 8'd0;
                    scinfo  <= cinfo_t4 ;
                end
            end 
            else if (cvalid_t4) 
            begin
                if (data_type) begin
                    sd0     <= p5d0;
                    sd1     <= rrdr;
                    sidx0   <= p5idx0;
                    sidx1   <= rridxr;
                    scinfo  <= cinfo_t4;
                end else begin
                    sd0     <= r5d0;
                    sd1     <= rrdr;
                    sidx0   <= r5idx0;
                    sidx1   <= rridxr;
                    scinfo  <= cinfo_t4;
                end
            end
            else begin
                sd0     <= sd0   ;
                sd1     <= sd1   ;
                sidx0   <= sidx0 ;
                sidx1   <= sidx1 ;
                scinfo  <= scinfo;
            end
        end
    end

    //argmax output 
    always @(posedge clk ) begin
        if (rst) begin
            maxidx <= 8'd0;
            mvalid <= 1'b0;
            cinfo_tr <= 32'd0;
        end else begin
            if (ct_size == 12'd1 && cvalid_t5) begin
                maxidx   <= treeout   ;
                mvalid   <= cvalid_t5 ;
                cinfo_tr <= cinfo_t5  ;
            end else if (cvalid_t5 && ct_t5 == ct_size - 1'b1) begin
                maxidx   <= rridxr   ;
                mvalid   <= cvalid_t5;
                cinfo_tr <= scinfo   ;
            end else begin
                maxidx   <= 8'd0 ;
                mvalid   <= 1'b0 ;
                cinfo_tr <= 32'd0;
            end
        end
    end

    cmp cmp_sc0(
    .a                 (sd1     ),
    .idxa              (sidx1   ),
    .b                 (sd0     ),
    .idxb              (sidx0   ),

    .rdata             (rrdr    ),
    .idxr              (rridxr  )
    );
    
    cmp cmp_u0(
    .a                 (p1d0    ),
    .idxa              (p1idx0  ),
    .b                 (p1d1    ),
    .idxb              (p1idx1  ),

    .rdata             (r1d0    ),
    .idxr              (r1idx0  )
    );

    cmp cmp_u1(
    .a                 (p1d2    ),
    .idxa              (p1idx2  ),
    .b                 (p1d3    ),
    .idxb              (p1idx3  ),

    .rdata             (r1d1    ),
    .idxr              (r1idx1  )
    );

    cmp cmp_u2(
    .a                 (p1d4    ),
    .idxa              (p1idx4  ),
    .b                 (p1d5    ),
    .idxb              (p1idx5  ),

    .rdata             (r1d2    ),
    .idxr              (r1idx2  )
    );

    cmp cmp_u3(
    .a                 (p1d6    ),
    .idxa              (p1idx6  ),
    .b                 (p1d7    ),
    .idxb              (p1idx7  ),

    .rdata             (r1d3    ),
    .idxr              (r1idx3  )
    );

    cmp cmp_u4(
    .a                 (p1d8    ),
    .idxa              (p1idx8  ),
    .b                 (p1d9    ),
    .idxb              (p1idx9  ),

    .rdata             (r1d4    ),
    .idxr              (r1idx4  )
    );

    cmp cmp_u5(
    .a                 (p1d10    ),
    .idxa              (p1idx10  ),
    .b                 (p1d11    ),
    .idxb              (p1idx11  ),

    .rdata             (r1d5     ),
    .idxr              (r1idx5   )
    );

    cmp cmp_u6(
    .a                 (p1d12    ),
    .idxa              (p1idx12  ),
    .b                 (p1d13    ),
    .idxb              (p1idx13  ),

    .rdata             (r1d6     ),
    .idxr              (r1idx6   )
    );

    cmp cmp_u7(
    .a                 (p1d14    ),
    .idxa              (p1idx14  ),
    .b                 (p1d15    ),
    .idxb              (p1idx15  ),

    .rdata             (r1d7     ),
    .idxr              (r1idx7   )
    );

    cmp cmp_u8(
    .a                 (p1d16    ),
    .idxa              (p1idx16  ),
    .b                 (p1d17    ),
    .idxb              (p1idx17  ),

    .rdata             (r1d8     ),
    .idxr              (r1idx8   )
    );

    cmp cmp_u9(
    .a                 (p1d18    ),
    .idxa              (p1idx18  ),
    .b                 (p1d19    ),
    .idxb              (p1idx19  ),

    .rdata             (r1d9    ),
    .idxr              (r1idx9  )
    );
    
    cmp cmp_u10(
    .a                 (p1d20    ),
    .idxa              (p1idx20  ),
    .b                 (p1d21    ),
    .idxb              (p1idx21  ),

    .rdata             (r1d10    ),
    .idxr              (r1idx10  )
    );

    cmp cmp_u11(
    .a                 (p1d22    ),
    .idxa              (p1idx22  ),
    .b                 (p1d23    ),
    .idxb              (p1idx23  ),

    .rdata             (r1d11    ),
    .idxr              (r1idx11  )
    );

    cmp cmp_u12(
    .a                 (p1d24    ),
    .idxa              (p1idx24  ),
    .b                 (p1d25    ),
    .idxb              (p1idx25  ),

    .rdata             (r1d12    ),
    .idxr              (r1idx12  )
    );

    cmp cmp_u13(
    .a                 (p1d26    ),
    .idxa              (p1idx26  ),
    .b                 (p1d27    ),
    .idxb              (p1idx27  ),

    .rdata             (r1d13    ),
    .idxr              (r1idx13  )
    );

    cmp cmp_u14(
    .a                 (p1d28    ),
    .idxa              (p1idx28  ),
    .b                 (p1d29    ),
    .idxb              (p1idx29  ),

    .rdata             (r1d14    ),
    .idxr              (r1idx14  )
    );

    cmp cmp_u15(
    .a                 (p1d30    ),
    .idxa              (p1idx30  ),
    .b                 (p1d31    ),
    .idxb              (p1idx31  ),

    .rdata             (r1d15    ),
    .idxr              (r1idx15  )
    );

    //layer2

    cmp cmp_ua0(
    .a                 (p2d0    ),
    .idxa              (p2idx0  ),
    .b                 (p2d1    ),
    .idxb              (p2idx1  ),

    .rdata             (r2d0    ),
    .idxr              (r2idx0  )
    );

    cmp cmp_ua1(
    .a                 (p2d2    ),
    .idxa              (p2idx2  ),
    .b                 (p2d3    ),
    .idxb              (p2idx3  ),

    .rdata             (r2d1    ),
    .idxr              (r2idx1  )
    );

    cmp cmp_ua2(
    .a                 (p2d4    ),
    .idxa              (p2idx4  ),
    .b                 (p2d5    ),
    .idxb              (p2idx5  ),

    .rdata             (r2d2    ),
    .idxr              (r2idx2  )
    );

    cmp cmp_ua3(
    .a                 (p2d6    ),
    .idxa              (p2idx6  ),
    .b                 (p2d7    ),
    .idxb              (p2idx7  ),

    .rdata             (r2d3    ),
    .idxr              (r2idx3  )
    );

    cmp cmp_ua4(
    .a                 (p2d8    ),
    .idxa              (p2idx8  ),
    .b                 (p2d9    ),
    .idxb              (p2idx9  ),

    .rdata             (r2d4    ),
    .idxr              (r2idx4  )
    );

    cmp cmp_ua5(
    .a                 (p2d10    ),
    .idxa              (p2idx10  ),
    .b                 (p2d11    ),
    .idxb              (p2idx11  ),

    .rdata             (r2d5    ),
    .idxr              (r2idx5  )
    );

    cmp cmp_ua6(
    .a                 (p2d12    ),
    .idxa              (p2idx12  ),
    .b                 (p2d13    ),
    .idxb              (p2idx13  ),

    .rdata             (r2d6    ),
    .idxr              (r2idx6  )
    );

    cmp cmp_ua7(
    .a                 (p2d14    ),
    .idxa              (p2idx14  ),
    .b                 (p2d15    ),
    .idxb              (p2idx15  ),

    .rdata             (r2d7    ),
    .idxr              (r2idx7  )
    );

    //layer3
    cmp cmp_ub0(
    .a                 (p3d0    ),
    .idxa              (p3idx0  ),
    .b                 (p3d1    ),
    .idxb              (p3idx1  ),

    .rdata             (r3d0    ),
    .idxr              (r3idx0  )
    );

    cmp cmp_ub1(
    .a                 (p3d2    ),
    .idxa              (p3idx2  ),
    .b                 (p3d3    ),
    .idxb              (p3idx3  ),

    .rdata             (r3d1    ),
    .idxr              (r3idx1  )
    );

    cmp cmp_ub2(
    .a                 (p3d4    ),
    .idxa              (p3idx4  ),
    .b                 (p3d5    ),
    .idxb              (p3idx5  ),

    .rdata             (r3d2    ),
    .idxr              (r3idx2  )
    );

    cmp cmp_ub3(
    .a                 (p3d6    ),
    .idxa              (p3idx6  ),
    .b                 (p3d7    ),
    .idxb              (p3idx7  ),

    .rdata             (r3d3    ),
    .idxr              (r3idx3  )
    );

    //layer4
    cmp cmp_uc0(
    .a                 (p4d0    ),
    .idxa              (p4idx0  ),
    .b                 (p4d1    ),
    .idxb              (p4idx1  ),

    .rdata             (r4d0    ),
    .idxr              (r4idx0  )
    );

    cmp cmp_uc1(
    .a                 (p4d2    ),
    .idxa              (p4idx2  ),
    .b                 (p4d3    ),
    .idxb              (p4idx3  ),

    .rdata             (r4d1    ),
    .idxr              (r4idx1  )
    );

    //layer5
    cmp cmp_ud0(
    .a                 (p5d0    ),
    .idxa              (p5idx0  ),
    .b                 (p5d1    ),
    .idxb              (p5idx1  ),

    .rdata             (r5d0    ),
    .idxr              (r5idx0  )
    );

endmodule
