class cls;
  rand bit [3:0]a;
  rand bit [3:0]b;
  
  constraint c1 { (a inside {[1:5]}) -> (b<8);}
endclass

module top;
  initial begin
    cls pkt;
    
    pkt=new();
    $display("\n");
     $display("------------------------------------------------");
    
    $display("-----------Output for Implication Operator------");
    $display("------------------------------------------------");
    $display("\n");
    
    
    for(int i=0;i<10;i++)
    begin
      pkt.randomize();
      $display("[%0t] @ Iteration:%0d------>a=%0d->b=%0d",$time,i,pkt.a,pkt.b);
    end
    $display("\n");
    
    $display("----------------------------------------");
  end
endmodule


////////////////Output//////////////////////////////////
# KERNEL: ------------------------------------------------
# KERNEL: -----------Output for Implication Operator------
# KERNEL: ------------------------------------------------
# KERNEL: 
# KERNEL: 
# KERNEL: [0] @ Iteration:0------>a=14->b=12
# KERNEL: [0] @ Iteration:1------>a=0->b=8
# KERNEL: [0] @ Iteration:2------>a=13->b=2
# KERNEL: [0] @ Iteration:3------>a=12->b=14
# KERNEL: [0] @ Iteration:4------>a=13->b=4
# KERNEL: [0] @ Iteration:5------>a=10->b=12
# KERNEL: [0] @ Iteration:6------>a=13->b=0
# KERNEL: [0] @ Iteration:7------>a=0->b=6
# KERNEL: [0] @ Iteration:8------>a=13->b=9
# KERNEL: [0] @ Iteration:9------>a=1->b=4
# KERNEL: 
# KERNEL: 
# KERNEL: ----------------------------------------

  /////////////////////////////////////////////////////

