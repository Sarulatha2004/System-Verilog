class packet;
  
  rand bit [3:0] val[15];
  
  constraint cons{
    foreach(val[i])
      val[i]==(i^(i>>1));
  }
endclass

module gray_code;
  packet pkt;
  
  initial begin
    pkt=new();
           pkt.randomize();
    
    foreach( pkt.val[i]) begin
 
    
      $display("Value[%0d]=%0b",i,pkt.val[i]);
    end
  end
endmodule
