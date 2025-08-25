//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : upsample.v
// Author        : SongYH
// Project       : 
// Create Date   : 2023.10.29
// Description   : 
// - bilinear upsample and 4 chn argmax
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================


module upsample(
    input                                post_start     ,
    // coord gen 
    input       [   15 : 0]              dstw           ,
    input       [   15 : 0]              dsth           ,
    input       [   15 : 0]              srcw           ,
    input       [   15 : 0]              srch           ,
    input       [   31 : 0]              scalew         ,
    input       [   31 : 0]              scaleh         ,
    input       [   15 : 0]              ct_size        ,
    input       [   31 : 0]              basecoordx     ,
    input       [   31 : 0]              basecoordy     ,
    input       [   31 : 0]              dstw_tile      ,
    input                                data_type      ,
    output                               us_done        ,

    input                                sfifo_pfull    ,

    output      [   31 : 0]              status0        ,
    output      [   31 : 0]              status1        ,

    output                               tile_next      ,
    output                               line_next      ,

    input                                mode           ,

    // conf buffer
    
    input      [511: 0]                  conf_ddrdata   ,
    output     [ 31: 0]                  conf_winfo     ,
    input                                conf_wvalid    ,
    output                               conf_wready    ,

    // idx buffer
    input                                idx_wvalid0    ,
    output                               idx_wready0    ,    
    input       [7:0]                    idx_wdata0     ,

    input                                idx_wvalid1    ,
    output                               idx_wready1    , 
    input       [7:0]                    idx_wdata1     ,

    output                               mvalid0        ,
    input                                mready0        ,
    output      [7  : 0]                 maxidx0        ,
    
    output                               mvalid1        ,
    input                                mready1        ,
    output      [7  : 0]                 maxidx1        ,
    output      [7  : 0]                 us_minfo       , // [7:2] rfu [1] idx1 last [0] idx0 last 

    input                                clk            ,
    input                                rst
    );

    wire                          us_start     ;
    
    wire                          region_next  ;    

    wire                          cg_p0rvalid  ;
    wire                          cg_p0rready  ;
    wire [   10 : 0]              cg_p0raddr0  ;
    wire [   10 : 0]              cg_p0raddr1  ;
    wire [   10 : 0]              cg_p0raddr2  ;
    wire [   10 : 0]              cg_p0raddr3  ;
    wire [   31 : 0]              cg_p0u       ;
    wire [   31 : 0]              cg_p0v       ;

    wire                          cg_p1skip    ;
    wire                          cg_p1rvalid  ;
    wire                          cg_p1rready  ;
    wire [   10 : 0]              cg_p1raddr0  ;
    wire [   10 : 0]              cg_p1raddr1  ;
    wire [   10 : 0]              cg_p1raddr2  ;
    wire [   10 : 0]              cg_p1raddr3  ;
    wire [   31 : 0]              cg_p1u       ;
    wire [   31 : 0]              cg_p1v       ;

    wire                          ib_p0rvalid  ;
    wire                          ib_p0rready  ;
    wire [    7 : 0]              ib_p0rdata0  ;
    wire [    7 : 0]              ib_p0rdata1  ;
    wire [    7 : 0]              ib_p0rdata2  ;
    wire [    7 : 0]              ib_p0rdata3  ;
    wire [    7 : 0]              ib_p0ru      ;
    wire [    7 : 0]              ib_p0rv      ;
    wire [   13 : 0]              ib_p0caddr0  ;
    wire [   13 : 0]              ib_p0caddr1  ;
    wire [   13 : 0]              ib_p0caddr2  ;
    wire [   13 : 0]              ib_p0caddr3  ;

    wire                          ib_p1rvalid  ;
    wire                          ib_p1rready  ;
    wire [    7 : 0]              ib_p1rdata0  ;
    wire [    7 : 0]              ib_p1rdata1  ;
    wire [    7 : 0]              ib_p1rdata2  ;
    wire [    7 : 0]              ib_p1rdata3  ;
    wire [    7 : 0]              ib_p1ru      ;
    wire [    7 : 0]              ib_p1rv      ;
    wire [   13 : 0]              ib_p1caddr0  ;
    wire [   13 : 0]              ib_p1caddr1  ;
    wire [   13 : 0]              ib_p1caddr2  ;
    wire [   13 : 0]              ib_p1caddr3  ;

    wire                          cb_p0rvalid  ;
    wire                          cb_p0rready  ;
    wire [  255 : 0]              cb_p0rdata0  ;
    wire [  255 : 0]              cb_p0rdata1  ;
    wire [  255 : 0]              cb_p0rdata2  ;
    wire [  255 : 0]              cb_p0rdata3  ;
    wire [    7 : 0]              cb_p0ridx0   ;
    wire [    7 : 0]              cb_p0ridx1   ;
    wire [    7 : 0]              cb_p0ridx2   ;
    wire [    7 : 0]              cb_p0ridx3   ;
    wire [    7 : 0]              cb_p0ru      ;
    wire [    7 : 0]              cb_p0rv      ;
    
    wire                          cb_p1rvalid  ;
    wire                          cb_p1rready  ;
    wire [  255 : 0]              cb_p1rdata0  ;
    wire [  255 : 0]              cb_p1rdata1  ;
    wire [  255 : 0]              cb_p1rdata2  ;
    wire [  255 : 0]              cb_p1rdata3  ;
    wire [    7 : 0]              cb_p1ridx0   ;
    wire [    7 : 0]              cb_p1ridx1   ;
    wire [    7 : 0]              cb_p1ridx2   ;
    wire [    7 : 0]              cb_p1ridx3   ;
    wire [    7 : 0]              cb_p1ru      ;
    wire [    7 : 0]              cb_p1rv      ;

    wire                          s0arvalid    ;
    wire                          s0arready    ;
    wire [     7: 0]              s0aridx      ;
    wire [    15: 0]              s0aconf0     ;
    wire [    15: 0]              s0aconf1     ;
    wire [    15: 0]              s0aconf2     ;
    wire [    15: 0]              s0aconf3     ;

    wire                          s0brvalid    ;
    wire                          s0brready    ;
    wire [     7: 0]              s0bridx      ;
    wire [    15: 0]              s0bconf0     ;
    wire [    15: 0]              s0bconf1     ;
    wire [    15: 0]              s0bconf2     ;
    wire [    15: 0]              s0bconf3     ;

    wire                          s0crvalid    ;
    wire                          s0crready    ;
    wire [     7: 0]              s0cridx      ;
    wire [    15: 0]              s0cconf0     ;
    wire [    15: 0]              s0cconf1     ;
    wire [    15: 0]              s0cconf2     ;
    wire [    15: 0]              s0cconf3     ;

    wire                          s0drvalid    ;
    wire                          s0drready    ;
    wire [     7: 0]              s0dridx      ;
    wire [    15: 0]              s0dconf0     ;
    wire [    15: 0]              s0dconf1     ;
    wire [    15: 0]              s0dconf2     ;
    wire [    15: 0]              s0dconf3     ;

    wire                          s_p0valid    ;
    wire                          s_p0ready    ;

    wire                          s1arvalid    ;
    wire                          s1arready    ;
    wire [     7: 0]              s1aridx      ;
    wire [    15: 0]              s1aconf0     ;
    wire [    15: 0]              s1aconf1     ;
    wire [    15: 0]              s1aconf2     ;
    wire [    15: 0]              s1aconf3     ;

    wire                          s1brvalid    ;
    wire                          s1brready    ;
    wire [     7: 0]              s1bridx      ;
    wire [    15: 0]              s1bconf0     ;
    wire [    15: 0]              s1bconf1     ;
    wire [    15: 0]              s1bconf2     ;
    wire [    15: 0]              s1bconf3     ;

    wire                          s1crvalid    ;
    wire                          s1crready    ;
    wire [     7: 0]              s1cridx      ;
    wire [    15: 0]              s1cconf0     ;
    wire [    15: 0]              s1cconf1     ;
    wire [    15: 0]              s1cconf2     ;
    wire [    15: 0]              s1cconf3     ;

    wire                          s1drvalid    ;
    wire                          s1drready    ;
    wire [     7: 0]              s1dridx      ;
    wire [    15: 0]              s1dconf0     ;
    wire [    15: 0]              s1dconf1     ;
    wire [    15: 0]              s1dconf2     ;
    wire [    15: 0]              s1dconf3     ;

    wire                          s_p1valid    ;
    wire                          s_p1ready    ;

    wire                          mvalid1b     ;

    // idx and conf buffer addr generate

    wire                          conf0_wvalid   ;
    wire  [   13 : 0]             conf0_waddr    ; // generate [9:8]y [7:0]x 
    
    wire                          conf1_wvalid   ;
    wire  [   13 : 0]             conf1_waddr    ; // generate [9:8]y [7:0]x 

    wire [   13 : 0]              conf_waddr0   ; // [13:12]y [11: 8]ct [ 7: 0]x
    wire [   13 : 0]              conf_waddr1   ; // [13:12]y [11: 8]ct [ 7: 0]x
    reg                           conf_wvalid_t ;
    reg  [  511 : 0]              conf_ddrdata_t;
    reg  [  31  : 0]              conf_winfo_t  ;
    reg  [    9 : 0]              conf_wx0cnt   ; // generate [7:0]x 
    reg  [    9 : 0]              conf_wx1cnt   ; // generate [7:0]x 
    reg  [    9 : 0]              conf_wycnt    ; // generate [13:12]y
    reg  [    9 : 0]              conf_wctcnt   ; // generate [11:8] ct
    reg  [   10 : 0]              idx_waddr0    ; // generate [9:8]y [7:0]x 
    reg  [   10 : 0]              idx_waddr1    ; // generate [9:8]y [7:0]x 

    wire                          idx0_wvalid   ;
    wire  [   10 : 0]             idx0_waddr    ; // generate [9:8]y [7:0]x 
    
    wire                          idx1_wvalid   ;
    wire  [   10 : 0]             idx1_waddr    ; // generate [9:8]y [7:0]x 

    //conf for single upsample

    wire us_single;

    //assign us_single = srcw[0] && (ct_size > 16'd1);
    assign us_single = srcw[0];

    wire                               conf_wvalid0;
    wire                               conf0_wready;
    wire     [255: 0]                  conf_wdata0 ;

    wire                               conf_wvalid1;
    wire                               conf1_wready;
    wire     [255: 0]                  conf_wdata1 ;

    wire     [255:0]                   conf0_wdata;
    wire     [255:0]                   conf1_wdata;

    assign conf0_wvalid = conf_wvalid0;
    assign conf0_waddr  = conf_waddr0;
    assign conf0_wdata = us_single ? (conf_winfo_t[15] ? (conf_wdata0):(conf_winfo_t[14] ? conf_wdata1:256'd0)) : (conf_wdata0);
    
    assign conf1_wvalid = conf_wvalid1;
    assign conf1_waddr  = conf_waddr1;
    assign conf1_wdata  = conf_wdata1;
    
    assign mvalid1 = mvalid1b && (!cg_p1skip);

    always @(posedge clk ) begin
        if (rst) begin
            conf_wvalid_t  <= 1'b0  ;
            conf_ddrdata_t <= 512'd0;
            conf_winfo_t   <= 32'd0;
        end
        else begin
            conf_wvalid_t  <= conf_wvalid ;
            conf_ddrdata_t <= conf_ddrdata;
            conf_winfo_t   <= conf_winfo  ;
        end
    end

    assign conf_wvalid0 = conf_wvalid_t;
    assign conf_wvalid1 = (!us_single) && conf_wvalid_t;

    assign conf_wdata0 = conf_ddrdata_t[255:0];
    assign conf_wdata1 = conf_ddrdata_t[511:256];

    assign conf_wready = conf0_wready || conf1_wready;

    wire [1:0] conf_add;
    wire [7:0] conf_block_size;

    assign conf_add = us_single ? 2'd1 : 2'd2;
    
    //assign conf_block_size = us_single ? 7'd65 : 7'd64;
    assign conf_block_size = us_single ? 7'd65 : 7'd64;

    always @(posedge clk ) begin
        if (rst) begin
            conf_wx0cnt <= 10'd0;
            conf_wx1cnt <= 10'd1;
            conf_wycnt  <= 10'd0;
            conf_wctcnt <= 10'd0;
        end
        else if (conf_wvalid_t && conf_wready) begin
            if((conf_wx0cnt[7:0] == conf_block_size) &&(conf_wctcnt == ct_size - 1'b1))
            begin
                conf_wycnt  <= conf_wycnt + 1'b1;
                conf_wx0cnt <= 10'd0;
                conf_wx1cnt <= 10'd1;
                conf_wctcnt <= 10'd0;
            end
            else if(conf_wctcnt == ct_size - 1'b1)begin
                conf_wx0cnt <= conf_wx0cnt + conf_add;  //need change
                conf_wx1cnt <= conf_wx1cnt + conf_add;  //need change
                conf_wctcnt <= 10'd0;
            end
            else begin
                conf_wctcnt <= conf_wctcnt + 1'b1;
            end
        end
    end

    wire [31:0] cwaddr0;
    wire [31:0] cwaddr1;

    wire [31:0] xaddr0;
    wire [31:0] xaddr1;

    // assign ctaddr = conf_wctcnt[3:0] * 8'd66;
    assign xaddr0 = conf_wx0cnt[7:0] * 8'd10;
    assign xaddr1 = conf_wx1cnt[7:0] * 8'd10;

    assign cwaddr0 = xaddr0 + conf_wctcnt[3:0]; // more
    assign cwaddr1 = xaddr1 + conf_wctcnt[3:0]; // more
    
    assign conf_waddr0 = {conf_wycnt[1:0], cwaddr0[9:0]}; // [13:12]y [ 9: 0] ct,x
    assign conf_waddr1 = {conf_wycnt[1:0], cwaddr1[9:0]};

    wire  [7:0] idx0_wdata;
    wire  [7:0] idx1_wdata;
    
    // assign single_sts = (ct_size == 32'd1) && srcw[0] && srch[0]  && (idx_wvalid0 || idx_wvalid1);

    assign idx0_wvalid = idx_wvalid0;
    assign idx0_waddr  = idx_waddr0;
    assign idx0_wdata  = idx_wdata0;

    assign idx1_wvalid = idx_wvalid1;
    assign idx1_waddr  = idx_waddr1;
    assign idx1_wdata  = idx_wdata1;

    wire [1:0] idx_add;
    wire [7:0] idx_block_size;

    assign idx_add = us_single ? 2'd1 : 2'd2;
    assign idx_block_size = us_single ? 8'd131 : 8'd130;

    always @(posedge clk ) begin
        if (rst) begin
            idx_waddr0 <= 10'd0;
            idx_waddr1 <= 10'd1;
        end
        else if ((idx_wvalid0 && idx_wready0)||(idx_wvalid1 && idx_wready1)) begin
            if (idx_waddr0[7:0] == idx_block_size) begin
                idx_waddr0[10:8] <= idx_waddr0[10:8] + 1'b1;
                idx_waddr1[10:8] <= idx_waddr1[10:8] + 1'b1;
                idx_waddr0[ 7:0] <= 8'd0;
                idx_waddr1[ 7:0] <= 8'd1; 
            end
            else begin
                idx_waddr0 <= idx_waddr0 + idx_add;
                idx_waddr1 <= idx_waddr1 + idx_add; 
            end
        end
    end
wire [1:0] line_same;
wire cg_tile_next;
wire cg_line_next;

coordgen coordgen_u0(
    .us_start       (us_start      ),

    .ct_size        (ct_size       ),
    .dsth           (dsth          ),
    .dstw           (dstw          ),
    .srch           (srch          ),
    .srcw           (srcw          ),
    .scaleh         (scaleh        ),
    .scalew         (scalew        ),
    .basecoordx     (basecoordx    ),
    .basecoordy     (basecoordy    ),
    .dstw_tile      (dstw_tile     ),

    .status0        (status0       ),  
    .status1        (status1       ),
    .mode           (mode          ),

    .line_same      (line_same     ),
    .p0rvalid       (cg_p0rvalid   ),
    .p0rready       (cg_p0rready && (!sfifo_pfull)),
    .p0raddr0       (cg_p0raddr0   ),
    .p0raddr1       (cg_p0raddr1   ),
    .p0raddr2       (cg_p0raddr2   ),
    .p0raddr3       (cg_p0raddr3   ),
    .p0u            (cg_p0u        ),
    .p0v            (cg_p0v        ),
   
    .p1skip         (cg_p1skip     ),
    .p1rvalid       (cg_p1rvalid   ),
    .p1rready       (cg_p1rready && (!sfifo_pfull)),
    .p1raddr0       (cg_p1raddr0   ),
    .p1raddr1       (cg_p1raddr1   ),
    .p1raddr2       (cg_p1raddr2   ),
    .p1raddr3       (cg_p1raddr3   ),
    .p1u            (cg_p1u        ),
    .p1v            (cg_p1v        ),
    .us_minfo       (us_minfo      ),

    .us_done        (us_done       ),

    .tile_next      (cg_tile_next  ),
    .line_next      (cg_line_next  ),
    .region_next    (region_next   ),

    .clk            (clk           ),
    .rst            (rst           )
    );

wire [1:0] cline_same0;
wire [1:0] cline_same1;

wire idx0_wready0;
wire idx0_wready1;
wire idx1_wready0;
wire idx1_wready1;

assign idx_wready0 = idx0_wready0 || idx0_wready1;
assign idx_wready1 = idx1_wready0 || idx1_wready1;

wire [1:0] itile_next;
wire [1:0] ctile_next;

assign itile_next = {cg_tile_next,cg_line_next};

idx_buffer idx_buffer_u0(
    .post_start     (post_start    ),
    .data_type      (data_type     ),
    .src_ysize      (srch          ),
    .src_xsize      (srcw          ),
    .ct_size        (ct_size       ),
    .line_same      (line_same     ),
    .tile_next      (itile_next    ),

    .wvalid0        (idx0_wvalid   ),
    .wready0        (idx0_wready0  ),
    .waddr0         (idx0_waddr    ),
    .wdata0         (idx0_wdata    ),

    .wvalid1        (idx1_wvalid   ),
    .wready1        (idx0_wready1  ),
    .waddr1         (idx1_waddr    ),
    .wdata1         (idx1_wdata    ),

    .p1arvalid      (cg_p0rvalid   ),
    .p1arready      (cg_p0rready   ),
    .p1araddr0      (cg_p0raddr0   ),// 只读这些 // [10:8]y [7:0]x
    .p1araddr1      (cg_p0raddr1   ),//
    .p1araddr2      (cg_p0raddr2   ),//
    .p1araddr3      (cg_p0raddr3   ),//
    .p1u            (cg_p0u[15:8]  ), 
    .p1v            (cg_p0v[15:8]  ), 

    .cline_same     (cline_same0   ),
    .ctile_next     (ctile_next    ),
    .p1rvalid       (ib_p0rvalid   ),
    .p1rready       (ib_p0rready   ),
    .p1rdata0       (ib_p0rdata0   ),
    .p1rdata1       (ib_p0rdata1   ),
    .p1rdata2       (ib_p0rdata2   ),
    .p1rdata3       (ib_p0rdata3   ),
    .p1ru           (ib_p0ru       ),
    .p1rv           (ib_p0rv       ),
    .p1caddr0       (ib_p0caddr0   ),// pixel idx
    .p1caddr1       (ib_p0caddr1   ),
    .p1caddr2       (ib_p0caddr2   ),
    .p1caddr3       (ib_p0caddr3   ),

    .start          (us_start      ),
    .region_next    (region_next   ),

    .clk            (clk           ),
    .rst            (rst           )
    );

idx_buffer idx_buffer_u1(
    .post_start     (post_start    ),
    .data_type      (data_type     ),
    .src_ysize      (srch          ),
    .src_xsize      (srcw          ),
    .ct_size        (ct_size       ),
    .line_same      (line_same     ),

    .wvalid0        (idx0_wvalid   ),
    .wready0        (idx1_wready0  ),
    .waddr0         (idx0_waddr    ),
    .wdata0         (idx0_wdata    ),

    .wvalid1        (idx1_wvalid   ),
    .wready1        (idx1_wready1  ),
    .waddr1         (idx1_waddr    ),
    .wdata1         (idx1_wdata    ),

    .p1arvalid      (cg_p1rvalid   ),
    .p1arready      (cg_p1rready   ),
    .p1araddr0      (cg_p1raddr0   ),// 只读这些 // [10:8]y [7:0]x
    .p1araddr1      (cg_p1raddr1   ),//
    .p1araddr2      (cg_p1raddr2   ),//
    .p1araddr3      (cg_p1raddr3   ),//
    .p1u            (cg_p1u[15:8]  ), 
    .p1v            (cg_p1v[15:8]  ), 

    .cline_same     (cline_same1   ),
    .p1rvalid       (ib_p1rvalid   ),
    .p1rready       (ib_p1rready   ),
    .p1rdata0       (ib_p1rdata0   ),
    .p1rdata1       (ib_p1rdata1   ),
    .p1rdata2       (ib_p1rdata2   ),
    .p1rdata3       (ib_p1rdata3   ),
    .p1ru           (ib_p1ru       ),
    .p1rv           (ib_p1rv       ),
    .p1caddr0       (ib_p1caddr0   ),// pixel idx
    .p1caddr1       (ib_p1caddr1   ),
    .p1caddr2       (ib_p1caddr2   ),
    .p1caddr3       (ib_p1caddr3   ),

    .clk            (clk           ),
    .rst            (rst           )
    );

wire cb_p0arready;
wire cb_p0brready;
wire cb_p0crready;
wire cb_p0drready;
wire cb_p1arready;
wire cb_p1brready;
wire cb_p1crready;
wire cb_p1drready;

wire [255:0] cb_p0ct1rdata0;
wire [255:0] cb_p0ct1rdata1;
wire [255:0] cb_p0ct1rdata2;
wire [255:0] cb_p0ct1rdata3;
wire [255:0] cb_p0ct2rdata0;
wire [255:0] cb_p0ct2rdata1;
wire [255:0] cb_p0ct2rdata2;
wire [255:0] cb_p0ct2rdata3;
wire [255:0] cb_p0ct3rdata0;
wire [255:0] cb_p0ct3rdata1;
wire [255:0] cb_p0ct3rdata2;
wire [255:0] cb_p0ct3rdata3;

wire [255:0] cb_p1ct1rdata0;
wire [255:0] cb_p1ct1rdata1;
wire [255:0] cb_p1ct1rdata2;
wire [255:0] cb_p1ct1rdata3;
wire [255:0] cb_p1ct2rdata0;
wire [255:0] cb_p1ct2rdata1;
wire [255:0] cb_p1ct2rdata2;
wire [255:0] cb_p1ct2rdata3;
wire [255:0] cb_p1ct3rdata0;
wire [255:0] cb_p1ct3rdata1;
wire [255:0] cb_p1ct3rdata2;
wire [255:0] cb_p1ct3rdata3;
    
assign cb_p0rready = cb_p0arready & cb_p0brready & cb_p0crready & cb_p0drready;
assign cb_p1rready = cb_p1arready & cb_p1brready & cb_p1crready & cb_p1drready;

wire conf0_wready_u0;
wire conf1_wready_u0;
wire conf0_wready_u1;
wire conf1_wready_u1;

assign conf0_wready = conf0_wready_u0 && conf1_wready_u0;
assign conf1_wready = conf1_wready_u0 && conf1_wready_u1;

wire [1:0] cb_tile_next;

assign tile_next = cb_tile_next[1];
assign line_next = cb_tile_next[0];

conf_buffer conf_buffer_u0(
    .data_type   (data_type        ),
    .src_ysize   (srch             ),
    .src_xsize   (srcw             ),
    .ct_size     (ct_size          ),

    .wvalid0     (conf0_wvalid     ),
    .wready0     (conf0_wready_u0  ),
    .waddr0      (conf0_waddr      ),
    .wdata0      (conf0_wdata      ),

    .wvalid1     (conf1_wvalid     ),
    .wready1     (conf1_wready_u0  ),
    .waddr1      (conf1_waddr      ),
    .wdata1      (conf1_wdata      ),

    .cline_same  (cline_same0      ),
    .ctile_next  (ctile_next       ),

    .p1arvalid   (ib_p0rvalid      ),
    .p1arready   (ib_p0rready      ),
    .p1araddr0   (ib_p0caddr0      ), 
    .p1araddr1   (ib_p0caddr1      ),
    .p1araddr2   (ib_p0caddr2      ),
    .p1araddr3   (ib_p0caddr3      ),

    .p1idx0      (ib_p0rdata0      ), 
    .p1idx1      (ib_p0rdata1      ), 
    .p1idx2      (ib_p0rdata2      ), 
    .p1idx3      (ib_p0rdata3      ), 
    .p1u         (ib_p0ru          ), 
    .p1v         (ib_p0rv          ), 

    .p1ct_valid  (cb_p0rvalid      ),
    .p1rready    (cb_p0rready      ),
    .p1ct0rdata0 (cb_p0rdata0      ),
    .p1ct0rdata1 (cb_p0rdata1      ),
    .p1ct0rdata2 (cb_p0rdata2      ),
    .p1ct0rdata3 (cb_p0rdata3      ),

    .p1ct1rdata0 (cb_p0ct1rdata0   ),
    .p1ct1rdata1 (cb_p0ct1rdata1   ),
    .p1ct1rdata2 (cb_p0ct1rdata2   ),
    .p1ct1rdata3 (cb_p0ct1rdata3   ),
    .p1ct2rdata0 (cb_p0ct2rdata0   ),
    .p1ct2rdata1 (cb_p0ct2rdata1   ),
    .p1ct2rdata2 (cb_p0ct2rdata2   ),
    .p1ct2rdata3 (cb_p0ct2rdata3   ),
    .p1ct3rdata0 (cb_p0ct3rdata0   ),
    .p1ct3rdata1 (cb_p0ct3rdata1   ),
    .p1ct3rdata2 (cb_p0ct3rdata2   ),
    .p1ct3rdata3 (cb_p0ct3rdata3   ),

    .p1ridx0     (cb_p0ridx0       ), 
    .p1ridx1     (cb_p0ridx1       ), 
    .p1ridx2     (cb_p0ridx2       ), 
    .p1ridx3     (cb_p0ridx3       ), 
    .p1ru        (cb_p0ru          ),
    .p1rv        (cb_p0rv          ),
    .tile_next   (cb_tile_next     ),

    .clk         (clk              ),
    .rst         (rst              )
    );

conf_buffer conf_buffer_u1(
    .data_type   (data_type        ),
    .src_ysize   (srch             ),
    .src_xsize   (srcw             ),
    .ct_size     (ct_size          ),

    .wvalid0     (conf0_wvalid     ),
    .wready0     (conf0_wready_u1  ),
    .waddr0      (conf0_waddr      ),
    .wdata0      (conf0_wdata      ),

    .wvalid1     (conf1_wvalid     ),
    .wready1     (conf1_wready_u1  ),
    .waddr1      (conf1_waddr      ),
    .wdata1      (conf1_wdata      ),

    .cline_same  (cline_same1      ),
    .p1arvalid   (ib_p1rvalid      ),
    .p1arready   (ib_p1rready      ),
    .p1araddr0   (ib_p1caddr0      ), 
    .p1araddr1   (ib_p1caddr1      ),
    .p1araddr2   (ib_p1caddr2      ),
    .p1araddr3   (ib_p1caddr3      ),

    .p1idx0      (ib_p1rdata0      ), 
    .p1idx1      (ib_p1rdata1      ), 
    .p1idx2      (ib_p1rdata2      ), 
    .p1idx3      (ib_p1rdata3      ), 
    .p1u         (ib_p1ru          ), 
    .p1v         (ib_p1rv          ), 

    .p1ct_valid  (cb_p1rvalid      ),
    .p1rready    (cb_p1rready      ),
    .p1ct0rdata0 (cb_p1rdata0      ),
    .p1ct0rdata1 (cb_p1rdata1      ),
    .p1ct0rdata2 (cb_p1rdata2      ),
    .p1ct0rdata3 (cb_p1rdata3      ),

    .p1ct1rdata0 (cb_p1ct1rdata0   ),
    .p1ct1rdata1 (cb_p1ct1rdata1   ),
    .p1ct1rdata2 (cb_p1ct1rdata2   ),
    .p1ct1rdata3 (cb_p1ct1rdata3   ),
    .p1ct2rdata0 (cb_p1ct2rdata0   ),
    .p1ct2rdata1 (cb_p1ct2rdata1   ),
    .p1ct2rdata2 (cb_p1ct2rdata2   ),
    .p1ct2rdata3 (cb_p1ct2rdata3   ),
    .p1ct3rdata0 (cb_p1ct3rdata0   ),
    .p1ct3rdata1 (cb_p1ct3rdata1   ),
    .p1ct3rdata2 (cb_p1ct3rdata2   ),
    .p1ct3rdata3 (cb_p1ct3rdata3   ),

    .p1ridx0     (cb_p1ridx0       ), 
    .p1ridx1     (cb_p1ridx1       ), 
    .p1ridx2     (cb_p1ridx2       ), 
    .p1ridx3     (cb_p1ridx3       ), 
    .p1ru        (cb_p1ru          ),
    .p1rv        (cb_p1rv          ),

    .clk         (clk              ),
    .rst         (rst              )
    );

sel  sel_p0u0(
    .cfvalid     (cb_p0rvalid      ),
    .cfready     (cb_p0arready     ),
    .iptype      (data_type        ),
    .idx_n       (cb_p0ridx0       ),
    .confa       (cb_p0rdata0      ),
    .confb       (cb_p0rdata1      ),
    .confc       (cb_p0rdata2      ),
    .confd       (cb_p0rdata3      ),

    .rvalid      (s0arvalid        ),
    .rready      (s0arready        ),
    .ridx        (s0aridx          ),
    .confra      (s0aconf0         ),
    .confrb      (s0aconf1         ),
    .confrc      (s0aconf2         ),
    .confrd      (s0aconf3         ),

    .clk         (clk              ),
    .rst         (rst              )
    );

wire [255:0] sel_ct1_data0; 
wire [255:0] sel_ct1_data1; 
wire [255:0] sel_ct1_data2; 
wire [255:0] sel_ct1_data3; 
assign sel_ct1_data0 = (ct_size > 16'd1) ? cb_p0ct1rdata0 : cb_p0rdata0;
assign sel_ct1_data1 = (ct_size > 16'd1) ? cb_p0ct1rdata1 : cb_p0rdata1;
assign sel_ct1_data2 = (ct_size > 16'd1) ? cb_p0ct1rdata2 : cb_p0rdata2;
assign sel_ct1_data3 = (ct_size > 16'd1) ? cb_p0ct1rdata3 : cb_p0rdata3;

sel  sel_p0u1(
    .cfvalid     (cb_p0rvalid      ),
    .cfready     (cb_p0brready     ),
    .idx_n       (cb_p0ridx1       ),
    .confa       (sel_ct1_data0    ),
    .confb       (sel_ct1_data1    ),
    .confc       (sel_ct1_data2    ),
    .confd       (sel_ct1_data3    ),
    .iptype      (data_type        ),

    .rvalid      (s0brvalid        ),
    .rready      (s0brready        ),
    .ridx        (s0bridx          ),
    .confra      (s0bconf0         ),
    .confrb      (s0bconf1         ),
    .confrc      (s0bconf2         ),
    .confrd      (s0bconf3         ),

    .clk         (clk              ),
    .rst         (rst              )
    );

wire [255:0] sel_ct2_data0; 
wire [255:0] sel_ct2_data1; 
wire [255:0] sel_ct2_data2; 
wire [255:0] sel_ct2_data3; 
assign sel_ct2_data0 = (ct_size >16'd1) ? cb_p0ct2rdata0 : cb_p0rdata0;
assign sel_ct2_data1 = (ct_size >16'd1) ? cb_p0ct2rdata1 : cb_p0rdata1;
assign sel_ct2_data2 = (ct_size >16'd1) ? cb_p0ct2rdata2 : cb_p0rdata2;
assign sel_ct2_data3 = (ct_size >16'd1) ? cb_p0ct2rdata3 : cb_p0rdata3;

sel  sel_p0u2(
    .cfvalid     (cb_p0rvalid      ),
    .cfready     (cb_p0crready     ),
    .idx_n       (cb_p0ridx2       ),
    .confa       (sel_ct2_data0    ),
    .confb       (sel_ct2_data1    ),
    .confc       (sel_ct2_data2    ),
    .confd       (sel_ct2_data3    ),
    .iptype      (data_type        ),

    .rvalid      (s0crvalid        ),
    .rready      (s0crready        ),
    .ridx        (s0cridx          ),
    .confra      (s0cconf0         ),
    .confrb      (s0cconf1         ),
    .confrc      (s0cconf2         ),
    .confrd      (s0cconf3         ),

    .clk         (clk              ),
    .rst         (rst              )
    );

wire [255:0] sel_ct3_data0; 
wire [255:0] sel_ct3_data1; 
wire [255:0] sel_ct3_data2; 
wire [255:0] sel_ct3_data3; 
assign sel_ct3_data0 = (ct_size >16'd1) ? cb_p0ct3rdata0 : cb_p0rdata0;
assign sel_ct3_data1 = (ct_size >16'd1) ? cb_p0ct3rdata1 : cb_p0rdata1;
assign sel_ct3_data2 = (ct_size >16'd1) ? cb_p0ct3rdata2 : cb_p0rdata2;
assign sel_ct3_data3 = (ct_size >16'd1) ? cb_p0ct3rdata3 : cb_p0rdata3;

sel  sel_p0u3(
    .cfvalid     (cb_p0rvalid      ),
    .cfready     (cb_p0drready     ),
    .idx_n       (cb_p0ridx3       ),
    .confa       (sel_ct3_data0    ),
    .confb       (sel_ct3_data1    ),
    .confc       (sel_ct3_data2    ),
    .confd       (sel_ct3_data3    ),
    .iptype      (data_type        ),

    .rvalid      (s0drvalid        ),
    .rready      (s0drready        ),
    .ridx        (s0dridx          ),
    .confra      (s0dconf0         ),
    .confrb      (s0dconf1         ),
    .confrc      (s0dconf2         ),
    .confrd      (s0dconf3         ),

    .clk         (clk              ),
    .rst         (rst              )
    );

assign s0arready = s_p0ready;
assign s0brready = s_p0ready;
assign s0crready = s_p0ready;
assign s0drready = s_p0ready;
assign s_p0valid = s0arvalid && s0brvalid && s0crvalid && s0drvalid;

bilinear bilinear_u0(
    .svalid      (s_p0valid        ),
    .sready      (s_p0ready        ),

    .u           (cb_p0ru          ),
    .v           (cb_p0rv          ),
   
    .iidxa       (s0aridx          ),
    .confa0      (s0aconf0         ),
    .confa1      (s0aconf1         ),
    .confa2      (s0aconf2         ),
    .confa3      (s0aconf3         ),

    .iidxb       (s0bridx          ),
    .confb0      (s0bconf0         ),
    .confb1      (s0bconf1         ),
    .confb2      (s0bconf2         ),
    .confb3      (s0bconf3         ),

    .iidxc       (s0cridx          ),
    .confc0      (s0cconf0         ),
    .confc1      (s0cconf1         ),
    .confc2      (s0cconf2         ),
    .confc3      (s0cconf3         ),

    .iidxd       (s0dridx          ),
    .confd0      (s0dconf0         ),
    .confd1      (s0dconf1         ),
    .confd2      (s0dconf2         ),
    .confd3      (s0dconf3         ),
 
    .rvalid      (mvalid0          ),
    .rready      (mready0          ), 
    .ridx0       (maxidx0          ),
 
    .clk         (clk              ),
    .rst         (rst              )
    ); 

sel  sel_p1u0(
    .cfvalid     (cb_p1rvalid      ),
    .cfready     (cb_p1arready     ),
    .idx_n       (cb_p1ridx0       ),
    .confa       (cb_p1rdata0      ),
    .confb       (cb_p1rdata1      ),
    .confc       (cb_p1rdata2      ),
    .confd       (cb_p1rdata3      ),
    .iptype      (data_type        ),

    .rvalid      (s1arvalid        ),
    .rready      (s1arready        ),
    .ridx        (s1aridx          ),
    .confra      (s1aconf0         ),
    .confrb      (s1aconf1         ),
    .confrc      (s1aconf2         ),
    .confrd      (s1aconf3         ),

    .clk         (clk              ),
    .rst         (rst              )
    );

wire [255:0] sel_p1ct1_data0; 
wire [255:0] sel_p1ct1_data1; 
wire [255:0] sel_p1ct1_data2; 
wire [255:0] sel_p1ct1_data3; 
assign sel_p1ct1_data0 = (ct_size >16'd1) ? cb_p1ct1rdata0 : cb_p1rdata0;
assign sel_p1ct1_data1 = (ct_size >16'd1) ? cb_p1ct1rdata1 : cb_p1rdata1;
assign sel_p1ct1_data2 = (ct_size >16'd1) ? cb_p1ct1rdata2 : cb_p1rdata2;
assign sel_p1ct1_data3 = (ct_size >16'd1) ? cb_p1ct1rdata3 : cb_p1rdata3;

sel  sel_p1u1(
    .cfvalid     (cb_p1rvalid      ),
    .cfready     (cb_p1brready     ),
    .idx_n       (cb_p1ridx1       ),
    .confa       (sel_p1ct1_data0  ),
    .confb       (sel_p1ct1_data1  ),
    .confc       (sel_p1ct1_data2  ),
    .confd       (sel_p1ct1_data3  ),
    .iptype      (data_type        ),

    .rvalid      (s1brvalid        ),
    .rready      (s1brready        ),
    .ridx        (s1bridx          ),
    .confra      (s1bconf0         ),
    .confrb      (s1bconf1         ),
    .confrc      (s1bconf2         ),
    .confrd      (s1bconf3         ),

    .clk         (clk              ),
    .rst         (rst              )
    );

wire [255:0] sel_p1ct2_data0; 
wire [255:0] sel_p1ct2_data1; 
wire [255:0] sel_p1ct2_data2; 
wire [255:0] sel_p1ct2_data3; 
assign sel_p1ct2_data0 = (ct_size >16'd1) ? cb_p1ct2rdata0 : cb_p1rdata0;
assign sel_p1ct2_data1 = (ct_size >16'd1) ? cb_p1ct2rdata1 : cb_p1rdata1;
assign sel_p1ct2_data2 = (ct_size >16'd1) ? cb_p1ct2rdata2 : cb_p1rdata2;
assign sel_p1ct2_data3 = (ct_size >16'd1) ? cb_p1ct2rdata3 : cb_p1rdata3;

sel  sel_p1u2(
    .cfvalid     (cb_p1rvalid      ),
    .cfready     (cb_p1crready     ),
    .idx_n       (cb_p1ridx2       ),
    .confa       (sel_p1ct2_data0  ),
    .confb       (sel_p1ct2_data1  ),
    .confc       (sel_p1ct2_data2  ),
    .confd       (sel_p1ct2_data3  ),
    .iptype      (data_type        ),

    .rvalid      (s1crvalid        ),
    .rready      (s1crready        ),
    .ridx        (s1cridx          ),
    .confra      (s1cconf0         ),
    .confrb      (s1cconf1         ),
    .confrc      (s1cconf2         ),
    .confrd      (s1cconf3         ),

    .clk         (clk              ),
    .rst         (rst              )
    );

wire [255:0] sel_p1ct3_data0; 
wire [255:0] sel_p1ct3_data1; 
wire [255:0] sel_p1ct3_data2; 
wire [255:0] sel_p1ct3_data3; 
assign sel_p1ct3_data0 = (ct_size >16'd1) ? cb_p1ct3rdata0 : cb_p1rdata0;
assign sel_p1ct3_data1 = (ct_size >16'd1) ? cb_p1ct3rdata1 : cb_p1rdata1;
assign sel_p1ct3_data2 = (ct_size >16'd1) ? cb_p1ct3rdata2 : cb_p1rdata2;
assign sel_p1ct3_data3 = (ct_size >16'd1) ? cb_p1ct3rdata3 : cb_p1rdata3;

sel  sel_p1u3(
    .cfvalid     (cb_p1rvalid      ),
    .cfready     (cb_p1drready     ),
    .idx_n       (cb_p1ridx3       ),
    .confa       (sel_p1ct3_data0  ),
    .confb       (sel_p1ct3_data1  ),
    .confc       (sel_p1ct3_data2  ),
    .confd       (sel_p1ct3_data3  ),
    .iptype      (data_type        ),

    .rvalid      (s1drvalid        ),
    .rready      (s1drready        ),
    .ridx        (s1dridx          ),
    .confra      (s1dconf0         ),
    .confrb      (s1dconf1         ),
    .confrc      (s1dconf2         ),
    .confrd      (s1dconf3         ),

    .clk         (clk              ),
    .rst         (rst              )
    );

assign s1arready = s_p1ready;
assign s1brready = s_p1ready;
assign s1crready = s_p1ready;
assign s1drready = s_p1ready;
assign s_p1valid = s1arvalid && s1brvalid && s1crvalid && s1drvalid;

bilinear bilinear_u1(
    .svalid      (s_p1valid        ),
    .sready      (s_p1ready        ),

    .u           (cb_p1ru          ),
    .v           (cb_p1rv          ),
   
    .iidxa       (s1aridx          ),
    .confa0      (s1aconf0         ),
    .confa1      (s1aconf1         ),
    .confa2      (s1aconf2         ),
    .confa3      (s1aconf3         ),

    .iidxb       (s1bridx          ),
    .confb0      (s1bconf0         ),
    .confb1      (s1bconf1         ),
    .confb2      (s1bconf2         ),
    .confb3      (s1bconf3         ),

    .iidxc       (s1cridx          ),
    .confc0      (s1cconf0         ),
    .confc1      (s1cconf1         ),
    .confc2      (s1cconf2         ),
    .confc3      (s1cconf3         ),

    .iidxd       (s1dridx          ),
    .confd0      (s1dconf0         ),
    .confd1      (s1dconf1         ),
    .confd2      (s1dconf2         ),
    .confd3      (s1dconf3         ),
 
    .rvalid      (mvalid1b         ),
    .rready      (mready1          ), 
    .ridx0       (maxidx1          ),
 
    .clk         (clk              ),
    .rst         (rst              )
    ); 



endmodule
