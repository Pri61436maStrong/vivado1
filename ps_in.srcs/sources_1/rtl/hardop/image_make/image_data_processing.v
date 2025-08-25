//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : img_data_processing.v
// Author        : Luo Wei
// Project       : NB2138
// Create Date   : 2021.08.28
// Description   :  Y = (X - sub_data) * mult_data
// -
// -
//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================
//ICN input channel number
//PCN processing channel number
module image_data_processing#( parameter ICN=3,PCN=3,EDW=16)(
    input      [ EDW*PCN-1 : 0]       sub_data       ,  
    input      [ EDW*PCN-1 : 0]       mult_data      ,  
    input      [         6 : 0]       channel_each   , 
    input      [         6 : 0]       channel_times  ,
    input      [         1 : 0]       data_type      ,
    input                             img_start      ,

    input      [ EDW*PCN-1 : 0]       img_in         ,
    input                             img_in_valid   ,
    output                            img_in_ready   ,

    output     [ EDW*ICN-1 : 0]       img_out        ,
    output                            img_out_valid  ,
    input                             img_out_ready  ,

    input                             M_AXI_ACLK     ,  
    input                             M_AXI_ARESETN     
);

    wire     [ EDW*PCN-1 : 0]           add_out          ; 
    wire     [2*EDW*PCN-1: 0]           mult_out         ;  
    reg      [ EDW*PCN-1 : 0]           mult_in          ;
    reg                                 mult_valid       ;
    wire                                mult_ready       ;    

    wire     [2*EDW*PCN-1: 0]           img_data0        ;
    wire                                img_valid0       ;
    wire     [     PCN-1 : 0]           img_ready0       ; 
    wire     [2*EDW*PCN-1: 0]           img_data1        ;
    wire                                img_valid1       ;
    wire     [     PCN-1 : 0]           img_ready1       ; 
    reg      [2*EDW*PCN-1: 0]           img_data         ;
    reg                                 img_valid        ;
    wire     [     PCN-1 : 0]           img_ready        ; 

    wire     [   8*PCN-1 : 0]           img_cut_data00   ;
    wire     [ EDW*PCN-1 : 0]           img_cut_data0    ;
    wire     [     PCN-1 : 0]           img_cut_valid0   ;
    wire                                img_cut_ready0   ;   
    wire     [ EDW*PCN-1 : 0]           img_cut_data1    ;
    wire     [     PCN-1 : 0]           img_cut_valid1   ;
    wire                                img_cut_ready1   ;  
    wire     [ EDW*PCN-1 : 0]           img_cut_data     ;
    wire     [     PCN-1 : 0]           img_cut_valid    ;
    wire                                img_cut_ready    ;  

    reg      [         6 : 0]           cnt              ;  
    reg      [ EDW*PCN-1 : 0]           mult_data_d1     ;

    wire     [ EDW*ICN-1 : 0]           img_out_m        ;
    reg                                 img_out_valid_m  ;
    wire                                img_out_ready_m  ;

    reg      [ EDW*PCN-1 : 0]           img_out_m0       ;
    reg      [ EDW*ICN-1 : 0]           img_out_m1       ;
    reg      [ EDW*ICN-1 : 0]           img_out_m2       ;
    reg      [ EDW*ICN-1 : 0]           img_out_m3       ;
    reg      [ EDW*ICN-1 : 0]           img_out_m4       ;

    genvar i;
    generate
        for(i=0;i<PCN;i=i+1)begin: sub_data_0
            sub_data sub_data_u0(
              .A        ( img_in[i*EDW+:EDW]   ),   
              .B        ( sub_data[i*EDW+:EDW] ),
              .S        ( add_out[i*EDW+:EDW]  )
            );
        end
    endgenerate

    always@(posedge M_AXI_ACLK or negedge M_AXI_ARESETN) begin
        if(M_AXI_ARESETN == 1'b0) 
            mult_in <= 'd0;
        else if(img_in_valid && img_in_ready)
            mult_in <= add_out;
        else if(mult_ready)
            mult_in <= 'd0;            
    end
       
    always@(posedge M_AXI_ACLK or negedge M_AXI_ARESETN) begin
        if(M_AXI_ARESETN == 1'b0) 
            mult_data_d1 <= 'd0;
        else if(img_in_valid && img_in_ready)
            mult_data_d1 <= mult_data;
        else if(mult_ready)
            mult_data_d1 <= 'd0;            
    end

    always@(posedge M_AXI_ACLK or negedge M_AXI_ARESETN) begin
        if(M_AXI_ARESETN == 1'b0) 
            mult_valid <= 1'b0;
        else if(img_in_valid && img_in_ready)
            mult_valid <= 1'b1;
        else if(mult_ready)
            mult_valid <= 1'b0;            
    end

    assign img_in_ready = mult_ready;

    genvar j;
    generate
        for(j=0;j<PCN;j=j+1)begin: mult_data_0
            mult_data mult_data_u0(
              .A        ( mult_in[j*EDW+:EDW]       ),
              .B        ( mult_data_d1[j*EDW+:EDW]),
              .P        ( mult_out[j*EDW*2+:EDW*2]    )
            );
        end
    endgenerate

    always@(posedge M_AXI_ACLK or negedge M_AXI_ARESETN) begin
        if(M_AXI_ARESETN == 1'b0) 
            img_data <= 'd0;
        else if(mult_valid && mult_ready)
            img_data <= mult_out;
        else if(img_ready[0])
            img_data <= 'd0;            
    end
    assign mult_ready = img_ready[0];  

    always@(posedge M_AXI_ACLK or negedge M_AXI_ARESETN) begin
        if(M_AXI_ARESETN == 1'b0) 
            img_valid <= 1'b0;
        else if(mult_valid && mult_ready)
            img_valid <= 1'b1;
        else if(img_ready[0])
            img_valid <= 1'b0;            
    end
    
    //mux 8bit 16bit
    assign img_data0 = img_data;
    assign img_valid0 = data_type[0] == 1'b0 && img_valid;
    assign img_data1 = img_data;
    assign img_valid1 = data_type[0] == 1'b1 && img_valid;
    assign img_ready = data_type[0] ? img_ready1 : img_ready0;
    
    assign img_cut_data = data_type[0] ? img_cut_data1 : img_cut_data0;
    assign img_cut_valid = data_type[0] ? img_cut_valid1 : img_cut_valid0;
    assign img_cut_ready0 = data_type[0] == 1'b0 && img_cut_ready;
    assign img_cut_ready1 = data_type[0] == 1'b1 && img_cut_ready;

    //截位饱和   10 dec
    //16bit
    genvar k;
    generate
        for(k=0;k<PCN;k=k+1)begin: cut_data_0
            cut_fixed #(.IDW(EDW*2), .ODW(EDW), .CUT(10)) cut_fixed_u0( 
                .dout        (img_cut_data1[k*EDW+:EDW] ),
                .dout_valid  (img_cut_valid1[k]         ),
                .dout_ready  (img_cut_ready1            ),
                .din         (img_data1[k*EDW*2+:EDW*2] ),
                .din_valid   (img_valid1                ),
                .din_ready   (img_ready1[k]             ),
                .clk         (M_AXI_ACLK                ),
                .rst         (~M_AXI_ARESETN            )
            );
        end
    endgenerate

    //8bit
    genvar s;
    generate
        for(s=0;s<PCN;s=s+1)begin: cut_data_1
            cut_fixed #(.IDW(EDW*2), .ODW(8), .CUT(10)) cut_fixed_u1( 
                .dout        (img_cut_data00[s*8+:8]    ),
                .dout_valid  (img_cut_valid0[s]         ),
                .dout_ready  (img_cut_ready0            ),
                .din         (img_data0[s*EDW*2+:EDW*2] ),
                .din_valid   (img_valid0                ),
                .din_ready   (img_ready0[s]             ),
                .clk         (M_AXI_ACLK                ),
                .rst         (~M_AXI_ARESETN            )
            );
            assign img_cut_data0[s*EDW+:EDW] = {{(EDW-8){img_cut_data00[s*8+7]}},img_cut_data00[s*8+:8]};
        end
    endgenerate   
       
    assign img_cut_ready = img_out_ready_m;

    always@(posedge M_AXI_ACLK or negedge M_AXI_ARESETN) begin
        if(M_AXI_ARESETN == 1'b0) 
            cnt <= 'd0;
        else if( (cnt == channel_times - 1) && img_cut_valid[0] && img_cut_ready)
            cnt <= 'd0;        
        else if(img_cut_valid[0] && img_cut_ready)
            cnt <= cnt + 1'b1;     
    end

    always@(posedge M_AXI_ACLK or negedge M_AXI_ARESETN) begin
        if(M_AXI_ARESETN == 1'b0) 
            img_out_m0 <= 'd0;
        else if(img_cut_valid[0] && img_cut_ready)
            img_out_m0 <= img_cut_data;
        else if( img_out_ready_m)  
            img_out_m0 <= 'd0;
    end

    genvar m;
    generate
        for(m=0;m<ICN;m=m+1)begin: img_out_m1_0
            always@(posedge M_AXI_ACLK or negedge M_AXI_ARESETN) begin
                if(M_AXI_ARESETN == 1'b0)
                    img_out_m1[m*EDW+:EDW] <= 'd0;
                else if(img_start)
                    img_out_m1[m*EDW+:EDW] <= 'd0;
                else if(cnt == m)
                    img_out_m1[m*EDW+:EDW] <=  img_cut_data[EDW-1:0];                 
            end
        end
    endgenerate

    genvar n;
    generate
        for(n=0;n<ICN/2;n=n+1)begin: img_out_m2_0
            always@(posedge M_AXI_ACLK or negedge M_AXI_ARESETN) begin
                if(M_AXI_ARESETN == 1'b0)
                    img_out_m2[n*EDW*2+:EDW*2] <= 'd0;
                else if(img_start)
                    img_out_m2[n*EDW*2+:EDW*2] <= 'd0;
                else if(cnt == n)
                    img_out_m2[n*EDW*2+:EDW*2] <=  img_cut_data[EDW*2-1:0];                 
            end
        end
    endgenerate

    genvar p;
    generate
        for(p=0;p<ICN/3;p=p+1)begin: img_out_m3_0
            always@(posedge M_AXI_ACLK or negedge M_AXI_ARESETN) begin
                if(M_AXI_ARESETN == 1'b0)
                    img_out_m3[p*EDW*3+:EDW*3] <= 'd0;
                else if(img_start)
                    img_out_m3[p*EDW*3+:EDW*3] <= 'd0;
                else if(cnt == p)
                    img_out_m3[p*EDW*3+:EDW*3] <=  img_cut_data[EDW*3-1:0];                 
            end
        end
    endgenerate

    always@(posedge M_AXI_ACLK or negedge M_AXI_ARESETN) begin
        if(M_AXI_ARESETN == 1'b0)
            img_out_m3[ICN*EDW-1:EDW*3*(ICN/3)] <= 'd0;
        else if(img_start)
            img_out_m3[ICN*EDW-1:EDW*3*(ICN/3)] <= 'd0;  
    end

    genvar r;
    generate
        for(r=0;r<ICN/4;r=r+1)begin: img_out_m4_0
            always@(posedge M_AXI_ACLK or negedge M_AXI_ARESETN) begin
                if(M_AXI_ARESETN == 1'b0)
                    img_out_m4[r*EDW*4+:EDW*4] <= 'd0;
                else if(img_start)
                    img_out_m4[r*EDW*4+:EDW*4] <= 'd0;
                else if(cnt == r)
                    img_out_m4[r*EDW*4+:EDW*4] <=  img_cut_data[EDW*4-1:0];                 
            end
        end
    endgenerate

    assign img_out_m = (channel_times == 'd1) ?  img_out_m0 : 
                       (channel_each  == 'd1) ?  img_out_m1 :
                       (channel_each  == 'd2) ?  img_out_m2 :
                       (channel_each  == 'd3) ?  img_out_m3 : img_out_m4; 

    always@(posedge M_AXI_ACLK or negedge M_AXI_ARESETN) begin
        if(M_AXI_ARESETN == 1'b0) 
            img_out_valid_m <= 'd0;
        else if((channel_times == 1) && img_cut_valid[0] && img_cut_ready)
            img_out_valid_m <= 1'b1;
        else if((channel_times > 1) && (cnt == channel_times - 1) && img_cut_valid[0] && img_cut_ready)
            img_out_valid_m <= 1'b1;
        else if(img_out_ready_m)  
            img_out_valid_m <= 1'b0;
    end

     avr_rs #(.DW(EDW*ICN)) avr_rs_u0(
        .m_data            (img_out_m                 ),
        .m_valid           (img_out_valid_m           ),
        .m_ready           (img_out_ready_m           ),
               
        .s_data            (img_out                   ),
        .s_valid           (img_out_valid             ),
        .s_ready           (img_out_ready             ),
    
        .clk               (M_AXI_ACLK                ),
        .rst_n             (M_AXI_ARESETN             )
    );

endmodule