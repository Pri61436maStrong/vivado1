//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : coordgen.v
// Author        : SongYH
// Project       : 
// Create Date   : 2023.10.29
// Description   : 
// - generate upsample parameters
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================


module coordgen(
    input                                us_start       ,
    
    input       [   15 : 0]              ct_size        ,
    input       [   15 : 0]              dsth           ,
    input       [   15 : 0]              dstw           ,
    input       [   15 : 0]              srch           ,
    input       [   15 : 0]              srcw           ,
    input       [   31 : 0]              scaleh         ,
    input       [   31 : 0]              scalew         ,
    input       [   31 : 0]              basecoordx     ,
    input       [   31 : 0]              basecoordy     ,
    input       [   31 : 0]              dstw_tile      ,

    output      [   31 : 0]              status0        ,
    output      [   31 : 0]              status1        ,
    input                                mode           ,

    output      [    1 : 0]              line_same      ,
    output                               p0rvalid       ,
    input                                p0rready       ,
    output      [   10 : 0]              p0raddr0       ,
    output      [   10 : 0]              p0raddr1       ,
    output      [   10 : 0]              p0raddr2       ,
    output      [   10 : 0]              p0raddr3       ,
    output      [   31 : 0]              p0u            ,
    output      [   31 : 0]              p0v            ,
   
    output                               p1skip         ,
    output                               p1rvalid       ,
    input                                p1rready       ,
    output      [   10 : 0]              p1raddr0       ,
    output      [   10 : 0]              p1raddr1       ,
    output      [   10 : 0]              p1raddr2       ,
    output      [   10 : 0]              p1raddr3       ,
    output      [   31 : 0]              p1u            ,
    output      [   31 : 0]              p1v            ,

    output      [   7  : 0]              us_minfo       , //[7:2] rfu [1] idx1 last [0] idx0 last 

    output  reg                          us_done        ,

    output                               tile_next      ,
    output                               line_next      ,

    input                                region_next    ,

    input                                clk            ,
    input                                rst
    );

    //wire [11:0] dstw_tile;
    //assign dstw_tile = 32'd40;

    reg         us_running;
    
    reg         srcy_t     ;

    reg  [31:0] dstx       ;
    reg  [31:0] dsty       ;

    reg  [31:0] srcx       ;
    reg  [31:0] srcx1      ;
    reg  [31:0] srcy       ;

    wire [15:0] srcx_int   ;
    wire [15:0] srcx_dec   ;
    wire [15:0] srcy_dec   ;
    wire [15:0] srcx1_int  ;
    wire [15:0] srcx1_dec  ;

    reg         coord_last;

    wire p1skip_ts;
    reg  p1skip_t0;
    reg  p1skip_t1;
    reg  p1skip_t2;
    reg  p1skip_t3;
    reg  p1skip_t4;
    reg  p1skip_t5;
    reg  p1skip_t6;
    reg  p1skip_t7;
    reg  p1skip_t8;
    reg  p1skip_t9;
    reg  p1skip_t10;
    reg  p1skip_t11;
    reg  p1skip_t12;
    reg  p1skip_t13;
    reg  p1skip_t14;
    reg  p1skip_t15;
    reg  p1skip_t16;
    reg  p1skip_t17;
    reg  p1skip_t18;
    reg  p1skip_t19;
    reg  p1skip_t20;
    reg  p1skip_t21;
    reg  p1skip_t22;
    reg  p1skip_t23;

    reg [3:0]  idx_info_t0;
    reg [3:0]  idx_info_t1;
    reg [3:0]  idx_info_t2;
    reg [3:0]  idx_info_t3;
    reg [3:0]  idx_info_t4;
    reg [3:0]  idx_info_t5;
    reg [3:0]  idx_info_t6;
    reg [3:0]  idx_info_t7;
    reg [3:0]  idx_info_t8;
    reg [3:0]  idx_info_t9;
    reg [3:0]  idx_info_t10;
    reg [3:0]  idx_info_t11;
    reg [3:0]  idx_info_t12;
    reg [3:0]  idx_info_t13;
    reg [3:0]  idx_info_t14;
    reg [3:0]  idx_info_t15;
    reg [3:0]  idx_info_t16;
    reg [3:0]  idx_info_t17;
    reg [3:0]  idx_info_t18;
    reg [3:0]  idx_info_t19;
    reg [3:0]  idx_info_t20;
    reg [3:0]  idx_info_t21;
    reg [3:0]  idx_info_t22;
    reg [3:0]  idx_info_t23;
    reg [3:0]  idx_info_t24;
    reg [3:0]  idx_info_t25;
    reg [3:0]  idx_info_t26;

    wire       single;
    wire       idx0_last;
    wire       idx1_last;
    wire [3:0] idx_info_ts;
    wire [3:0] idx_info;

    wire [15:0] dstw_std;

    wire        addr_add_num;

    wire        us_working;
    wire [31:0] rct_size;
        
    reg [31:0] srcx_t;

// coord gen control

assign rct_size = (ct_size > 16'd1) ? 32'd4 : 32'd1;
    
always@(posedge clk) begin
    if(rst==1'b1)
        us_running <= 1'b0;
    else if(us_start)
        us_running <= 1'b1;
    else if(us_done)
        us_running <= 1'b0;
end

//coord gen pause control

reg [31:0] ct_cnt;
reg tile_finished;
wire [31:0] p_srcx;
wire [31:0] p_srcx1;
assign p_srcx = srcx + scalew;
assign p_srcx1 = srcx1 + scalew;

// always @(*) begin
//     if (mode && (!us_done) && us_working && (ct_cnt == rct_size - 1'b1) && (!srcx[31])) begin
//         if (p1raddr1[5:0] == 6'd63 && p_srcx1[21:16]==6'd63 ) begin
//             tile_finished = 1'b1;
//         end else if (p0raddr1[5:0] == 6'd63 && p_srcx[21:16]==6'd63 ) begin
//             tile_finished = 1'b1;
//         end else begin
//             tile_finished = dstx == dstw_std;
//         end
//     end else begin
//         tile_finished = 1'b0;
//     end
// end
reg pre_finished;

always @(posedge clk ) begin
    if (rst) begin
        pre_finished <= 1'b0;
    end else if(tile_next)begin
        pre_finished <= 1'b0;
    end else if(tile_finished) begin
        pre_finished <= 1'b1;
    end
end

always @(*) begin
    if (mode && (!us_done) && us_working && (ct_cnt == rct_size - 1'b1) && (!srcx[31]) && (!pre_finished)) begin
        if (p1raddr1[5:0] == 6'd63 && p_srcx1[21:16]==6'd63 ) begin
            tile_finished = 1'b1;
        end else if (p0raddr1[5:0] == 6'd63 && p_srcx[21:16]==6'd63 ) begin
            tile_finished = 1'b1;
        end else begin
            tile_finished = dstx == dstw_std;
        end
    end else begin
        tile_finished = 1'b0;
    end
end
 
reg region_ready;

reg us_pausing;
reg us_pausing_t;

always @(posedge clk ) begin
    if (rst == 1'b1) begin
        region_ready <= 1'b0;
    end else if (us_running && region_next) begin
        region_ready <= 1'b1;
    end else if (us_running && us_pausing_t&&(!us_pausing)) begin
        region_ready <= 1'b0;
    end
end

always @(posedge clk ) begin
    if (rst == 1'b1) begin
        us_pausing <= 1'b0;
    end else if (us_running &&(tile_finished)) begin
        us_pausing <= 1'b1;
    end else if (us_running && region_ready) begin
        us_pausing <= 1'b0;
    end 
end
always @(posedge clk ) begin
    if (rst == 1'b1) begin
        us_pausing_t <= 1'b0;
    end else begin
        us_pausing_t <= us_pausing;
    end
end

assign us_working = us_running && p0rready && p1rready && (!us_pausing);

// single and double ref
assign single = dstw[0] ; // what about dstw std

// assign dstw_std = single ? ((!(|(dstw[11:6]))) ? {dstw_tile[31:1] + dstw_tile[0],1'b0} - 2'd2 : dstw - 2'd1 ): ((!(|(dstw[11:6]))) ? {dstw_tile[31:1] + dstw_tile[0],1'b0} - 2'd2 : dstw - 2'd2);
assign dstw_std = single ? ({dstw_tile[31:1] + dstw_tile[0],1'b0} - 2'd2): ({dstw_tile[31:1] + dstw_tile[0],1'b0} - 2'd2);

// last info
assign idx0_last = single && (dsty == dsth - 1'b1) && (dstx == {dstw[15:1]+dstw[0],1'b0} - 2'd2);
assign idx1_last = (!single) && (dsty == dsth - 1'b1) && (dstx == ({dstw[15:1]+dstw[0],1'b0}- 2'd2));

//unvalid idx
wire   idx0_unvalid;
wire   idx1_unvalid;
assign idx0_unvalid = (dstx > ({dstw[15:1] + dstw[0],1'b0} - 2'd2));
assign idx1_unvalid = (dstx > ({dstw[15:1] + dstw[0],1'b0} - 2'd1))||(((dstx == ({dstw[15:1] + dstw[0],1'b0} - 2'd2))&&(dstw[0] == 1'b1)));

assign idx_info_ts = {idx0_unvalid,idx1_unvalid,idx0_last,idx1_last};
assign idx_info = (ct_size > 16'd1) ? idx_info_t26 : idx_info_t23;
assign us_minfo = {4'd0,idx_info};

always @(posedge clk ) begin
    if (rst) begin
        srcx_t <= 32'b0;
    end else if (us_working) begin
        srcx_t <= {srcx[21:17],1'b0} == 6'd0;
    end
end

wire tile_next_t;
reg next_t;

always @(posedge clk ) begin
    if (rst) begin
        next_t <= 1'b0;
    end else if (us_working && (ct_cnt == rct_size - 1'b1)) begin
        next_t <= tile_next_t;
    end
end

assign tile_next_t = (!srcx_t)&&({srcx[21:17],1'b0} == 6'd0) && mode && (!us_done) && us_working && (ct_cnt == 32'd0);

assign tile_next = tile_next_t && (!next_t);

wire [31:0] ynext;
wire [31:0] ynnext;
assign ynext = srcy + scaleh;
assign ynnext = ynext + scaleh;

wire [31:0] line_tile_size;
assign  line_tile_size = srcw[15:6] + |(srcw[5:0]);

reg [31:0] tile_cnt;

reg line_next_t;

always @(posedge clk ) begin
    if (rst) begin
        tile_cnt <= 32'd0;
    end else if (tile_cnt == line_tile_size - 1'b1 && tile_next_t && (!next_t)) begin
        tile_cnt <= 32'd0;
    end else if (tile_next_t && (!next_t)) begin
        tile_cnt <= tile_cnt + 1'b1;
    end
end

wire [31:0] switch_num ;

assign switch_num = line_tile_size > 1'b1 ? line_tile_size - 2'd2 : line_tile_size - 2'd1;

always @(posedge clk ) begin
    if (rst) begin
        line_next_t <= 1'b0;
    end else if (us_working && (tile_cnt == switch_num) && tile_next && (!srcy[31])) begin
        line_next_t <= line_tile_size > 1'b1 ? (ynext[16]!= srcy[16]) : (ynext[16]!= ynnext[16]) ;
    end else begin
        line_next_t <= 1'b0;
    end
end

assign line_next = line_next_t;

always @(posedge clk ) begin
    if(rst)
        coord_last <= 1'b0;
    else if(us_working) begin
        coord_last <= (dsty == dsth - 1'b1)&&(dstx == dstw_std);
    end
end
// status gen
assign status0 = {dstw[15:0],dsth[15:0]};
assign status1 = {11'd0,us_working,3'd0,ct_size,coord_last};
// for align corner false

wire [3:0] dstycd_int;
wire [15:0] srcx0bd_int;
wire [15:0] srcx1bd_int;

assign addr_add_num = 1'b1;

assign dstycd_int  = srcy[31]  ? 16'd0 : ((srcy[31:16] + 1'b1)  > srch - 1'b1) ? dsty[3:0] : dsty[3:0] + 1'b1;
assign line_same   = srcy[31]  ? 2'b01 : ((srcy[31:16] + 1'b1)  > srch - 1'b1) ? 2'b10 : 2'b00;
assign srcx_int    = srcx[31]  ? 16'd0 : (srcx[31:16]  > srcw - 1'b1) ? srcw[15:0] - 1'b1: srcx[31:16];
assign srcx0bd_int = srcx[31]  ? 16'd0 : ((srcx[31:16] + addr_add_num)  > srcw - 1'b1) ? srcw[15:0] - 1'b1: (srcx[31:16] + addr_add_num);

assign srcy_dec  = srcy[31]  ? 16'd0 : (srcy[31:16]  >= srch - 1'b1) ? 16'd0: srcy[15: 0];
assign srcx_dec  = srcx[31]  ? 16'd0 : (srcx[31:16]  >= srcw - 1'b1) ? 16'd0: srcx[15: 0];

assign p0rvalid = us_working && ct_cnt == rct_size - 1'b1;
assign p0raddr0 = {dsty[3:0] , srcx_int[7:0]   };
assign p0raddr1 = {dsty[3:0] , srcx0bd_int[7:0]};
assign p0raddr2 = {dsty[3:0] + 1'b1, srcx_int[7:0]   };
assign p0raddr3 = {dsty[3:0] + 1'b1, srcx0bd_int[7:0]};
assign p0u = srcx_dec;
assign p0v = srcy_dec;

assign srcx1_int   = srcx1[31] ? 16'd0 : (srcx1[31:16] > srcw - 1'b1) ? srcw[15:0] - 1'b1: srcx1[31:16];
assign srcx1bd_int = srcx1[31] ? 16'd0 : ((srcx1[31:16] + addr_add_num)  > srcw - 1'b1) ? srcw[15:0] - 1'b1: (srcx1[31:16] + addr_add_num);

assign srcx1_dec = srcx1[31] ? 16'd0 : (srcx1[31:16] >= srcw - 1'b1) ? 16'd0: srcx1[15: 0];

assign p1rvalid = us_working && ct_cnt == rct_size - 1'b1;
assign p1raddr0 = {dsty[3:0] , srcx1_int[7:0]  };
assign p1raddr1 = {dsty[3:0] , srcx1bd_int[7:0]};
assign p1raddr2 = {dsty[3:0] + 1'b1, srcx1_int[7:0]  };
assign p1raddr3 = {dsty[3:0] + 1'b1, srcx1bd_int[7:0]};
assign p1u = srcx1_dec;
assign p1v = srcy_dec ;

assign p1skip_ts = p1rvalid &&(dstx == dstw_std)&&(dstw[0] == 1'b1);

assign p1skip = p1skip_t23; 

always @(posedge clk ) 
begin
    if(rst)
        srcy_t <= 1'b0;
    else
        srcy_t <= srcy[16];
end

always @(posedge clk ) 
begin
    if(rst)
        us_done <= 1'b0;
    else if ((dsty == dsth - 1'b1) && (dstx == dstw_std || dstx > dstw - 1'b1) &&(us_working == 1'b1) && (ct_cnt == rct_size - 1'b1))
        us_done <= 1'b1;
end

// ycnt 
always @(posedge clk ) begin
    if(rst==1'b1)begin
        dsty <= 32'd0;
        srcy <= 32'd0;
    end
    else if (us_start) begin
        dsty <= 32'd0; 
        srcy <= basecoordy;
    end
    else if (us_working) begin
        if((dsty == dsth - 1'b1) && (dstx == dstw_std) && (ct_cnt == rct_size - 1'b1))begin
            dsty <= 32'd0; 
            srcy <= basecoordy;
        end
        else if(dstx == dstw_std && (ct_cnt == rct_size - 1'b1))begin
            dsty <= dsty + 1'b1;
            srcy <= srcy + scaleh;
        end
    end
end

// xcnt
always @(posedge clk ) begin
    if(rst==1'b1)begin
        dstx  <= 32'd0;
        srcx  <= 32'd0;
        srcx1 <= 32'd0;
    end
    else if (us_start) begin
        dstx  <= 32'd0; 
        srcx  <= basecoordx;
        srcx1 <= basecoordx + scalew;
    end
    else if(us_working) begin
        if(dstx == dstw_std && (ct_cnt == rct_size - 1'b1))begin
            dstx  <= 32'd0; 
            srcx  <= basecoordx;
            srcx1 <= basecoordx + scalew;
        end
        else if (ct_cnt == rct_size - 1'b1) begin
            dstx  <= dstx  + 2'd2;
            srcx  <= srcx  + (scalew<<1);
            srcx1 <= srcx1 + (scalew<<1);
        end
    end
end

// ct_cnt 
always @(posedge clk ) begin
    if(rst==1'b1)begin
        ct_cnt  <= 32'd0;
    end
    else if (us_start) begin
        ct_cnt  <= 32'd0;
    end
    else if(us_working) begin
        if(ct_cnt == rct_size - 1'b1)begin
            ct_cnt  <= 32'd0;
        end
        else begin
            ct_cnt  <= ct_cnt + 1'b1;
        end
    end
end

always @(posedge clk ) 
begin
    if(rst)
    begin
        idx_info_t0 <= 2'd0;
        idx_info_t1 <= 2'd0;
        idx_info_t2 <= 2'd0;
        idx_info_t3 <= 2'd0;
        idx_info_t4 <= 2'd0;
        idx_info_t5 <= 2'd0;
        idx_info_t6 <= 2'd0;
        idx_info_t7 <= 2'd0;
        idx_info_t8 <= 2'd0;
        idx_info_t9 <= 2'd0;
        idx_info_t10<= 2'd0;
        idx_info_t11<= 2'd0;
        idx_info_t12<= 2'd0;
        idx_info_t13<= 2'd0;
        idx_info_t14<= 2'd0;
        idx_info_t15<= 2'd0;
        idx_info_t16<= 2'd0;
        idx_info_t17<= 2'd0;
        idx_info_t18<= 2'd0;
        idx_info_t19<= 2'd0;
        idx_info_t20<= 2'd0;
        idx_info_t21<= 2'd0;
        idx_info_t22<= 2'd0;
        idx_info_t23<= 2'd0;
        idx_info_t24<= 2'd0;
        idx_info_t25<= 2'd0;
        idx_info_t26<= 2'd0;
    end
    else
    begin
        idx_info_t0 <= idx_info_ts ;// for ji shu map
        idx_info_t1 <= idx_info_t0 ;
        idx_info_t2 <= idx_info_t1 ;
        idx_info_t3 <= idx_info_t2 ;
        idx_info_t4 <= idx_info_t3 ;
        idx_info_t5 <= idx_info_t4 ;
        idx_info_t6 <= idx_info_t5 ;
        idx_info_t7 <= idx_info_t6 ;
        idx_info_t8 <= idx_info_t7 ;
        idx_info_t9 <= idx_info_t8 ;
        idx_info_t10<= idx_info_t9 ;
        idx_info_t11<= idx_info_t10;
        idx_info_t12<= idx_info_t11;
        idx_info_t13<= idx_info_t12;
        idx_info_t14<= idx_info_t13;
        idx_info_t15<= idx_info_t14;
        idx_info_t16<= idx_info_t15;
        idx_info_t17<= idx_info_t16;
        idx_info_t18<= idx_info_t17;
        idx_info_t19<= idx_info_t18;
        idx_info_t20<= idx_info_t19;
        idx_info_t21<= idx_info_t20;
        idx_info_t22<= idx_info_t21;
        idx_info_t23<= idx_info_t22;
        idx_info_t24<= idx_info_t23;
        idx_info_t25<= idx_info_t24;
        idx_info_t26<= idx_info_t25;
    end
end

always @(posedge clk ) 
begin
    if(rst)
    begin
        p1skip_t0 <= 1'b0;
        p1skip_t1 <= 1'b0;
        p1skip_t2 <= 1'b0;
        p1skip_t3 <= 1'b0;
        p1skip_t4 <= 1'b0;
        p1skip_t5 <= 1'b0;
        p1skip_t6 <= 1'b0;
        p1skip_t7 <= 1'b0;
        p1skip_t8 <= 1'b0;
        p1skip_t9 <= 1'b0;
        p1skip_t10<= 1'b0;
        p1skip_t11<= 1'b0;
        p1skip_t12<= 1'b0;
        p1skip_t13<= 1'b0;
        p1skip_t14<= 1'b0;
        p1skip_t15<= 1'b0;
        p1skip_t16<= 1'b0;
        p1skip_t17<= 1'b0;
        p1skip_t18<= 1'b0;
        p1skip_t19<= 1'b0;
        p1skip_t20<= 1'b0;
        p1skip_t21<= 1'b0;
        p1skip_t22<= 1'b0;
        p1skip_t23<= 1'b0;
    end
    else
    begin
        p1skip_t0 <= p1skip_ts ;// for ji shu map
        p1skip_t1 <= p1skip_t0 ;
        p1skip_t2 <= p1skip_t1 ;
        p1skip_t3 <= p1skip_t2 ;
        p1skip_t4 <= p1skip_t3 ;
        p1skip_t5 <= p1skip_t4 ;
        p1skip_t6 <= p1skip_t5 ;
        p1skip_t7 <= p1skip_t6 ;
        p1skip_t8 <= p1skip_t7 ;
        p1skip_t9 <= p1skip_t8 ;
        p1skip_t10<= p1skip_t9 ;
        p1skip_t11<= p1skip_t10;
        p1skip_t12<= p1skip_t11;
        p1skip_t13<= p1skip_t12;
        p1skip_t14<= p1skip_t13;
        p1skip_t15<= p1skip_t14;
        p1skip_t16<= p1skip_t15;
        p1skip_t17<= p1skip_t16;
        p1skip_t18<= p1skip_t17;
        p1skip_t19<= p1skip_t18;
        p1skip_t20<= p1skip_t19;
        p1skip_t21<= p1skip_t20;
        p1skip_t22<= p1skip_t21;
        p1skip_t23<= p1skip_t22;
    end
end

endmodule
