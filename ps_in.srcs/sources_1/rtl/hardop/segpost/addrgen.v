//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : addrgen.v
// Author        : SongYH
// Project       : 
// Create Date   : 2023.10.29
// Description   : 
// - read ddr arg_araddr
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module addrgen#(parameter DW1=26, DW2=16, DW3=24) (
    input                                addrgen_start   ,
    input       [DW1-1 : 0]              addr_base       ,
    input       [   31 : 0]              addr_num        ,
    input       [   31 : 0]              pause_num       ,
    input                                mode            ,
    input                                single          ,
    input       [   31 : 0]              srcy            ,

    input       [   11 : 0]              ct_size         ,
    input       [   31 : 0]              ct_addr_step    ,

    input                                tile_next       , //tile control
    input                                next_srcline    , //tile control
    output  reg                          addrgen_running ,
    output  reg                          addrgen_done_sts,

    output      [DW1-1 : 0]              araddr          ,
    output      [   31 : 0]              arinfo          ,
    output                               arvalid         ,
    input                                arready         ,

    input                                clk             ,
    input                                rst
);

reg   [ DW1-1 : 0]  arg_araddr      ;
reg   [    31 : 0]  arg_vcnt        ;
reg   [    11 : 0]  ct_cnt          ;
reg   [    31 : 0]  surface_cnt     ;
wire  [    31 : 0]  arg_arinfo      ;

wire  [    11 : 0]  ct              ;
wire                addrgen_done    ;
reg                 addrgen_pausing ; 
wire                addrgen_pause   ;
reg   [    15 : 0]  addr_pause_num  ;
wire  [    31 : 0]  surface_stride  ;
    
reg                 first_data      ;
reg                 last_data       ; 

wire                arg_hvalid      ;
wire                arg_lvalid      ;

wire                hline_switch;
wire                lline_switch;

reg                 hinitial;
reg                 linitial;

wire                hstart ;
wire                lstart ;

reg                 hstart_t;
reg                 lstart_t;

wire                hctrl  ;
wire                lctrl  ;

reg   [    31 : 0]  hct_cnt;
reg   [    31 : 0]  lct_cnt;

reg   [    31 : 0]  hline  ;
reg   [    31 : 0]  lline  ;

reg   [    31 : 0]  hpixel ;
reg   [    31 : 0]  lpixel ;

reg   [    31 : 0]  haddr  ;
reg   [    31 : 0]  laddr  ;

wire [31:0] tile_num;
reg [31:0] tcnt;
reg [31:0] pcnt;

wire [31:0] addr_num_all;
assign addr_num_all = srcy*{{pause_num[31:6]+ pause_num[5:0]},5'b0};

reg force_start;
reg force_start_cnt;

always @(posedge clk ) begin
    if (rst) begin
        force_start <= 1'b0;
        force_start_cnt <= 1'b0;
    end else if(addrgen_pause && (!force_start_cnt)) begin
        force_start <= 1'b1;
        force_start_cnt <= 1'b1;
    end
    else begin
        force_start <= 1'b0;
    end
end

reg next_srcline_t;
always @(posedge clk ) begin
    if (rst) begin
        next_srcline_t <= 1'b0;
    end else begin
        next_srcline_t <= next_srcline;
    end
end

reg [31:0] line_cnt;

always @(posedge clk ) begin
    if (rst) begin
        line_cnt <= 32'd0;
    end else if (addrgen_running && next_srcline && (!next_srcline_t)) begin
        line_cnt <= line_cnt + 1'b1;
    end
end

reg lline_used;
reg hline_used;

always @(posedge clk ) begin
    if (rst) begin
        lline_used <= 1'b0;
    end 
    else if (next_srcline) begin
        lline_used <= 1'b0;
    end
    else if (hline_used && lline_switch) begin
        lline_used <= 1'b1;
    end
end

always @(posedge clk ) begin
    if (rst) begin
        hline_used <= 1'b0;
    end 
    else if (next_srcline) begin
        hline_used <= 1'b0;
    end
    else if (hline_switch) begin
        hline_used <= 1'b1;
    end
end

// debug signal
always @(posedge clk ) begin
    if (rst) begin
        addr_pause_num <= 16'd0;
    end else if (arready && addrgen_running && next_srcline)begin
        addr_pause_num <= pause_num;
    end 
    else if (hline_used && lline_used)begin
        addr_pause_num <= 16'd0;
    end
end

assign ct = ct_size - 1'b1;

assign surface_stride = single ? (ct_addr_step):(ct_addr_step[31:1] + ct_addr_step[0]);

assign arg_hvalid = single ? (arg_araddr[0] == 1'b0) : 1'b1;
assign arg_lvalid = single ? (arg_araddr[0] == 1'b1) : 1'b1;

always@(posedge clk)
begin
    if(rst==1'b1)
        addrgen_running <= 1'b0;
    else if(addrgen_start)
        addrgen_running <= 1'b1;
    else if(addrgen_done)
        addrgen_running <= 1'b0;
end

always@(posedge clk)
begin
    if (rst==1'b1)
        addrgen_pausing <= 1'b0;
    else if (tile_next)
        addrgen_pausing <= 1'b0;
    else if (addrgen_pause)
        addrgen_pausing <= 1'b1;
end

always@(posedge clk)
begin
    if(rst==1'b1)
        addrgen_done_sts <= 1'b0;
    else if(addrgen_start)
        addrgen_done_sts <= 1'b0;
    else if(addrgen_done)
        addrgen_done_sts <= 1'b1;
end

// argmax mode
always@(posedge clk)
begin
    if(rst==1'b1)begin
        arg_vcnt <= 0;
        ct_cnt <= 0;
        surface_cnt <= 0;
        first_data <= 1'b0;
        last_data  <= 1'b0;
        arg_araddr <= 0;
    end
    else if(addrgen_start)begin
        arg_vcnt <= 0;
        ct_cnt <= 0;
        surface_cnt <= 0;
        first_data <= 1'b1; // first data
        last_data  <= single ? (arg_vcnt == addr_num - 2'd1) :(arg_vcnt == addr_num - 2'd2);
        //arg_araddr <= addr_base  ;
        arg_araddr <=  26'd0;
    end
    else if(arready && addrgen_running && (addrgen_pausing == 0))begin
        if(ct_size > 12'd1) 
        begin
            if(arg_vcnt == addr_num - 2'd2) begin
                arg_vcnt <= arg_vcnt + 1;
                ct_cnt <= ct_cnt + 1'b1;           
                surface_cnt <= surface_cnt + surface_stride;
                first_data <= 1'b0; // last data
                last_data  <= 1'b1;
                arg_araddr <= arg_araddr + surface_stride;
            end 
            else if (ct_cnt == ct_size - 1) begin
                arg_vcnt <= arg_vcnt + 1;
                ct_cnt <= 12'd0;
                surface_cnt <=0;
                first_data <= 1'b0;
                last_data  <= 1'b0;
                arg_araddr <= arg_araddr - surface_cnt + 1'b1;
            end 
            else begin
                arg_vcnt <= arg_vcnt + 1;
                ct_cnt <= ct_cnt + 1'b1;
                surface_cnt <= surface_cnt + surface_stride;
                first_data <= 1'b0;
                last_data  <= 1'b0;
                arg_araddr <= arg_araddr + surface_stride;
            end
        end
        else 
        begin
            if(arg_vcnt==addr_num - 2'd2) begin
                arg_vcnt    <= arg_vcnt + 1;
                ct_cnt      <= 12'b0;
                surface_cnt <= 0;
                first_data  <= 1'b0; // last data
                last_data   <= 1'b1;
                arg_araddr  <= arg_araddr + 1;
            end
            else begin
                arg_vcnt    <= arg_vcnt + 1; 
                ct_cnt      <= 12'b0;
                surface_cnt <= 0;
                first_data  <= 1'b0;
                last_data   <= 1'b0;
                arg_araddr  <= arg_araddr + 1'b1;         
            end
        end
    end
end

assign arg_arinfo = {16'b0,arg_hvalid,arg_lvalid,ct_cnt,first_data,last_data};
assign arg_arvalid = addrgen_running && (addrgen_pausing ==0) && arready;

// upsample mode

// for single  us single 与argmax single 不完全一致
wire us_single;
//assign us_single = pause_num[0] && (ct_size > 1'b1);
assign us_single = pause_num[0];

wire [15:0] tile_pause_num;
wire [31:0] tile_size     ;
assign  tile_pause_num = pause_num[15:1] + pause_num[0];

// assign  tile_size = 32;
assign tile_size =  us_single ? 65 : 32;

assign tile_num = {(pause_num[15:6] + |pause_num[5:0]),1'b0};

always @(posedge clk ) begin
    if (rst) begin
        hstart_t <= 1'b0;
        lstart_t <= 1'b0;
    end
    else begin
        hstart_t <= hstart;
        lstart_t <= lstart;
    end
end

wire [31:0] hadd_num;
assign hadd_num = us_single ? (addr_pause_num) : line_cnt[0] ? (addr_pause_num[15:1]):(addr_pause_num[15:1] + addr_pause_num[0]);
wire [31:0] us_surface_stride;
assign us_surface_stride = us_single ? (ct_addr_step):(ct_addr_step[31:1] + ct_addr_step[0]);

reg [31:0] h_tile_num;
reg        h_tile_num_p;
wire [31:0] h_tile_add_num ;
assign h_tile_add_num = us_single ? 32'd64 : 32'd32;
always @(posedge clk ) begin
    if (rst) begin
        h_tile_num <= 32'd0;
        h_tile_num_p <= 1'b0;
    end else if(hinitial) begin
        h_tile_num <= 32'd0;
        h_tile_num_p <= 1'b0;
    end if (hline_switch) begin // initial
        h_tile_num <= hline + hadd_num;
        h_tile_num_p <= 1'b0;
    end else if (hctrl && (!hstart) && !h_tile_num_p) begin
        h_tile_num <= h_tile_num + h_tile_add_num;
        h_tile_num_p <= 1'b1;
    end else if (hstart) begin
        h_tile_num_p <= 1'b0;
    end
end

always @(posedge clk ) begin // high tile arg_araddr gen
    if (rst) begin
        hline   <= 32'd0;
        hpixel  <= 32'd0; 
        hct_cnt <= 32'd0;
        haddr   <= 32'd0;
    end 
    else if (hinitial) begin // initial
        hline   <= 32'd0;//addr_base;
        hpixel  <= 32'd0;//addr_base;
        hct_cnt <= 32'd0;
        haddr   <= 32'd0;//addr_base;
    end 
    else if (hline_switch) begin // initial
        hline   <= hline + hadd_num;
        hpixel  <= hline + hadd_num; 
        haddr   <= hline + hadd_num;
        hct_cnt <= 32'd0;
    end 
    else if (hstart) begin
        hpixel  <= h_tile_num;
        hct_cnt <= 32'd0;
        haddr   <= h_tile_num;
    end else if(hctrl)
    begin
        if (ct_size > 1'd1) begin// ct >1 
            if (hct_cnt == ct_size - 1'b1) begin// switch pixel
                hpixel  <= hpixel + 1'b1;
                hct_cnt <= 32'd0;
                haddr   <= hpixel + 1'b1;
            end 
            else begin // fresh the pixels' addrs
                hpixel  <= hpixel;
                hct_cnt <= hct_cnt + 1'b1;
                haddr   <= haddr + us_surface_stride;
            end
        end else begin // ct == 1 switch pixel
            if (pcnt == tile_size + 2'd2) begin
                hpixel  <= hpixel;
                hct_cnt <= 1'b0;
                haddr   <= haddr ;
            end else begin
                hpixel  <= hpixel + 1'b1;
                hct_cnt <= 1'b0;
                haddr   <= haddr + 1'b1;
            end
        end
    end
end

wire [31:0] ladd_num;
assign ladd_num = us_single ? (addr_pause_num) : line_cnt[0] ? (addr_pause_num[15:1]):(addr_pause_num[15:1] + addr_pause_num[0]);

reg [31:0] l_tile_num;
reg        l_tile_num_p;
wire [31:0] l_tile_add_num ;
assign l_tile_add_num = us_single ? 32'd64 : 32'd32;
always @(posedge clk ) begin
    if (rst) begin
        l_tile_num <= 32'd0;
        l_tile_num_p <= 1'b0;
    end else if(linitial) begin
        l_tile_num <= us_single ? pause_num : pause_num[15:1];
        l_tile_num_p <= 1'b0;
    end if (lline_switch) begin // initial
        l_tile_num <= lline + ladd_num;
        l_tile_num_p <= 1'b0;
    end else if (lctrl && (!lstart) && !l_tile_num_p) begin
        l_tile_num <= l_tile_num + l_tile_add_num;
        l_tile_num_p <= 1'b1;
    end else if (lstart) begin
        l_tile_num_p <= 1'b0;
    end
end

always @(posedge clk ) begin // high tile arg_araddr gen
    if (rst) begin
        lline   <= 32'd0;
        lpixel  <= 32'd0; 
        lct_cnt <= 32'd0;
        laddr   <= 32'd0;
    end 
    else if (linitial) begin // initial
        lline   <= us_single ? pause_num : pause_num[15:1];//addr_base + pause_num[15:1];
        lpixel  <= us_single ? pause_num : pause_num[15:1];//addr_base + pause_num[15:1]; 
        lct_cnt <= 32'd0;
        laddr   <= us_single ? pause_num : pause_num[15:1];//addr_base + pause_num[15:1];
    end 
    else if (lline_switch) begin // initial
        lline   <= lline + ladd_num;
        lpixel  <= lline + ladd_num; 
        laddr   <= lline + ladd_num;
        lct_cnt <= 32'd0;
    end 
    else if (lstart) begin
        lpixel  <= l_tile_num;
        lct_cnt <= 1'b0;
        laddr   <= l_tile_num;
    end else if(lctrl)
    begin
        if (ct_size > 1'd1) begin// ct >1 
            if (lct_cnt == ct_size - 1'b1) begin// switch pixel
                lpixel  <= lpixel + 1'b1;
                lct_cnt <= 32'd0;
                laddr   <= lpixel + 1'b1;
            end 
            else begin // fresh the pixels' addrs
                lpixel  <= lpixel;
                lct_cnt <= lct_cnt + 1'b1;
                laddr   <= laddr + us_surface_stride;
            end
        end else begin// ct == 1 switch pixel
            if (pcnt == tile_size + 2'd2) begin
                lpixel  <= lpixel;
                lct_cnt <= 1'b0;
                laddr   <= laddr ;
            end else begin
                lpixel  <= lpixel + 1'b1;
                lct_cnt <= 1'b0;
                laddr   <= laddr + 1'b1;
            end
        end
    end
end

reg [31:0] pct_cnt;
always @(posedge clk ) begin
    if (rst) begin
        hinitial <= 1'b0;
        linitial <= 1'b0;
        tcnt     <= 32'd0;
        pcnt     <= 32'd0;
        pct_cnt  <= 32'd0;
    end else if (addrgen_start)begin
        hinitial <= 1'b1;
        linitial <= 1'b1;
        tcnt     <= 32'd0;
        pcnt     <= 32'd0;
        pct_cnt  <= 32'd0;
    end else if (arready && addrgen_running && (addrgen_pausing == 0))begin
        if (tcnt == tile_num - 1'b1 && pcnt == tile_size + 2'd2 && pct_cnt == ct_size - 1'b1) 
        begin
            hinitial <= 1'b0;
            linitial <= 1'b0;
            tcnt     <= 32'd0;
            pcnt     <= 32'd0;
            pct_cnt  <= 32'd0;
        end
        else if (pcnt == tile_size + 2'd2 && pct_cnt == ct_size - 1'b1) 
        begin
            hinitial <= 1'b0;
            linitial <= 1'b0;
            tcnt     <= tcnt + 1'b1;
            pcnt     <= 32'd0;
            pct_cnt  <= 32'd0;
        end 
        else if (pct_cnt == ct_size - 1'b1)
        begin
            hinitial <= 1'b0;
            linitial <= 1'b0;
            pcnt     <= pcnt + 1'b1;
            pct_cnt  <= 32'd0;
        end
        else 
        begin
            hinitial <= 1'b0;
            linitial <= 1'b0;
            pct_cnt  <= pct_cnt  + 1'b1;
        end
    end
end

assign hctrl = (tcnt[0] == 1'b0) && arready && addrgen_running && (addrgen_pausing == 0);
assign lctrl = (tcnt[0] == 1'b1) && arready && addrgen_running && (addrgen_pausing == 0);
assign lline_switch = (tcnt == tile_num - 1'b1) && pcnt == tile_size + 2'd2 && (pct_cnt == ct_size - 1'b1) && arready && addrgen_running && (addrgen_pausing == 0);
assign hline_switch = (tcnt == tile_num - 2'd2) && pcnt == tile_size + 2'd2 && (pct_cnt == ct_size - 1'b1) && arready && addrgen_running && (addrgen_pausing == 0);
assign hstart = (pcnt < 2'd2) && hctrl;
assign lstart = (pcnt < 2'd2) && lctrl;

wire [11:0] us_ct_cnt;
wire        us_hvalid;
wire        us_lvalid;
wire        us_fdata;
wire        us_ldata;


wire  [ DW1-1 : 0]  us_araddr      ;
wire  [    31 : 0]  us_arinfo      ;
wire                us_arvalid     ;

assign us_ct_cnt = hctrl ? hct_cnt : lctrl ? lct_cnt : 12'd0;

wire us_sw;
assign us_sw = us_single && srcy[0];
assign us_hvalid = us_single ? (us_araddr[0] == 1'b0) : 1'b1;
assign us_lvalid = us_single ? (us_araddr[0] == 1'b1) : 1'b1;

assign us_fdata = 1'b0;
assign us_ldata = 1'b0;

assign us_araddr = hctrl ? haddr : lctrl ? laddr : 26'd0;
assign us_arinfo = {16'b0,us_hvalid,us_lvalid,us_ct_cnt,us_fdata,us_ldata};//0_0_____0_0
assign us_arvalid = hctrl&(~hinitial)&(~hstart)&(pcnt != 0) || lctrl&(~linitial)&(~lstart)&(pcnt != 0);

assign addrgen_done = mode ? (pcnt == 2*addr_num_all - 1'b1) && arready && arvalid : (arg_vcnt == addr_num - 1'b1) && arready && arvalid;
assign addrgen_pause = mode && ((tcnt[1:0] == 2'b01 || tcnt[1:0] == 2'b11) && pcnt == tile_size + 2'd2) && (pct_cnt == ct_size - 1'b1) && addrgen_running && arready && arvalid;

assign araddr  = mode ? (us_single ?({1'b0,us_araddr[25:1]} + addr_base) :(us_araddr + addr_base)) : single ? ({1'b0,arg_araddr[25:1]} + addr_base) : (arg_araddr + addr_base);
assign arinfo  = mode ? us_arinfo : arg_arinfo;
assign arvalid = mode ? us_arvalid: arg_arvalid;

endmodule
