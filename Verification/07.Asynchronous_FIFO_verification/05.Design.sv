`include "synchronizer.sv"
`include "write_pointer_handler.sv"
`include "read_pointer_handler.sv"
`include "memory.sv"

module async_fifo #(parameter DEPTH=8,DATA_WIDTH=8)
  (
  input logic wclk,
  input logic rclk,
  input logic wrstn,
  input logic rrstn,
  input logic w_en,
  input logic r_en,
  input logic [DATA_WIDTH-1:0]data_in,
  output logic [DATA_WIDTH-1:0]data_out,
  output logic full,
  output logic empty
  );
  
  
  parameter PTR_WIDTH = $clog2(DEPTH);
  
  logic [PTR_WIDTH:0]g_wptr_sync;
  logic [PTR_WIDTH:0]g_rptr_sync;
  logic [PTR_WIDTH:0]b_wptr;
  logic [PTR_WIDTH:0]b_rptr;
  logic [PTR_WIDTH:0]g_wptr;
  logic [PTR_WIDTH:0]g_rptr;
  
  
  synchronizer #(PTR_WIDTH) sync_wptr(rclk,rrstn,g_wptr,g_wptr_sync);
  synchronizer #(PTR_WIDTH) sync_rptr(wclk,wrstn,g_rptr,g_rptr_sync);
  
  wptr_handler #(PTR_WIDTH) wptr_hlr(wclk,wrstn,w_en,g_rptr_sync,b_wptr,g_wptr,full);
  rptr_handler #(PTR_WIDTH) rptr_hlr(rclk,rrstn,r_en,g_wptr_sync,b_rptr,g_rptr,empty);
  
  fifo_mem memo(wclk,rclk,w_en,r_en,b_wptr,b_rptr,data_in,full,empty,data_out);
endmodule                 
