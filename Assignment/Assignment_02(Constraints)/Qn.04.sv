class packet;
  rand bit[60:0]data;
  constraint c1{
    data[31:0]=='1;
    data[60:32]=='0;
  }
endclass



module tb;
  packet pkt=new();
  
  initial begin
   
    pkt.randomize();
    $display("Generated data =%b",pkt.data);
 
  end
endmodule
