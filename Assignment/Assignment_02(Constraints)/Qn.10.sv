class packet ;
  rand bit [4:0]val[20];
  
  constraint even_sum3{
    unique{val};
    foreach (val[i])
      (val[i]+val[i+1]+val[i+2])%2==0;
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
