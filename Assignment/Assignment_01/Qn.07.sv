class packet;
  logic [7:0]  addr;
  logic [15:0] data;

  function new();
    
  endfunction
endclass

module dynamic_objects;
  packet pkt = new();

  initial begin
    pkt.addr = 8'hA5;
    pkt.data = 16'hFFFF;
    $display("Packet.addr=%0h  and Packet.data=%0h",pkt.addr,pkt.data);

    #20;
    pkt = null;   

    if (pkt == null) begin
      $display("Packet deleted and handle is null");
    end
  end
endmodule
