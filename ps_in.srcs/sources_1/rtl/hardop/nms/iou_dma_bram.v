//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : iou_cu.v
// Author        : 
// Project       : NB2337
// Create Date   : 2023.11.06
// Description   : 
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module iou_dma #(parameter AW=32, PARALSM=16, IFW=32, EDW=80, DW=EDW*PARALSM, DEPTH=8192)(     
    //bram
    output reg[  AW - 1 : 0 ]     araddr       , 
    output    [ IFW - 1 : 0 ]     arinfo       ,
    output reg                    arvalid      ,
    input                         arready      ,

    input     [  DW - 1 : 0 ]     rdata        ,
    input     [ IFW - 1 : 0 ]     rinfo        ,
    input                         rvalid       ,
    output                        rready       ,

    //wdma    send back HP
    output     [     63 : 0 ]     iou_awdata   ,
    output     [      3 : 0 ]     iou_awinfo   ,
    output                        iou_awvalid  ,
    input                         iou_awready  ,  
                 
    //iou cu                
    input     [PARALSM-1: 0 ]     unit_mask    ,
    input                         mask_valid   , 
    input                         unit_first   ,
    input                         unit_last    ,
    output reg[ EDW - 1 : 0 ]     target_data  ,
    output reg[  DW - 1 : 0 ]     iou_data     ,
    output reg                    iou_first    ,
    output reg                    iou_last     ,
    output reg                    iou_valid    ,

    //ctrl reg
    input     [  AW - 1 : 0 ]     addr_size    ,
    input     [  AW - 1 : 0 ]     anchor_hpsize,
    input                         cu_start     ,
    output                        wdma_start   ,

    input                         clk          ,
    input                         rst         
);
    wire      [PARALSM-1 : 0 ]    rd_mask          ;
    wire      [PARALSM-1 : 0 ]    wr_mask          ;
    wire      [PARALSM-1 : 0 ]    remain_mask      ;
    reg                           next_unit_d1     ;
    reg                           next_unit_d2     ;
    reg       [PARALSM-1: 0 ]     finish_mask      ;
    reg       [      31 : 0 ]     awcnt            ;
    wire                          iou_awlast       ;
    reg       [  AW - 1 : 0 ]     araddr_base      ;
    reg                           arfirst          ;
    reg                           arlast           ;
    wire                          next_unit        ;
    wire                          mask_flag        ;  //flag target data
    reg                           one_unit_valid   ;
    wire                          next_loop        ;
    reg                           next_loop_d1     ;
    reg                           cu_done          ;
    reg       [       8 : 0 ]     group_info       ;
    reg       [       8 : 0 ]     group_info_d1    ;
    reg       [       8 : 0 ]     group_info_d2    ;
    reg       [       8 : 0 ]     group_info_d3    ;
    reg       [       8 : 0 ]     group_info_d4    ;
    reg       [       8 : 0 ]     group_info_d5    ;
    reg       [       8 : 0 ]     group_info_d6    ;
    reg       [       8 : 0 ]     group_info_d7    ;
    wire      [       8 : 0 ]     group_info_mux   ;               
    reg                           mask_valid_d1    ;
    reg       [PARALSM-1: 0 ]     unit_mask_d1     ;      
    reg                           mask_init        ;
    reg                           mask_init_d1     ;

    reg       [       8 : 0 ]     iou_araddr       ;
    wire                          iou_arlast       ;
    reg                           iou_arvalid      ;
    wire                          iou_arready      ;

    wire      [PARALSM-1: 0 ]     iou_rrdata       ;
    reg                           iou_rrlast       ;
    reg                           iou_rrvalid      ;
    wire                          iou_rrready      ;

    wire      [PARALSM-1: 0 ]     iou_rdata        ;
    wire                          iou_rlast        ;
    wire                          iou_rvalid       ;
    wire                          iou_rready       ;

    reg       [  AW - 1 : 0 ]     aaraddr          ;
    wire                          aarfirst         ;
    wire                          aarlast          ;
    reg                           aarvalid         ;
    wire                          aarready         ;

    


     //ar
    assign mask_flag = arfirst && arvalid;
    assign arinfo = {araddr[8:0],finish_mask,arlast,arfirst,mask_flag};

    always@(posedge clk) begin
        if(rst)
            finish_mask <= {PARALSM{1'b0}};
        else if(cu_start)
            finish_mask <= {PARALSM{1'b1}}; 
        else if(next_unit_d2)
            finish_mask <= remain_mask; 
        else if(mask_valid && unit_first) begin
            casez(finish_mask) 
               16'b????_????_????_???1 : finish_mask <= {finish_mask[PARALSM-1: 1], 1'b0} & unit_mask;
               16'b????_????_????_??10 : finish_mask <= {finish_mask[PARALSM-1: 2], 2'b0} & unit_mask;
               16'b????_????_????_?100 : finish_mask <= {finish_mask[PARALSM-1: 3], 3'b0} & unit_mask;
               16'b????_????_????_1000 : finish_mask <= {finish_mask[PARALSM-1: 4], 4'b0} & unit_mask;
               16'b????_????_???1_0000 : finish_mask <= {finish_mask[PARALSM-1: 5], 5'b0} & unit_mask;
               16'b????_????_??10_0000 : finish_mask <= {finish_mask[PARALSM-1: 6], 6'b0} & unit_mask;
               16'b????_????_?100_0000 : finish_mask <= {finish_mask[PARALSM-1: 7], 7'b0} & unit_mask;
               16'b????_????_1000_0000 : finish_mask <= {finish_mask[PARALSM-1: 8], 8'b0} & unit_mask;
               16'b????_???1_0000_0000 : finish_mask <= {finish_mask[PARALSM-1: 9], 9'b0} & unit_mask;
               16'b????_??10_0000_0000 : finish_mask <= {finish_mask[PARALSM-1:10],10'b0} & unit_mask;
               16'b????_?100_0000_0000 : finish_mask <= {finish_mask[PARALSM-1:11],11'b0} & unit_mask;
               16'b????_1000_0000_0000 : finish_mask <= {finish_mask[PARALSM-1:12],12'b0} & unit_mask;
               16'b???1_0000_0000_0000 : finish_mask <= {finish_mask[PARALSM-1:13],13'b0} & unit_mask;
               16'b??10_0000_0000_0000 : finish_mask <= {finish_mask[PARALSM-1:14],14'b0} & unit_mask;
               16'b?100_0000_0000_0000 : finish_mask <= {finish_mask[PARALSM-1:15],15'b0} & unit_mask;
               16'b1000_0000_0000_0000 : finish_mask <= {                          16'b0} & unit_mask;
               default                 : finish_mask <= {finish_mask[PARALSM-1: 1], 1'b0} & unit_mask;
            endcase
        end 
    end   
    assign next_unit = (finish_mask == 1'b0) && next_loop;  
    assign next_loop = mask_valid && unit_last;

    always@(posedge clk) begin
        if(rst) 
            mask_valid_d1 <= 1'b0;
        else 
            mask_valid_d1 <= mask_valid;
    end

    always@(posedge clk) begin
        if(rst) 
            unit_mask_d1 <= 1'b0;
        else 
            unit_mask_d1 <= unit_mask;
    end

    always@(posedge clk) begin
        if(rst) 
            unit_mask_d1 <= 1'b0;
        else 
            unit_mask_d1 <= unit_mask;
    end

    always@(posedge clk) begin
        if(rst) 
            mask_init <= 1'b0;
        else if(cu_start)
            mask_init <= 1'b1;
        else if(mask_valid && unit_last)
            mask_init <= 1'b0;
    end

    always@(posedge clk) begin
        if(rst) 
            mask_init_d1 <= 1'b0;
        else    
            mask_init_d1 <= mask_init;
    end

    assign wr_mask = mask_init_d1 ? unit_mask_d1 : (rd_mask & unit_mask_d1);
    assign remain_mask = rd_mask;
   //bram
    w16_d512 w16_d512_u0 (
        .clka       (clk            ),    // input wire clka
        .ena        (1'b1           ),    // input wire ena
        .wea        (mask_valid_d1  ),    // input wire [0 : 0] wea
        .addra      (group_info_d7  ),    // input wire [8 : 0] addra
        .dina       (wr_mask        ),    // input wire [1280 : 0] dina
        
        .clkb       (clk            ),    // input wire clkb
        .enb        (1'b1           ),    // input wire enb
        .addrb      (group_info_mux ),    // input wire [8 : 0] addrb
        .doutb      (rd_mask        )     // output wire [1280 : 0] doutb
    );

    assign group_info_mux =iou_arvalid ? iou_araddr : (mask_valid ? group_info_d6 : araddr_base[8:0]);

    always@(posedge clk) begin
        if(rst)
            araddr_base <= 32'd0;
        else if(cu_start || wdma_start)
            araddr_base <= 32'd0;
        else if(next_unit)
            araddr_base <= araddr_base + 1'b1;
    end

    always@(posedge clk) begin
        if(rst) begin
            next_unit_d1 <= 1'b0;
            next_unit_d2 <= 1'b0;
        end
        else begin
            next_unit_d1 <= next_unit;
            next_unit_d2 <= next_unit_d1;
        end
    end

    always@(posedge clk) begin
        if(rst) 
            next_loop_d1 <= 1'b0;
        else 
            next_loop_d1 <= next_loop;
    end

    assign aarlast = aaraddr == addr_size - 1;
    assign aarfirst = aaraddr == araddr_base;

    always@(posedge clk) begin
        if(rst)
            aarvalid <= 1'b0;
        else if(aarlast && aarvalid && aarready || cu_done) 
            aarvalid <= 1'b0;
        else if(cu_start || next_loop_d1)
            aarvalid <= 1'b1;
    end   

    always@(posedge clk) begin
        if(rst)
            aaraddr <= 32'b0;
        else if(cu_start)
            aaraddr <= 32'b0;
        else if(next_loop_d1)
            aaraddr <= araddr_base;
        else if(aarvalid && aarready) 
            aaraddr <= aaraddr + 1;
    end

    always@(posedge clk) begin
        if(rst) begin
            araddr <= 32'b0;
            arvalid <= 1'b0;
            arfirst <= 1'b0;
            arlast <= 1'b0;
        end
        else begin 
            araddr <= aaraddr;
            arvalid <= aarvalid;
            arfirst <= aarfirst;
            arlast <= aarlast;
        end
    end
    
    assign aarready = arready;

    assign wdma_start = next_unit && araddr_base == addr_size - 1;
    always@(posedge clk) begin
        if(rst)
            cu_done <= 1'b0;
        else if(cu_start)
            cu_done <= 1'b0;
        else if(wdma_start)
            cu_done <= 1'b1;
    end

    //r
    always@(posedge clk) begin
        if(rst)
            iou_data <= 'd0;
        else if(rinfo[0]) begin
            casez(rinfo[18:3]) 
                16'b????_????_????_???1 : iou_data <= {rdata[DW-1: 1*EDW],{EDW{1'b0}}                  };
                16'b????_????_????_??10 : iou_data <= {rdata[DW-1: 2*EDW],{EDW{1'b0}},rdata[ 1*EDW-1:0]};
                16'b????_????_????_?100 : iou_data <= {rdata[DW-1: 3*EDW],{EDW{1'b0}},rdata[ 2*EDW-1:0]};
                16'b????_????_????_1000 : iou_data <= {rdata[DW-1: 4*EDW],{EDW{1'b0}},rdata[ 3*EDW-1:0]};
                16'b????_????_???1_0000 : iou_data <= {rdata[DW-1: 5*EDW],{EDW{1'b0}},rdata[ 4*EDW-1:0]};
                16'b????_????_??10_0000 : iou_data <= {rdata[DW-1: 6*EDW],{EDW{1'b0}},rdata[ 5*EDW-1:0]};
                16'b????_????_?100_0000 : iou_data <= {rdata[DW-1: 7*EDW],{EDW{1'b0}},rdata[ 6*EDW-1:0]};
                16'b????_????_1000_0000 : iou_data <= {rdata[DW-1: 8*EDW],{EDW{1'b0}},rdata[ 7*EDW-1:0]};
                16'b????_???1_0000_0000 : iou_data <= {rdata[DW-1: 9*EDW],{EDW{1'b0}},rdata[ 8*EDW-1:0]};
                16'b????_??10_0000_0000 : iou_data <= {rdata[DW-1:10*EDW],{EDW{1'b0}},rdata[ 9*EDW-1:0]};
                16'b????_?100_0000_0000 : iou_data <= {rdata[DW-1:11*EDW],{EDW{1'b0}},rdata[10*EDW-1:0]};
                16'b????_1000_0000_0000 : iou_data <= {rdata[DW-1:12*EDW],{EDW{1'b0}},rdata[11*EDW-1:0]};
                16'b???1_0000_0000_0000 : iou_data <= {rdata[DW-1:13*EDW],{EDW{1'b0}},rdata[12*EDW-1:0]};
                16'b??10_0000_0000_0000 : iou_data <= {rdata[DW-1:14*EDW],{EDW{1'b0}},rdata[13*EDW-1:0]};
                16'b?100_0000_0000_0000 : iou_data <= {rdata[DW-1:15*EDW],{EDW{1'b0}},rdata[14*EDW-1:0]};
                16'b1000_0000_0000_0000 : iou_data <= {                   {EDW{1'b0}},rdata[15*EDW-1:0]};
                default                 : iou_data <= {rdata[DW-1: 1*EDW],{EDW{1'b0}}               };
            endcase
        end
        else 
            iou_data <= rdata;
    end

    always@(posedge clk) begin
        if(rst)
            iou_valid <= 1'b0;
        else 
            iou_valid <= rvalid;    
    end

    always@(posedge clk) begin
        if(rst) begin
            iou_first <= 1'b0;
            iou_last <= 1'b0;
            group_info <= 9'd0;
        end
        else begin
            iou_first <= rinfo[1];   
            iou_last <= rinfo[2];
            group_info <= rinfo[27:19];

        end
    end

    always@(posedge clk) begin
        if(rst) begin
            group_info_d1 <= 9'd0;
            group_info_d2 <= 9'd0;
            group_info_d3 <= 9'd0;
            group_info_d4 <= 9'd0;
            group_info_d5 <= 9'd0;
            group_info_d6 <= 9'd0;
            group_info_d7 <= 9'd0;

        end
        else begin
            group_info_d1 <= group_info;
            group_info_d2 <= group_info_d1;
            group_info_d3 <= group_info_d2;
            group_info_d4 <= group_info_d3;
            group_info_d5 <= group_info_d4;
            group_info_d6 <= group_info_d5;
            group_info_d7 <= group_info_d6;

        end
    end

    assign rready = 1'b1;
    always@(posedge clk) begin
        if(rst)
            target_data <= 'd0;
        else if(rinfo[0]) begin
            casez(rinfo[18:3]) 
                16'b????_????_????_???1 : target_data <= rdata[     0+:EDW];
                16'b????_????_????_??10 : target_data <= rdata[   EDW+:EDW];
                16'b????_????_????_?100 : target_data <= rdata[ 2*EDW+:EDW];
                16'b????_????_????_1000 : target_data <= rdata[ 3*EDW+:EDW];
                16'b????_????_???1_0000 : target_data <= rdata[ 4*EDW+:EDW];
                16'b????_????_??10_0000 : target_data <= rdata[ 5*EDW+:EDW];
                16'b????_????_?100_0000 : target_data <= rdata[ 6*EDW+:EDW];
                16'b????_????_1000_0000 : target_data <= rdata[ 7*EDW+:EDW];
                16'b????_???1_0000_0000 : target_data <= rdata[ 8*EDW+:EDW];
                16'b????_??10_0000_0000 : target_data <= rdata[ 9*EDW+:EDW];
                16'b????_?100_0000_0000 : target_data <= rdata[10*EDW+:EDW];
                16'b????_1000_0000_0000 : target_data <= rdata[11*EDW+:EDW];
                16'b???1_0000_0000_0000 : target_data <= rdata[12*EDW+:EDW];
                16'b??10_0000_0000_0000 : target_data <= rdata[13*EDW+:EDW];
                16'b?100_0000_0000_0000 : target_data <= rdata[14*EDW+:EDW];
                16'b1000_0000_0000_0000 : target_data <= rdata[15*EDW+:EDW];
                default                 : target_data <= rdata[     0+:EDW];
            endcase
        end
    end

    //finish iou send back data_mask
    assign iou_arlast = iou_araddr == addr_size - 1;
    assign iou_arready = iou_rrready;
    always@(posedge clk) begin
        if(rst)
            iou_arvalid <= 1'b0;
        else if(wdma_start)
            iou_arvalid <= 1'b1;
        else if(iou_arlast)
            iou_arvalid <= 1'b0;
    end

    always@(posedge clk) begin
        if(rst)
            iou_araddr <= 9'b0;
        else if(wdma_start)
            iou_araddr <= 9'b0;
        else if(iou_arvalid && iou_arready)
            iou_araddr <= iou_araddr + 1'b1;
    end

    always@(posedge clk) begin
        if(rst) begin
            iou_rrvalid <= 1'b0;
            iou_rrlast <= 1'b0;
        end
        else begin 
            iou_rrvalid <= iou_arvalid;
            iou_rrlast <= iou_arlast;
        end
    end

    assign iou_rrdata = rd_mask;
    avr_rb_double #(.DW(16+1)) avr_rb_double_u0(
        .m_rdata     ({iou_rrlast,iou_rrdata}  ) ,
        .m_rvalid    (iou_rrvalid              ) ,
        .m_arready   (iou_rrready              ) ,

        .s_rdata     ({iou_rlast,iou_rdata}    ) ,
        .s_rvalid    (iou_rvalid               ) ,
        .s_rready    (iou_rready               ) ,

        .clk         (clk                      ) ,
        .rst_n       (!rst                     )
    ); 

    n2w_bwc_addr #(.NDW(PARALSM), .WDW(64), .AW(AW), .CBW(6)) n2w_bwc_addr_u0(
        .n2w_ndata       (iou_rdata          )  ,
        .n2w_naddr       (1'b0               )  ,
        .n2w_nvalid      (iou_rvalid         )  ,
        .n2w_nlast       (iou_rlast          )  ,
        .n2w_nready      (iou_rready         )  ,

        .n2w_wdata       (iou_awdata         )  ,
        .n2w_waddr       (                   )  ,
        .n2w_wlast       (iou_awlast         )  ,
        .n2w_wvalid      (iou_awvalid        )  ,
        .n2w_wready      (iou_awready        )  ,

        .n2w_clk_rst     (rst                )  ,
        .n2w_clk         (clk                )
    );

endmodule
