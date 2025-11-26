class packet;
  rand bit [15:0] data;

  
  constraint no_consecutive {
    
    
    foreach (data[i])
      if (i < 15)
        !(data[i] && data[i+1]);   
  }

endclass

module tb;
  packet pkt;

  initial begin
    pkt = new();

    repeat(10) begin
      pkt.randomize();
      $display("data=%b",pkt.data);
    end

    $finish;
  end
endmodule
