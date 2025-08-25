//==============================================================================
// Orgnization   : Shanghai Fudan Microelectronics Co., Ltd. Confidential
// File Name     : addr_gen.v
// Author        : 
// Project       : NB2230
// Create Date   : 2023.06.19
// Description   : 

//------------------------------------------------------------------------------
// Modification History :
// Rev     Date         Who          Description
//==============================================================================

module addr_gen #(parameter AW=32)(                     
    input         [AW/2-1 : 0 ]     src_x        ,
    input         [AW/2-1 : 0 ]     src_y        ,  
    input         [  AW-1 : 0 ]     ct_addr_base ,
    input                           src_first    ,
    input                           src_last     ,
    input                           src_valid    ,
    output                          src_ready    ,
    input         [AW/2-1 : 0 ]     src_xsize    ,
    input         [AW/2-1 : 0 ]     src_ysize    ,
    input         [     3 : 0 ]     ardwdc       ,


    output        [  AW-1 : 0 ]     araddr       ,
    output                          arfirst      ,
    output                          arlast       ,
    output                          arvalid      ,
    input                           arready      ,  

    input                           clk          ,
    input                           rst_n    
);

    localparam    INFO_ADDRW = AW + 2;
    wire          [ 2*AW+AW/2+1 : 0 ]    cord_addr_mbus ;
    wire          [ 2*AW+AW/2+1 : 0 ]    cord_addr_sbus ;
    wire          [        AW-1 : 0 ]    ct_addr_base_d1;
    wire          [        AW-1 : 0 ]    y_addr_base    ;  
    wire          [        AW-1 : 0 ]    y_addr_base_d1 ;  
    wire          [        AW-1 : 0 ]    araddr_base    ;  
    wire          [      AW/2-1 : 0 ]    src_x_d1       ;
    wire                                 src_first_d1   ;
    wire                                 src_last_d1    ;
    wire                                 src_valid_d1   ;
    wire                                 src_ready_d1   ;

    wire          [INFO_ADDRW-1 : 0 ]    addr_mbus      ;
    wire          [INFO_ADDRW-1 : 0 ]    addr_sbus      ;
    wire          [        AW-1 : 0 ]    src_addr       ;
    reg           [        AW-1 : 0 ]    src_addr_real  ;

    //addr
    addr_mult addr_mult_u0(
        .A    (src_y           ),
        .B    (src_xsize       ),
        .P    (y_addr_base     )
    );

    assign cord_addr_mbus = {ct_addr_base,y_addr_base,src_x,src_first,src_last};
    assign {ct_addr_base_d1,y_addr_base_d1,src_x_d1,src_first_d1,src_last_d1} = cord_addr_sbus;
    avr_rs #(.DW(2*AW+AW/2+2)) avr_rs_u0(
        .m_data  (cord_addr_mbus  ),
        .m_valid (src_valid       ),
        .m_ready (src_ready       ),

        .s_data  (cord_addr_sbus  ),
        .s_valid (src_valid_d1    ),
        .s_ready (src_ready_d1    ),

        .clk     (clk             ),
        .rst_n   (rst_n           )
    );

    addr_add addr_add_u0(
        .A    (ct_addr_base_d1    ),
        .B    (y_addr_base_d1     ),
        .S    (araddr_base        )
    );

    addr_add addr_add_u1(
        .A    (araddr_base        ),
        .B    (src_x_d1           ),
        .S    (src_addr           )
    );
 
    //assign src_addr_real = {src_addr[26:0],5'd0};
    always@(*) begin
        case(ardwdc)
            4'h0:    src_addr_real <=  src_addr[31:0];
            4'h1:    src_addr_real <= {src_addr[30:0],1'b0};
            4'h2:    src_addr_real <= {src_addr[29:0],2'b0};
            4'h3:    src_addr_real <= {src_addr[28:0],3'b0};
            4'h4:    src_addr_real <= {src_addr[27:0],4'b0};
            4'h5:    src_addr_real <= {src_addr[26:0],5'b0};
            default: src_addr_real <= {src_addr[31:0]}     ;
        endcase
    end
    assign addr_mbus = {src_addr_real,src_first_d1,src_last_d1}; 
    assign {araddr,arfirst,arlast} = addr_sbus;
    avr_rs #(.DW(INFO_ADDRW)) avr_rs_u1(
        .m_data  (addr_mbus    ),
        .m_valid (src_valid_d1 ),
        .m_ready (src_ready_d1 ),

        .s_data  (addr_sbus    ),
        .s_valid (arvalid      ),
        .s_ready (arready      ),

        .clk     (clk          ),
        .rst_n   (rst_n        )
    );

endmodule
