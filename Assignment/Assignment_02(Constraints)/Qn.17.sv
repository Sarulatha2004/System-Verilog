class packet;
  
  randc bit [5:0] val;
  
  constraint cons1 { val>10; val<30; }
  constraint cons2 { val%2==0;}
  
endclass

module tb;
  
  packet pkt;
  initial begin
    
    pkt=new();
    
    repeat(10) begin
      pkt.randomize();
      
      $display("Generated data=%0d",pkt.val);
    end
  end
endmodule
    
  
  
  ////////////////OUTPUT///////////////////////


# KERNEL: Generated data=18
# KERNEL: Generated data=26
# KERNEL: Generated data=28
# KERNEL: Generated data=24
# KERNEL: Generated data=22
# KERNEL: Generated data=16
# KERNEL: Generated data=12
# KERNEL: Generated data=14
# KERNEL: Generated data=20
# KERNEL: Generated data=16



//////////////////////////////////////////////////
