//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : conf_buffer.v
// Author        : SongYH
// Project       : 
// Create Date   : 2024.01.10
// Description   : 
// - save confs from ddr for bilinear 
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================


module conf_buffer(
    input                data_type   ,
    input       [15: 0]  src_ysize   ,
    input       [15: 0]  src_xsize   ,
    input       [11: 0]  ct_size     ,
    
    input                wvalid0     ,
    output               wready0     ,
    input      [ 13: 0]  waddr0      , //[13:12]y [11: 4]x [ 3: 0] ct
    input      [255: 0]  wdata0      ,

    input                wvalid1     ,
    output               wready1     ,
    input      [ 13: 0]  waddr1      , //[13:12]y [11: 4]x [ 3: 0] ct
    input      [255: 0]  wdata1      ,

    input      [  1: 0]  cline_same  ,
    input      [  1: 0]  ctile_next  ,

    input                p1arvalid   ,
    output               p1arready   ,
    input      [ 13: 0]  p1araddr0   , //[13:12]y [11: 4]x [ 3: 0] ct
    input      [ 13: 0]  p1araddr1   ,
    input      [ 13: 0]  p1araddr2   ,
    input      [ 13: 0]  p1araddr3   ,

    input      [  7: 0]  p1idx0      , 
    input      [  7: 0]  p1idx1      , 
    input      [  7: 0]  p1idx2      , 
    input      [  7: 0]  p1idx3      ,
    input      [  7: 0]  p1u         ,
    input      [  7: 0]  p1v         ,

    output               p1ct_valid  ,
    input                p1rready    ,

    output     [255: 0]  p1ct0rdata0 ,
    output     [255: 0]  p1ct0rdata1 ,
    output     [255: 0]  p1ct0rdata2 ,
    output     [255: 0]  p1ct0rdata3 ,

    output reg [255: 0]  p1ct1rdata0 , // p1a0ct1d
    output reg [255: 0]  p1ct1rdata1 , // p1a1ct1d
    output reg [255: 0]  p1ct1rdata2 , // p1a2ct1d
    output reg [255: 0]  p1ct1rdata3 , // p1a3ct1d
    
    output reg [255: 0]  p1ct2rdata0 , // p1a0ct2d
    output reg [255: 0]  p1ct2rdata1 , // p1a1ct2d
    output reg [255: 0]  p1ct2rdata2 , // p1a2ct2d
    output reg [255: 0]  p1ct2rdata3 , // p1a3ct2d

    output reg [255: 0]  p1ct3rdata0 , // p1a0ct3d
    output reg [255: 0]  p1ct3rdata1 , // p1a1ct3d
    output reg [255: 0]  p1ct3rdata2 , // p1a2ct3d
    output reg [255: 0]  p1ct3rdata3 , // p1a3ct3d

    output reg [  7: 0]  p1ridx0     , 
    output reg [  7: 0]  p1ridx1     , 
    output reg [  7: 0]  p1ridx2     , 
    output reg [  7: 0]  p1ridx3     , 
    output     [  7: 0]  p1ru        ,
    output     [  7: 0]  p1rv        , 
    output     [  1: 0]  tile_next   ,

    input                clk         ,
    input                rst
    );

    reg           p1rvalid;
    reg [255: 0]  p1rdata0;
    reg [255: 0]  p1rdata1;
    reg [255: 0]  p1rdata2;
    reg [255: 0]  p1rdata3;

    reg         pp1ct_valid;
    reg [255:0] pp1ct0rdata0;
    reg [255:0] pp1ct0rdata1;
    reg [255:0] pp1ct0rdata2;
    reg [255:0] pp1ct0rdata3;

    // block ram signals
    wire       [  9: 0]  addraa,addrab   ;
    wire       [  9: 0]  addrba,addrbb   ;
    wire       [  9: 0]  addrca,addrcb   ;
    wire       [  9: 0]  addrda,addrdb   ;

    wire       [255: 0]  doutaa,doutab   ;
    wire       [255: 0]  doutba,doutbb   ;
    wire       [255: 0]  doutca,doutcb   ;
    wire       [255: 0]  doutda,doutdb   ;

    // write signals
    reg        [  9: 0]  waddraa,waddrab ;
    reg        [  9: 0]  waddrba,waddrbb ;
    reg        [  9: 0]  waddrca,waddrcb ;
    reg        [  9: 0]  waddrda,waddrdb ;
    
    reg         [ 1: 0]  waddr_t         ;

    reg                  weaa,weab       ;
    reg                  weba,webb       ;
    reg                  weca,wecb       ;
    reg                  weda,wedb       ;

    //read signals
    wire       [  9: 0]  raddraa,raddrab ;
    wire       [  9: 0]  raddrba,raddrbb ;
    wire       [  9: 0]  raddrca,raddrcb ;
    wire       [  9: 0]  raddrda,raddrdb ;

    wire       [ 13: 0]  raddr0          ;
    wire       [ 13: 0]  raddr1          ;
    wire       [ 13: 0]  raddr2          ;
    wire       [ 13: 0]  raddr3          ;
    wire                 raddr_same      ;
    
    reg        [  1: 0]  addr_flag_t0    ;
    reg        [  1: 0]  addr_flag_t1    ;
    reg        [  1: 0]  addr_flag_t2    ;
    reg        [  1: 0]  addr_flag_t3    ;
    
    reg                  p1arvalid_t0     ;
    reg                  p1arvalid_t1     ;
    reg                  p1arvalid_t2     ;
    reg                  p1arvalid_t3     ;
    reg                  p1arvalid_t4     ;

    reg                  raddr_same_t0   ;
    reg                  raddr_same_t1   ;
    reg                  raddr_same_t2   ;
    reg                  raddr_same_t3   ;

    // read output signals
    reg                  prvalid         ;
    reg        [255: 0]  prdata0         ;
    reg        [255: 0]  prdata1         ;
    reg        [255: 0]  prdata2         ;
    reg        [255: 0]  prdata3         ;

    reg                  pprvalid        ;
    reg        [255: 0]  pprdata0        ;
    reg        [255: 0]  pprdata1        ;
    reg        [255: 0]  pprdata2        ;
    reg        [255: 0]  pprdata3        ;

    // other output signals
    // uv dapai
    reg        [  7: 0]  p1u_t0          ;
    reg        [  7: 0]  p1v_t0          ;
    reg        [  7: 0]  p1u_t1          ;
    reg        [  7: 0]  p1v_t1          ;
    reg        [  7: 0]  p1u_t2          ;
    reg        [  7: 0]  p1v_t2          ;
    reg        [  7: 0]  p1u_t3          ;
    reg        [  7: 0]  p1v_t3          ;
    reg        [  7: 0]  p1u_t4          ;
    reg        [  7: 0]  p1v_t4          ;
    reg        [  7: 0]  p1u_t5          ;
    reg        [  7: 0]  p1v_t5          ;

    // index dapai 
    reg        [  7: 0]  p1idx0_t0       ;
    reg        [  7: 0]  p1idx1_t0       ;
    reg        [  7: 0]  p1idx2_t0       ;
    reg        [  7: 0]  p1idx3_t0       ;
    reg        [  7: 0]  p1idx0_t1       ;
    reg        [  7: 0]  p1idx1_t1       ;
    reg        [  7: 0]  p1idx2_t1       ;
    reg        [  7: 0]  p1idx3_t1       ; 
    reg        [  7: 0]  p1idx0_t2       ;
    reg        [  7: 0]  p1idx1_t2       ;
    reg        [  7: 0]  p1idx2_t2       ;
    reg        [  7: 0]  p1idx3_t2       ;  

    reg        [ 13: 0]  p1araddr0_t0     ;
    reg        [ 13: 0]  p1araddr1_t0     ;
    reg        [ 13: 0]  p1araddr2_t0     ;
    reg        [ 13: 0]  p1araddr3_t0     ;
    reg        [ 13: 0]  p1araddr0_t1     ;
    reg        [ 13: 0]  p1araddr1_t1     ;
    reg        [ 13: 0]  p1araddr2_t1     ;
    reg        [ 13: 0]  p1araddr3_t1     ;

    
    reg                  abwready         ;
    reg                  abrready         ;
    reg                  cdwready         ;
    reg                  cdrready         ;

    
    reg abren;
    reg cdren;
    reg [1:0] cline_same_t0;
    reg [1:0] cline_same_t1;
    reg [1:0] cline_same_t2;
    reg [1:0] cline_same_t3;
    reg [1:0] cline_same_t4;
    reg [1:0] cline_same_t5;
    reg [1:0] cline_same_t6;
    reg [1:0] cline_same_t7;

    
    wire us_single;
    
    reg [31:0]  ct_cnt;
    reg [7:0]   waddr_cnt;
    reg [31:0]  block_cnt;
    
    reg [255:0] wdata0_t;
    reg [255:0] wdata1_t;

    
    wire [1:0] waddr_cnt_add;
    wire [7:0] waddr_cnt_size;

    wire [7:0] block_size0;
    wire [7:0] block_size1;
    
    reg [15:0] rraddraa;
    reg [15:0] rraddrab;
    reg [15:0] rraddrba;
    reg [15:0] rraddrbb;
    reg [15:0] rraddrca;
    reg [15:0] rraddrcb;
    reg [15:0] rraddrda;
    reg [15:0] rraddrdb;

    wire r0r1same;
    wire r2r3same;
    
    wire [7:0] rrraddrab;
    wire [7:0] rrraddrbb;
    wire [7:0] rrraddrcb;
    wire [7:0] rrraddrdb;
    wire [7:0] rrraddraa;
    wire [7:0] rrraddrba;
    wire [7:0] rrraddrca;
    wire [7:0] rrraddrda;
    
    reg [6:0] raddr0_t;
    reg [6:0] raddr1_t;
    reg [6:0] raddr2_t;
    reg [6:0] raddr3_t;

    
    reg [7:0]  p1u_t6;
    reg [7:0]  p1v_t6;
    reg [7:0]  p1u_t7;
    reg [7:0]  p1v_t7;
    reg [7:0]  p1u_t8;
    reg [7:0]  p1v_t8;
    reg [7:0]  p1u_t9;
    reg [7:0]  p1v_t9;
    reg [7:0]  p1u_t10;
    reg [7:0]  p1v_t10;


    reg [7:0]  p1idx0_t3;
    reg [7:0]  p1idx1_t3;
    reg [7:0]  p1idx2_t3;
    reg [7:0]  p1idx3_t3;
    reg [7:0]  p1idx0_t4;
    reg [7:0]  p1idx1_t4;
    reg [7:0]  p1idx2_t4;
    reg [7:0]  p1idx3_t4;
    reg [7:0]  p1idx0_t5;
    reg [7:0]  p1idx1_t5;
    reg [7:0]  p1idx2_t5;
    reg [7:0]  p1idx3_t5;

    reg [7:0]  p1idx0_t6;
    reg [7:0]  p1idx1_t6;
    reg [7:0]  p1idx2_t6;
    reg [7:0]  p1idx3_t6;
    reg [7:0]  p1idx0_t7;
    reg [7:0]  p1idx1_t7;
    reg [7:0]  p1idx2_t7;
    reg [7:0]  p1idx3_t7;
    reg [7:0]  p1idx0_t8;
    reg [7:0]  p1idx1_t8;
    reg [7:0]  p1idx2_t8;
    reg [7:0]  p1idx3_t8;
    
    reg [3:0]   p1a1ct_t0;

    reg [3:0]   p1a2ct_t0;
    reg [3:0]   p1a2ct_t1;

    reg [3:0]   p1a3ct_t0;
    reg [3:0]   p1a3ct_t1;
    reg [3:0]   p1a3ct_t2;

    reg [3:0]   conf_pcnt;
    wire        pcnt_work;
    reg         pcnt_working;
    wire        pcnt_stop;

    reg  [13:0] p1araddr0_mct;
    reg  [13:0] p1araddr1_mct;
    reg  [13:0] p1araddr2_mct;
    reg  [13:0] p1araddr3_mct;
    
    reg [255:0] p1a0ct0d_t2;
    reg [255:0] p1a1ct0d_t2;
    reg [255:0] p1a2ct0d_t2;
    reg [255:0] p1a3ct0d_t2;

    reg [255:0] p1a0ct0d_t3;
    reg [255:0] p1a1ct0d_t3;
    reg [255:0] p1a2ct0d_t3;
    reg [255:0] p1a3ct0d_t3;

    reg [255:0] p1a0ct0d_t4;
    reg [255:0] p1a1ct0d_t4;
    reg [255:0] p1a2ct0d_t4;
    reg [255:0] p1a3ct0d_t4;

    reg [255:0] p1a0ct1d_t0;
    reg [255:0] p1a1ct1d_t0;
    reg [255:0] p1a2ct1d_t0;
    reg [255:0] p1a3ct1d_t0;
    reg [255:0] p1a0ct1d_t1;
    reg [255:0] p1a1ct1d_t1;
    reg [255:0] p1a2ct1d_t1;
    reg [255:0] p1a3ct1d_t1;
    reg [255:0] p1a0ct1d_t2;
    reg [255:0] p1a1ct1d_t2;
    reg [255:0] p1a2ct1d_t2;
    reg [255:0] p1a3ct1d_t2;
    reg [255:0] p1a0ct1d_t3;
    reg [255:0] p1a1ct1d_t3;
    reg [255:0] p1a2ct1d_t3;
    reg [255:0] p1a3ct1d_t3;

    reg [255:0] p1a0ct2d_t0;
    reg [255:0] p1a1ct2d_t0;
    reg [255:0] p1a2ct2d_t0;
    reg [255:0] p1a3ct2d_t0;
    reg [255:0] p1a0ct2d_t1;
    reg [255:0] p1a1ct2d_t1;
    reg [255:0] p1a2ct2d_t1;
    reg [255:0] p1a3ct2d_t1;
    reg [255:0] p1a0ct2d_t2;
    reg [255:0] p1a1ct2d_t2;
    reg [255:0] p1a2ct2d_t2;
    reg [255:0] p1a3ct2d_t2;

    reg [255:0] p1a0ct3d_t0;
    reg [255:0] p1a1ct3d_t0;
    reg [255:0] p1a2ct3d_t0;
    reg [255:0] p1a3ct3d_t0;
    reg [255:0] p1a0ct3d_t1;
    reg [255:0] p1a1ct3d_t1;
    reg [255:0] p1a2ct3d_t1;
    reg [255:0] p1a3ct3d_t1;
    
    reg pprvalid_t0;
    reg pprvalid_t1;
    reg pprvalid_t2;

    reg [  1: 0] ctile_next_t0;
    reg [  1: 0] ctile_next_t1;
    reg [  1: 0] ctile_next_t2;
    reg [  1: 0] ctile_next_t3;
    reg [  1: 0] ctile_next_t4;
    reg [  1: 0] ctile_next_t5;
    reg [  1: 0] ctile_next_t6;
    reg [  1: 0] ctile_next_t7;
    reg [  1: 0] ctile_next_t8;
    reg [  1: 0] ctile_next_t9;
    
    wire dcnt_work;
    reg  dcnt_working;
    wire dcnt_stop;

    reg [3:0] conf_dcnt;

    assign p1ct_valid = (ct_size == 16'd1) ? p1rvalid : pp1ct_valid;
    assign p1ct0rdata0 = (ct_size == 16'd1) ? p1rdata0 : pp1ct0rdata0;
    assign p1ct0rdata1 = (ct_size == 16'd1) ? p1rdata1 : pp1ct0rdata1;
    assign p1ct0rdata2 = (ct_size == 16'd1) ? p1rdata2 : pp1ct0rdata2;
    assign p1ct0rdata3 = (ct_size == 16'd1) ? p1rdata3 : pp1ct0rdata3;

    // DDR write signal
    assign wready0 = p1rready ;
    assign wready1 = p1rready ;
    assign p1arready = p1rready;

    assign raddr0 = p1araddr0_t1;
    assign raddr1 = p1araddr1_t1;
    assign raddr2 = p1araddr2_t1;
    assign raddr3 = p1araddr3_t1;
    assign raddr_same = (raddr0 == raddr1)&(raddr0 == raddr2);

    //read output generate
    always @(posedge clk ) begin
        if (rst) begin
            addr_flag_t0  <= 2'd0;
            addr_flag_t1  <= 2'd0;
            addr_flag_t2  <= 2'd0;
            addr_flag_t3  <= 2'd0;

            p1arvalid_t0  <= 1'b0; 
            p1arvalid_t1  <= 1'b0;
            p1arvalid_t2  <= 1'b0;
            p1arvalid_t3  <= 1'b0;
            p1arvalid_t4  <= 1'b0;

            raddr_same_t0 <= 1'b0;
            raddr_same_t1 <= 1'b0;
            raddr_same_t2 <= 1'b0;
            raddr_same_t3 <= 1'b0;

            cline_same_t0  <= 1'b0;
            cline_same_t1  <= 1'b0;
            cline_same_t2  <= 1'b0;
            cline_same_t3  <= 1'b0;
            cline_same_t4  <= 1'b0;
            cline_same_t5  <= 1'b0;
            cline_same_t6  <= 1'b0;
            cline_same_t7  <= 1'b0;
        end
        else begin
            addr_flag_t0  <= {abren,cdren};
            addr_flag_t1  <= addr_flag_t0 ;
            addr_flag_t2  <= addr_flag_t1 ;
            addr_flag_t3  <= addr_flag_t2 ;

            p1arvalid_t0  <= p1arvalid    ; 
            p1arvalid_t1  <= p1arvalid_t0 ;
            p1arvalid_t2  <= p1arvalid_t1 ;
            p1arvalid_t3  <= p1arvalid_t2 ;
            p1arvalid_t4  <= p1arvalid_t3 ;

            raddr_same_t0 <= raddr_same   ;
            raddr_same_t1 <= raddr_same_t0;
            raddr_same_t2 <= raddr_same_t1;
            raddr_same_t3 <= raddr_same_t2;

            cline_same_t0  <= cline_same    ;
            cline_same_t1  <= cline_same_t0 ;
            cline_same_t2  <= cline_same_t1 ;
            cline_same_t3  <= cline_same_t2 ;
            cline_same_t4  <= cline_same_t3 ;
            cline_same_t5  <= cline_same_t4 ;
            cline_same_t6  <= cline_same_t5 ;
            cline_same_t7  <= cline_same_t6 ;
        end
    end

    always @(posedge clk ) begin
        if (rst) begin
            prvalid <= 1'b0;
            prdata0 <= 256'd0;
            prdata1 <= 256'd0;
            prdata2 <= 256'd0;
            prdata3 <= 256'd0;
        end else if(p1arvalid_t4)begin
            case (addr_flag_t1)
                2'b1_0: begin
                    prvalid <= 1'b1;
                    prdata0 <= doutaa;
                    prdata1 <= (raddr_same_t2)?doutaa:doutab;
                    prdata2 <= (cline_same_t4 != 2'b00) ? (doutaa) : doutba;
                    prdata3 <= (cline_same_t4 != 2'b00) ? ((raddr_same_t2)?doutaa:doutab):(raddr_same_t2)?doutba:doutbb;
                end
                2'b0_1: begin
                    prvalid <= 1'b1;
                    prdata0 <= doutca;
                    prdata1 <= (raddr_same_t2)?doutca:doutcb;
                    prdata2 <= (cline_same_t4 != 2'b00) ? (doutca):doutda;
                    prdata3 <= (cline_same_t4 != 2'b00) ? ((raddr_same_t2)?doutca:doutcb):(raddr_same_t2)?doutda:doutdb;
                end
                default: begin
                    prvalid <= 1'b0;
                    prdata0 <= 256'd0;
                    prdata1 <= 256'd0;
                    prdata2 <= 256'd0;
                    prdata3 <= 256'd0;
                end
            endcase 
    end
    else begin
            prvalid <= 1'b0;
            prdata0 <= prdata0;
            prdata1 <= prdata1;
            prdata2 <= prdata2;
            prdata3 <= prdata3;
        end
    end

    // read output delay for 1T
    always @(posedge clk ) begin
        if(rst)begin
            pprvalid <= 1'b0;
            pprdata0 <= 256'd0;
            pprdata1 <= 256'd0;
            pprdata2 <= 256'd0;
            pprdata3 <= 256'd0;
        end
        else begin
            pprvalid <= prvalid;
            pprdata0 <= prdata0;
            pprdata1 <= prdata1;
            pprdata2 <= prdata2;
            pprdata3 <= prdata3;
        end
    end

    //p1 read output and work signal generate   
    always @(posedge clk) begin
        if(rst)begin
            p1rvalid <= 1'b0;
            p1rdata0 <= 256'd0;
            p1rdata1 <= 256'd0;
            p1rdata2 <= 256'd0;
            p1rdata3 <= 256'd0;
        end
        else if (prvalid) begin// p0 == pp1 || [(p0 != p1 != pp1) || (p0 == p1)] || p0 == p1
            p1rvalid = prvalid;
            p1rdata0 = prdata0;
            p1rdata1 = prdata1;
            p1rdata2 = prdata2;
            p1rdata3 = prdata3;
        end else begin
            p1rvalid = 1'b0;
            p1rdata0 = 256'd0;
            p1rdata1 = 256'd0;
            p1rdata2 = 256'd0;
            p1rdata3 = 256'd0;
        end
    end

    // work signals
    always @(posedge clk ) begin
        if(rst)begin
            waddr_t <= 2'd0;
        end
        else begin
            waddr_t <= waddr1[9:8];
        end
    end

    // assign us_single = src_xsize[0] && (ct_size > 16'd1);
    assign us_single = src_xsize[0];

    // write ddr
    
    assign waddr_cnt_add = us_single ? 2'd1 : 2'd2; 
    assign waddr_cnt_size = us_single ? 8'd131 : 8'd130; 

    always @(posedge clk ) begin
        if (rst) 
        begin
            waddr_cnt <= 8'd0;
            ct_cnt    <= 32'd0;
        end 
        else if ((wvalid0 && wready0) || (wvalid1 && wready1))
        begin
            if (waddr_cnt == waddr_cnt_size && ct_cnt == ct_size - 1'b1) begin
                waddr_cnt <= 8'd0;
                ct_cnt    <= 32'd0;
            end else if (ct_cnt == ct_size - 1'b1) begin
                waddr_cnt <= waddr_cnt + waddr_cnt_add;
                ct_cnt    <= 32'd0;
            end else begin
                ct_cnt    <= ct_cnt + 1'b1;
            end
        end
    end

    // write index ddr

    assign block_size0 = us_single ? 8'd65 : 8'd64; 
    assign block_size1 = us_single ? 8'd131 : 8'd130; 

    always @(posedge clk ) begin
        if (rst) 
        begin
            block_cnt <= 32'd0;
        end 
        else if ((wvalid0 && wready0) || (wvalid1 && wready1))
        begin
            if ((waddr_cnt == block_size0 || waddr_cnt == block_size1)&&(ct_cnt == ct_size - 1'b1)) 
            begin
                block_cnt <= block_cnt + 1'b1;
            end
        end
    end

    always @(posedge clk ) begin
        if (rst) 
        begin
            wdata0_t  <= 256'd0;
            wdata1_t  <= 256'd0;
        end 
        else if ((wvalid0 && wready0) || (wvalid1 && wready1))
        begin
            wdata0_t  <= wdata0;
            wdata1_t  <= wdata1;
        end
    end

    always @(posedge clk ) begin
        if (rst) begin
            weaa <= 1'b0;
            weab <= 1'b0;
            weba <= 1'b0;
            webb <= 1'b0;
            weca <= 1'b0;
            wecb <= 1'b0;
            weda <= 1'b0;
            wedb <= 1'b0;

            waddraa <= 10'd0;
            waddrab <= 10'd0;
            waddrba <= 10'd0;
            waddrbb <= 10'd0;
            waddrca <= 10'd0;
            waddrcb <= 10'd0;
            waddrda <= 10'd0;
            waddrdb <= 10'd0;
        end 
        else if ((wvalid0 && wready0) || (wvalid1 && wready1)) begin
            case (block_cnt[1:0])
                2'b00:begin
                    weaa <= wvalid0;
                    weab <= wvalid1;
                    weba <= 1'b0;
                    webb <= 1'b0;
                    weca <= 1'b0;
                    wecb <= 1'b0;
                    weda <= 1'b0;
                    wedb <= 1'b0;

                    waddraa <= waddr0[9:0];
                    waddrab <= waddr1[9:0];
                    waddrba <= 10'd0;
                    waddrbb <= 10'd0;
                    waddrca <= 10'd0;
                    waddrcb <= 10'd0;
                    waddrda <= 10'd0;
                    waddrdb <= 10'd0;
                end
                2'b01:begin
                    weaa <= 1'b0;
                    weab <= 1'b0;
                    weba <= wvalid0;
                    webb <= wvalid1;
                    weca <= 1'b0;
                    wecb <= 1'b0;
                    weda <= 1'b0;
                    wedb <= 1'b0;

                    waddraa <= 10'd0;
                    waddrab <= 10'd0;
                    waddrba <= waddr0[9:0];
                    waddrbb <= waddr1[9:0];
                    waddrca <= 10'd0;
                    waddrcb <= 10'd0;
                    waddrda <= 10'd0;
                    waddrdb <= 10'd0;
                end 
                2'b10:begin
                    weaa <= 1'b0;
                    weab <= 1'b0;
                    weba <= 1'b0;
                    webb <= 1'b0;
                    weca <= wvalid0;
                    wecb <= wvalid1;
                    weda <= 1'b0;
                    wedb <= 1'b0;

                    waddraa <= 10'd0;
                    waddrab <= 10'd0;
                    waddrba <= 10'd0;
                    waddrbb <= 10'd0;
                    waddrca <= waddr0[9:0];
                    waddrcb <= waddr1[9:0];
                    waddrda <= 10'd0;
                    waddrdb <= 10'd0;
                end 
                2'b11:begin
                    weaa <= 1'b0;
                    weab <= 1'b0;
                    weba <= 1'b0;
                    webb <= 1'b0;
                    weca <= 1'b0;
                    wecb <= 1'b0;
                    weda <= wvalid0;
                    wedb <= wvalid1;

                    waddraa <= 10'd0;
                    waddrab <= 10'd0;
                    waddrba <= 10'd0;
                    waddrbb <= 10'd0;
                    waddrca <= 10'd0;
                    waddrcb <= 10'd0;
                    waddrda <= waddr0[9:0];
                    waddrdb <= waddr1[9:0];
                end 
            endcase
        end
        else begin
            weaa <= 1'b0;
            weab <= 1'b0;
            weba <= 1'b0;
            webb <= 1'b0;
            weca <= 1'b0;
            wecb <= 1'b0;
            weda <= 1'b0;
            wedb <= 1'b0;

            waddraa <= 10'd0;
            waddrab <= 10'd0;
            waddrba <= 10'd0;
            waddrbb <= 10'd0;
            waddrca <= 10'd0;
            waddrcb <= 10'd0;
            waddrda <= 10'd0;
            waddrdb <= 10'd0;
        end
    end

    assign r0r1same = raddr0[11:4] == raddr1[11:4];
    assign r2r3same = raddr2[11:4] == raddr3[11:4];

    assign rrraddrab = r0r1same ? raddr1[9:4] :(raddr0[9:4] + 1'b1);
    assign rrraddrbb = r2r3same ? raddr3[9:4] :(raddr2[9:4] + 1'b1);
    assign rrraddrcb = r0r1same ? raddr1[9:4] :(raddr0[9:4] + 1'b1);
    assign rrraddrdb = r2r3same ? raddr3[9:4] :(raddr2[9:4] + 1'b1);

    assign rrraddraa = (raddr0[10:4] == 7'd64) ? 7'd0 : raddr0[9:4];
    assign rrraddrba = (raddr2[10:4] == 7'd64) ? 7'd0 : raddr2[9:4];
    assign rrraddrca = (raddr0[10:4] == 7'd64) ? 7'd0 : raddr0[9:4];
    assign rrraddrda = (raddr2[10:4] == 7'd64) ? 7'd0 : raddr2[9:4];

    always @(posedge clk ) begin
        if (rst) begin
            rraddraa <= 16'd0;
            rraddrab <= 16'd0;
            rraddrba <= 16'd0;
            rraddrbb <= 16'd0;
            rraddrca <= 16'd0;
            rraddrcb <= 16'd0;
            rraddrda <= 16'd0;
            rraddrdb <= 16'd0;
        end else begin
            rraddraa <= raddr0[3:0] + (rrraddraa * 4'd10);
            rraddrab <= raddr1[3:0] + (rrraddrab * 4'd10);
            rraddrba <= raddr2[3:0] + (rrraddrba * 4'd10);
            rraddrbb <= raddr3[3:0] + (rrraddrbb * 4'd10);
            rraddrca <= raddr0[3:0] + (rrraddrca * 4'd10);
            rraddrcb <= raddr1[3:0] + (rrraddrcb * 4'd10);
            rraddrda <= raddr2[3:0] + (rrraddrda * 4'd10);
            rraddrdb <= raddr3[3:0] + (rrraddrdb * 4'd10);
        end
    end

    always @(posedge clk ) begin
        if (rst) begin
            raddr0_t <= 7'b0;
            raddr1_t <= 7'b0;
            raddr2_t <= 7'b0;
            raddr3_t <= 7'b0;
        end else begin
            raddr0_t <= raddr0;
            raddr1_t <= raddr1;
            raddr2_t <= raddr2;
            raddr3_t <= raddr3;
        end
    end
    
    wire [11:0] ren_switch;
    assign ren_switch = (src_xsize[15:6] + |(src_xsize[5:0]));

    //assign abren = (!(raddr0[12]^raddr0[10])) && (  raddr2[12]^raddr2[10] );
    //assign cdren = (  raddr0[12]^raddr0[10] ) && (!(raddr2[12]^raddr2[10]));
    always @(posedge clk ) begin
        if (rst) begin
            abren <= 1'b0;
            cdren <= 1'b0;
        end else if (ren_switch[0]) begin
            abren <= (!(raddr0[12]^raddr0[10])) && (  raddr2[12]^raddr2[10] );
            cdren <= (  raddr0[12]^raddr0[10] ) && (!(raddr2[12]^raddr2[10]));
        end else begin
            abren <= (raddr0[10] == 1'b0) && (raddr2[10] == 1'b0);
            cdren <= (raddr0[10] == 1'b1) && (raddr2[10] == 1'b1);
        end
    end

    assign raddraa = abren ? rraddraa[9:0] : 10'd0;
    assign raddrab = abren ? rraddrab[9:0] : 10'd0;
    assign raddrba = abren ? rraddrba[9:0] : 10'd0;
    assign raddrbb = abren ? rraddrbb[9:0] : 10'd0;
    
    assign raddrca = cdren ? rraddrca[9:0] : 10'd0;
    assign raddrcb = cdren ? rraddrcb[9:0] : 10'd0;
    assign raddrda = cdren ? rraddrda[9:0] : 10'd0;
    assign raddrdb = cdren ? rraddrdb[9:0] : 10'd0;

    assign addraa = weaa ? waddraa : raddraa;
    assign addrab = weab ? waddrab : raddrab;
    assign addrba = weba ? waddrba : raddrba;
    assign addrbb = webb ? waddrbb : raddrbb;
    assign addrca = weca ? waddrca : raddrca;
    assign addrcb = wecb ? waddrcb : raddrcb;
    assign addrda = weda ? waddrda : raddrda;
    assign addrdb = wedb ? waddrdb : raddrdb;

    conf_mem confp1a (
    .clka(clk),      // input wire clka
    .wea(weaa),      // input wire [0 : 0] wea
    .addra(addraa),  // input wire [9 : 0] addra
    .dina(wdata0_t), // input wire [255 : 0] dina
    .douta(doutaa),  // output wire [255 : 0] douta
    .clkb(clk),      // input wire clkb
    .web(weab),      // input wire [0 : 0] web
    .addrb(addrab),  // input wire [9 : 0] addrb
    .dinb(wdata1_t), // input wire [255 : 0] dinb
    .doutb(doutab)   // output wire [255 : 0] doutb
    );

    conf_mem confp1b (
    .clka(clk),     // input wire clka
    .wea(weba),     // input wire [0 : 0] wea
    .addra(addrba), // input wire [9 : 0] addra
    .dina(wdata0_t),// input wire [255 : 0] dina
    .douta(doutba), // output wire [255 : 0] douta
    .clkb(clk),     // input wire clkb
    .web(webb),     // input wire [0 : 0] web
    .addrb(addrbb), // input wire [9 : 0] addrb
    .dinb(wdata1_t),// input wire [255 : 0] dinb
    .doutb(doutbb)  // output wire [255 : 0] doutb
    );

    conf_mem confp1c (
    .clka(clk),     // input wire clka
    .wea(weca),     // input wire [0 : 0] wea
    .addra(addrca), // input wire [9 : 0] addra
    .dina(wdata0_t),// input wire [255 : 0] dina
    .douta(doutca), // output wire [255 : 0] douta
    .clkb(clk),     // input wire clkb
    .web(wecb),     // input wire [0 : 0] web
    .addrb(addrcb), // input wire [9 : 0] addrb
    .dinb(wdata1_t),// input wire [255 : 0] dinb
    .doutb(doutcb)  // output wire [255 : 0] doutb
    );

    conf_mem confp1d (
    .clka(clk),     // input wire clka
    .wea(weda),     // input wire [0 : 0] wea
    .addra(addrda), // input wire [9 : 0] addra
    .dina(wdata0_t),// input wire [255 : 0] dina
    .douta(doutda), // output wire [255 : 0] douta
    .clkb(clk),     // input wire clkb
    .web(wedb),     // input wire [0 : 0] web
    .addrb(addrdb), // input wire [9 : 0] addrb
    .dinb(wdata1_t),// input wire [255 : 0] dinb
    .doutb(doutdb)  // output wire [255 : 0] doutb
    );

    assign p1ru = (ct_size > 16'd1) ? p1u_t10 : p1u_t7;
    assign p1rv = (ct_size > 16'd1) ? p1v_t10 : p1v_t7;

    always @(posedge clk ) begin
        if (rst) begin
            p1u_t0 <= 8'd0;
            p1v_t0 <= 8'd0;
            p1u_t1 <= 8'd0;
            p1v_t1 <= 8'd0;
            p1u_t2 <= 8'd0;
            p1v_t2 <= 8'd0;
            p1u_t3 <= 8'd0;
            p1v_t3 <= 8'd0;
            p1u_t4 <= 8'd0;
            p1v_t4 <= 8'd0;
            p1u_t5 <= 8'd0;
            p1v_t5 <= 8'd0;
            p1u_t6 <= 8'd0;
            p1v_t6 <= 8'd0;
            p1u_t7 <= 8'd0;
            p1v_t7 <= 8'd0;
            p1u_t8 <= 8'd0;
            p1v_t8 <= 8'd0;
            p1u_t9 <= 8'd0;
            p1v_t9 <= 8'd0;
            p1u_t10<= 8'd0;
            p1v_t10<= 8'd0;
        end else begin
            p1u_t0 <= p1u   ;
            p1v_t0 <= p1v   ;
            p1u_t1 <= p1u_t0;
            p1v_t1 <= p1v_t0;
            p1u_t2 <= p1u_t1;
            p1v_t2 <= p1v_t1;
            p1u_t3 <= p1u_t2;
            p1v_t3 <= p1v_t2;
            p1u_t4 <= p1u_t3;
            p1v_t4 <= p1v_t3;
            p1u_t5 <= p1u_t4;
            p1v_t5 <= p1v_t4;
            p1u_t6 <= p1u_t5;
            p1v_t6 <= p1v_t5;
            p1u_t7 <= p1u_t6;
            p1v_t7 <= p1v_t6;
            p1u_t8 <= p1u_t7;
            p1v_t8 <= p1v_t7;
            p1u_t9 <= p1u_t8;
            p1v_t9 <= p1v_t8;
            p1u_t10<= p1u_t9;
            p1v_t10<= p1v_t9;
        end
    end

    always @(posedge clk ) begin
        if (rst) begin
            p1idx0_t0 <= 8'd0;
            p1idx1_t0 <= 8'd0;
            p1idx2_t0 <= 8'd0;
            p1idx3_t0 <= 8'd0;
            p1idx0_t1 <= 8'd0;
            p1idx1_t1 <= 8'd0;
            p1idx2_t1 <= 8'd0;
            p1idx3_t1 <= 8'd0;
            p1idx0_t2 <= 8'd0;
            p1idx1_t2 <= 8'd0;
            p1idx2_t2 <= 8'd0;
            p1idx3_t2 <= 8'd0;
            p1idx0_t3 <= 8'd0;
            p1idx1_t3 <= 8'd0;
            p1idx2_t3 <= 8'd0;
            p1idx3_t3 <= 8'd0;
            p1idx0_t4 <= 8'd0;
            p1idx1_t4 <= 8'd0;
            p1idx2_t4 <= 8'd0;
            p1idx3_t4 <= 8'd0;
            p1idx0_t5 <= 8'd0;
            p1idx1_t5 <= 8'd0;
            p1idx2_t5 <= 8'd0;
            p1idx3_t5 <= 8'd0;

            p1idx0_t6 <= 8'd0;
            p1idx1_t6 <= 8'd0;
            p1idx2_t6 <= 8'd0;
            p1idx3_t6 <= 8'd0;
            p1idx0_t7 <= 8'd0;
            p1idx1_t7 <= 8'd0;
            p1idx2_t7 <= 8'd0;
            p1idx3_t7 <= 8'd0;
            p1idx0_t8 <= 8'd0;
            p1idx1_t8 <= 8'd0;
            p1idx2_t8 <= 8'd0;
            p1idx3_t8 <= 8'd0;

            p1ridx0   <= 8'd0;
            p1ridx1   <= 8'd0;
            p1ridx2   <= 8'd0;
            p1ridx3   <= 8'd0;
        end
        else begin
            p1idx0_t0 <= p1idx0;
            p1idx1_t0 <= p1idx1;
            p1idx2_t0 <= p1idx2;
            p1idx3_t0 <= p1idx3;
            p1idx0_t1 <= p1idx0_t0;
            p1idx1_t1 <= p1idx1_t0;
            p1idx2_t1 <= p1idx2_t0;
            p1idx3_t1 <= p1idx3_t0;
            p1idx0_t2 <= p1idx0_t1;
            p1idx1_t2 <= p1idx1_t1;
            p1idx2_t2 <= p1idx2_t1;
            p1idx3_t2 <= p1idx3_t1;
            p1idx0_t3 <= p1idx0_t2;
            p1idx1_t3 <= p1idx1_t2;
            p1idx2_t3 <= p1idx2_t2;
            p1idx3_t3 <= p1idx3_t2;
            p1idx0_t4 <= p1idx0_t3;
            p1idx1_t4 <= p1idx1_t3;
            p1idx2_t4 <= p1idx2_t3;
            p1idx3_t4 <= p1idx3_t3;
            p1idx0_t5 <= p1idx0_t4;
            p1idx1_t5 <= p1idx1_t4;
            p1idx2_t5 <= p1idx2_t4;
            p1idx3_t5 <= p1idx3_t4;
            p1idx0_t6 <= p1idx0_t5;
            p1idx1_t6 <= p1idx1_t5;
            p1idx2_t6 <= p1idx2_t5;
            p1idx3_t6 <= p1idx3_t5;
            p1idx0_t7 <= p1idx0_t6;
            p1idx1_t7 <= p1idx1_t6;
            p1idx2_t7 <= p1idx2_t6;
            p1idx3_t7 <= p1idx3_t6;
            p1idx0_t8 <= p1idx0_t7;
            p1idx1_t8 <= p1idx1_t7;
            p1idx2_t8 <= p1idx2_t7;
            p1idx3_t8 <= p1idx3_t7;
            p1ridx0   <= (ct_size > 16'd1)? p1idx0_t8 : p1idx0_t5;
            p1ridx1   <= (ct_size > 16'd1)? p1idx1_t8 : p1idx1_t5;
            p1ridx2   <= (ct_size > 16'd1)? p1idx2_t8 : p1idx2_t5;
            p1ridx3   <= (ct_size > 16'd1)? p1idx3_t8 : p1idx3_t5;
        end
    end
    // register p1 idxs

    always @(posedge clk ) begin
        if (rst) begin
            p1a1ct_t0 <= 4'd0;

            p1a2ct_t0 <= 4'd0;
            p1a2ct_t1 <= 4'd0;

            p1a3ct_t0 <= 4'd0;
            p1a3ct_t1 <= 4'd0;
            p1a3ct_t2 <= 4'd0;
        end
        else begin
            p1a1ct_t0 <= p1araddr1[3:0];

            p1a2ct_t0 <= p1araddr2[3:0];
            p1a2ct_t1 <= p1a2ct_t0;

            p1a3ct_t0 <= p1araddr3[3:0];
            p1a3ct_t1 <= p1a3ct_t0;
            p1a3ct_t2 <= p1a3ct_t1;
        end
    end

    assign pcnt_work = p1arvalid && (!p1arvalid_t0);
    assign pcnt_stop = conf_pcnt == 4'd3;
    always @(posedge clk ) begin
        if (rst) begin
            pcnt_working <= 1'b0;
        end else if(pcnt_work)begin
            pcnt_working <= 1'b1;
        end else if(pcnt_stop)begin
            pcnt_working <= 1'b0;
        end
    end

    always @(posedge clk ) begin
        if (rst) begin
            conf_pcnt <= 4'd0;
        end else if(pcnt_work)begin
            conf_pcnt <= conf_pcnt + 1'b1;
        end else if(pcnt_stop)begin
            conf_pcnt <= 4'd0;
        end else if(pcnt_working)begin
            conf_pcnt <= conf_pcnt + 1'b1;
        end
    end
    // read addr register p0

    always @(*) begin
        case (conf_pcnt)
            4'd0: begin
                p1araddr0_mct = {p1araddr0[13:4],p1araddr0[3:0]};
                p1araddr1_mct = {p1araddr1[13:4],p1araddr0[3:0]};
                p1araddr2_mct = {p1araddr2[13:4],p1araddr0[3:0]};
                p1araddr3_mct = {p1araddr3[13:4],p1araddr0[3:0]};
                
            end
            4'd1: begin
                p1araddr0_mct = {p1araddr0[13:4],p1a1ct_t0};
                p1araddr1_mct = {p1araddr1[13:4],p1a1ct_t0};
                p1araddr2_mct = {p1araddr2[13:4],p1a1ct_t0};
                p1araddr3_mct = {p1araddr3[13:4],p1a1ct_t0};

            end
            4'd2: begin
                p1araddr0_mct = {p1araddr0[13:4],p1a2ct_t1};
                p1araddr1_mct = {p1araddr1[13:4],p1a2ct_t1};
                p1araddr2_mct = {p1araddr2[13:4],p1a2ct_t1};
                p1araddr3_mct = {p1araddr3[13:4],p1a2ct_t1};
                
            end
            4'd3: begin
                p1araddr0_mct = {p1araddr0[13:4],p1a3ct_t2};
                p1araddr1_mct = {p1araddr1[13:4],p1a3ct_t2};
                p1araddr2_mct = {p1araddr2[13:4],p1a3ct_t2};
                p1araddr3_mct = {p1araddr3[13:4],p1a3ct_t2};

            end
            default: begin
                p1araddr0_mct = 14'd0;
                p1araddr1_mct = 14'd0;
                p1araddr2_mct = 14'd0;
                p1araddr3_mct = 14'd0;
            end
        endcase
    end
    
    // read addr register p1
    always @(posedge clk ) begin
        if (rst) begin
            p1araddr0_t0 <= 14'd0;
            p1araddr1_t0 <= 14'd0;
            p1araddr2_t0 <= 14'd0;
            p1araddr3_t0 <= 14'd0;
            p1araddr0_t1 <= 14'd0;
            p1araddr1_t1 <= 14'd0;
            p1araddr2_t1 <= 14'd0;
            p1araddr3_t1 <= 14'd0;
        end
        else begin
            p1araddr0_t0 <= (ct_size > 16'd1) ? {p1araddr0_mct} : p1araddr0;
            p1araddr1_t0 <= (ct_size > 16'd1) ? {p1araddr1_mct} : p1araddr1;
            p1araddr2_t0 <= (ct_size > 16'd1) ? {p1araddr2_mct} : p1araddr2;
            p1araddr3_t0 <= (ct_size > 16'd1) ? {p1araddr3_mct} : p1araddr3;
            p1araddr0_t1 <= p1araddr0_t0;
            p1araddr1_t1 <= p1araddr1_t0;
            p1araddr2_t1 <= p1araddr2_t0;
            p1araddr3_t1 <= p1araddr3_t0;
        end
    end

    // register idxs

    always @(posedge clk ) begin
        if (rst) begin
            p1a0ct3d_t0 <= 256'd0;
            p1a1ct3d_t0 <= 256'd0;
            p1a2ct3d_t0 <= 256'd0;
            p1a3ct3d_t0 <= 256'd0;
        end else if (conf_dcnt == 4'd2) begin
            case (addr_flag_t1)
            2'b1_0: begin
                // p1a0ct3d_t0 <= doutaa;
                // p1a1ct3d_t0 <= (raddr_same_t2)?doutaa:doutab;
                // p1a2ct3d_t0 <= doutba;
                // p1a3ct3d_t0 <= (raddr_same_t2)?doutba:doutbb;
                p1a0ct3d_t0 <= doutaa;
                p1a1ct3d_t0 <= (raddr_same_t2) ? doutaa:doutab;
                p1a2ct3d_t0 <= (cline_same_t7 != 2'b00) ? (doutaa) : doutba;
                p1a3ct3d_t0 <= (cline_same_t7 != 2'b00) ? ((raddr_same_t2)?doutaa:doutab):(raddr_same_t2)?doutba:doutbb;
            end
            2'b0_1: begin
                // p1a0ct3d_t0 <= doutca;
                // p1a1ct3d_t0 <= (raddr_same_t2)?doutca:doutcb;
                // p1a2ct3d_t0 <= doutda;
                // p1a3ct3d_t0 <= (raddr_same_t2)?doutda:doutdb;
                p1a0ct3d_t0 <= doutca;
                p1a1ct3d_t0 <= (raddr_same_t2)?doutca:doutcb;
                p1a2ct3d_t0 <= (cline_same_t7 != 2'b00) ? (doutca):doutda;
                p1a3ct3d_t0 <= (cline_same_t7 != 2'b00) ? ((raddr_same_t2)?doutca:doutcb):(raddr_same_t2)?doutda:doutdb;
            end
            default: begin
                p1a0ct3d_t0 <= 256'd0;
                p1a1ct3d_t0 <= 256'd0;
                p1a2ct3d_t0 <= 256'd0;
                p1a3ct3d_t0 <= 256'd0;
            end
            endcase
        end
    end

    always @(posedge clk ) begin
        if (rst) begin
            p1a0ct2d_t0 <= 256'd0;
            p1a1ct2d_t0 <= 256'd0;
            p1a2ct2d_t0 <= 256'd0;
            p1a3ct2d_t0 <= 256'd0;
        end else if (conf_dcnt == 4'd1) begin
            case (addr_flag_t1)
            2'b1_0: begin
                p1a0ct2d_t0 <= doutaa;
                p1a1ct2d_t0 <= (raddr_same_t2)?doutaa:doutab;
                p1a2ct2d_t0 <= (cline_same_t6 != 2'b00) ? (doutaa) : doutba;
                p1a3ct2d_t0 <= (cline_same_t6 != 2'b00) ? ((raddr_same_t2)?doutaa:doutab):(raddr_same_t2)?doutba:doutbb;
            end
            2'b0_1: begin
                p1a0ct2d_t0 <= doutca;
                p1a1ct2d_t0 <= (raddr_same_t2)?doutca:doutcb;
                p1a2ct2d_t0 <= (cline_same_t6 != 2'b00) ? (doutca):doutda;
                p1a3ct2d_t0 <= (cline_same_t6 != 2'b00) ? ((raddr_same_t2)?doutca:doutcb):(raddr_same_t2)?doutda:doutdb;
            end
            default: begin
                p1a0ct2d_t0 <= 256'd0;
                p1a1ct2d_t0 <= 256'd0;
                p1a2ct2d_t0 <= 256'd0;
                p1a3ct2d_t0 <= 256'd0;
            end
            endcase
        end
    end

    always @(posedge clk ) begin
        if (rst) begin
            p1a0ct1d_t0 <= 256'd0;
            p1a1ct1d_t0 <= 256'd0;
            p1a2ct1d_t0 <= 256'd0;
            p1a3ct1d_t0 <= 256'd0;
        end else if (conf_dcnt == 4'd0) begin
            case (addr_flag_t1)
            2'b1_0: begin
                p1a0ct1d_t0 <= doutaa;
                p1a1ct1d_t0 <= (raddr_same_t2)?doutaa:doutab;
                p1a2ct1d_t0 <= (cline_same_t5 != 2'b00) ? (doutaa) : doutba;
                p1a3ct1d_t0 <= (cline_same_t5 != 2'b00) ? ((raddr_same_t2)?doutaa:doutab):(raddr_same_t2)?doutba:doutbb;
            end
            2'b0_1: begin
                p1a0ct1d_t0 <= doutca;
                p1a1ct1d_t0 <= (raddr_same_t2)?doutca:doutcb;
                p1a2ct1d_t0 <= (cline_same_t5 != 2'b00) ? (doutca):doutda;
                p1a3ct1d_t0 <= (cline_same_t5 != 2'b00) ? ((raddr_same_t2)?doutca:doutcb):(raddr_same_t2)?doutda:doutdb;
            end
            default: begin
                p1a0ct1d_t0 <= 256'd0;
                p1a1ct1d_t0 <= 256'd0;
                p1a2ct1d_t0 <= 256'd0;
                p1a3ct1d_t0 <= 256'd0;
            end
            endcase
        end
    end

    always @(posedge clk ) begin
        if (rst) begin
            p1a0ct0d_t2 <= 256'd0;
            p1a1ct0d_t2 <= 256'd0;
            p1a2ct0d_t2 <= 256'd0;
            p1a3ct0d_t2 <= 256'd0;
            p1a0ct0d_t3 <= 256'd0;
            p1a1ct0d_t3 <= 256'd0;
            p1a2ct0d_t3 <= 256'd0;
            p1a3ct0d_t3 <= 256'd0;

            p1a0ct1d_t1 <= 256'd0;
            p1a1ct1d_t1 <= 256'd0;
            p1a2ct1d_t1 <= 256'd0;
            p1a3ct1d_t1 <= 256'd0;
            p1a0ct1d_t2 <= 256'd0;
            p1a1ct1d_t2 <= 256'd0;
            p1a2ct1d_t2 <= 256'd0;
            p1a3ct1d_t2 <= 256'd0;

            p1a0ct2d_t1 <= 256'd0;
            p1a1ct2d_t1 <= 256'd0;
            p1a2ct2d_t1 <= 256'd0;
            p1a3ct2d_t1 <= 256'd0;
        end else begin
            p1a0ct0d_t2 <= pprdata0;
            p1a1ct0d_t2 <= pprdata1;
            p1a2ct0d_t2 <= pprdata2;
            p1a3ct0d_t2 <= pprdata3;
            p1a0ct0d_t3 <= p1a0ct0d_t2;
            p1a1ct0d_t3 <= p1a1ct0d_t2;
            p1a2ct0d_t3 <= p1a2ct0d_t2;
            p1a3ct0d_t3 <= p1a3ct0d_t2;
            p1a0ct0d_t4 <= p1a0ct0d_t3;
            p1a1ct0d_t4 <= p1a1ct0d_t3;
            p1a2ct0d_t4 <= p1a2ct0d_t3;
            p1a3ct0d_t4 <= p1a3ct0d_t3;

            p1a0ct1d_t1 <= p1a0ct1d_t0;
            p1a1ct1d_t1 <= p1a1ct1d_t0;
            p1a2ct1d_t1 <= p1a2ct1d_t0;
            p1a3ct1d_t1 <= p1a3ct1d_t0;
            p1a0ct1d_t2 <= p1a0ct1d_t1;
            p1a1ct1d_t2 <= p1a1ct1d_t1;
            p1a2ct1d_t2 <= p1a2ct1d_t1;
            p1a3ct1d_t2 <= p1a3ct1d_t1;
            p1a0ct1d_t3 <= p1a0ct1d_t2;
            p1a1ct1d_t3 <= p1a1ct1d_t2;
            p1a2ct1d_t3 <= p1a2ct1d_t2;
            p1a3ct1d_t3 <= p1a3ct1d_t2;

            p1a0ct2d_t1 <= p1a0ct2d_t0;
            p1a1ct2d_t1 <= p1a1ct2d_t0;
            p1a2ct2d_t1 <= p1a2ct2d_t0;
            p1a3ct2d_t1 <= p1a3ct2d_t0;
            p1a0ct2d_t2 <= p1a0ct2d_t1;
            p1a1ct2d_t2 <= p1a1ct2d_t1;
            p1a2ct2d_t2 <= p1a2ct2d_t1;
            p1a3ct2d_t2 <= p1a3ct2d_t1;

            p1a0ct3d_t1 <= p1a0ct3d_t0;
            p1a1ct3d_t1 <= p1a1ct3d_t0;
            p1a2ct3d_t1 <= p1a2ct3d_t0;
            p1a3ct3d_t1 <= p1a3ct3d_t0;
        end
    end

always @(posedge clk ) begin
   if (rst) begin
    pprvalid_t0 <= 1'b0;
    pprvalid_t1 <= 1'b0;
    pprvalid_t2 <= 1'b0;
   end else begin
    pprvalid_t0 <= pprvalid;
    pprvalid_t1 <= pprvalid_t0;
    pprvalid_t2 <= pprvalid_t1;
   end 
end

    always @(posedge clk ) begin
        if (rst) begin
            pp1ct_valid  <= 1'b0;
            pp1ct0rdata0 <= 256'd0;
            pp1ct0rdata1 <= 256'd0;
            pp1ct0rdata2 <= 256'd0;
            pp1ct0rdata3 <= 256'd0;

            p1ct1rdata0 <= 256'd0;
            p1ct1rdata1 <= 256'd0;
            p1ct1rdata2 <= 256'd0;
            p1ct1rdata3 <= 256'd0;

            p1ct2rdata0 <= 256'd0;
            p1ct2rdata1 <= 256'd0;
            p1ct2rdata2 <= 256'd0;
            p1ct2rdata3 <= 256'd0;

            p1ct3rdata0 <= 256'd0;
            p1ct3rdata1 <= 256'd0;
            p1ct3rdata2 <= 256'd0;
            p1ct3rdata3 <= 256'd0;
        end else begin
            pp1ct_valid  <= pprvalid_t1;
            pp1ct0rdata0 <= p1a0ct0d_t3;
            pp1ct0rdata1 <= p1a1ct0d_t3;
            pp1ct0rdata2 <= p1a2ct0d_t3;
            pp1ct0rdata3 <= p1a3ct0d_t3;

            p1ct1rdata0 <= p1a0ct1d_t2;
            p1ct1rdata1 <= p1a1ct1d_t2;
            p1ct1rdata2 <= p1a2ct1d_t2;
            p1ct1rdata3 <= p1a3ct1d_t2;

            p1ct2rdata0 <= p1a0ct2d_t1;
            p1ct2rdata1 <= p1a1ct2d_t1;
            p1ct2rdata2 <= p1a2ct2d_t1;
            p1ct2rdata3 <= p1a3ct2d_t1;
            
            p1ct3rdata0 <= p1a0ct3d_t0;
            p1ct3rdata1 <= p1a1ct3d_t0;
            p1ct3rdata2 <= p1a2ct3d_t0;
            p1ct3rdata3 <= p1a3ct3d_t0;
        end
    end

    assign dcnt_work = prvalid && (!pprvalid);
    assign dcnt_stop = conf_dcnt == 4'd3;

    always @(posedge clk ) begin
        if (rst) begin
            dcnt_working <= 1'b0;
        end else if(dcnt_work)begin
            dcnt_working <= 1'b1;
        end else if(dcnt_stop)begin
            dcnt_working <= 1'b0;
        end
    end

    always @(posedge clk ) begin
        if (rst) begin
            conf_dcnt <= 4'd0;
        end else if(dcnt_work)begin
            conf_dcnt <= conf_dcnt + 1'b1;
        end else if(dcnt_stop)begin
            conf_dcnt <= 4'd0;
        end else if(dcnt_working)begin
            conf_dcnt <= conf_dcnt + 1'b1;
        end
    end

    assign tile_next = (ct_size > 16'd1) ? ctile_next_t9 : ctile_next_t6;

    always @(posedge clk ) begin
        if (rst) begin
            ctile_next_t0 <= 2'b00;
            ctile_next_t1 <= 2'b00;
            ctile_next_t2 <= 2'b00;
            ctile_next_t3 <= 2'b00;
            ctile_next_t4 <= 2'b00;
            ctile_next_t5 <= 2'b00;
            ctile_next_t6 <= 2'b00;
            ctile_next_t7 <= 2'b00;
            ctile_next_t8 <= 2'b00;
            ctile_next_t9 <= 2'b00;
        end else begin
            ctile_next_t0 <= ctile_next;
            ctile_next_t1 <= ctile_next_t0;
            ctile_next_t2 <= ctile_next_t1;
            ctile_next_t3 <= ctile_next_t2;
            ctile_next_t4 <= ctile_next_t3;
            ctile_next_t5 <= ctile_next_t4;
            ctile_next_t6 <= ctile_next_t5;
            ctile_next_t7 <= ctile_next_t6;
            ctile_next_t8 <= ctile_next_t7;
            ctile_next_t9 <= ctile_next_t8;
        end
    end

endmodule
