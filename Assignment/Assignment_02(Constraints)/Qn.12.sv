class packet;
  rand bit [4:0]val[15];
  constraint c{
    foreach(val[i])
      if(i<14)
        val[i]<val[i+1];
  }
endclass

module tb;
  packet pkt;
  initial begin
    pkt=new();
        pkt.randomize();
      foreach(pkt.val[i])
  
        $display("Generated data=%d",pkt.val[i]);
  end
endmodule
