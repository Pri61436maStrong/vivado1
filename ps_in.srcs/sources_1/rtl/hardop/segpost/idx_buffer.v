//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : idx_buffer.v
// Author        : SongYH
// Project       : 
// Create Date   : 2024.01.10
// Description   : 
// - save argmax idxs
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================


module idx_buffer(
    input                post_start      ,
    input                data_type       ,
    input       [15: 0]  src_ysize       ,
    input       [15: 0]  src_xsize       ,
    input       [15: 0]  ct_size         ,
    input       [ 1: 0]  line_same       ,
    input       [ 1: 0]  tile_next       ,

    input                wvalid0         ,
    output               wready0         ,
    input       [10: 0]  waddr0          ,
    input       [ 7: 0]  wdata0          ,
    
    input                wvalid1         ,
    output               wready1         ,
    input       [10: 0]  waddr1          ,
    input       [ 7: 0]  wdata1          ,

    input                p1arvalid       ,
    output               p1arready       ,
    input       [10: 0]  p1araddr0       , // 只读这些 // [10:8]y [7:0]x
    input       [10: 0]  p1araddr1       ,
    input       [10: 0]  p1araddr2       ,
    input       [10: 0]  p1araddr3       ,

    input       [ 7: 0]  p1u             ,
    input       [ 7: 0]  p1v             ,

    output      [ 1: 0]  cline_same      ,
    output      [ 1: 0]  ctile_next      ,
    output  reg          p1rvalid        ,
    input                p1rready        ,
    output  reg [ 7: 0]  p1rdata0        , // pixel idx
    output  reg [ 7: 0]  p1rdata1        ,
    output  reg [ 7: 0]  p1rdata2        ,
    output  reg [ 7: 0]  p1rdata3        ,

    output      [ 7: 0]  p1ru            ,
    output      [ 7: 0]  p1rv            , 
    output      [13: 0]  p1caddr0        ,
    output      [13: 0]  p1caddr1        , 
    output      [13: 0]  p1caddr2        , 
    output      [13: 0]  p1caddr3        , 

    output  reg          start           ,
    output               region_next     ,

    input                clk             ,
    input                rst
    );
    // block ram signals
    wire        [ 6: 0]  addraa,addrab   ;
    wire        [ 6: 0]  addrba,addrbb   ;
    wire        [ 6: 0]  addrca,addrcb   ;
    wire        [ 6: 0]  addrda,addrdb   ;

    wire        [ 7: 0]  doutaa,doutab   ;
    wire        [ 7: 0]  doutba,doutbb   ;
    wire        [ 7: 0]  doutca,doutcb   ;
    wire        [ 7: 0]  doutda,doutdb   ;

    // write signals
    reg         [ 6: 0]  waddraa,waddrab ;
    reg         [ 6: 0]  waddrba,waddrbb ;
    reg         [ 6: 0]  waddrca,waddrcb ;
    reg         [ 6: 0]  waddrda,waddrdb ;

    reg                  weaa,weab       ;
    reg                  weba,webb       ;
    reg                  weca,wecb       ;
    reg                  weda,wedb       ;

    //read signals
    wire        [ 6: 0]  raddraa,raddrab ;
    wire        [ 6: 0]  raddrba,raddrbb ;
    wire        [ 6: 0]  raddrca,raddrcb ;
    wire        [ 6: 0]  raddrda,raddrdb ;

    wire        [10: 0]  raddr0          ;
    wire        [10: 0]  raddr1          ;
    wire        [10: 0]  raddr2          ;
    wire        [10: 0]  raddr3          ;
    wire                 raddr_same      ;
    
    reg         [ 1: 0]  addr_flag_t0    ;
    reg         [ 1: 0]  addr_flag_t1    ;
    reg         [ 1: 0]  addr_flag_t2    ;
    
    reg                  p1arvalid_t0     ;
    reg                  p1arvalid_t1     ;
    reg                  p1arvalid_t2     ;

    reg                  raddr_same_t0   ;
    reg                  raddr_same_t1   ;
    reg                  raddr_same_t2   ;

    // read output signals
    reg                  prvalid         ;
    reg         [ 7: 0]  prdata0         ;
    reg         [ 7: 0]  prdata1         ;
    reg         [ 7: 0]  prdata2         ;
    reg         [ 7: 0]  prdata3         ;

    reg                  pprvalid        ;
    reg         [ 7: 0]  pprdata0        ;
    reg         [ 7: 0]  pprdata1        ;
    reg         [ 7: 0]  pprdata2        ;
    reg         [ 7: 0]  pprdata3        ;

    reg         [10: 0]  p1araddr0_t0     ;
    reg         [10: 0]  p1araddr1_t0     ;
    reg         [10: 0]  p1araddr2_t0     ;
    reg         [10: 0]  p1araddr3_t0     ;
    reg         [10: 0]  p1araddr0_t1     ;
    reg         [10: 0]  p1araddr1_t1     ;
    reg         [10: 0]  p1araddr2_t1     ;
    reg         [10: 0]  p1araddr3_t1     ;
    reg         [10: 0]  p1araddr0_t2     ;
    reg         [10: 0]  p1araddr1_t2     ;
    reg         [10: 0]  p1araddr2_t2     ;
    reg         [10: 0]  p1araddr3_t2     ;
    reg         [10: 0]  p1araddr0_t3     ;
    reg         [10: 0]  p1araddr1_t3     ;
    reg         [10: 0]  p1araddr2_t3     ;
    reg         [10: 0]  p1araddr3_t3     ;
    reg         [10: 0]  p1araddr0_t4     ;
    reg         [10: 0]  p1araddr1_t4     ;
    reg         [10: 0]  p1araddr2_t4     ;
    reg         [10: 0]  p1araddr3_t4     ;
    reg         [10: 0]  p1araddr0_t5     ;
    reg         [10: 0]  p1araddr1_t5     ;
    reg         [10: 0]  p1araddr2_t5     ;
    reg         [10: 0]  p1araddr3_t5     ;
    reg         [10: 0]  p1araddr0_t6     ;
    reg         [10: 0]  p1araddr1_t6     ;
    reg         [10: 0]  p1araddr2_t6     ;
    reg         [10: 0]  p1araddr3_t6     ;

    reg                  start_cnt       ;

    wire        [ 3: 0]  p1ct0           ;
    wire        [ 3: 0]  p1ct1           ;
    wire        [ 3: 0]  p1ct2           ;
    wire        [ 3: 0]  p1ct3           ;


    reg         [ 7: 0]  p1u_t0          ;
    reg         [ 7: 0]  p1v_t0          ;
    reg         [ 7: 0]  p1u_t1          ;
    reg         [ 7: 0]  p1v_t1          ;
    reg         [ 7: 0]  p1u_t2          ;
    reg         [ 7: 0]  p1v_t2          ;
    reg         [ 7: 0]  p1u_t3          ;
    reg         [ 7: 0]  p1v_t3          ;
    reg         [ 7: 0]  p1u_t4          ;
    reg         [ 7: 0]  p1v_t4          ;
    reg         [ 7: 0]  p1u_t5          ;
    reg         [ 7: 0]  p1v_t5          ;
    reg         [ 7: 0]  p1u_t6          ;
    reg         [ 7: 0]  p1v_t6          ;

    reg         [ 1: 0]  tile_next_t0    ;
    reg         [ 1: 0]  tile_next_t1    ;
    reg         [ 1: 0]  tile_next_t2    ;
    reg         [ 1: 0]  tile_next_t3    ;
    reg         [ 1: 0]  tile_next_t4    ;
    reg         [ 1: 0]  tile_next_t5    ;
    reg         [ 1: 0]  tile_next_t6    ;

    reg         [ 7: 0]  waddr_cnt       ;
    reg         [31: 0]  block_cnt       ;

    wire                 single          ;

    reg                  abwready        ;
    reg                  abrready        ;
    reg                  cdwready        ;
    reg                  cdrready        ;

    reg [1:0] line_same_t0;
    reg [1:0] line_same_t1;
    reg [1:0] line_same_t2;
    reg [1:0] line_same_t3;
    reg [1:0] line_same_t4;
    reg [1:0] line_same_t5;
    reg [1:0] line_same_t6;

    wire wvalid;

    assign wvalid = wvalid0 || wvalid1;

    // argmax write signal
    // assign wready0 = p1rready && p0rready;
    // assign wready1 = p1rready && p0rready;
    // assign p0arready = p0rready;
    // assign p1arready = p1rready;

    assign wready0   = abwready || cdwready;
    assign wready1   = abwready || cdwready;
    assign p1arready = abrready || cdrready;
    assign single = src_ysize[0] && src_xsize[0];

    assign raddr0 = p1araddr0_t1;
    assign raddr1 = p1araddr1_t1;
    assign raddr2 = p1araddr2_t1;
    assign raddr3 = p1araddr3_t1;
    // assign raddr_same = (raddr0 == raddr1) && (raddr0 == raddr2);
    assign raddr_same = (raddr0 == raddr1);
    
    reg p1arvalid_t3;
    reg p1arvalid_t4;
    reg abren;
    reg cdren;

    assign cline_same = line_same_t5;

    //read output generate
    always @(posedge clk ) begin
        if (rst) begin
            addr_flag_t0  <= 2'd0;
            addr_flag_t1  <= 2'd0;
            addr_flag_t2  <= 2'd0;

            p1arvalid_t0   <= 1'b0; 
            p1arvalid_t1   <= 1'b0;
            p1arvalid_t2   <= 1'b0;
            p1arvalid_t3   <= 1'b0;
            p1arvalid_t4   <= 1'b0;

            raddr_same_t0 <= 1'b0;
            raddr_same_t1 <= 1'b0;
            raddr_same_t2 <= 1'b0;
            
            line_same_t0  <= 1'b0;
            line_same_t1  <= 1'b0;
            line_same_t2  <= 1'b0;
            line_same_t3  <= 1'b0;
            line_same_t4  <= 1'b0;
            line_same_t5  <= 1'b0;
            line_same_t6  <= 1'b0;
        end
        else begin
            //addr_flag_t0  <= {raddr0[6],raddr2[6]};
            addr_flag_t0  <= {abren,cdren};
            addr_flag_t1  <= addr_flag_t0 ;
            addr_flag_t2  <= addr_flag_t1 ;

            p1arvalid_t0   <= p1arvalid     ; 
            p1arvalid_t1   <= p1arvalid_t0  ;
            p1arvalid_t2   <= p1arvalid_t1  ;
            p1arvalid_t3   <= p1arvalid_t2  ;
            p1arvalid_t4   <= p1arvalid_t3  ;

            raddr_same_t0 <= raddr_same   ;
            raddr_same_t1 <= raddr_same_t0;
            raddr_same_t2 <= raddr_same_t1;
            
            line_same_t0  <= line_same;
            line_same_t1  <= line_same_t0;
            line_same_t2  <= line_same_t1;
            line_same_t3  <= line_same_t2;
            line_same_t4  <= line_same_t3;
            line_same_t5  <= line_same_t4;
            line_same_t6  <= line_same_t5;
        end
    end

    always @(posedge clk ) begin
        if (rst) begin
            prvalid <= 1'b0;
            prdata0 <= 8'd0;
            prdata1 <= 8'd0;
            prdata2 <= 8'd0;
            prdata3 <= 8'd0;
        end else if(p1arvalid_t3)begin
           case (addr_flag_t1)
            2'b1_0: begin
                prvalid <= 1'b1;
                prdata0 <= doutaa;
                prdata1 <= ((raddr_same_t1) ? doutaa : doutab);
                prdata2 <= (line_same_t3 != 2'b00) ? doutaa : doutba;
                prdata3 <= (line_same_t3 != 2'b00) ? ((raddr_same_t1)? doutaa : doutab) : ((raddr_same_t1) ? doutba : doutbb);
            end
            2'b0_1: begin
                prvalid <= 1'b1;
                prdata0 <= doutca;
                prdata1 <= ((raddr_same_t1) ? doutca : doutcb);
                prdata2 <= (line_same_t3 != 2'b00) ? doutca : doutda;
                prdata3 <= (line_same_t3 != 2'b00) ? ((raddr_same_t1) ? doutca : doutcb) : ((raddr_same_t1) ? doutda : doutdb);
            end
            default: begin
                prvalid <= 1'b0;
                prdata0 <= 8'd0;
                prdata1 <= 8'd0;
                prdata2 <= 8'd0;
                prdata3 <= 8'd0;
            end
        endcase 
        end
        else 
        begin
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
            pprdata0 <= 8'd0;
            pprdata1 <= 8'd0;
            pprdata2 <= 8'd0;
            pprdata3 <= 8'd0;
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
    always @(posedge clk ) begin
        if(rst)begin
            p1rvalid <= 1'b0;
            p1rdata0 <= 8'd0;
            p1rdata1 <= 8'd0;
            p1rdata2 <= 8'd0;
            p1rdata3 <= 8'd0;
        end
        else if (prvalid) begin// p0 == pp1 || [(p0 != p1 != pp1) || (p0 == p1)] || p0 == p1
            p1rvalid = prvalid;
            p1rdata0 = prdata0;
            p1rdata1 = prdata1;
            p1rdata2 = prdata2;
            p1rdata3 = prdata3;
        end else begin
            p1rvalid = 1'b0;
            p1rdata0 = 8'd0;
            p1rdata1 = 8'd0;
            p1rdata2 = 8'd0;
            p1rdata3 = 8'd0;
        end
    end

    //generate addr for conf_buffer {y,ct,x} 8bit
    assign p1ct0 = data_type ? p1rdata0[7:4]: {1'b0,p1rdata0[7:5]};
    assign p1ct1 = data_type ? p1rdata1[7:4]: {1'b0,p1rdata1[7:5]};
    assign p1ct2 = data_type ? p1rdata2[7:4]: {1'b0,p1rdata2[7:5]};
    assign p1ct3 = data_type ? p1rdata3[7:4]: {1'b0,p1rdata3[7:5]};

    assign p1caddr0 = {p1araddr0_t5[9:8],p1araddr0_t5[7:0],p1ct0};
    assign p1caddr1 = {p1araddr1_t5[9:8],p1araddr1_t5[7:0],p1ct1};
    assign p1caddr2 = {p1araddr2_t5[9:8],p1araddr2_t5[7:0],p1ct2};
    assign p1caddr3 = {p1araddr3_t5[9:8],p1araddr3_t5[7:0],p1ct3};

    // work signals
    reg  post_start_sts;

    always @(posedge clk ) begin
        if(rst)begin
            post_start_sts <= 1'b0;
        end
        else if(post_start)begin
            post_start_sts <= 1'b1;
        end
    end

    wire [1:0] waddr_cnt_add;
    wire [7:0] waddr_cnt_size;

    // write index ddr
    wire us_single;

    // assign us_single = src_xsize[0] && (ct_size > 16'd1);
    assign us_single = src_xsize[0];

    always @(posedge clk ) begin
        if(rst)begin
            start <= 1'b0;
            start_cnt <= 1'b0;
        end
        else if((block_cnt[1:0] == 2'b01 && waddr_cnt == waddr_cnt_size && wvalid)&& start_cnt == 1'b0 && post_start_sts == 1'b1)begin
            start <= 1'b1;
            start_cnt <= 1'b1;
        end
        else begin
            start <= 1'b0;
        end
    end
    
    assign waddr_cnt_add = us_single ? 2'd1 : 2'd2; 
    assign waddr_cnt_size = us_single ? 8'd131 : 8'd130; 

    always @(posedge clk ) begin
         if (rst) 
        begin
            waddr_cnt <= 8'd0;
        end 
        else if (wvalid)
        begin
            if (waddr_cnt == waddr_cnt_size) begin
                waddr_cnt <= 8'd0;
            end else begin
                waddr_cnt <= waddr_cnt + waddr_cnt_add;
            end 
        end
    end

    assign region_next = wvalid && (waddr_cnt == waddr_cnt_size);

    wire [7:0] block_size0;
    wire [7:0] block_size1;

    assign block_size0 = us_single ? 8'd65 : 8'd64; 
    assign block_size1 = us_single ? 8'd131 : 8'd130; 

    always @(posedge clk ) begin
        if (rst) 
        begin
            block_cnt <= 32'd0;
        end 
        else if (wvalid)
        begin
            if (waddr_cnt == block_size0 || waddr_cnt == block_size1) 
            begin
                block_cnt <= block_cnt + 1'b1;
            end 
        end
    end

    reg [7:0] wdata0_t;
    reg [7:0] wdata1_t;

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

            waddraa <= 7'd0;
            waddrab <= 7'd0;
            waddrba <= 7'd0;
            waddrbb <= 7'd0;
            waddrca <= 7'd0;
            waddrcb <= 7'd0;
            waddrda <= 7'd0;
            waddrdb <= 7'd0;

            wdata0_t <= 7'd0;
            wdata1_t <= 7'd0;
        end 
        else if (wvalid) begin
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

                    waddraa <= waddr0[6:0];
                    waddrab <= waddr1[6:0];
                    waddrba <= 7'd0;
                    waddrbb <= 7'd0;
                    waddrca <= 7'd0;
                    waddrcb <= 7'd0;
                    waddrda <= 7'd0;
                    waddrdb <= 7'd0;

                    wdata0_t <= wdata0;
                    wdata1_t <= wdata1;
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

                    waddraa <= 7'd0;
                    waddrab <= 7'd0;
                    waddrba <= waddr0[7:0] - 8'd66;
                    waddrbb <= waddr1[7:0] - 8'd66;
                    waddrca <= 7'd0;
                    waddrcb <= 7'd0;
                    waddrda <= 7'd0;
                    waddrdb <= 7'd0;
                    
                    wdata0_t <= wdata0;
                    wdata1_t <= wdata1;
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

                    waddraa <= 7'd0;
                    waddrab <= 7'd0;
                    waddrba <= 7'd0;
                    waddrbb <= 7'd0;
                    waddrca <= waddr0[6:0];
                    waddrcb <= waddr1[6:0];
                    waddrda <= 7'd0;
                    waddrdb <= 7'd0;
                    
                    wdata0_t <= wdata0;
                    wdata1_t <= wdata1;
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

                    waddraa <= 7'd0;
                    waddrab <= 7'd0;
                    waddrba <= 7'd0;
                    waddrbb <= 7'd0;
                    waddrca <= 7'd0;
                    waddrcb <= 7'd0;
                    waddrda <= waddr0[7:0] - 8'd66;
                    waddrdb <= waddr1[7:0] - 8'd66;
                    
                    wdata0_t <= wdata0;
                    wdata1_t <= wdata1;
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

            waddraa <= 7'd0;
            waddrab <= 7'd0;
            waddrba <= 7'd0;
            waddrbb <= 7'd0;
            waddrca <= 7'd0;
            waddrcb <= 7'd0;
            waddrda <= 7'd0;
            waddrdb <= 7'd0;
            
            wdata0_t <= 7'd0;
            wdata1_t <= 7'd0;
        end
    end

    // read index ddr
    wire [11:0] ren_switch;
    assign ren_switch = (src_xsize[15:6] + |(src_xsize[5:0]));

    always @(*) begin
        if (ren_switch[0]) begin
            abren = (!(raddr0[8] ^raddr0[6])) && (raddr2[8]^raddr2[6]);
            cdren = (raddr0[8]^raddr0[6]) && (!(raddr2[8]^raddr2[6]));
        end else begin
            abren = (raddr0[6] == 1'b0) && (raddr2[6] == 1'b0);
            cdren = (raddr0[6] == 1'b1) && (raddr2[6] == 1'b1);
        end
    end
    
    assign raddraa = abren ? ((raddr0[6:0] > 7'd63) ? raddr0[6:0] - 7'd64 : raddr0[6:0]) : 7'd0;
    assign raddrab = abren ? ((raddr1[6:0] > 7'd64 || raddr1[7:0] == 8'd128) ? raddr1[7:0] - 7'd64 : raddr1[6:0]) : 7'd0;
    assign raddrba = abren ? ((raddr2[6:0] > 7'd63) ? raddr2[6:0] - 7'd64 : raddr2[6:0]) : 7'd0;
    assign raddrbb = abren ? ((raddr3[6:0] > 7'd64 || raddr3[7:0] == 8'd128) ? raddr3[7:0] - 7'd64 : raddr3[6:0]) : 7'd0;

    assign raddrca = cdren ? ((raddr0[6:0] > 7'd63) ? raddr0[6:0] - 7'd64 : raddr0[6:0]) : 7'd0;
    assign raddrcb = cdren ? ((raddr1[6:0] > 7'd64 || raddr1[7:0] == 8'd128) ? raddr1[7:0] - 7'd64 : raddr1[6:0]) : 7'd0;
    assign raddrda = cdren ? ((raddr2[6:0] > 7'd63) ? raddr2[6:0] - 7'd64 : raddr2[6:0]) : 7'd0;
    assign raddrdb = cdren ? ((raddr3[6:0] > 7'd64 || raddr3[7:0] == 8'd128) ? raddr3[7:0] - 7'd64 : raddr3[6:0]) : 7'd0;
    
    assign addraa = weaa ? waddraa : raddraa;
    assign addrab = weab ? waddrab : raddrab;
    assign addrba = weba ? waddrba : raddrba;
    assign addrbb = webb ? waddrbb : raddrbb;
    assign addrca = weca ? waddrca : raddrca;
    assign addrcb = wecb ? waddrcb : raddrcb;
    assign addrda = weda ? waddrda : raddrda;
    assign addrdb = wedb ? waddrdb : raddrdb;

    //ab ready
    wire abwfirst  ;
    wire abwlast   ;
    reg  abwf_sts  ;
    reg  abwl_sts  ;
    
    assign abwfirst = ((waddraa ==7'd0) || (waddraa ==7'd1)) && weaa;
    assign abwlast  = ((waddrba ==7'd64) || (waddrba ==7'd63)) && weba;

    always @(posedge clk ) begin
        if (rst) begin
            abwf_sts <= 1'b0;
        end else if (abwf_sts && abwl_sts) begin
            abwf_sts <= 1'b0;
        end else if (abwfirst) begin
            abwf_sts <= 1'b1;
        end 
    end

    always @(posedge clk ) begin
        if (rst) begin
            abwl_sts <= 1'b0;
        end else if (abwlast) begin
            abwl_sts <= 1'b1;
        end else if (abwf_sts && abwl_sts) begin
            abwl_sts <= 1'b0;
        end
    end

    wire abrfirst  ;
    wire abrlast   ;
    reg  abrf_sts  ;
    reg  abrl_sts  ;
    reg  abrlast_t ;
    wire abrl_nedge;
    
    assign abrfirst = raddraa ==7'd0 && p1arvalid_t0 && (addr_flag_t0 == 2'b00);
    assign abrlast = raddraa == 7'd62 && p1arvalid_t0 && (addr_flag_t0 == 2'b00);

    always @(posedge clk ) begin
        if (rst) begin
            abrf_sts <= 1'b0;
        end else if (abrf_sts && abrl_sts) begin
            abrf_sts <= 1'b0;
        end else if (abrfirst) begin
            abrf_sts <= 1'b1;
        end 
    end

    always @(posedge clk ) begin
        if (rst) begin
            abrl_sts <= 1'b0;
        end else if (abrl_nedge) begin
            abrl_sts <= 1'b1;
        end else if (abrf_sts && abrl_sts) begin
            abrl_sts <= 1'b0;
        end
    end

    always @(posedge clk ) begin
        if (rst) begin
            abrlast_t <= 1'b0;
        end else begin
            abrlast_t <= abrlast;
        end
    end

    assign abrl_nedge = abrlast_t && (!abrlast); // 加valid信号

    always @(posedge clk ) begin
        if (rst) begin
            abrready <= 1'b0;
        end else if(abwf_sts && abwl_sts)begin
            abrready <= 1'b1;
        end else if(abwfirst) begin
            abrready <= 1'b0;
        end
    end

    always @(posedge clk ) begin
        if (rst) begin
            abwready <= 1'b1;
        end else if(abrfirst)begin
            abwready <= 1'b0;
        end else if(abrf_sts && abrl_sts) begin
            abwready <= 1'b1;
        end
    end

    //cd ready
    wire cdwfirst  ;
    wire cdwlast   ;
    reg  cdwf_sts  ;
    reg  cdwl_sts  ;
    assign cdwfirst = ((waddrca ==7'd0) || (waddrca ==7'd1)) && weca;
    assign cdwlast  = ((waddrda ==7'd64) || (waddrda ==7'd63))&& weda;

    always @(posedge clk ) begin
        if (rst) begin
            cdwf_sts <= 1'b0;
        end else if (cdwf_sts && cdwl_sts) begin
            cdwf_sts <= 1'b0;
        end else if (cdwfirst) begin
            cdwf_sts <= 1'b1;
        end 
    end

    always @(posedge clk ) begin
        if (rst) begin
            cdwl_sts <= 1'b0;
        end else if (cdwlast) begin
            cdwl_sts <= 1'b1;
        end else if (cdwf_sts && cdwl_sts) begin
            cdwl_sts <= 1'b0;
        end
    end

    wire cdrfirst  ;
    wire cdrlast   ;
    reg  cdrf_sts  ;
    reg  cdrl_sts  ;
    reg  cdrlast_t ;
    wire cdrl_nedge;
    
    assign cdrfirst = raddrca == 7'd0 && p1arvalid_t0 && (addr_flag_t0 == 2'b11);
    assign cdrlast  = raddrda ==7'd64 && p1arvalid_t0 && (addr_flag_t0 == 2'b11);

    always @(posedge clk ) begin
        if (rst) begin
            cdrf_sts <= 1'b0;
        end else if (cdrf_sts && cdrl_sts) begin
            cdrf_sts <= 1'b0;
        end else if (cdrfirst) begin
            cdrf_sts <= 1'b1;
        end 
    end

    always @(posedge clk ) begin
        if (rst) begin
            cdrl_sts <= 1'b0;
        end else if (cdrl_nedge) begin
            cdrl_sts <= 1'b1;
        end else if (cdrf_sts && cdrl_sts) begin
            cdrl_sts <= 1'b0;
        end
    end

    always @(posedge clk ) begin
        if (rst) begin
            cdrlast_t <= 1'b0;
        end else begin
            cdrlast_t <= cdrlast;
        end
    end

    assign cdrl_nedge = cdrlast_t && (!cdrlast); // 加valid信号

    always @(posedge clk ) begin
        if (rst) begin
            cdrready <= 1'b0;
        end else if(cdwf_sts && cdwl_sts)begin
            cdrready <= 1'b1;
        end else if(cdwfirst) begin
            cdrready <= 1'b0;
        end
    end

    always @(posedge clk ) begin
        if (rst) begin
            cdwready <= 1'b1;
        end else if(cdrfirst)begin
            cdwready <= 1'b0;
        end else if(cdrf_sts && cdrl_sts) begin
            cdwready <= 1'b1;
        end
    end

    idx_mem idxa (
    .clka(clk),      // input wire clka
    .wea(weaa),      // input wire [0 : 0] wea
    .addra(addraa),  // input wire [6 : 0] addra
    .dina(wdata0_t), // input wire [7 : 0] dina  // dapai
    .douta(doutaa),  // output wire [7 : 0] douta
    .clkb(clk),      // input wire clkb
    .web(weab),      // input wire [0 : 0] web
    .addrb(addrab),  // input wire [6 : 0] addrb
    .dinb(wdata1_t), // input wire [7 : 0] dinb
    .doutb(doutab)   // output wire [7 : 0] doutb
    );

    idx_mem idxb (
    .clka(clk),      // input wire clka
    .wea(weba),      // input wire [0 : 0] wea
    .addra(addrba),  // input wire [6 : 0] addra
    .dina(wdata0_t), // input wire [7 : 0] dina
    .douta(doutba),  // output wire [7 : 0] douta
    .clkb(clk),      // input wire clkb
    .web(webb),      // input wire [0 : 0] web
    .addrb(addrbb),  // input wire [6 : 0] addrb
    .dinb(wdata1_t), // input wire [7 : 0] dinb
    .doutb(doutbb)   // output wire [7 : 0] doutb
    );

    idx_mem idxc (
    .clka(clk),      // input wire clka
    .wea(weca),      // input wire [0 : 0] wea
    .addra(addrca),  // input wire [6 : 0] addra
    .dina(wdata0_t), // input wire [7 : 0] dina
    .douta(doutca),  // output wire [7 : 0] douta
    .clkb(clk),      // input wire clkb
    .web(wecb),      // input wire [0 : 0] web
    .addrb(addrcb),  // input wire [6 : 0] addrb
    .dinb(wdata1_t), // input wire [7 : 0] dinb
    .doutb(doutcb)   // output wire [7 : 0] doutb
    );

    idx_mem idxd (
    .clka(clk),      // input wire clka
    .wea(weda),      // input wire [0 : 0] wea
    .addra(addrda),  // input wire [6 : 0] addra
    .dina(wdata0_t), // input wire [7 : 0] dina
    .douta(doutda),  // output wire [7 : 0] douta
    .clkb(clk),      // input wire clkb
    .web(wedb),      // input wire [0 : 0] web
    .addrb(addrdb),  // input wire [6 : 0] addrb
    .dinb(wdata1_t), // input wire [7 : 0] dinb
    .doutb(doutdb)   // output wire [7 : 0] doutb
    );

    // uv register p1
    
    assign p1ru = p1u_t5;
    assign p1rv = p1v_t5;

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
        end
        else begin
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
        end
    end

    assign ctile_next = tile_next_t5;

    always @(posedge clk ) begin
        if (rst) begin
            tile_next_t0 <= 2'd0;
            tile_next_t1 <= 2'd0;
            tile_next_t2 <= 2'd0;
            tile_next_t3 <= 2'd0;
            tile_next_t4 <= 2'd0;
            tile_next_t5 <= 2'd0;
            tile_next_t6 <= 2'd0;
        end
        else begin
            tile_next_t0 <= tile_next   ;
            tile_next_t1 <= tile_next_t0;
            tile_next_t2 <= tile_next_t1;
            tile_next_t3 <= tile_next_t2;
            tile_next_t4 <= tile_next_t3;
            tile_next_t5 <= tile_next_t4;
            tile_next_t6 <= tile_next_t5;
        end
    end
    // read addr register p1

    always @(posedge clk ) begin
        if (rst) begin
            p1araddr0_t0 <= 11'd0;
            p1araddr1_t0 <= 11'd0;
            p1araddr2_t0 <= 11'd0;
            p1araddr3_t0 <= 11'd0;
        end
        else if(p1arvalid)begin
            p1araddr0_t0 <= p1araddr0;
            p1araddr1_t0 <= p1araddr1;
            p1araddr2_t0 <= p1araddr2;
            p1araddr3_t0 <= p1araddr3;
        end
    end

    always @(posedge clk ) begin
        if (rst) begin
            p1araddr0_t1 <= 11'd0;
            p1araddr1_t1 <= 11'd0;
            p1araddr2_t1 <= 11'd0;
            p1araddr3_t1 <= 11'd0;
            p1araddr0_t2 <= 11'd0;
            p1araddr1_t2 <= 11'd0;
            p1araddr2_t2 <= 11'd0;
            p1araddr3_t2 <= 11'd0;
            p1araddr0_t3 <= 11'd0;
            p1araddr1_t3 <= 11'd0;
            p1araddr2_t3 <= 11'd0;
            p1araddr3_t3 <= 11'd0;
            p1araddr0_t4 <= 11'd0;
            p1araddr1_t4 <= 11'd0;
            p1araddr2_t4 <= 11'd0;
            p1araddr3_t4 <= 11'd0;
            p1araddr0_t5 <= 11'd0;
            p1araddr1_t5 <= 11'd0;
            p1araddr2_t5 <= 11'd0;
            p1araddr3_t5 <= 11'd0;
            p1araddr0_t6 <= 11'd0;
            p1araddr1_t6 <= 11'd0;
            p1araddr2_t6 <= 11'd0;
            p1araddr3_t6 <= 11'd0;
        end
        else begin
            p1araddr0_t1 <= p1araddr0_t0;
            p1araddr1_t1 <= p1araddr1_t0;
            p1araddr2_t1 <= p1araddr2_t0;
            p1araddr3_t1 <= p1araddr3_t0;
            p1araddr0_t2 <= p1araddr0_t1;
            p1araddr1_t2 <= p1araddr1_t1;
            p1araddr2_t2 <= p1araddr2_t1;
            p1araddr3_t2 <= p1araddr3_t1;
            p1araddr0_t3 <= p1araddr0_t2;
            p1araddr1_t3 <= p1araddr1_t2;
            p1araddr2_t3 <= p1araddr2_t2;
            p1araddr3_t3 <= p1araddr3_t2;
            p1araddr0_t4 <= p1araddr0_t3;
            p1araddr1_t4 <= p1araddr1_t3;
            p1araddr2_t4 <= p1araddr2_t3;
            p1araddr3_t4 <= p1araddr3_t3;
            p1araddr0_t5 <= p1araddr0_t4;
            p1araddr1_t5 <= p1araddr1_t4;
            p1araddr2_t5 <= p1araddr2_t4;
            p1araddr3_t5 <= p1araddr3_t4;
            p1araddr0_t6 <= p1araddr0_t5;
            p1araddr1_t6 <= p1araddr1_t5;
            p1araddr2_t6 <= p1araddr2_t5;
            p1araddr3_t6 <= p1araddr3_t5;
        end
    end
endmodule
