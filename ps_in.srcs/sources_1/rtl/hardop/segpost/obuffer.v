//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : post_read.v
// Author        : SongYH
// Project       : 
// Create Date   : 2023.10.29
// Description   : 
// - save argmax results or upsample result before send to ps ddr
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================


module obuffer(
    input                             single            ,
    input                             start             ,
    input                             pre_done_sts      ,
    input      [31 : 0]               awbase            ,
    input      [31 : 0]               last_awaddr       ,
    input                             mode              ,

    output                            sfifo_pfull       ,

    input      [7  : 0]               us_minfo          ,//[7:4] rfu [3]idx0 unvalid [2]idx1 unvalid [1] idx0 last [0] idx1 last 
    input                             us_mvalid0        ,
    output                            us_mready0        ,
    input      [7  : 0]               us_maxidx0        ,

    input                             us_mvalid1        ,
    output                            us_mready1        ,
    input      [7  : 0]               us_maxidx1        ,


    input      [7  : 0]               arg_minfo         ,//[7:2] rfu [1] idx0 last [0] idx1 last 
    input                             arg_mvalid0       ,
    output                            arg_mready0       ,
    input      [7  : 0]               arg_maxidx0       ,

    input                             arg_mvalid1       ,
    output                            arg_mready1       ,
    input      [7  : 0]               arg_maxidx1       ,

    // wr_ps_ddr
    output                            hhp_awdone        , 
    output     [63 : 0]               hhp_wdma_wdata    ,
    output                            hhp_wdma_wvalid   ,
    input                             hhp_wdma_wready   ,
    output     [31 : 0]               hhp_wdma_awaddr   ,
    output                            hhp_wdma_awvalid  ,
    input                             hhp_wdma_awready  ,

    
    input                             hp_clk            ,
    input                             hp_rst            ,
    input                             clk               ,              
    input                             rst               
    );

    wire     [7  : 0]                 maxinfo       ;
    wire                              mvalid0       ;
    wire     [7  : 0]                 maxidx0       ;

    wire                              mvalid1       ;
    wire     [7  : 0]                 maxidx1       ;

    reg      [31 : 0]                 bfreg         ;
    reg                               bfreg_last    ;
    reg      [31 : 0]                 reg_wcnt      ;
    reg      [31 : 0]                 reg_rcnt      ;
    wire     [31 : 0]                 reg_rest      ;
    wire     [31 : 0]                 awaddr_num    ;

    reg      [15 : 0]                 n2w_ndata     ;
    reg                               n2w_nvalid    ;
    //wire                              n2w_nlast     ;
    reg                               n2w_nlast     ;
    wire                              n2w_nready    ;
    wire     [63 : 0]                 n2w_wrdata    ;
    wire                              n2w_wlast     ;
    wire                              n2w_wvalid    ;
    wire                              n2w_wready    ;


    wire     [64 : 0]                 sfifo_data    ;
    wire                              sfifo_wr      ;
    wire                              sfifo_rd      ;
    wire     [64 : 0]                 sfifo_rdata   ;
    wire                              sfifo_full    ;
    wire                              sfifo_empty   ;
    //wire                              sfifo_pfull   ; 

    wire                              hp_start      ;          
    wire     [28 : 0]                 wdma_addr     ;

    wire                              wr_done_sts   ;
    wire [63:0] hp_wdma_wdata  ;
    wire        hp_wdma_wvalid ;
    wire        hp_wdma_wready ;

    wire [31:0] hp_wdma_awaddr ;
    wire        hp_wdma_awvalid;
    wire        hp_wdma_awready;

    wire hp_wdma_wvalid_t;
    wire hp_wdma_awvalid_t;

    assign maxinfo = mode ? us_minfo   : arg_minfo  ;
    assign mvalid0 = mode ? us_mvalid0 & (!maxinfo[3]) : arg_mvalid0;
    assign maxidx0 = mode ? us_maxidx0 : arg_maxidx0;
    assign mvalid1 = mode ? us_mvalid1 & (!maxinfo[2]) : arg_mvalid1;
    assign maxidx1 = mode ? us_maxidx1 : arg_maxidx1;

    assign us_mready0 = mode && n2w_nready; 
    assign us_mready1 = mode && n2w_nready; 
    assign arg_mready0 = (~mode) && n2w_nready;
    assign arg_mready1 = (~mode) && n2w_nready;

    // receive valid data
    always @(posedge clk ) begin
        if (rst) 
        begin
            bfreg <= 32'd0;
            bfreg_last <= 1'b0;
            reg_wcnt <= 32'd0;
        end
        else 
        begin
            case({mvalid1,mvalid0})
            2'b01: begin
                bfreg   <= {maxidx0,bfreg[31:8]};
                bfreg_last <= maxinfo[1];
                reg_wcnt <= reg_wcnt + 32'd1;
            end
            2'b10: begin
                bfreg   <= {maxidx1,bfreg[31:8]};
                bfreg_last <= maxinfo[0];
                reg_wcnt <= reg_wcnt + 32'd1;
            end
            2'b11: begin
                bfreg   <= {maxidx1,maxidx0,bfreg[31:16]};
                // bfreg_last <= 1'b0;
                bfreg_last <= maxinfo[1] || maxinfo[0];
                reg_wcnt <= reg_wcnt + 32'd2;
            end
            default: begin
                bfreg   <= bfreg;
                bfreg_last <= bfreg_last;
                reg_wcnt <= reg_wcnt;
            end
            endcase
        end
    end

    // send valid data to n2w module

    assign awaddr_num = last_awaddr[31:3] - awbase[31:3];
    assign reg_rest = reg_wcnt - reg_rcnt;

    always @(posedge clk ) begin
        if(rst)begin
            n2w_ndata  <=16'd0;
            n2w_nvalid <= 1'b0;
            n2w_nlast  <= 1'b0;
            reg_rcnt   <= 32'd0;
        end
        else if(reg_rest != 0)begin
            case (reg_rest[2:0])
                3'd1: begin
                    if(bfreg_last)
                    begin
                        //n2w_ndata   <= {bfreg[ 7: 0],8'd0};
                        n2w_ndata   <= {8'd0,bfreg[31:24]};
                        n2w_nvalid  <= bfreg_last;
                        n2w_nlast   <= bfreg_last;
                        reg_rcnt    <= reg_rcnt + 2'd1;
                    end
                    else
                    begin
                        n2w_ndata   <= {8'd0,bfreg[31:24]};
                        n2w_nvalid  <= 1'b0;
                        n2w_nlast   <= bfreg_last;
                        reg_rcnt    <= reg_rcnt;
                    end
                end
                3'd2: begin
                    n2w_ndata   <= bfreg[31:16];
                    n2w_nvalid  <= 1'b1;
                    n2w_nlast   <= bfreg_last;
                    reg_rcnt    <= reg_rcnt + 2'd2;
                end
                3'd3: begin
                    n2w_ndata   <= bfreg[23: 8];
                    n2w_nvalid  <= 1'b1;
                    n2w_nlast   <= bfreg_last;
                    reg_rcnt    <= reg_rcnt + 2'd2;
                end
                3'd4: begin
                    n2w_ndata   <= bfreg[15:0];
                    n2w_nvalid  <= 1'b1;
                    n2w_nlast   <= bfreg_last;
                    reg_rcnt    <= reg_rcnt + 2'd2;
                end
                default: begin
                    n2w_ndata   <= 16'd0;
                    n2w_nvalid  <= 1'b0 ;
                    n2w_nlast   <= 1'b0;
                    reg_rcnt    <= reg_rcnt;
                end
            endcase
        end
        else begin
            n2w_ndata   <= 16'd0;
            n2w_nvalid  <= 1'b0 ;
            n2w_nlast   <= 1'b0;
            reg_rcnt    <= reg_rcnt;
        end
    end

    // n2w module control

    n2w_segpost #(.NDW(16), .WDW(64), .AW(32), .CBW(3)) n2w_segpost_u0(
        .n2w_ndata       (n2w_ndata            ),
        .n2w_naddr       (32'd0                ),
        .n2w_nvalid      (n2w_nvalid           ),
        .n2w_nlast       (n2w_nlast            ),
        .n2w_nready      (n2w_nready           ),

        .n2w_wdata       (n2w_wrdata           ),
        .n2w_wlast       (n2w_wlast            ),
        .n2w_wvalid      (n2w_wvalid           ),
        .n2w_wready      (n2w_wready           ),

        .n2w_clk_rst     (rst                  ),
        .n2w_clk         (clk                  )
    );

    // sync fifo for hp port
    assign n2w_wready = !sfifo_full;
    assign sfifo_wr  = n2w_wvalid && n2w_wready;
    assign sfifo_data = {n2w_wrdata,n2w_wlast || 1'b1};

    sp_async_fifo sync_fifo_u0 (
    .rst        (rst||hp_rst ),  // input wire rst
    .wr_clk     (clk         ),  // input wire wr_clk
    .rd_clk     (hp_clk      ),  // input wire rd_clk
    .din        (sfifo_data  ),  // input wire [64 : 0] din
    .wr_en      (sfifo_wr    ),  // input wire n2w_nvalid
    .rd_en      (sfifo_rd    ),  // input wire rd_en
    .dout       (sfifo_rdata ),  // output wire [64 : 0] dout
    .full       (sfifo_full  ),  // output wire full
    .empty      (sfifo_empty ),  // output wire empty
    .prog_full  (sfifo_pfull )   // output wire prog_full
    );

    //start corss clock domain
    pulse_cross pulse_cross_u0(
    .a2   (hp_start        ),
    .clk2 (hp_clk          ),
    .rst2 (hp_rst          ),

    .a1   (start           ),
    .clk1 (clk             ),
    .rst1 (rst             )
    );


// hp clk wdma
segpost_wdma #(29, 65, 64) spwdma_u0(
    .block_start     (hp_start         ),
    .filter_done_sts (pre_done_sts     ),
    .wr_done_sts     (wr_done_sts      ),

    .sfifo_rdata     (sfifo_rdata      ),
    .sfifo_rd        (sfifo_rd         ),
    .sfifo_empty     (sfifo_empty      ),

    .hp_wdma_wdata   (hp_wdma_wdata    ),
    .hp_wdma_wvalid  (hp_wdma_wvalid_t ),
    .hp_wdma_wready  (hp_wdma_wready   ),

    .ps_ddr_base     (awbase[31:3]     ),
    .gt_th_num       (awaddr_num       ),

    .hp_wdma_awaddr  (wdma_addr        ),
    .hp_wdma_awvalid (hp_wdma_awvalid_t),
    .hp_wdma_awready (hp_wdma_awready  ),

    .clk             (hp_clk           ),
    .rst             (hp_rst           )
);

reg  hhp_wr_done_sts;
reg hhp_awdone_t0;
reg hhp_awdone_t1;
reg done_sts;

always @(posedge hp_clk ) begin
    if (rst) begin
        hhp_wr_done_sts <= 1'b0;
    end else if((hhp_wdma_awaddr[31:0] == last_awaddr[31:0]) && hhp_wdma_awvalid && hhp_wdma_awready)begin
        hhp_wr_done_sts <= 1'b1;
    end
end


always @(posedge hp_clk ) begin
    if (rst) begin
        done_sts <= 1'b0;
    end else if( hhp_awdone )begin
        done_sts <= 1'b1;
    end else if (hp_start) begin
        done_sts <= 1'b0;
    end
end

always @(posedge hp_clk ) begin
    if (rst) begin
        hhp_awdone_t0 <= 1'b0;
        hhp_awdone_t1 <= 1'b0;
    end else if (done_sts) begin
        hhp_awdone_t0 <= 1'b0;
        hhp_awdone_t1 <= 1'b0;
    end else begin
        hhp_awdone_t0 <= hhp_wr_done_sts && pre_done_sts;
        hhp_awdone_t1 <= hhp_awdone_t0;
    end
end

assign hhp_awdone = hhp_awdone_t0 &&(!hhp_awdone_t1);

assign hp_wdma_awvalid = hp_wdma_awvalid_t && (~wr_done_sts);
assign hp_wdma_wvalid  = hp_wdma_wvalid_t  && (~wr_done_sts);
assign hp_wdma_awaddr = {wdma_addr,3'd0};

avr_rs #(.DW(64)) avr_rs_u0(
    .m_data             (hp_wdma_wdata    ),
    .m_valid            (hp_wdma_wvalid   ),
    .m_ready            (hp_wdma_wready   ),

    .s_data             (hhp_wdma_wdata   ),
    .s_valid            (hhp_wdma_wvalid  ),
    .s_ready            (hhp_wdma_wready  ),

    .clk                (hp_clk           ),
    .rst_n              (~hp_rst          )
);

avr_rs #(.DW(32)) avr_rs_u1(
    .m_data             (hp_wdma_awaddr   ),
    .m_valid            (hp_wdma_awvalid  ),
    .m_ready            (hp_wdma_awready  ),

    .s_data             (hhp_wdma_awaddr  ),
    .s_valid            (hhp_wdma_awvalid ),
    .s_ready            (hhp_wdma_awready ),

    .clk                (hp_clk           ),
    .rst_n              (~hp_rst          )
);

endmodule
