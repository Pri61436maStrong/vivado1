`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/04 15:05:13
// Design Name: 
// Module Name: norm_core
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
// Revision 1.00 - Supports 16-bit
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module norm_core #(
  parameter SOS_W  =  23 ,   // bit width of sum of square        
  parameter SOI_W  =  15 ,   // bit width of sum of input    
  parameter QI_W   =  15 ,  // bit width of q_i, required QI_W <= SOI_W
  parameter CFP_W  =  24    // bit width of custom floating-point number
)
(
  input                                aclk                ,
  input                                rst                 ,

  // interfaces with reg_ctrl  
  input                                start_pulse         ,
  input                                func                ,  // 1 for norm, 0 for softmax  
  input                                qbit                ,  // 1 for 8-bit, 0 for 16-bit
  input                                cache               ,  // whether stores data when accumulating
  input                                uneven              ,
  input               [      2 : 0]    cunit               ,  // cu = 2 ** cunit 
  input               [     24 : 0]    xqs                 ,  // for softmax
  input               [     31 : 0]    yqs_coef            ,  // sqrt(channels) * yqs, in the format cfp16 !
  input     signed    [     24 : 0]    inv_n               ,  // Q2.23, -1/n = inv_n * 2^ (-inv_n_cut2n)
  input               [      3 : 0]    inv_n_cut2n         ,  // cut2n of inv_n
  input               [     31 : 0]    rest_channels       ,  // pieces of last tile
  input               [     31 : 0]    pieces              ,  // data num of a tile
  input               [     31 : 0]    ceil_a              ,  // channels = ceil_a + ceil_b
  input               [     31 : 0]    ceil_b              ,  // ceil_a = ceil_b or ceil_a = ceil_b - 1
  input               [     31 : 0]    tiles               ,  // number of tile
  input               [     31 : 0]    accum_unit_ceil     , 
  input               [     31 : 0]    accum_unit_num      ,  

  // receives data from dma 
  input               [    511 : 0]    dma_to_core_data    , 
  input                                dma_to_core_vld     ,  
  output                               core_to_dma_rdy     ,

  // sends data to dma 
  output              [    511 : 0]    core_to_dma_data    ,   
  output                               core_to_dma_vld     ,  
  input                                dma_almost_full     
);


genvar i;
localparam SDATA_W =  2 * ( SOS_W + SOI_W )  ;
localparam PDATA_W = 32 * SDATA_W            ;


//```````````````````````````````````` signals ````````````````````````````````````
wire                                    din_snap_48                       ;
wire                                    din_snap_32                       ;
wire                                    din_snap_0                        ;
reg                                     din_rdy_48                        ;
reg                                     din_rdy_32                        ;
reg                                     din_rdy_0                         ;
wire                                    din_exhs                          ;
wire                                    din_buff_exhs                     ;
reg                                     lsb_longer                        ;  // lsb part has more data
reg                 [     31 : 0]       unit_din_cnt            [ 1 : 0]  ; 
reg                                     unit_din_last           [ 1 : 0]  ; 
reg                 [     10 : 0]       cache_din_cnt                     ;  // counter for din into temp buffer
reg                                     cache_up_last                     ;  
reg                                     cache_down_last                   ;  
reg                 [     31 : 0]       tile_cnt                          ;  // counter for tile, times of repetition
reg                 [     31 : 0]       piece_cnt                         ;  // counter for piece, a tile is composed of multiple pieces
reg                                     last_tile                         ;
reg                                     last_piece                        ;
reg                                     round_2nd                         ;
reg                 [     31 : 0]       cache_tile_cnt                    ;  // counter for tile, times of repetition
reg                 [     31 : 0]       cache_piece_cnt                   ;  // counter for piece, a tile is composed of multiple pieces
reg                                     cache_last_tile                   ;
reg                                     cache_last_piece                  ;
reg                                     cache_round_2nd                   ;
reg                                     cache_lsb_longer                  ;  // lsb part has more data
reg                 [     31 : 0]       cache_unit_cnt          [ 1 : 0]  ; 
reg                                     cache_unit_last         [ 1 : 0]  ; 
wire                                    din_buff_last           [ 3 : 0]  ; 
reg                 [      2 : 0]       mode                              ;
reg                 [      2 : 0]       next_mode                         ;
reg                 [      2 : 0]       mode_dly1                         ;
wire                [      2 : 0]       mode_dly5                         ;
wire                [      2 : 0]       mode_dly6                         ;
wire     signed     [ QI_W-1 : 0]       q_max                   [63 : 0]  ; 
wire     signed     [     24 : 0]       coef_norm               [63 : 0]  ; 
wire     signed     [     32 : 0]       coef_mean               [63 : 0]  ; 
wire                [      2 : 0]       coef_cut2n              [63 : 0]  ; 
reg                 [     15 : 0]       cell_din                [63 : 0]  ;
wire                [      3 : 0]       cell_din_vld                      ;
wire                [      3 : 0]       cell_din_buff_vld                 ;
wire                                    norm_din_last           [ 3 : 0]  ; 
wire                                    accum_din_last          [ 3 : 0]  ; 
wire                                    accum_din_last_dly1     [ 3 : 0]  ; 
wire                                    accum_din_last_dly5     [ 3 : 0]  ; 
wire     signed     [     17 : 0]       din_buff                [63 : 0]  ;  // input data from buffer
reg                                     din_buff_rdy_48                   ;
reg                                     din_buff_rdy_32                   ;
reg                                     din_buff_rdy_0                    ;
wire                [SOS_W-1 : 0]       cell_sos                [63 : 0]  ;  // sos = \sum{x^2} for norm, unsigned !!!
wire                                    cell_sos_vld            [63 : 0]  ;  
wire     signed     [SOI_W-1 : 0]       cell_soi_or_max         [63 : 0]  ;  // \sum{x} for norm, q_max for softmax
wire                                    cell_soi_or_max_vld     [63 : 0]  ;  
wire                [     17 : 0]       dout_buff_a             [63 : 0]  ;  // 12-bit q and 16-bit p for softmax
wire                [ QI_W-1 : 0]       dout_buff_b             [63 : 0]  ;  // QI_W-bit q and 16-bit p for softmax
wire                                    dout_buff_vld           [63 : 0]  ;  
wire     signed     [     15 : 0]       cell_dout               [63 : 0]  ;  
wire                                    cell_dout_vld           [63 : 0]  ;
wire                [     35 : 0]       tmp_fifo_dout           [63 : 0]  ; 
wire                                    tmp_fifo_full           [63 : 0]  ;
wire                                    tmp_fifo_empty          [63 : 0]  ;
wire                                    tmp_fifo_prog_full      [63 : 0]  ;
wire                [     22 : 0]       sos_fifo_dout           [63 : 0]  ;
wire                                    sos_fifo_full           [63 : 0]  ;
wire                                    sos_fifo_empty          [63 : 0]  ;
wire                                    sos_fifo_prog_full      [63 : 0]  ;
wire                [     14 : 0]       soi_fifo_dout           [63 : 0]  ;
wire                                    soi_fifo_full           [63 : 0]  ;
wire                                    soi_fifo_empty          [63 : 0]  ;
wire                                    soi_fifo_prog_full      [63 : 0]  ;
wire                [PDATA_W-1 : 0]     cvt_din                           ;
wire                [31        : 0]     cvt_din_vld                       ;
wire                [31        : 0]     cvt_din_rdy                       ;
wire                [SDATA_W-1 : 0]     cvt_dout                          ;
wire                                    cvt_dout_vld                      ;
wire                                    cvt_dout_rdy                      ;
wire                [CFP_W-1   : 0]     variance                          ;
wire                                    var_vld                           ;
wire                [       24 : 0]     mean_or_max                       ;
wire                                    mean_or_max_vld                   ;
wire                [       27 : 0]     cmk_coef_norm                     ;
wire                [       56 : 0]     cmk_coef_mean                     ;
reg                 [       32 : 0]     cmk_coef_mean_part                ;
reg                                     cmk_coef_mean_vld       [ 3 : 0]  ;
wire                                    cmk_coef_vld                      ;
wire                [       24 : 0]     mean_fifo_dout                    ;
wire                                    mean_fifo_full                    ;
wire                                    mean_fifo_empty                   ;
wire                                    mean_fifo_prog_full               ;
wire                [       32 : 0]     coef_mean_fifo_dout               ;
wire                                    coef_mean_fifo_full               ;
wire                                    coef_mean_fifo_empty              ;
wire                                    coef_mean_fifo_prog_full          ;
wire                [       27 : 0]     coef_norm_fifo_dout               ;
wire                                    coef_norm_fifo_full               ;
wire                                    coef_norm_fifo_empty              ;
wire                                    coef_norm_fifo_prog_full          ;
wire                                    s2p_din_rdy                       ;
wire                [     1951 : 0]     s2p_dout                          ;
wire                                    s2p_dout_vld                      ;
wire                                    s2p_dout_rdy                      ;
reg                                     cell_coef_rdy           [ 3 : 0]  ;
reg                 [       31 : 0]     accum_din_cnt           [ 1 : 0]  ; 
reg                                     last_accum_din          [ 1 : 0]  ;  
reg                 [        4 : 0]     s2p_cap                           ;  // cu - 1
reg                 [      975 : 0]     avr_u0_mdata            [ 3 : 0]  ;
wire                [        3 : 0]     avr_u0_mrdy                       ;
wire                [      975 : 0]     avr_u0_sdata            [ 3 : 0]  ;
wire                [        3 : 0]     avr_u0_svld                       ;
wire                [        3 : 0]     coef_fifo_empty                   ;
wire                [        3 : 0]     coef_fifo_full                    ;
//===================================================================================



//```````````````````````````````````` counters ````````````````````````````````````
assign core_to_dma_rdy = (last_tile && last_piece) ? din_rdy_0 : din_rdy_48 && din_rdy_32 ;
assign din_exhs = dma_to_core_vld && core_to_dma_rdy  ; 
assign din_buff_exhs = (cache_last_tile && cache_last_piece) ? (!tmp_fifo_empty[0] && din_buff_rdy_0) : (!tmp_fifo_empty[48] && din_buff_rdy_48)  ;

// tile_cnt
always @(posedge aclk) begin
  if ( rst )
    tile_cnt <= 32'b0  ;
  else if ( start_pulse )
    tile_cnt <= tiles  ;
  else if ( last_tile && last_piece && din_exhs && round_2nd )
    tile_cnt <= 32'b0  ;
  else if ( last_piece && din_exhs && round_2nd )
    tile_cnt <= tile_cnt - 32'b1  ;
end

// last_tile
always @(posedge aclk) begin
  if ( rst )
    last_tile <= 1'b0  ;
  else if ( start_pulse )
    last_tile <= (tiles == 32'h1)  ;
  else if ( last_tile && last_piece && din_exhs && round_2nd )
    last_tile <= 1'b0  ;
  else if ( (tile_cnt == 32'h2) && last_piece && din_exhs && round_2nd )
    last_tile <= 1'b1  ;
end

// piece_cnt
always @(posedge aclk) begin
  if ( rst )
    piece_cnt <= 32'b0  ;
  else if ( last_tile && last_piece && din_exhs && round_2nd )
    piece_cnt <= 32'b0  ;
  else if ( start_pulse && (tiles == 32'h1) || (tile_cnt == 32'h2) && last_piece && din_exhs && round_2nd || last_tile && last_piece && din_exhs && !round_2nd )
    piece_cnt <= rest_channels  ;
  else if ( start_pulse || last_piece && din_exhs )
    piece_cnt <= pieces  ;
  else if ( din_exhs )
    piece_cnt <= piece_cnt - 32'b1  ;
end

// last_piece, time to pause accumulator
always @(posedge aclk) begin
  if ( rst )
    last_piece <= 1'b0  ;
  else if ( last_tile && last_piece && din_exhs && round_2nd )
    last_piece <= 1'b0  ;
  else if ( start_pulse && (tiles == 32'h1) || (tile_cnt == 32'h2) && last_piece && din_exhs && round_2nd || last_tile && last_piece && din_exhs && !round_2nd )
    last_piece <= (rest_channels == 32'h1)  ;
  else if ( start_pulse || last_piece && din_exhs )
    last_piece <= (pieces == 32'h1)  ;
  else if ( (piece_cnt == 32'h2) && din_exhs )
    last_piece <= 1'b1  ;
end

// round_2nd
always @(posedge aclk) begin
  if ( rst )
    round_2nd <= 1'b0  ;
  else if ( start_pulse )
    round_2nd <= cache  ;
  else if ( last_piece && din_exhs && !cache)
    round_2nd <= !round_2nd  ;
end
//===================================================================================



//``````````````````````````````` counters for din_buff `````````````````````````````
always @(posedge aclk) begin
  if ( rst )
    cache_tile_cnt <= 32'b0  ;
  else if ( start_pulse )
    cache_tile_cnt <= tiles  ;
  else if ( cache_last_tile && cache_last_piece && din_buff_exhs && cache_round_2nd )
    cache_tile_cnt <= 32'b0  ;
  else if ( cache_last_piece && din_buff_exhs && cache_round_2nd )
    cache_tile_cnt <= cache_tile_cnt - 32'b1  ;
end

always @(posedge aclk) begin
  if ( rst )
    cache_last_tile <= 1'b0  ;
  else if ( start_pulse )
    cache_last_tile <= (tiles == 32'h1)  ;
  else if ( cache_last_tile && cache_last_piece && din_buff_exhs && cache_round_2nd )
    cache_last_tile <= 1'b0  ;
  else if ( (cache_tile_cnt == 32'h2) && cache_last_piece && din_buff_exhs && cache_round_2nd )
    cache_last_tile <= 1'b1  ;
end

always @(posedge aclk) begin
  if ( rst )
    cache_piece_cnt <= 32'b0  ;
  else if ( cache_last_tile && cache_last_piece && din_buff_exhs && cache_round_2nd )
    cache_piece_cnt <= 32'b0  ;
  else if ( start_pulse && (tiles == 32'h1) || (cache_tile_cnt == 32'h2) && cache_last_piece && din_buff_exhs && cache_round_2nd || cache_last_tile && cache_last_piece && din_buff_exhs && !cache_round_2nd )
    cache_piece_cnt <= rest_channels  ;
  else if ( start_pulse || cache_last_piece && din_buff_exhs )
    cache_piece_cnt <= pieces  ;
  else if ( din_buff_exhs )
    cache_piece_cnt <= cache_piece_cnt - 32'b1  ;
end

always @(posedge aclk) begin
  if ( rst )
    cache_last_piece <= 1'b0  ;
  else if ( cache_last_tile && cache_last_piece && din_buff_exhs && cache_round_2nd )
    cache_last_piece <= 1'b0  ;
  else if ( start_pulse && (tiles == 32'h1) || (cache_tile_cnt == 32'h2) && cache_last_piece && din_buff_exhs && cache_round_2nd || cache_last_tile && cache_last_piece && din_buff_exhs && !cache_round_2nd )
    cache_last_piece <= (rest_channels == 32'h1)  ;
  else if ( start_pulse || cache_last_piece && din_buff_exhs )
    cache_last_piece <= (pieces == 32'h1)  ;
  else if ( (cache_piece_cnt == 32'h2) && din_buff_exhs )
    cache_last_piece <= 1'b1  ;
end

always @(posedge aclk) begin
  if ( rst )
    cache_round_2nd <= 1'b1  ;
  else if ( start_pulse )
    cache_round_2nd <= 1'b1  ;
end

// cache_din_cnt, counter for din/dout of temp buffer
always @(posedge aclk) begin
  if ( rst )
    cache_din_cnt <= 11'b0  ;
  else if ( start_pulse )
    cache_din_cnt <= 11'b0  ;
  else if ( round_2nd && din_exhs )
    cache_din_cnt <= cache_din_cnt + 11'b1  ;
  else if ( din_buff_exhs )
    cache_din_cnt <= cache_din_cnt - 11'b1  ;
end

// the tmp buffer turns be full
always @(posedge aclk) begin
  if ( rst )
    cache_up_last <= 1'b0  ;
  else if ( start_pulse || cache_up_last && (din_exhs || din_buff_exhs) )   // avoiding cache_up_last hold at 1
    cache_up_last <= 1'b0  ;
  else if ( (cache_din_cnt == 11'h1F6) && din_exhs )
    cache_up_last <= 1'b1  ;
end

// the tmp buffer turns be empty
always @(posedge aclk) begin
  if ( rst )
    cache_down_last <= 1'b0  ;
  else if ( start_pulse || cache_down_last && din_buff_exhs )
    cache_down_last <= 1'b0  ;
  else if ( (cache_din_cnt == 11'h2) && din_buff_exhs )
    cache_down_last <= 1'b1  ;
end

// cache_lsb_longer
always @(posedge aclk) begin
  if ( rst )
    cache_lsb_longer <= 1'b1  ;
  else if ( start_pulse || cache_last_tile && cache_last_piece && din_buff_exhs )
    cache_lsb_longer <= 1'b0  ;
  else if ( cache_unit_last[1] && din_buff_exhs )
    cache_lsb_longer <= !cache_lsb_longer  ;
end

// cache_unit_cnt[0]
always @(posedge aclk) begin
  if ( rst )
    cache_unit_cnt[0] <= 32'b0  ;
  else if ( start_pulse || cache_last_tile && cache_last_piece && din_buff_exhs )
    cache_unit_cnt[0] <= ceil_a  ;
  else if ( cache_unit_last[0] && din_buff_exhs )
    cache_unit_cnt[0] <= cache_lsb_longer ? ceil_a : ceil_b  ;
  else if ( din_buff_exhs )
    cache_unit_cnt[0] <= cache_unit_cnt[0] - 32'b1 ;
end

// cache_unit_last[0]
always @(posedge aclk) begin
  if ( rst )
    cache_unit_last[0] <= 1'b0  ;
  else if ( start_pulse  || cache_last_tile && cache_last_piece && din_buff_exhs )
    cache_unit_last[0] <= ceil_a == 32'h1 ;
  else if ( cache_unit_last[0] && din_buff_exhs )
    cache_unit_last[0] <= cache_lsb_longer ? (ceil_a == 32'h1) : (ceil_b == 32'h1) ;
  else if ( (cache_unit_cnt[0] == 32'h2) && din_buff_exhs )
    cache_unit_last[0] <= 1'b1  ;
end

// cache_unit_cnt[1]
always @(posedge aclk) begin
  if ( rst )
    cache_unit_cnt[1] <= 32'b0  ;
  else if ( start_pulse || cache_last_tile && cache_last_piece && din_buff_exhs )
    cache_unit_cnt[1] <= ceil_b  ;
  else if ( cache_unit_last[1] && din_buff_exhs )
    cache_unit_cnt[1] <= cache_lsb_longer ? ceil_b : ceil_a  ;
  else if ( din_buff_exhs )
    cache_unit_cnt[1] <= cache_unit_cnt[1] - 32'b1 ;
end

// cache_unit_last[1]
always @(posedge aclk) begin
  if ( rst )
    cache_unit_last[1] <= 1'b0  ;
  else if ( start_pulse  || cache_last_tile && cache_last_piece && din_buff_exhs )
    cache_unit_last[1] <= ceil_b == 32'h1 ;
  else if ( cache_unit_last[1] && din_buff_exhs )
    cache_unit_last[1] <= cache_lsb_longer ? (ceil_b == 32'h1) : (ceil_a == 32'h1) ;
  else if ( (cache_unit_cnt[1] == 32'h2) && din_buff_exhs )
    cache_unit_last[1] <= 1'b1  ;
end

// din_buff_last
assign din_buff_last[3] = cache_unit_last[0]  ;
assign din_buff_last[2] = qbit ? cache_unit_last[0] : cache_unit_last[1]  ;
assign din_buff_last[1] = qbit ? cache_unit_last[1] : cache_unit_last[0]  ;
assign din_buff_last[0] = cache_unit_last[1]  ;
//===================================================================================



//`````````````````````````````` accumulator controller `````````````````````````````
// lsb_longer
always @(posedge aclk) begin
  if ( rst )
    lsb_longer <= 1'b1  ;
  else if ( start_pulse || last_tile && last_piece && din_exhs )
    lsb_longer <= 1'b0  ;
  else if ( unit_din_last[1] && din_exhs )
    lsb_longer <= !lsb_longer  ;
end

// unit_din_cnt[0]
always @(posedge aclk) begin
  if ( rst )
    unit_din_cnt[0] <= 32'b0  ;
  else if ( start_pulse || last_tile && last_piece && din_exhs )
    unit_din_cnt[0] <= ceil_a  ;
  else if ( unit_din_last[0] && din_exhs )
    unit_din_cnt[0] <= lsb_longer ? ceil_a : ceil_b  ;
  else if ( din_exhs )
    unit_din_cnt[0] <= unit_din_cnt[0] - 32'b1 ;
end

// unit_din_last[0]
always @(posedge aclk) begin
  if ( rst )
    unit_din_last[0] <= 1'b0  ;
  else if ( start_pulse  || last_tile && last_piece && din_exhs )
    unit_din_last[0] <= ceil_a == 32'h1 ;
  else if ( unit_din_last[0] && din_exhs )
    unit_din_last[0] <= lsb_longer ? (ceil_a == 32'h1) : (ceil_b == 32'h1) ;
  else if ( (unit_din_cnt[0] == 32'h2) && din_exhs )
    unit_din_last[0] <= 1'b1  ;
end

// unit_din_cnt[1]
always @(posedge aclk) begin
  if ( rst )
    unit_din_cnt[1] <= 32'b0  ;
  else if ( start_pulse || last_tile && last_piece && din_exhs )
    unit_din_cnt[1] <= ceil_b  ;
  else if ( unit_din_last[1] && din_exhs )
    unit_din_cnt[1] <= lsb_longer ? ceil_b : ceil_a  ;
  else if ( din_exhs )
    unit_din_cnt[1] <= unit_din_cnt[1] - 32'b1  ;
end

// unit_din_last[1]
always @(posedge aclk) begin
  if ( rst )
    unit_din_last[1] <= 1'b0  ;
  else if ( start_pulse || last_tile && last_piece && din_exhs )
    unit_din_last[1] <= ceil_b == 32'h1 ;
  else if ( unit_din_last[1] && din_exhs )
    unit_din_last[1] <= lsb_longer ? (ceil_b == 32'h1) : (ceil_a == 32'h1) ;
  else if ( (unit_din_cnt[1] == 32'h2) && din_exhs )
    unit_din_last[1] <= 1'b1  ;
end

// norm_din_last
assign norm_din_last[3] = unit_din_last[0]  ;
assign norm_din_last[2] = qbit ? unit_din_last[0] : unit_din_last[1]  ;
assign norm_din_last[1] = qbit ? unit_din_last[1] : unit_din_last[0]  ;
assign norm_din_last[0] = unit_din_last[1]  ;

// accum_din_cnt[1]
always @(posedge aclk) begin
  if ( rst )
    accum_din_cnt[1] <= 32'h0  ;
  else if ( start_pulse || (unit_din_last[1] || last_accum_din[1]) && din_exhs )
    accum_din_cnt[1] <= accum_unit_ceil  ;
  else if ( din_exhs )
    accum_din_cnt[1] <= accum_din_cnt[1] - 32'h1   ;
end

always @(posedge aclk) begin
  if ( rst )
    last_accum_din[1] <= 1'b0  ;
  else if ( start_pulse || (unit_din_last[1] || last_accum_din[1]) && din_exhs )
    last_accum_din[1] <= accum_unit_ceil == 32'b1 ;
  else if ( accum_din_cnt[1] == 32'h2 && din_exhs )
    last_accum_din[1] <= 1'b1  ;
end

// accum_din_cnt[0]
always @(posedge aclk) begin
  if ( rst )
    accum_din_cnt[0] <= 32'h0  ;
  else if ( start_pulse || (unit_din_last[0] || last_accum_din[0]) && din_exhs )
    accum_din_cnt[0] <= accum_unit_ceil  ;
  else if ( din_exhs )
    accum_din_cnt[0] <= accum_din_cnt[0] - 32'h1   ;
end

always @(posedge aclk) begin
  if ( rst )
    last_accum_din[0] <= 1'b0  ;
  else if ( start_pulse || (unit_din_last[0] || last_accum_din[0]) && din_exhs )
    last_accum_din[0] <= accum_unit_ceil == 32'b1 ;
  else if ( accum_din_cnt[0] == 32'h2 && din_exhs )
    last_accum_din[0] <= 1'b1  ;
end

// accum_din_last
assign accum_din_last[3] = last_accum_din[0] || unit_din_last[0] ;
assign accum_din_last[2] = qbit ? last_accum_din[0] || unit_din_last[0] : last_accum_din[1] || unit_din_last[1] ;
assign accum_din_last[1] = qbit ? last_accum_din[1] || unit_din_last[1] : last_accum_din[0] || unit_din_last[0] ;
assign accum_din_last[0] = last_accum_din[1] || unit_din_last[1] ;

generate
  for (i = 0; i < 4; i = i + 1) begin: gen_accum_din_last_dly1
    defer_unit #(
      .WIDTH  (  1  )  ,
      .DLY_T  (  1  )
    ) defer_unit_u0 (
      .clk    (  aclk                    ) ,
      .rst    (  rst                     ) ,
      .din    (  accum_din_last[i]       ) ,
      .dout   (  accum_din_last_dly1[i]  )
    );
  end
endgenerate

generate
  for (i = 0; i < 4; i = i + 1) begin: gen_accum_din_last_dly5
    defer_unit #(
      .WIDTH  (  1  )  ,
      .DLY_T  (  4  )
    ) defer_unit_u1 (
      .clk    (  aclk                    ) ,
      .rst    (  rst                     ) ,
      .din    (  accum_din_last_dly1[i]  ) ,
      .dout   (  accum_din_last_dly5[i]  )
    );
  end
endgenerate
//===================================================================================



//`````````````````````````````````` mode controller `````````````````````````````````
// next mode
always @(*) begin
  case ( {func, mode[2:0]} )
    4'h0:  
      begin
        case ( last_piece && din_exhs )
          1'b1  :  next_mode  =  3'h2  ;
          1'b0  :  next_mode  =  3'h0  ;
        endcase
      end
    4'h1:
      begin
        case ( (cache_up_last || last_piece) && din_exhs )
          1'b1  :  next_mode  =  3'h5  ;
          1'b0  :  next_mode  =  3'h1  ;
        endcase
      end
    4'h2:   
      begin
        case ( (cache_up_last || last_piece) && din_exhs )
          1'b1  :  next_mode  =  3'h5  ;
          1'b0  :  next_mode  =  3'h2  ;
        endcase
      end
    4'h5:
      begin
        casez ( { cache, cache_last_tile, cache_last_piece, cache_down_last, din_buff_exhs } )
          5'b?_11?1             :  next_mode  =  3'h7  ;
          5'b1_?011, 5'b1_01?1  :  next_mode  =  3'h1  ;
          5'b0_?011             :  next_mode  =  3'h2  ;
          5'b0_01?1             :  next_mode  =  3'h0  ;  // when norm, ignores cache for avoiding deadlock
          default               :  next_mode  =  3'h5  ;
        endcase
      end
    4'h8:   
      begin
        case ( last_piece && din_exhs )
          1'b1  :  next_mode  =  3'h3  ;
          1'b0  :  next_mode  =  3'h0  ;
        endcase
      end
    4'h9:
      begin
        case ( (cache_up_last || last_piece) && din_exhs )
          1'b1  :  next_mode  =  3'h5  ;
          1'b0  :  next_mode  =  3'h1  ;
        endcase
      end
    4'hB:   
      begin
        case ( {last_tile, last_piece && din_exhs} )
          2'b11         :  next_mode  =  3'h7  ;
          2'b01         :  next_mode  =  3'h0  ;
          2'b00, 2'b10  :  next_mode  =  3'h3  ;
        endcase
      end
    4'hD:
      begin
        casez ( { cache_last_tile, cache_last_piece, cache_down_last, din_buff_exhs } )
          4'b11?1           :  next_mode  =  3'h7  ;
          4'b?011, 4'b01?1  :  next_mode  =  3'h1  ;
          default           :  next_mode  =  3'h5  ;
        endcase
      end
    default: 
      begin
        case ( {start_pulse, cache} )
          2'b00, 2'b01  :  next_mode  =  3'h7  ;
          2'b10         :  next_mode  =  3'h0  ;
          2'b11         :  next_mode  =  3'h1  ;
        endcase
      end
  endcase
end

always @(posedge aclk) begin
  if ( rst )
    mode <= 3'h7  ;
  else
    mode <= next_mode  ;
end

// mode_dly
always @(posedge aclk) begin
  if ( rst )
    mode_dly1 <= 3'b0  ;
  else
    mode_dly1 <= mode  ;
end

// mode_dly5
defer_unit #(
  .WIDTH  (  3  )  ,
  .DLY_T  (  4  )
) defer_unit_u2 (
  .clk    (  aclk       ) ,
  .rst    (  rst        ) ,
  .din    (  mode_dly1  ) ,
  .dout   (  mode_dly5  )
);

// mode_dly6
defer_unit #(
  .WIDTH  (  3  )  ,
  .DLY_T  (  1  )
) defer_unit_u3 (
  .clk    (  aclk       ) ,
  .rst    (  rst        ) ,
  .din    (  mode_dly5  ) ,
  .dout   (  mode_dly6  )
);
//===================================================================================



//```````````````````````````````````` cell_din `````````````````````````````````````
// for gen_cell_msb
generate
  for (i = 32; i < 64; i = i + 1) begin: gen_cell_din_a
    always@(*) begin
      case ( qbit )
        1'b1:
          cell_din[i] = { dma_to_core_data[8 * i + 7 : 8 * i], 8'b0 }  ;
        1'b0:
          cell_din[i] = dma_to_core_data[16 * i - 497 : 16 * i - 512]  ;
      endcase
    end
  end
endgenerate

// for gen_cell_lsb
generate
  for (i = 0; i < 32; i = i + 1) begin: gen_cell_din_b
    always@(*) begin
      case ( qbit )
        1'b1:
          cell_din[i] = { dma_to_core_data[8 * i + 7 : 8 * i], 8'b0 }  ;
        1'b0:
          cell_din[i] = dma_to_core_data[16 * i + 15 : 16 * i]  ;
      endcase
    end
  end
endgenerate
//===================================================================================



//```````````````````````````````````` norm_cell ````````````````````````````````````
generate
  for (i = 0; i < 64; i = i + 1) begin: gen_norm_cell
    norm_cell #(
      .SOS_W   (  SOS_W  ),  // bit width of sum of square, 17 + 6, related to ip: u_sos_adder
      .SOI_W   (  SOI_W  ),  // bit width of sum of input, 9 + 6, required SOI_W > 11
      .QI_W    (  QI_W   ),
      .MSB     (  i/32   )   // 1 for msb, 0 for lsb, splitting when 16-bit during norm
    ) u_norm_cell (
      .aclk                 (  aclk                          ),
      .rst                  (  rst                           ),
      .func                 (  func                          ),  // 1 for norm, 0 for softmax  
      .mode                 (  mode                          ),  // data path for features  
      .mode_dly1            (  mode_dly1                     ),
      .mode_dly5            (  mode_dly5                     ),
      .mode_dly6            (  mode_dly6                     ),
      .qbit                 (  qbit                          ),  // 1 for 8-bit, 0 for 16-bit
      .xqs                  (  xqs                           ),  // Q5.20 when 8-bit, Q0.28 when 16-bit
      .q_i                  (  tmp_fifo_dout[i][QI_W+17:18]  ),  // <= 8 for norm, QI_W-bit for softmax
      .q_max                (  q_max[i]                      ),  // maximal q_i of input data, QI_W-bit
      .coef_norm            (  coef_norm          [i]        ),  // Q9.16
      .coef_mean            (  coef_mean          [i]        ),  // for 8-bit, Q17.16; for 16-bit, Q25.8
      .coef_cut2n           (  coef_cut2n         [i]        ),  
      .din                  (  cell_din           [i]        ),  // for qbit = 8-bit, din[7:0] = 8'b0
      .din_vld              (  cell_din_vld       [i/16]     ),  // valid depends on ready !!!
      .accum_din_last_dly1  (  accum_din_last_dly1[i/16]     ),
      .accum_din_last_dly5  (  accum_din_last_dly5[i/16]     ),
      .din_buff             (  din_buff           [i]        ),  // input data from buffer
      .din_buff_vld         (  cell_din_buff_vld  [i/16]     ),
      .sos                  (  cell_sos           [i]        ),  // sos = \sum{x^2} for norm, unsigned !!!
      .sos_vld              (  cell_sos_vld       [i]        ),  
      .soi_or_max           (  cell_soi_or_max    [i]        ),  // \sum{x} for norm, q_max for softmax
      .soi_or_max_vld       (  cell_soi_or_max_vld[i]        ),  
      .dout_buff_a          (  dout_buff_a[i]                ),
      .dout_buff_b          (  dout_buff_b[i]                ),
      .dout_buff_vld        (  dout_buff_vld      [i]        ),  
      .dout                 (  cell_dout          [i]        ),  
      .dout_vld             (  cell_dout_vld      [i]        )
    );
  end
endgenerate
//===================================================================================



//````````````````````````````````````` Handshaking `````````````````````````````````
// cell_din_vld
assign  cell_din_vld[3] = last_tile && last_piece && uneven ? 1'b0 : din_exhs ;
assign  cell_din_vld[2] = last_tile && last_piece && uneven && qbit ? 1'b0 : din_exhs  ;
assign  cell_din_vld[1] = last_tile && last_piece && uneven && !qbit ? 1'b0 : din_exhs  ;
assign  cell_din_vld[0] = din_exhs  ;
// cell_din_buff_vld
assign  cell_din_buff_vld[3] = cache_last_tile && cache_last_piece && uneven ? 1'b0 : din_buff_exhs ;
assign  cell_din_buff_vld[2] = cache_last_tile && cache_last_piece && uneven && qbit ? 1'b0 : din_buff_exhs  ;
assign  cell_din_buff_vld[1] = cache_last_tile && cache_last_piece && uneven && !qbit ? 1'b0 : din_buff_exhs  ;
assign  cell_din_buff_vld[0] = din_buff_exhs  ;

assign din_snap_0  = sos_fifo_prog_full[ 0] || soi_fifo_prog_full[ 0] || tmp_fifo_prog_full[ 0] || dma_almost_full  ;
assign din_snap_32 = sos_fifo_prog_full[32] || soi_fifo_prog_full[32] || tmp_fifo_prog_full[32] || dma_almost_full  ;
assign din_snap_48 = sos_fifo_prog_full[48] || soi_fifo_prog_full[48] || tmp_fifo_prog_full[48] || dma_almost_full  ;

always @(*) begin
  casez ( { func, mode[2:0] } )
    4'b?00?, 4'b0010  :  din_rdy_0 = !din_snap_0  ;
    4'b101?           :  din_rdy_0 = !din_snap_0 && avr_u0_svld[0]  ;
    default           :  din_rdy_0 = 1'b0  ;
  endcase
end

always @(*) begin
  casez ( { func, mode[2:0] } )
    4'b?00?, 4'b0010  :  din_rdy_32 = !din_snap_32  ;
    4'b101?           :  din_rdy_32 = !din_snap_32 && avr_u0_svld[2]  ;
    default           :  din_rdy_32 = 1'b0  ;
  endcase
end

always @(*) begin
  casez ( { func, mode[2:0] } )
    4'b?00?, 4'b0010  :  din_rdy_48 = !din_snap_48  ;
    4'b101?           :  din_rdy_48 = !din_snap_48 && avr_u0_svld[3]  ;
    default           :  din_rdy_48 = 1'b0  ;
  endcase
end

always @(*) begin
  casez ( { func, mode[2:0] } )
    4'b0101, 4'b110?  :  din_buff_rdy_0 = !dma_almost_full && avr_u0_svld[0]  ;
    4'b1110           :  din_buff_rdy_0 = !dma_almost_full  ;
    default           :  din_buff_rdy_0 = 1'b0  ;
  endcase
end

always @(*) begin
  casez ( { func, mode[2:0] } )
    4'b0101, 4'b110?  :  din_buff_rdy_32 = !dma_almost_full && avr_u0_svld[2] ;
    4'b1110           :  din_buff_rdy_32 = !dma_almost_full  ;
    default           :  din_buff_rdy_32 = 1'b0  ;
  endcase
end

always @(*) begin
  casez ( { func, mode[2:0] } )
    4'b0101, 4'b110?  :  din_buff_rdy_48 = !dma_almost_full && avr_u0_svld[3] ;
    4'b1110           :  din_buff_rdy_48 = !dma_almost_full  ;
    default           :  din_buff_rdy_48 = 1'b0  ;
  endcase
end

generate
  for (i = 0; i < 4; i = i + 1) begin: gen_cell_coef_rdy
    always @(*) begin
      case ( { func, mode[2:0] } )
        4'h5, 4'hC, 4'hD  :  cell_coef_rdy[i] = din_buff_exhs && din_buff_last[i]  ;
        4'hA, 4'hB        :  cell_coef_rdy[i] = din_exhs && norm_din_last[i]  ;
        default           :  cell_coef_rdy[i] = 1'b0  ;
      endcase
    end
  end
endgenerate
//===================================================================================



//````````````````````````````````````` tmp_fifo ````````````````````````````````````
generate
  for (i = 0; i < 64; i = i + 1) begin: gen_tmp_fifo
    fifo_w36d512 u_tmp_fifo (
      .clk         (  aclk                                      ),            // input wire clk
      .rst         (  rst                                       ),            // input wire rst
      .din         (  { 3'b0, dout_buff_b[i], dout_buff_a[i] }  ),            // input wire [35 : 0] din
      .wr_en       (  dout_buff_vld[i] && !tmp_fifo_full[i]     ),            // input wire wr_en
      .rd_en       (  cell_din_buff_vld  [i/16]                 ),            // input wire rd_en
      .dout        (  tmp_fifo_dout      [i]                    ),            // output wire [35 : 0] dout
      .full        (  tmp_fifo_full      [i]                    ),            // output wire full
      .empty       (  tmp_fifo_empty     [i]                    ),            // output wire empty
      .prog_full   (  tmp_fifo_prog_full [i]                    )             // output wire prog_full
    );
  end
endgenerate

generate
  for (i = 0; i < 64; i = i + 1) begin: gen_din_buff
    assign din_buff[i] = tmp_fifo_dout[i][17:0]  ;
  end
endgenerate
//===================================================================================



//````````````````````````````````````` sos_fifo ````````````````````````````````````
// rd_en needs to be update !!!
generate
  for (i = 0; i < 64; i = i + 1) begin: gen_sos_fifo
    fifo_w23 u_sos_fifo (
      .clk         (  aclk                                    ),            // input wire clk
      .srst        (  rst                                     ),            // input wire rst
      .din         (  cell_sos[i]                             ),            // input wire [35 : 0] din
      .wr_en       (  cell_sos_vld[i] && !sos_fifo_full[i]    ),            // input wire wr_en
      .rd_en       (  cvt_din_vld[i%32] && cvt_din_rdy[i%32]  ),            // input wire rd_en
      .dout        (  sos_fifo_dout      [i]                  ),            // output wire [35 : 0] dout
      .full        (  sos_fifo_full      [i]                  ),            // output wire full
      .empty       (  sos_fifo_empty     [i]                  ),            // output wire empty
      .prog_full   (  sos_fifo_prog_full [i]                  )             // output wire prog_full
    );
  end
endgenerate
//===================================================================================



//```````````````````````````````````` soi_fifo `````````````````````````````````````
// rd_en needs to be update !!!
generate
  for (i = 0; i < 64; i = i + 1) begin: gen_soi_fifo
    fifo_w15 u_soi_fifo (
      .clk         (  aclk                                           ),   
      .srst        (  rst                                            ),   
      .din         (  cell_soi_or_max[i]                             ),   
      .wr_en       (  cell_soi_or_max_vld[i] && !soi_fifo_full[i]    ),   
      .rd_en       (  cvt_din_vld[i%32] && cvt_din_rdy[i%32]         ),   
      .dout        (  soi_fifo_dout      [i]                         ),   
      .full        (  soi_fifo_full      [i]                         ),   
      .empty       (  soi_fifo_empty     [i]                         ),   
      .prog_full   (  soi_fifo_prog_full [i]                         )  
    );
  end
endgenerate
//===================================================================================



//```````````````````````````````` parallel_to_serial ```````````````````````````````
parallel_to_serial #(
  .DATA_W ( SDATA_W )  
) u_cvt
(
  .aclk      (  aclk          )  ,
  .rst       (  rst           )  ,
  .din       (  cvt_din       )  ,  // [32*DATA_W-1 : 0]
  .din_vld   (  cvt_din_vld   )  ,  // [31          : 0]
  .din_rdy   (  cvt_din_rdy   )  ,  // [31          : 0]
  .dout      (  cvt_dout      )  ,  // [DATA_W-1    : 0]
  .dout_vld  (  cvt_dout_vld  )  ,
  .dout_rdy  (  cvt_dout_rdy  )  
);

generate
  for ( i = 0; i < 32; i = i + 1 ) begin: gen_cvt_din
    assign cvt_din[(i+1)*SDATA_W-1 : i*SDATA_W]  =  { sos_fifo_dout[32+i], sos_fifo_dout[i], soi_fifo_dout[32+i], soi_fifo_dout[i] }  ;
  end
endgenerate

generate
  for ( i = 0; i < 32; i = i + 1 ) begin: gen_cvt_din_vld
    assign cvt_din_vld[i]  =  !sos_fifo_empty[32+i] && !sos_fifo_empty[i] && !soi_fifo_empty[32+i] && !soi_fifo_empty[i]  ;
  end
endgenerate
//===================================================================================



//`````````````````````````````````` variance_cell ``````````````````````````````````
variance_cell #(
  .SOS_W  (  SOS_W  ),  // bit width of sum of square
  .SOI_W  (  SOI_W  ),  // bit width of sum of input, required > 11
  .QI_W   (  QI_W   ),
  .CFP_W  (  CFP_W  )     
) u_variance_cell
(
  .aclk               (  aclk                                             ),
  .rst                (  rst                                              ),
  .start_pulse        (  start_pulse                                      ),
  .func               (  func                                             ),  // 1 for norm, 0 for softmax  
  .qbit               (  qbit                                             ),  // 1 for 8-bit, 0 for 16-bit
  .tile               (  accum_unit_num                                   ),  // sample size is tile * cu for every group
  .cunit              (  cunit                                            ),  
  .inv_n              (  inv_n                                            ),  // Q2.23, 1/n = inv_n * 2^ (-inv_n_cut2n)
  .inv_n_cut2n        (  inv_n_cut2n                                      ),  // cut2n of inv_n
  .sos_a              (  cvt_dout[2*(SOI_W+SOS_W)-1 : 2*SOI_W+SOS_W]      ),  // for 16-bit norm, it is \sum{qx^2[30:16]}
  .sos_b              (  cvt_dout[2*SOI_W+SOS_W-1   : 2*SOI_W      ]      ),  // for 16-bit norm, it is \sum{qx^2[15: 0]}
  .soi_or_max_a       (  cvt_dout[2*SOI_W-1         : SOI_W        ]      ),  // \sum{x[15:8]} for norm, q_max for softmax
  .soi_or_max_b       (  cvt_dout[SOI_W-1           : 0            ]      ),  // \sum{x[ 7:0]} for norm, q_max for softmax
  .din_vld            (  cvt_dout_vld                                     ),  // handshaking for above 4 signals
  .din_rdy            (  cvt_dout_rdy                                     ),  
  .variance           (  variance                                         ),  // custom float-point format
  .var_vld            (  var_vld                                          ),  
  .var_snap           (  coef_norm_fifo_prog_full                         ),  
  .mean_or_max        (  mean_or_max                                      ),  // mean(Q16.9) for norm, 12-bit for max
  .mean_or_max_vld    (  mean_or_max_vld                                  ),
  .mean_or_max_snap   (  mean_fifo_prog_full || coef_mean_fifo_prog_full  )  
);

// u_mean_fifo
fifo_w25 u_mean_fifo (
  .clk         (  aclk                                ),    
  .rst         (  rst                                 ),    
  .din         (  mean_or_max                         ),    
  .wr_en       (  mean_or_max_vld && !mean_fifo_full  ),     
  .rd_en       (  cmk_coef_vld && !mean_fifo_empty    ),           
  .dout        (  mean_fifo_dout                      ),    
  .full        (  mean_fifo_full                      ),    
  .empty       (  mean_fifo_empty                     ),    
  .prog_full   (  mean_fifo_prog_full                 )     
);

carmack #(
  .CFP_W  (  CFP_W  )    
) u_carmack
(
  .aclk           (  aclk                 ),
  .rst            (  rst                  ),
  .qbit           (  qbit                 ),
  .func           (  func                 ),      // 1 for layernorm, 0 for softmax
  .var_cfp16      (  variance             ),      // custom floating-point
  .var_cfp16_vld  (  var_vld              ),
  .yqs_coef       (  yqs_coef[CFP_W-1:0]  ),      // custom floating-point
  .coef_norm      (  cmk_coef_norm        ),      // 3 + 25
  .coef_vld       (  cmk_coef_vld         )
);
//===================================================================================



//```````````````````````````````````` coef_mean ````````````````````````````````````
// DSP function: P = A * B + C, pipeline = 4
mult_32x25 u_coef_mean (
  .CLK  (  aclk                                                          ),     
  .A    (  func ? {{7{cmk_coef_norm[24]}}, cmk_coef_norm[24:0]} : 32'b1  ),  // Q9.16
  .B    (  mean_fifo_dout                                                ),  // Q16.9
  .P    (  cmk_coef_mean                                                 )   // output wire [56 : 0] P, signed Q25.25
);

// cmk_coef_mean_vld
always @(posedge aclk) begin
  if ( rst )
    cmk_coef_mean_vld[0] <= 1'b0  ;
  else
    cmk_coef_mean_vld[0] <= cmk_coef_vld && !mean_fifo_empty  ;
end

generate
  for (i = 1; i < 4; i = i + 1) begin
    always @(posedge aclk) begin
      if ( rst )
        cmk_coef_mean_vld[i] <= 1'b0  ;
      else
        cmk_coef_mean_vld[i] <= cmk_coef_mean_vld[i-1]  ;
    end
  end
endgenerate

// norm for 8-bit, Q25.25 -> Q17.16; for 16-bit, Q25.25 -> Q25.8
always @(*) begin
  case ({func, qbit})
    2'b00, 2'b01  : cmk_coef_mean_part = cmk_coef_mean[32: 0]  ;
    2'b11         : cmk_coef_mean_part = cmk_coef_mean[41: 9]  ;
    2'b10         : cmk_coef_mean_part = cmk_coef_mean[49:17]  ;
  endcase
end

// coef_mean_fifo
fifo_w33d1k u_coef_mean_fifo (
  .clk         (  aclk                                                            ), 
  .rst         (  rst                                                             ), 
  .din         (  cmk_coef_mean_part                                              ), 
  .wr_en       (  cmk_coef_mean_vld[3] && !coef_mean_fifo_full                    ), 
  .rd_en       (  !coef_norm_fifo_empty && !coef_mean_fifo_empty && s2p_din_rdy   ), 
  .dout        (  coef_mean_fifo_dout                                             ), 
  .full        (  coef_mean_fifo_full                                             ), 
  .empty       (  coef_mean_fifo_empty                                            ), 
  .prog_full   (  coef_mean_fifo_prog_full                                        )  
);
//===================================================================================



//```````````````````````````````````` coef_norm ````````````````````````````````````
fifo_w28d1k u_coef_norm_fifo (
  .clk         (  aclk                                                           ), 
  .rst         (  rst                                                            ), 
  .din         (  cmk_coef_norm                                                  ), 
  .wr_en       (  cmk_coef_vld && !coef_norm_fifo_full                           ),          
  .rd_en       (  !coef_norm_fifo_empty && !coef_mean_fifo_empty && s2p_din_rdy  ),   
  .dout        (  coef_norm_fifo_dout                                            ), 
  .full        (  coef_norm_fifo_full                                            ), 
  .empty       (  coef_norm_fifo_empty                                           ), 
  .prog_full   (  coef_norm_fifo_prog_full                                       )  
);
//===================================================================================



//```````````````````````````````` serial_to_parallel ```````````````````````````````
// s2p_cap
always @(*) begin
  case ( cunit )
    3'h0     :  s2p_cap = 5'h0  ;
    3'h1     :  s2p_cap = 5'h1  ;
    3'h2     :  s2p_cap = 5'h3  ;
    3'h3     :  s2p_cap = 5'h7  ;
    3'h4     :  s2p_cap = 5'hF  ;
    default  :  s2p_cap = 5'h1F ;
  endcase
end

serial_to_parallel #(
  .DOP_W   (   5    )  , 
  .DIN_W   (  61    )  ,
  .DOUT_W  (  1952  )     // equal to DOP * DIN_W
) u_s2p
(
  .aclk      (  aclk                                            ),
  .rst       (  rst                                             ),
  .s2p_cap   (  s2p_cap                                         ),
  .din       (  { coef_mean_fifo_dout, coef_norm_fifo_dout }    ),  // 33 + 3 + 25
  .din_vld   (  !coef_norm_fifo_empty && !coef_mean_fifo_empty  ),
  .din_rdy   (  s2p_din_rdy                                     ),
  .dout      (  s2p_dout                                        ),
  .dout_vld  (  s2p_dout_vld                                    ),
  .dout_rdy  (  s2p_dout_rdy                                    )
);

assign s2p_dout_rdy = &avr_u0_mrdy  ;

generate
  for (i = 0; i < 4; i = i + 1) begin
    always @(*) begin
      case ( cunit )
        3'h0     :  avr_u0_mdata[i] = { 16{s2p_dout[ 1951 :   1891]} };
        3'h1     :  avr_u0_mdata[i] = {  8{s2p_dout[ 1951 :   1830]} };
        3'h2     :  avr_u0_mdata[i] = {  4{s2p_dout[ 1951 :   1708]} };
        3'h3     :  avr_u0_mdata[i] = {  2{s2p_dout[ 1951 :   1464]} };
        3'h4     :  avr_u0_mdata[i] = s2p_dout[               1951 :               976];
        default  :  avr_u0_mdata[i] = s2p_dout[976 * (i % 2) + 975 : 976 * (i % 2) + 0];
      endcase
    end
  end
endgenerate

generate
  for (i = 0; i < 4; i = i + 1) begin
    assign avr_u0_mrdy[i] = !coef_fifo_full[i];
    assign avr_u0_svld[i] = !coef_fifo_empty[i];
  end
endgenerate

generate
  for (i = 0; i < 4; i = i + 1) begin: gen_coef_fifo
    fifo_w976d16 u_coef_fifo (
      .clk    (  aclk                               ),
      .srst   (  rst                                ),
      .din    (  avr_u0_mdata[i]                    ),
      .wr_en  (  s2p_dout_vld && s2p_dout_rdy       ),
      .rd_en  (  avr_u0_svld[i] && cell_coef_rdy[i] ),
      .dout   (  avr_u0_sdata[i]                    ),
      .full   (  coef_fifo_full[i]                  ),
      .empty  (  coef_fifo_empty[i]                 ) 
    );
  end
endgenerate

generate
  for (i = 0; i < 64; i = i + 1) begin
    assign q_max[i] = avr_u0_sdata[i/16][61 * (i % 16) + QI_W + 27 : 61 * (i % 16) + 28]  ;
  end
endgenerate

generate
  for (i = 0; i < 64; i = i + 1) begin
    assign coef_norm[i] = avr_u0_sdata[i/16][61 * (i % 16) + 24 : 61 * (i % 16) + 0]  ;
  end
endgenerate

generate
  for (i = 0; i < 64; i = i + 1) begin
    assign coef_cut2n[i] = avr_u0_sdata[i/16][61 * (i % 16) + 27 : 61 * (i % 16) + 25]  ;
  end
endgenerate

generate
  for (i = 0; i < 64; i = i + 1) begin
    assign coef_mean[i] = avr_u0_sdata[i/16][61 * (i % 16) + 60 : 61 * (i % 16) + 28]  ;
  end
endgenerate
//===================================================================================



//```````````````````````````````````` core dout ````````````````````````````````````
// core_to_dma_data
generate
  for (i = 0; i < 32; i = i + 1) begin
    assign core_to_dma_data[16 * i + 15 : 16 * i + 0] = qbit ? { cell_dout[2 * i + 1][15 : 8] , cell_dout[2 * i][15 : 8] } : cell_dout[i + 32][15 : 0]  ;
  end
endgenerate

// core_to_dma_vld
assign core_to_dma_vld = cell_dout_vld[0]  ;
//===================================================================================

endmodule
