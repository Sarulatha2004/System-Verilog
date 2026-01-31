class packet;
  
  rand int data[8];
  
  constraint cons1{ 
    foreach(data[i])
      data[i]==((i+1)*5)*((i%2==0)?1:-1);
  }
  
endclass

module tb;
  
  packet pkt;
  
  initial begin
    
    pkt=new();
    
    foreach(pkt.data[i]) begin
    if(!pkt.randomize())
      $display("Randomization failed");
    else
      $display("Generated data[%0d]=%0d",i,pkt.data[i]);
    end
  end
endmodule


////////////////////Output//////////////////////////////

# KERNEL: Generated data[0]=5
# KERNEL: Generated data[1]=-10
# KERNEL: Generated data[2]=15
# KERNEL: Generated data[3]=-20
# KERNEL: Generated data[4]=25
# KERNEL: Generated data[5]=-30
# KERNEL: Generated data[6]=35
# KERNEL: Generated data[7]=-40


////////////////////////////////////////////////////
