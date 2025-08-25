//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : iou_cu.v
// Author        : 
// Project       : NB2337
// Create Date   : 2023.09.07
// Description   : 
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module iou_cu #(parameter DW=16)(                     
    input    [  DW - 1 : 0 ]      b0_x0     ,
    input    [  DW - 1 : 0 ]      b0_y0     ,
    input    [  DW - 1 : 0 ]      b0_x1     ,
    input    [  DW - 1 : 0 ]      b0_y1     ,
    input    [  DW - 1 : 0 ]      b0_cls    ,

    input    [  DW - 1 : 0 ]      b1_x0     ,
    input    [  DW - 1 : 0 ]      b1_y0     ,
    input    [  DW - 1 : 0 ]      b1_x1     ,
    input    [  DW - 1 : 0 ]      b1_y1     ,
    input    [  DW - 1 : 0 ]      b1_cls    ,

    input                         all_cls   ,
    input    [  DW - 1 : 0 ]      threshold ,  
    input                         in_valid  ,
    input                         in_first  ,
    input                         in_last   ,

    output reg                    iou_result,
    output reg                    out_valid ,
    output reg                    out_first ,
    output reg                    out_last  ,

    input                         clk       ,
    input                         rst         
);
    wire    [  DW - 1 : 0 ]     w0                       ;
    wire    [  DW - 1 : 0 ]     h0                       ;
    wire    [  DW - 1 : 0 ]     w1                       ;
    wire    [  DW - 1 : 0 ]     h1                       ;
    wire    [  DW - 1 : 0 ]     x_intersection_max       ;
    wire    [  DW - 1 : 0 ]     x_intersection_min       ;
    wire    [  DW - 1 : 0 ]     y_intersection_max       ;
    wire    [  DW - 1 : 0 ]     y_intersection_min       ;
    reg     [  DW - 1 : 0 ]     w0_d1                    ;
    reg     [  DW - 1 : 0 ]     h0_d1                    ;
    reg     [  DW - 1 : 0 ]     w1_d1                    ;
    reg     [  DW - 1 : 0 ]     h1_d1                    ;
    reg     [  DW - 1 : 0 ]     x_intersection_max_d1    ;
    reg     [  DW - 1 : 0 ]     x_intersection_min_d1    ;
    reg     [  DW - 1 : 0 ]     y_intersection_max_d1    ;
    reg     [  DW - 1 : 0 ]     y_intersection_min_d1    ;

    wire    [2*DW - 1 : 0 ]     s0                       ;
    wire    [2*DW - 1 : 0 ]     s1                       ;
    wire    [  DW - 1 : 0 ]     w_intersection           ;
    wire    [  DW - 1 : 0 ]     h_intersection           ;
    reg     [2*DW - 1 : 0 ]     s0_d1                    ;
    reg     [2*DW - 1 : 0 ]     s1_d1                    ;
    reg     [  DW - 1 : 0 ]     w_intersection_d1        ;
    reg     [  DW - 1 : 0 ]     h_intersection_d1        ;   

    wire    [2*DW - 1 : 0 ]     s_all                    ;
    wire    [2*DW - 1 : 0 ]     s_intersection           ;
    reg     [2*DW - 1 : 0 ]     s_all_d1                 ;
    reg     [2*DW - 1 : 0 ]     s_intersection_d1        ;
    reg     [2*DW - 1 : 0 ]     s_intersection_d2        ;
    reg     [2*12 - 1 : 0 ]     s_intersection_d3        ;

    wire    [2*DW - 1 : 0 ]     s_union                  ;
    reg     [2*DW - 1 : 0 ]     s_union_d1               ;

    wire    [24+16- 1 : 0 ]     intersection_thr_long    ;
    wire    [2*12 - 1 : 0 ]     intersection_threshold   ;
    reg     [2*12 - 1 : 0 ]     intersection_threshold_d1;   

    reg                         in_valid_d1              ;
    reg                         in_valid_d2              ;
    reg                         in_valid_d3              ;
    reg                         in_valid_d4              ;
    reg                         in_valid_d5              ;
    reg                         in_first_d1              ;
    reg                         in_first_d2              ;
    reg                         in_first_d3              ;
    reg                         in_first_d4              ;
    reg                         in_first_d5              ;  
    reg                         in_last_d1               ;
    reg                         in_last_d2               ;
    reg                         in_last_d3               ;
    reg                         in_last_d4               ;
    reg                         in_last_d5               ; 

    reg     [  DW - 1 : 0 ]     b0_cls_d1                ;
    reg     [  DW - 1 : 0 ]     b0_cls_d2                ;
    reg     [  DW - 1 : 0 ]     b0_cls_d3                ;
    reg     [  DW - 1 : 0 ]     b0_cls_d4                ;
    reg     [  DW - 1 : 0 ]     b0_cls_d5                ;
    reg     [  DW - 1 : 0 ]     b1_cls_d1                ;
    reg     [  DW - 1 : 0 ]     b1_cls_d2                ;
    reg     [  DW - 1 : 0 ]     b1_cls_d3                ;
    reg     [  DW - 1 : 0 ]     b1_cls_d4                ;
    reg     [  DW - 1 : 0 ]     b1_cls_d5                ;

    //6 pipline 
    always @(posedge clk) begin
        if(rst) begin
            in_valid_d1 <=        1'b0;
            in_valid_d2 <=        1'b0;
            in_valid_d3 <=        1'b0;
            in_valid_d4 <=        1'b0;
            in_valid_d5 <=        1'b0;
            out_valid   <=        1'b0;
       
            in_first_d1 <=        1'b0;
            in_first_d2 <=        1'b0;
            in_first_d3 <=        1'b0;
            in_first_d4 <=        1'b0;
            in_first_d5 <=        1'b0;
            out_first   <=        1'b0;
       
            in_last_d1  <=        1'b0;
            in_last_d2  <=        1'b0;
            in_last_d3  <=        1'b0;
            in_last_d4  <=        1'b0;
            in_last_d5  <=        1'b0;
            out_last    <=        1'b0;

            b0_cls_d1   <=        16'd0;
            b0_cls_d2   <=        16'd0;
            b0_cls_d3   <=        16'd0;
            b0_cls_d4   <=        16'd0;
            b0_cls_d5   <=        16'd0;
            b1_cls_d1   <=        16'd0;
            b1_cls_d2   <=        16'd0;
            b1_cls_d3   <=        16'd0;
            b1_cls_d4   <=        16'd0;
            b1_cls_d5   <=        16'd0;

        end 
        else begin
            in_valid_d1 <= in_valid   ;
            in_valid_d2 <= in_valid_d1;
            in_valid_d3 <= in_valid_d2;
            in_valid_d4 <= in_valid_d3;
            in_valid_d5 <= in_valid_d4;
            out_valid   <= in_valid_d5;

            in_first_d1 <= in_first   ;
            in_first_d2 <= in_first_d1;
            in_first_d3 <= in_first_d2;
            in_first_d4 <= in_first_d3;
            in_first_d5 <= in_first_d4;
            out_first   <= in_first_d5;

            in_last_d1  <= in_last    ;
            in_last_d2  <= in_last_d1 ;
            in_last_d3  <= in_last_d2 ;
            in_last_d4  <= in_last_d3 ;
            in_last_d5  <= in_last_d4 ;
            out_last    <= in_last_d5 ;

            b0_cls_d1   <= b0_cls     ;
            b0_cls_d2   <= b0_cls_d1  ;
            b0_cls_d3   <= b0_cls_d2  ;
            b0_cls_d4   <= b0_cls_d3  ;
            b0_cls_d5   <= b0_cls_d4  ;
            b1_cls_d1   <= b1_cls     ;
            b1_cls_d2   <= b1_cls_d1  ;
            b1_cls_d3   <= b1_cls_d2  ;
            b1_cls_d4   <= b1_cls_d3  ;
            b1_cls_d5   <= b1_cls_d4  ;
        end
    end
    //stage 1
    //assign w0 = b0_x1 - b0_x0;
    //assign h0 = b0_y1 - b0_y0;
    //assign w1 = b1_x1 - b1_x0;
    //assign h1 = b1_y1 - b1_y0;  
    sub_16_16 sub_16_16_u0(
        .A    (b0_x1     ),
        .B    (b0_x0     ),
        .S    (w0        )
    );  

    sub_16_16 sub_16_16_u1(
        .A    (b0_y1     ),
        .B    (b0_y0     ),
        .S    (h0        )
    );  

    sub_16_16 sub_16_16_u2(
        .A    (b1_x1     ),
        .B    (b1_x0     ),
        .S    (w1        )
    );  

    sub_16_16 sub_16_16_u3(
        .A    (b1_y1     ),
        .B    (b1_y0     ),
        .S    (h1        )
    );  
    assign x_intersection_max = (b1_x1 < b0_x1) ? b1_x1 : b0_x1;
    assign x_intersection_min = (b1_x0 > b0_x0) ? b1_x0 : b0_x0;
    assign y_intersection_max = (b1_y1 < b0_y1) ? b1_y1 : b0_y1;
    assign y_intersection_min = (b1_y0 > b0_y0) ? b1_y0 : b0_y0;
    always @(posedge clk) begin
        if(rst) begin
            w0_d1 <= 16'd0;        
            h0_d1 <= 16'd0;        
            w1_d1 <= 16'd0;        
            h1_d1 <= 16'd0;        
            x_intersection_max_d1 <= 16'd0; 
            x_intersection_min_d1 <= 16'd0; 
            y_intersection_max_d1 <= 16'd0; 
            y_intersection_min_d1 <= 16'd0; 
        end 
        else begin
            w0_d1 <= w0; 
            h0_d1 <= h0; 
            w1_d1 <= w1; 
            h1_d1 <= h1; 
            x_intersection_max_d1 <=  x_intersection_max; 
            x_intersection_min_d1 <=  x_intersection_min; 
            y_intersection_max_d1 <=  y_intersection_max; 
            y_intersection_min_d1 <=  y_intersection_min;  
        end
    end

    //stage 2
    //assign s0 = w0 * h0;
    //assign s1 = w1 * h1;
    //assign w_intersection = x_intersection_max - x_intersection_min ;
    //assign h_intersection = y_intersection_max - y_intersection_min ;
    mult_16_16 mult_16_16_u0(
        .A    (w0_d1  ),
        .B    (h0_d1  ),
        .P    (s0     )
    ); 

    mult_16_16 mult_16_16_u1(
        .A    (w1_d1  ),
        .B    (h1_d1  ),
        .P    (s1     )
    ); 

    sub_16_16 sub_16_16_u4(
        .A    (x_intersection_max_d1 ),
        .B    (x_intersection_min_d1 ),
        .S    (w_intersection        )
    );  
    sub_16_16 sub_16_16_u5(
        .A    (y_intersection_max_d1 ),
        .B    (y_intersection_min_d1 ),
        .S    (h_intersection        )
    );  

    always@(posedge clk) begin
        if(rst) begin
            s0_d1 <= 32'd0;
            s1_d1 <= 32'd0;
            w_intersection_d1 <= 16'd0;
            h_intersection_d1 <= 16'd0;
        end
        else if(x_intersection_max_d1<=x_intersection_min_d1 || y_intersection_max_d1<=y_intersection_min_d1)begin
            s0_d1 <= s0;
            s1_d1 <= s1;
            w_intersection_d1 <= 16'd0;
            h_intersection_d1 <= 16'd0;
        end
       else begin
            s0_d1 <= s0;
            s1_d1 <= s1;
            w_intersection_d1 <= w_intersection;
            h_intersection_d1 <= h_intersection;
       end
    end

    //stage 3
    //assign s_all = s0 + s1;
    //assign s_intersection = w_intersection * h_intersection;
    add_32_32 add_32_32_u0(
        .A    (s0_d1             ),
        .B    (s1_d1             ),
        .S    (s_all             )
    );

    mult_16_16 mult_16_16_u2(
        .A    (w_intersection_d1 ),
        .B    (h_intersection_d1 ),
        .P    (s_intersection    )
    ); 
    always @(posedge clk) begin
        if(rst) begin
            s_all_d1 <= 32'd0;
            s_intersection_d1 <= 32'd0;           
        end
        else begin
            s_all_d1 <= s_all;
            s_intersection_d1 <= s_intersection;
        end
    end

    //stage 4 
    //assign s_union = s_all - s_intersection;
    sub_32_32 sub_32_32_u6(
        .A    (s_all_d1        ),
        .B    (s_intersection_d1 ),
        .S    (s_union        )
    );
    always@(posedge clk) begin
        if(rst) begin
            s_union_d1 <= 32'd0;
            s_intersection_d2 <= 32'd0;
        end
        else begin 
            s_union_d1 <= s_union;
            s_intersection_d2 <= s_intersection_d1;
        end
    end

    //stage 5
    //assign intersection_threshold = s_union * threshold;  threshold 1int +15d
    mult_24_16 mult_24_16_u0(
        .A    (s_union_d1[23:0]        ),
        .B    (threshold               ),
        .P    (intersection_thr_long   )
    ); 

    assign intersection_threshold = intersection_thr_long[15+:2*12];
    always@(posedge clk) begin
        if(rst) begin
            intersection_threshold_d1 <= 24'd0;
            s_intersection_d3 <= 24'd0;
        end
        else begin
            intersection_threshold_d1 <= intersection_threshold;
            s_intersection_d3 <= s_intersection_d2[23:0];
        end
    end
    //stage 6
    //assign iou_result = (s_intersection > intersection_threshold) ? 1'b0 : 1'b1; 
    always@(posedge clk) begin
        if(rst)
            iou_result <= 1'b0;
        else if(all_cls && (s_intersection_d3 > intersection_threshold_d1))
            iou_result <= 1'b0;
        else if(~all_cls && (b0_cls_d5 == b1_cls_d5) && (s_intersection_d3 > intersection_threshold_d1))
            iou_result <= 1'b0;
        else 
            iou_result <= 1'b1;
    end

endmodule
