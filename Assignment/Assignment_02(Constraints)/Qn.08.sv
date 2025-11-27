class packet ;
  rand bit [3:0]val[20];
  
  constraint eveninodd{
    foreach (val[i])
      if(i%2==0)
        val[i]%2==0;
  }endclass
  module tb;
    packet pkt;
    initial begin
      pkt=new();
        pkt.randomize();
        foreach(pkt.val[j])
          $display("val[%0d]=%d",j,pkt.val[j]);
    end
  endmodule
