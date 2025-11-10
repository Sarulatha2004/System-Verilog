module packed_vs_unpacked;

  // ---------- Packed Struct ----------
  typedef struct packed {
    logic [3:0] id;
    logic [7:0] data;
    logic       valid;
  } pkt_packed_t;

  // ---------- Unpacked Struct ----------
  typedef struct {
    logic [3:0] id;
    logic [7:0] data;
    logic       valid;
  } pkt_unpacked_t;

  pkt_packed_t   pkt_p;   // packed variable
  pkt_unpacked_t pkt_u;   // unpacked variable

  logic [12:0] bit_bus;  

  initial begin
   
    pkt_p.id     = 4'hA; 
    pkt_p.data   = 8'h55;   
    pkt_p.valid  = 1'b1;

    pkt_u.id     = 4'hA;
    pkt_u.data   = 8'h55;
    pkt_u.valid  = 1'b1;

    
    $display("------ PACKED STRUCT ------");
    $display("pkt_p.id    = %h", pkt_p.id);
    $display("pkt_p.data  = %h", pkt_p.data);
    $display("pkt_p.valid = %b", pkt_p.valid);
    
    bit_bus = pkt_p;  
    $display("pkt_p as bit vector = %b", bit_bus);

  
    $display("Lower 4 bits of pkt_p (id field) = %b", pkt_p[12:9]);

    $display("\n------ UNPACKED STRUCT ------");
    $display("pkt_u.id    = %h", pkt_u.id);
    $display("pkt_u.data  = %h", pkt_u.data);
    $display("pkt_u.valid = %b", pkt_u.valid);
    
    
    


    bit_bus = {pkt_u.id, pkt_u.data, pkt_u.valid};
    $display("Manually concatenated unpacked struct = %b", bit_bus);
  end

endmodule
