module rptr_handler#(parameter PTR_WIDTH=3)
  (
    input logic rclk,
    input logic rrstn,
    input logic r_en,
    input logic [PTR_WIDTH:0]g_wptr_sync,
    output logic [PTR_WIDTH:0]b_rptr,
    output logic [PTR_WIDTH:0]g_rptr,
    output logic empty
  );
  
  
  logic [PTR_WIDTH:0]b_rptr_nxt;
  logic [PTR_WIDTH:0]g_rptr_nxt;
  logic rempty;
  
  
  assign b_rptr_nxt = b_rptr +(r_en & !empty);
  assign g_rptr_nxt = (b_rptr_nxt>>1)^b_rptr_nxt;
  assign rempty     = (g_wptr_sync == g_rptr_nxt);
  
  
  always_ff @(posedge rclk or negedge rrstn)
    begin
      
      if(!rrstn) begin
        b_rptr <= 0;
        g_rptr <= 0;
        empty  <= 1;
      end
      
      else begin
        b_rptr <= b_rptr_nxt;
        g_rptr <= g_rptr_nxt;
        empty  <= rempty;
      end
      
    end
  
endmodule
  
  
    
    
