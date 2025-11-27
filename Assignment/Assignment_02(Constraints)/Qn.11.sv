class packet;
  rand int x;
  constraint c1{x dist {[0:100]:/1,
                      [101:255]:/3,
                      [256:511]:/6
             };
             }
endclass

module tb;
  packet pkt;
  initial begin
    pkt=new();
    repeat(10) begin
    pkt.randomize();
      $display("Generated value:%d",pkt.x);
    end
  end
endmodule
    
