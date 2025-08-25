//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : argmax.v
// Author        : SongYH
// Project       : 
// Create Date   : 2023.10.29
// Description   : 
// - argmax , axi-lite interface
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module argmax(
    input                             single            ,
    input                             post_start        ,
    output                            post_done_sts     ,
    input       [31 : 0]              pl_ddr_base       ,
    input       [31 : 0]              addr_num          ,
    input       [31 : 0]              pause_num         ,
    input       [11 : 0]              ct_size           ,
    input       [31 : 0]              surface_stride    ,
    input                             data_type         ,
    input       [31 : 0]              srcy              ,
    
    input                             mode              ,

    input                             tile_next         ,
    input                             srcline_next      ,
    input                             sfifo_pfull       ,

    output      [31 : 0]              rddr_araddr       ,
    output      [31 : 0]              rddr_arinfo       ,
    output                            rddr_arvalid      ,
    input                             rddr_arready      ,

    input       [511: 0]              rddr_rdata        ,
    input       [31 : 0]              rddr_rinfo        ,
    input                             rddr_rvalid       ,
    output                            rddr_rready       ,

    output      [31 : 0]              minfo             ,
    output                            mvalid0           ,
    input                             ob_ready0         ,
    input                             idx_ready0        ,
    output      [7  : 0]              maxidx0           ,

    output                            mvalid1           ,
    input                             ob_ready1         ,
    input                             idx_ready1        ,
    output      [7  : 0]              maxidx1           ,

    input                             clk               ,
    input                             rst
);

wire mready1;
wire mready0;


reg  [  7: 0] rddr_fifo_cnt      ;

wire          rddr_fifo_full     ;
wire          rddr_fifo_empty    ;

wire [ 57: 0] rddr_bus           ;
wire [ 57: 0] rrddr_bus          ;

wire [ 25: 0] rrddr_araddr       ;
wire [ 25: 0] srddr_araddr       ;

wire [ 31: 0] rrddr_arinfo       ;  
wire          rrddr_arvalid      ;
wire          rrddr_arready      ;
wire          vector_running     ;     

wire          done_arlast        ;   
wire          next_start         ;
wire          next_srcline       ;

wire rddr_fifo_wr;
wire rddr_fifo_rd;

assign mready0 = mode ? idx_ready0 : ob_ready0;
assign mready1 = mode ? idx_ready1 : ob_ready1;

assign next_start = tile_next || (~mode);
assign next_srcline = srcline_next || (~mode);

assign done_arlast = ~vector_running && ~post_start && rddr_fifo_cnt == 8'd1; // rd_req_done_sts

assign rrddr_arready = ~rddr_fifo_full;
assign rrddr_bus = {rrddr_araddr,rrddr_arinfo};
assign {srddr_araddr,rddr_arinfo} = rddr_bus;
assign rddr_araddr = {srddr_araddr,6'd0};

assign rddr_fifo_wr = rrddr_arvalid && rrddr_arready;
assign rddr_fifo_rd = rddr_arvalid && rddr_arready;
assign rddr_arvalid = ~rddr_fifo_empty && ((rddr_fifo_cnt >= 1) || (rddr_fifo_cnt == 8'd1 && done_arlast) || (rddr_fifo_cnt == 8'd1 && rddr_fifo_wr));

always @(posedge clk)begin
    if(rst)
        rddr_fifo_cnt <= 8'd0;
    else if(rddr_fifo_wr && !rddr_fifo_rd)
        rddr_fifo_cnt <= rddr_fifo_cnt + 1'b1;
    else if(!rddr_fifo_wr && rddr_fifo_rd)
	    rddr_fifo_cnt <= rddr_fifo_cnt - 1'b1;		
end

sp_rddr_fifo rddr_ar_u0(                      // depth 32
    .clk           (clk              ),    // input wire clk
    .srst          (rst              ),    // input wire srst
    .din           (rrddr_bus        ),    // input wire [57 : 0] din
    .wr_en         (rddr_fifo_wr     ),    // input wire wr_en
    .rd_en         (rddr_fifo_rd     ),    // input wire rd_en
    .dout          (rddr_bus         ),    // output wire [57 : 0] dout
    .full          (rddr_fifo_full   ),    // output wire full
    .empty         (rddr_fifo_empty  )     // output wire empty
);

wire rrddr_arready_debug = rrddr_arready&&((!sfifo_pfull) || mode);

addrgen#(26,16,24) addr_gen0(
    .addrgen_start      (post_start       ),
    .addr_base          (pl_ddr_base[31:6]),
    .addr_num           (addr_num         ),
    .pause_num          (pause_num        ),
    .mode               (mode             ),
    .single             (single           ),
    .srcy               (srcy             ),

    .ct_size            (ct_size          ),
    .ct_addr_step       (surface_stride   ),

    .tile_next          (next_start       ),
    .next_srcline       (next_srcline     ),
    .addrgen_running    (vector_running   ),
    .addrgen_done_sts   (post_done_sts    ),

    .araddr             (rrddr_araddr     ),
    .arinfo             (rrddr_arinfo     ),
    .arvalid            (rrddr_arvalid    ),
    .arready            (rrddr_arready_debug),

    .clk                (clk              ),
    .rst                (rst              )
);


max_cmp mc_u0(
    .mode              (mode            ),
    .single            (single          ),
    .cvalid            (rddr_rvalid     ),
    .cready            (rddr_rready     ),
    .cdata             (rddr_rdata      ),
    .cinfo             (rddr_rinfo      ),
    .ct                (rddr_rinfo[13:2]), // in ddrinfo
    .ct_size           (ct_size         ), // ct size
    .data_type         (data_type       ),
    .srcy              (srcy            ),
    .pause_num         (pause_num       ),

    .minfo             (minfo           ),
    .mvalid0           (mvalid0         ),
    .mready0           (mready0         ),
    .maxidx0           (maxidx0         ),

    .mvalid1           (mvalid1         ),
    .mready1           (mready1         ),
    .maxidx1           (maxidx1         ),

    .clk               (clk             ),
    .rst               (rst             )
    );

endmodule
