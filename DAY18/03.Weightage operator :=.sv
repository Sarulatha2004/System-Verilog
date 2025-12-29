class cls;
  rand bit [3:0]val1;
  constraint c1{val1 dist {1:=30,[2:5]:=40,6:=70,7:=20};}
endclass

module top;
  
  initial begin
    int i;
    cls pkt;
    pkt=new();
    
    $display("----Output for :=operator------------------");
    
    for(int i=0;i<16; i++)
      begin
        pkt.randomize();
        
        $display("[%0t] @Iteration %0d -------->value1=%0d",$time,i,pkt.val1);
      end
  end
endmodule




/////////////////output//////////////////////////////////////////////


 KERNEL: ----Output for :=operator------------------
# KERNEL: [0] @Iteration 0 -------->value1=3
# KERNEL: [0] @Iteration 1 -------->value1=6
# KERNEL: [0] @Iteration 2 -------->value1=4
# KERNEL: [0] @Iteration 3 -------->value1=5
# KERNEL: [0] @Iteration 4 -------->value1=4
# KERNEL: [0] @Iteration 5 -------->value1=4
# KERNEL: [0] @Iteration 6 -------->value1=4
# KERNEL: [0] @Iteration 7 -------->value1=3
# KERNEL: [0] @Iteration 8 -------->value1=6
# KERNEL: [0] @Iteration 9 -------->value1=3
# KERNEL: [0] @Iteration 10 -------->value1=4
# KERNEL: [0] @Iteration 11 -------->value1=3
# KERNEL: [0] @Iteration 12 -------->value1=3
# KERNEL: [0] @Iteration 13 -------->value1=7
# KERNEL: [0] @Iteration 14 -------->value1=6
# KERNEL: [0] @Iteration 15 -------->value1=5


   ///////////////////////////////////////////////////////////////////
