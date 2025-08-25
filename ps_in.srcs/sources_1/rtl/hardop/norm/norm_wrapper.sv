`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/12 20:23:03
// Design Name: 
// Module Name: norm_wrapper
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Revision 0.02 - Bit stream
// Revision 0.03 - Supports softmax
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module norm_wrapper (
  mna_gp_ww_itf.slave    norm_gpx       ,
  mna_ddr_rd_itf.master  norm_ddr       ,
  mna_ddr_ww_itf.master  norm_ddr_ww    ,
  output                 interrupt_valid,
  input                  interrupt_ready,
  input                  gp_clk         ,
  input                  gp_rst_n       ,
  input                  ddr_clk        ,
  input                  ddr_rst        
);

  wire                     soft_rst           ;  // gp_clk
  wire                     soft_ddr_rst       ;  // ddr_clk
  reg                      ddr_rst_sync       ;
  wire      [ 31 : 0]      ddr_araddr_base    ; 
  wire      [ 31 : 0]      ddr_araddr_last    ; 
  wire      [ 31 : 0]      ddr_awaddr_base    ; 
  wire      [ 31 : 0]      ddr_awaddr_last    ; 
  wire                     wdma_done          ;  // wdma is done
  wire                     cfg_start_pulse    ;  // start instruction addressing, pulse signal
  wire                     core_start         ;  // instruction registers are done, level signal
  wire                     core_start_pulse   ;
  wire      [ 31 : 0]      inst_addr          ;  // instruction address
  wire                     inst_vld           ;  // instruction is valid 
  wire                     inst_rdy           ;
  wire                     cache              ;
  wire                     uneven             ;
  wire      [ 31 : 0]      tiles              ;
  wire      [ 31 : 0]      pieces             ;
  wire      [ 31 : 0]      rest_channels      ;
  wire      [ 31 : 0]      ceil_a             ;
  wire      [ 31 : 0]      ceil_b             ;
  wire      [ 31 : 0]      yqs_coef           ;  // cfp16 format
  wire      [ 31 : 0]      xqs_coef           ;  
  wire      [ 31 : 0]      mean_coef          ;  // unsigned Q0.14
  wire                     func               ;
  wire                     qbit               ;
  wire      [  2 : 0]      cunit              ;  // cu = 2 ** cunit 
  wire      [ 31 : 0]      accum_unit_ceil    ;
  wire      [ 31 : 0]      accum_unit_num     ;
  wire      [511 : 0]      core_to_dma_data   ;   
  wire                     core_to_dma_vld    ;   
  wire                     dma_almost_full    ;
  wire      [511 : 0]      dma_to_core_data   ; 
  wire                     dma_to_core_vld    ;  
  wire                     core_to_dma_rdy    ;


cdc_process cdc_soft_rst (
  .clk    (  ddr_clk       ),
  .rst    (  ddr_rst       ),
  .din    (  soft_rst      ),  // gp_clk_domain
  .dout   (  soft_ddr_rst  )   // ddr_clk_domain
);

always @(posedge ddr_clk) begin
  if ( ddr_rst )
    ddr_rst_sync <= 1'b1;
  else
    ddr_rst_sync <= soft_ddr_rst ;  // soft_ddr_rst || ddr_rst
end

// registers control
norm_ctrl  u_norm_ctrl (
  .gp_clk              (  gp_clk                   ),
  .gp_rst_n            (  gp_rst_n                 ),
  .ddr_clk             (  ddr_clk                  ),
  .ddr_rst             (  ddr_rst_sync             ),
  .interrupt_valid     (  interrupt_valid          ),
  .interrupt_ready     (  interrupt_ready          ),
  .soft_rst            (  soft_rst                 ),
  .gpx_awwaddr         (  norm_gpx.awwaddr         ),
  .gpx_awwdata         (  norm_gpx.awwdata         ),
  .gpx_aww_vld         (  norm_gpx.awwvalid        ),
  .gpx_aww_rdy         (  norm_gpx.awwready        ),
  .gpx_araddr          (  norm_gpx.araddr          ),
  .gpx_araddr_vld      (  norm_gpx.arvalid         ),
  .gpx_araddr_rdy      (  norm_gpx.arready         ),
  .gpx_rdata           (  norm_gpx.rdata           ),
  .gpx_rdata_vld       (  norm_gpx.rvalid          ),
  .gpx_rdata_rdy       (  norm_gpx.rready          ),
  .wdma_done           (  wdma_done                ),
  .cfg_start_pulse     (  cfg_start_pulse          ),
  .inst_addr           (  inst_addr                ),
  .ddr_araddr_base     (  ddr_araddr_base          ), 
  .ddr_araddr_last     (  ddr_araddr_last          ), 
  .ddr_awaddr_base     (  ddr_awaddr_base          ), 
  .ddr_awaddr_last     (  ddr_awaddr_last          )
);

inst_ctrl u_inst_ctrl (
  .ddr_clk             (  ddr_clk                  ),
  .ddr_rst             (  ddr_rst_sync             ),  // ddr_clk
//.ddr_araddr_base     (  ddr_araddr_base          ), 
//.ddr_araddr_last     (  ddr_araddr_last          ), 
//.ddr_awaddr_base     (  ddr_awaddr_base          ), 
//.ddr_awaddr_last     (  ddr_awaddr_last          ), 
  .core_start          (  core_start               ),  // instruction registers are done, level signal
  .inst_rdata          (  norm_ddr.rdata           ),  // reads instruction from DDR 
  .inst_vld            (  inst_vld                 ),  // instruction is valid 
  .inst_rdy            (  inst_rdy                 ),                
  .tiles               (  tiles                    ),
  .pieces              (  pieces                   ),
  .rest_channels       (  rest_channels            ),
  .ceil_a              (  ceil_a                   ),
  .ceil_b              (  ceil_b                   ),
  .yqs_coef            (  yqs_coef                 ),  // cfp16 format
  .xqs_coef            (  xqs_coef                 ),  
  .mean_coef           (  mean_coef                ),  // unsigned Q0.14
  .func                (  func                     ),
  .qbit                (  qbit                     ),
  .cache               (  cache                    ),  // whether stores data when accumulating
  .uneven              (  uneven                   ), 
  .cunit               (  cunit                    ),
  .accum_unit_ceil     (  accum_unit_ceil          ),
  .accum_unit_num      (  accum_unit_num           )
);

// DMA
norm_dma u_norm_dma (
  .aclk                (  ddr_clk                    ),
  .rst                 (  ddr_rst_sync               ),
  .ddr_araddr_base     (  ddr_araddr_base            ),
  .ddr_araddr_last     (  ddr_araddr_last            ),
  .ddr_awaddr_base     (  ddr_awaddr_base            ),
  .ddr_awaddr_last     (  ddr_awaddr_last            ),
  .wdma_done           (  wdma_done                  ),
  .cfg_start_pulse     (  cfg_start_pulse            ),
  .core_start          (  core_start                 ),  // instruction registers are done, level signal
  .core_start_pulse    (  core_start_pulse           ),
  .inst_addr           (  inst_addr                  ),
  .tiles               (  tiles                      ),
  .pieces              (  pieces                     ),
  .rest_channels       (  rest_channels              ),
  .inst_vld            (  inst_vld                   ),
  .inst_rdy            (  inst_rdy                   ),
  .cache               (  cache                      ),
  .core_to_dma_data    (  core_to_dma_data           ),   
  .core_to_dma_vld     (  core_to_dma_vld            ),   
  .dma_almost_full     (  dma_almost_full            ),
  .dma_to_core_data    (  dma_to_core_data           ), 
  .dma_to_core_vld     (  dma_to_core_vld            ),  
  .core_to_dma_rdy     (  core_to_dma_rdy            ),
  .ddr_wwdata          (  norm_ddr_ww.awwdata        ),
  .ddr_wwaddr          (  norm_ddr_ww.awwaddr        ),
  .ddr_ww_vld          (  norm_ddr_ww.awwvalid       ),
  .ddr_ww_rdy          (  norm_ddr_ww.awwready       ),
  .awwinfo             (  norm_ddr_ww.awwinfo        ),
  .ddr_araddr          (  norm_ddr.araddr            ),
  .arinfo              (  norm_ddr.arinfo            ),
  .ddr_araddr_vld      (  norm_ddr.arvalid           ),
  .ddr_araddr_rdy      (  norm_ddr.arready           ),
  .ddr_rdata           (  norm_ddr.rdata             ),
  .ddr_rdata_vld       (  norm_ddr.rvalid            ),
  .ddr_rdata_rdy       (  norm_ddr.rready            )
);

norm_core #(
  .SOS_W   (  23  ),          
  .SOI_W   (  15  )
) u_norm_core
(
  .aclk                (  ddr_clk             ),
  .rst                 (  ddr_rst_sync        ),
  .start_pulse         (  core_start_pulse    ),
  .func                (  func                ),  // 1 for norm, 0 for softmax  
  .qbit                (  qbit                ),  // 1 for 8-bit, 0 for 16-bit
  .cache               (  cache               ),  // whether stores data when accumulating
  .uneven              (  uneven              ),
  .cunit               (  cunit               ),
  .xqs                 (  xqs_coef[24 : 0]    ),  // for softmax
  .yqs_coef            (  yqs_coef            ),  // sqrt(channels) * yqs, in the format cfp16 !
  .inv_n               (  mean_coef[24 : 0]   ),  // Q2.23, -1/n = inv_n * 2^ (-inv_n_cut2n)
  .inv_n_cut2n         (  mean_coef[28 : 25]  ),  // cut2n of inv_n
  .rest_channels       (  rest_channels       ),  // pieces of last tile
  .pieces              (  pieces              ),  // 
  .ceil_a              (  ceil_a              ),  // channels = ceil_a + ceil_b
  .ceil_b              (  ceil_b              ),  // ceil_a = ceil_b or ceil_a = ceil_b - 1
  .tiles               (  tiles               ),  // number of tile
  .accum_unit_ceil     (  accum_unit_ceil     ),  // unit_a = ceil(ceil_a / 64)
  .accum_unit_num      (  accum_unit_num      ),  // unit_b = ceil(ceil_b / 64)
  .dma_to_core_data    (  dma_to_core_data    ), 
  .dma_to_core_vld     (  dma_to_core_vld     ),  
  .core_to_dma_rdy     (  core_to_dma_rdy     ),
  .core_to_dma_data    (  core_to_dma_data    ),   
  .core_to_dma_vld     (  core_to_dma_vld     ),  
  .dma_almost_full     (  dma_almost_full     )
);

endmodule
