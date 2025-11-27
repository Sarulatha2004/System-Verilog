class packet;
  rand bit [3:0]val;
  bit [3:0]last[5];
  
  constraint no_repeat{
    foreach (last[i])
    {
      val !=last[i];
    }
  }
endclass
module tb;
  packet pkt;
      
initial begin
   pkt=new();
  repeat(20) begin
    pkt.randomize();
    $display("Generated =%0d",pkt.val);
    
    for(int i=4;i>0;i--)
      pkt.last[i]=pkt.last[i-1];
    
    pkt.last[0]=pkt.val;
  end
end
    endmodule
