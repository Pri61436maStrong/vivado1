//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : nearest_upsample_rdma.v
// Author        : 
// Project       : NB2337
// Create Date   : 2023.06.19
// Description   : 

//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module nearest_upsample_rdma #(parameter AW=32, IFW=32)(                     
    output     [  AW-1 : 0 ]      araddr           ,
    output     [ IFW-1 : 0 ]      arinfo           ,
    output                        arvalid          ,
    input                         arready          ,

    input      [  AW-1 : 0 ]      src_xbase        ,  //{16uint,16dec} 
    input      [  AW-1 : 0 ]      src_ybase        ,  //{16uint,16dec} 
    input      [AW/2-1 : 0 ]      dst_xsize        ,  
    input      [AW/2-1 : 0 ]      dst_ysize        , 
    input      [AW/2-1 : 0 ]      src_xsize        ,
    input      [AW/2-1 : 0 ]      src_ysize        ,
    input      [  AW-1 : 0 ]      src_xstep        ,
    input      [  AW-1 : 0 ]      src_ystep        ,
    input      [AW/2-1 : 0 ]      ct_size          , 
    input                         start            ,
    output     [   31  : 0 ]      rdma_status0     ,
    output     [   16  : 0 ]      rdma_status1     ,
    input      [  AW-1 : 0 ]      arbase           ,
    input      [  AW-1 : 0 ]      ct_addr_step     ,
    input      [    3  : 0 ]      ardwdc           ,

    input                         clk              ,
    input                         rst_n       
);
    reg        [AW/2-1 : 0 ]     ct                   ;
    reg        [AW/2-1 : 0 ]     dst_x                ; 
    reg        [AW/2-1 : 0 ]     dst_y                ; 
    reg        [  AW-1 : 0 ]     ssrc_x               ;
    reg        [  AW-1 : 0 ]     ssrc_y               ;
    wire       [AW/2-1 : 0 ]     src_x                ;
    wire       [AW/2-1 : 0 ]     src_y                ;  
    wire       [AW/2-1 : 0 ]     src_x_d1             ;
    wire       [AW/2-1 : 0 ]     src_y_d1             ;
    wire       [  AW-1 : 0 ]     ct_addr_base_d1      ;
    reg        [  AW-1 : 0 ]     ct_addr_base         ;
 
    wire                         cu_last              ;
    reg                          coord_first          ;
    wire                         coord_last           ;
    reg                          coord_valid          ;
    wire                         coord_ready          ;  
    wire                         coord_first_d1       ;
    wire                         coord_last_d1        ;
    wire                         coord_valid_d1       ;
    wire                         coord_ready_d1       ;  

    wire                         first                ;
    wire                         last                 ;
    wire                         cnt_last             ;
    wire                         next_ack             ;
    wire                         last_ack             ;

    wire                         arfirst              ;
    wire                         arlast               ;

    wire      [2*AW+1 : 0 ]      src_mbus             ;
    wire      [2*AW+1 : 0 ]      src_sbus             ;
    reg       [  AW-1 : 0 ]      arbase_unit          ;

    assign rdma_status0 = {dst_y,dst_x}; //{16,16}
    assign rdma_status1 = {ct,coord_last}; //{16,1}

    always@(posedge clk) begin
        if(rst_n==1'b0) 
            coord_valid <=  1'b0;
        else if(start) 
            coord_valid <=  1'b1;
        else if(last_ack)
            coord_valid <=  1'b0;
    end
    
    assign next_ack = coord_valid && coord_ready;
    assign last_ack = next_ack && coord_last;

    //Double Addressing
    always@(posedge clk) begin
        if(rst_n==1'b0) begin 
            dst_x <=  16'd0;
            dst_y <=  16'd0;
            ssrc_x <= 32'd0;
            ssrc_y <= 32'd0;
            ct <= 16'd0;
            ct_addr_base <= arbase_unit;
        end
        else if(start || last_ack) begin
            dst_x <=   16'd0;
            dst_y <=   16'd0;
            ssrc_x <=  src_xbase;
            ssrc_y <=  src_ybase;
            ct <= 16'd0;
            ct_addr_base <= arbase_unit;
        end
        else if(next_ack) begin
            if(cu_last) begin
                dst_x <=   16'd0;
                dst_y <=   16'd0;
                ssrc_x <=  src_xbase;       
                ssrc_y <=  src_ybase;
                ct <= ct + 1;
                ct_addr_base <= ct_addr_base + ct_addr_step;
            end
            else if(dst_x == dst_xsize - 1) begin
                dst_x <=   16'd0;
                dst_y <=  dst_y + 1;
                ssrc_x <=  src_xbase;
                ssrc_y <=  ssrc_y + src_ystep;   
            end
            else begin
                dst_x <=  dst_x + 1;
                ssrc_x <= ssrc_x + src_xstep;   
            end
        end

    end   

    //byte -> unit
    always@(*) begin
        case(ardwdc)
            4'h0:    arbase_unit <=       arbase[31:0]   ;
            4'h1:    arbase_unit <= {1'b0,arbase[31:1]}  ;
            4'h2:    arbase_unit <= {2'b0,arbase[31:2]}  ;       
            4'h3:    arbase_unit <= {3'b0,arbase[31:3]}  ;
            4'h4:    arbase_unit <= {4'b0,arbase[31:4]}  ;
            4'h5:    arbase_unit <= {5'b0,arbase[31:5]}  ;
            default: arbase_unit <=       arbase[31:0]   ;
        endcase
    end


    always@(posedge clk) begin
        if(rst_n==1'b0)
            coord_first <=  1'b0;
        else if(start)
            coord_first <=  1'b1;
        else if(coord_ready)
            coord_first <=  1'b0;
    end

    assign cu_last = (dst_y == dst_ysize - 1) && (dst_x == dst_xsize - 1);
    assign coord_last = (dst_y == dst_ysize - 1) && (dst_x == dst_xsize - 1) && (ct == ct_size - 1);

    //top boundary
    assign src_x = (ssrc_x[AW/2+:AW/2] >= src_xsize-1) ? (src_xsize-1) : ssrc_x[AW/2+:AW/2];
    assign src_y = (ssrc_y[AW/2+:AW/2] >= src_ysize-1) ? (src_ysize-1) : ssrc_y[AW/2+:AW/2];

    avr_rs #(.DW(2*AW+1)) avr_rs_u0(
        .m_data           (src_mbus          ),
        .m_valid          (coord_valid       ),
        .m_ready          (coord_ready       ),

        .s_data           (src_sbus          ),
        .s_valid          (coord_valid_d1    ),
        .s_ready          (coord_ready_d1    ),

        .clk              (clk               ),
        .rst_n            (rst_n             )
    );
    assign src_mbus = {ct_addr_base,src_x,src_y,coord_first,coord_last};
    assign {ct_addr_base_d1,src_x_d1,src_y_d1,coord_first_d1,coord_last_d1} = src_sbus;

    addr_gen #(.AW(AW)) addr_gen_u0(                     
        .src_x          (src_x_d1       ),
        .src_y          (src_y_d1       ), 
        .ct_addr_base   (ct_addr_base_d1),
        .src_first      (coord_first_d1 ),
        .src_last       (coord_last_d1  ),
        .src_valid      (coord_valid_d1 ),
        .src_ready      (coord_ready_d1 ),
        .src_xsize      (src_xsize      ),
        .src_ysize      (src_ysize      ),
        .ardwdc         (ardwdc         ),

        .araddr         (araddr         ),  
        .arfirst        (arfirst        ),
        .arlast         (arlast         ),
        .arvalid        (arvalid        ),
        .arready        (arready        ),  

        .clk            (clk            ),
        .rst_n          (rst_n          )
    );

    assign arinfo = {26'd0,arfirst,ardwdc,arlast};

endmodule
