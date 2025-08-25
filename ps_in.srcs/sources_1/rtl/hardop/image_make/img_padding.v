//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : img_padding.v
// Author        : Luo Wei
// Project       : NB2138
// Create Date   : 2021.08.30
// Description   :       
// - img_padding : add padding
//                                      
                                           
//------------------------------------------------------------------------------
// Modification History : CN channel number
// Rev     Date         Who          Description
// 1.01    2022.6.22    lw           add wddr_base a and b
//==============================================================================

module img_padding #(parameter EDW=16, DDR_AW=32, ICN=3)(
    input       [EDW*ICN-1 : 0]    pad_idata      ,
    input                          pad_ivalid     ,
    output                         pad_iready     ,

    output      [EDW*ICN-1 : 0]    pad_odata      ,
    output      [ DDR_AW-1 : 0]    pad_oaddr      ,
    output                         pad_olast      ,
    output                         pad_ovalid     ,
    input                          pad_oready     ,
     
    input                          img_wddr_start ,
    input       [ DDR_AW-1 : 0]    img_wddr_base_a,
    input       [ DDR_AW-1 : 0]    img_wddr_base_b,
    input       [       11 : 0]    img_width      , // max 4095,consider pad
    input       [       11 : 0]    img_height     , // max 4095,consider pad
    input       [       31 : 0]    img_pad        , // pad top, bot, left, right
    output  reg                    img_wddr_done  ,
    input       [EDW*ICN-1 : 0]    pad_data       ,   
    input       [        1 : 0]    data_type      ,

    input                          continuous_en  ,

    input                          clk            ,
    input                          rst    
);

    wire    [       7 : 0]       padt             ;
    wire    [       7 : 0]       padb             ;
    wire    [       7 : 0]       padl             ;
    wire    [       7 : 0]       padr             ;
    wire                         tpadding         ;
    wire                         bpadding         ;
    wire                         lpadding         ;
    wire                         rpadding         ;
    wire                         img_padding      ;
    reg                          img_running      ;
    reg     [      11 : 0]       wcnt             ;
    reg     [      11 : 0]       hcnt             ;
    wire                         col_end          ;
    wire                         row_end          ;
    wire                         img_end          ;
         
    wire    [      11 : 0]       padl_width       ;  // pad left plus image width
    wire    [      11 : 0]       padt_height      ;  // pad top plus image height
    wire    [      11 : 0]       wcnt_p1          ;  // wcnt plus 1
    wire    [      11 : 0]       hcnt_p1          ;  // hcnt plus 1
    wire    [      11 : 0]       all_width        ;  // padl + width + padr
    wire    [      11 : 0]       all_height       ;  // padt + height + padb
    wire                         data_ack         ;
    wire                         data_ready       ;
    wire                         wddr_done_req    ;

    reg     [EDW*ICN-1: 0]       pad_odata_m      ;
    reg     [ DDR_AW-1: 0]       pad_oaddr_m      ;
    reg                          pad_ovalid_m     ;
    wire                         pad_oready_m     ;
    reg                          wddr_done_req_m  ;
    reg                          img_wddr_addr_oe ;

    assign padt         = img_pad[7:0]       ;
    assign padb         = img_pad[15:8]      ;
    assign padl         = img_pad[23:16]     ;
    assign padr         = img_pad[31:24]     ;
    assign wcnt_p1      = wcnt  + 1'b1       ;
    assign hcnt_p1      = hcnt  + 1'b1       ;
    assign padl_width   = padl  + img_width  ; 
    assign padt_height  = padt  + img_height ; 
    assign all_width    = padl_width  + padr ; 
    assign all_height   = padt_height + padb ; 
    assign row_end      = wcnt_p1 == all_width && data_ack;
    assign col_end      = hcnt_p1 == all_height ;
    assign img_end      = row_end & col_end  ;
    assign tpadding     = hcnt < padt && img_height != 'd0;
    assign bpadding     = hcnt >= padt_height && img_height != 'd0;
    assign lpadding     = wcnt < padl && img_width != 'd0;
    assign rpadding     = wcnt >= padl_width && img_width != 'd0;
    assign img_padding  = img_running & (tpadding | bpadding | lpadding | rpadding); 


    always@(posedge clk) begin
        if(rst)
            hcnt  <= 0;
        else if(img_wddr_start | img_end)
            hcnt  <= 0;
        else if(row_end)
            hcnt  <= hcnt + 1'b1;
    end
    
    always@(posedge clk) begin
        if(rst)
            wcnt <= 0;
        else if(row_end | img_wddr_start)
            wcnt <= 0;
        else if(data_ack)
            wcnt <= wcnt + 1'b1;
    end

    always@(posedge clk) begin
        if(rst)
            img_running <= 1'b0;
        else if(img_wddr_start)
            img_running <= 1'b1;
        else if(img_end)
            img_running <= 1'b0;
    end

    assign data_ack = (img_padding | (pad_ivalid & pad_iready)) & img_running & data_ready; 

    always@(posedge clk) begin
        if(rst)
            pad_odata_m <= 0;
        else if(img_padding & data_ready)
            pad_odata_m <= pad_data;
        else if(pad_ivalid & pad_iready & img_running)
            pad_odata_m <= pad_idata;
    end
    
    always@(posedge clk) begin
    if(rst)
        pad_ovalid_m <= 1'b0;
    else if(data_ack)
        pad_ovalid_m <= 1'b1;
    else if(pad_oready_m)
        pad_ovalid_m <= 1'b0;
    end

    assign data_ready = pad_oready_m;
    assign pad_iready  = img_running & ~img_padding & data_ready;

    always @(posedge clk)begin
        if(rst) 
            img_wddr_addr_oe <= 1'b0;
        else if(img_wddr_start & continuous_en)
            img_wddr_addr_oe <= img_wddr_addr_oe + 1'b1;                
    end

    always @(posedge clk)begin
    if(rst) 
        pad_oaddr_m <= 0;
    else if(img_wddr_start)
        pad_oaddr_m <= img_wddr_addr_oe ? img_wddr_base_b : img_wddr_base_a;
    else if(pad_ovalid_m && pad_oready_m && data_type[0] == 1'b0)
        pad_oaddr_m <= pad_oaddr_m + (8*ICN/8);     //byte地址
    else if(pad_ovalid_m && pad_oready_m && data_type[0] == 1'b1)
        pad_oaddr_m <= pad_oaddr_m + (16*ICN/8);     //byte地址
    end
   
    always @(posedge clk)begin
        if(rst) 
            wddr_done_req_m <= 1'b0;
        else if(img_wddr_start | img_wddr_done)
            wddr_done_req_m <= 1'b0;
        else if(img_end)
            wddr_done_req_m <= 1'b1;
    end
    
    always @(posedge clk)begin
        if(rst) 
            img_wddr_done <= 1'b0;
        else if(wddr_done_req && pad_ovalid && pad_oready)
            img_wddr_done <= 1'b1;
        else
            img_wddr_done <= 1'b0;
    end
    
    avr_rs #(.DW(EDW*ICN+DDR_AW+1)) avr_rs_u0(
       .m_data            ({pad_odata_m,pad_oaddr_m,wddr_done_req_m} ),
       .m_valid           (pad_ovalid_m                              ),
       .m_ready           (pad_oready_m                              ),
            
       .s_data            ({pad_odata,pad_oaddr,wddr_done_req}       ),
       .s_valid           (pad_ovalid                                ),
       .s_ready           (pad_oready                                ),
        
       .clk               (clk                                       ),
       .rst_n             (~rst                                      )
    );

    assign pad_olast = wddr_done_req;
endmodule
