`timescale 1ns / 1ps
module image_make_top_tb();
reg               gp0_clk;
reg               gp0_clk_rst;
reg               hp0_clk;
reg               hp0_clk_rst;
reg               ddr_clk;
reg               ddr_clk_rst;

initial begin
  gp0_clk <= 0;
  gp0_clk_rst <= 0;
  hp0_clk <= 0;
  hp0_clk_rst <= 0;
  ddr_clk <= 0;
  ddr_clk_rst <= 0;
  continuous_en_0 = 0;
  s1_interrupt_ready = 1;
  #100
  gp0_clk_rst <= 1;
  hp0_clk_rst <= 1;
  ddr_clk_rst <= 1;

  
end
always #5 gp0_clk =  !gp0_clk;
always #2.5 hp0_clk = !hp0_clk;
always #2.5 ddr_clk = !ddr_clk;

mna_gp_ww_itf  image_make_0()          ;
mna_ddr_ww_itf s0_0_ddr_ww_itf()       ;

wire              img_ready_0          ;       
reg     [63:0]    img_data_0           ;       
reg               img_valid_0          ;       
reg               img_start_0          ;      
reg               continuous_en_0      ;       
//interrupt
wire              s1_interrupt_valid   ;
reg               s1_interrupt_ready   ;
//test counter
reg [15:0] test_cnt;
wire[63:0] img_data;
reg [15:0] img_addr;
always@(posedge gp0_clk)begin
    if(~gp0_clk_rst)begin
        test_cnt <= 0;
    end
    else if(image_make_0.awwready)begin
        test_cnt <= test_cnt + 1;
    end
    else begin
        test_cnt <= test_cnt;
    end
end
always@(posedge gp0_clk)begin
    if(~gp0_clk_rst)begin
        image_make_0.awwaddr <= 32'd0;
        image_make_0.awwdata <= 32'd0;
        image_make_0.awwvalid<= 1'd0;
    end
    else if(image_make_0.awwready && test_cnt == 11)begin//write gp0 register
        image_make_0.awwaddr <= 32'h8000_0000+32'h0000_0414;
        image_make_0.awwdata <= {16'h0001,16'h0002};
        image_make_0.awwvalid<= 1'd1;
    end
    else if(image_make_0.awwready && test_cnt == 12)begin
        image_make_0.awwaddr <= 32'h8000_0000+32'h0000_0418;
        image_make_0.awwdata <= {16'h0003,16'h0004};
        image_make_0.awwvalid<= 1'd1;
    end
    else if(image_make_0.awwready && test_cnt == 13)begin
        image_make_0.awwaddr <= 32'h8000_0000+32'h0000_041C;
        image_make_0.awwdata <= {16'h0005,16'h0006};
        image_make_0.awwvalid<= 1'd1;
    end
    else if(image_make_0.awwready && test_cnt == 14)begin
        image_make_0.awwaddr <= 32'h8000_0000+32'h0000_0420;
        image_make_0.awwdata <= {16'h0007,16'h0008};
        image_make_0.awwvalid<= 1'd1;
    end
    else if(image_make_0.awwready && test_cnt == 16)begin
        image_make_0.awwaddr <= 32'h8000_0000+32'h0000_0514;
        image_make_0.awwdata <= 32'h0000_1000;
        image_make_0.awwvalid<= 1'd1;
    end
    else if(image_make_0.awwready && test_cnt == 17)begin
        image_make_0.awwaddr <= 32'h8000_0000+32'h0000_0518;
        image_make_0.awwdata <= {20'h0,12'h0040};
        image_make_0.awwvalid<= 1'd1;
    end
    else if(image_make_0.awwready && test_cnt == 18)begin
        image_make_0.awwaddr <= 32'h8000_0000+32'h0000_051C;
        image_make_0.awwdata <= {20'h0,12'h0040};
        image_make_0.awwvalid<= 1'd1;
    end
    else if(image_make_0.awwready && test_cnt == 19)begin
        image_make_0.awwaddr <= 32'h8000_0000+32'h0000_0640;
        image_make_0.awwdata <= {20'h0,12'h0001};
        image_make_0.awwvalid<= 1'd1;
    end
    else begin
        image_make_0.awwaddr <= 32'h8000_0000;
        image_make_0.awwdata <= 32'd0;
        image_make_0.awwvalid<= 1'd0;
    end
end
always@(posedge gp0_clk)begin
    if(~gp0_clk_rst)begin
        image_make_0.araddr <= 32'd0;
        image_make_0.arvalid <= 1'd0;
        image_make_0.rready <= 1'd0;
    end
    else if(image_make_0.awwready)begin//read gp0 register
        image_make_0.araddr <= 32'h8000_0000+32'h0000_0518;
        image_make_0.arvalid <= 1'd1;
        image_make_0.rready <= 1'd1;
    end
    else begin
        image_make_0.araddr <= 32'd0;
        image_make_0.arvalid <= 1'd0;
        image_make_0.rready <= 1'd0;
    end
end
always@(posedge ddr_clk)begin
    if(~ddr_clk_rst)begin
        img_valid_0 <= 0;
        img_data_0 <= 0;
        img_start_0 <=0;
    end
    else if(test_cnt == 100)begin
        img_valid_0 <= 0;
        img_data_0  <= 0;
        img_start_0 <= 1;
    end
    else if(test_cnt > 102)begin
        img_valid_0 <= 1;
        img_data_0 <= img_data;
        img_start_0 <=0;
    end
    else begin
        img_valid_0 <= 0;
        img_data_0 <= 0;
        img_start_0 <= 0;
    end
end
always@(posedge ddr_clk)begin
    if(~ddr_clk_rst)begin
        img_addr <= 0;
    end
    else if(test_cnt>102)begin
        img_addr <= img_addr +1;
    end
    else begin
        img_addr <= 0;
    end
end
img_data_rom your_instance_name (
  .clka(ddr_clk),    // input wire clka
  .addra(img_addr),  // input wire [9 : 0] addra
  .douta(img_data)  // output wire [63 : 0] douta
);
image_make_top image_make_top_u0(
        .cam_gp1_s01       (image_make_0.slave       ),
        .S_AXI_ACLK        (gp0_clk                  ),
        .S_AXI_ARESETN     (gp0_clk_rst              ),
        .M_AXI_ACLK        (ddr_clk                  ),
        .M_AXI_ARESETN     (ddr_clk_rst              ),
        .img_ddr_ww_itf    (s0_0_ddr_ww_itf.master   ),
        .interrupt_valid   (s1_interrupt_valid       ),
        .interrupt_ready   (s1_interrupt_ready       ),
        .img_ready         (img_ready_0              ),
        .img_data          (img_data_0               ),
        .img_valid         (img_valid_0              ),
        .img_start         (img_start_0              ), 
        .continuous_en     (continuous_en_0          )              
    );
endmodule