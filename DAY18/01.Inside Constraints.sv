class cls;
  rand bit [3:0]var1;
  constraint c1{(var1 inside{[3:9]});}
endclass

module mod;
  initial begin
    int i;
    cls pkt;
    pkt=new();
    
    $display("----Output for the inside constraint----");
    $display("----------------------------------------");
    
    for(int i=0;i<7;i++)
      begin
        pkt.randomize();
        $display("[%0t] @Iteration=%0d--------->var1=%0d",$time,i,pkt.var1);
      end
    $display("-------------------------------------------");
  end
endmodule


///////////////////////OUTPUT/////////////////////////////////

# KERNEL: ----------------------------------------
# KERNEL: [0] @Iteration=0--------->var1=7
# KERNEL: [0] @Iteration=1--------->var1=8
# KERNEL: [0] @Iteration=2--------->var1=7
# KERNEL: [0] @Iteration=3--------->var1=9
# KERNEL: [0] @Iteration=4--------->var1=8
# KERNEL: [0] @Iteration=5--------->var1=5
# KERNEL: [0] @Iteration=6--------->var1=4
# KERNEL: -------------------------------------------

///////////////////////////////////////////////////////////////////
