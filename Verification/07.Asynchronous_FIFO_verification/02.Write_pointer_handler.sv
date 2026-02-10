module wptr_handler #(parameter PTR_WIDTH=3)
  (
    input logic wclk,
    input logic wrstn,
    input logic w_en,
    input logic [PTR_WIDTH:0]g_rptr_sync,
    output logic [PTR_WIDTH:0]b_wptr,
    output logic [PTR_WIDTH:0]g_wptr,
    output logic full
  );
  
  logic [PTR_WIDTH:0]b_wptr_nxt;
  logic [PTR_WIDTH:0]g_wptr_nxt;
  
  logic wfull;
  
  
  assign b_wptr_nxt = b_wptr + (w_en & !full);
  assign g_wptr_nxt = (b_wptr_nxt>>1)^b_wptr_nxt;
  
  
  always_ff @(posedge wclk or negedge wrstn)
    
    begin
      if(!wrstn)
        begin
          b_wptr<=0;
          g_wptr<=0;
          full<=0;
        end
      else
        begin
          b_wptr<=b_wptr_nxt;
          g_wptr<=g_wptr_nxt;
          full<=wfull;
        end
    end
  assign wfull = (g_wptr_nxt == {~g_rptr_sync[PTR_WIDTH:PTR_WIDTH-1],g_rptr_sync[PTR_WIDTH-2:0]});
  
endmodule
  
