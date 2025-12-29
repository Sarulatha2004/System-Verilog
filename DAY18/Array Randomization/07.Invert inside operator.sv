class cls;
  rand bit [3:0]var1;
  constraint c1{!(var1 inside{[3:9]});}
endclass

module mod;
  initial begin
    int i;
    cls pkt;
    pkt=new();
    
    $display("----Output for the Invert inside constraint----");
    $display("----------------------------------------");
    
    for(int i=0;i<7;i++)
      begin
        pkt.randomize();
        $display("[%0t] @Iteration=%0d--------->var1=%0d",$time,i,pkt.var1);
      end
    $display("-------------------------------------------");
  end
endmodule

///////////////////////output///////////////////////////


# KERNEL: ----------------------------------------
# KERNEL: [0] @Iteration=0--------->var1=15
# KERNEL: [0] @Iteration=1--------->var1=0
# KERNEL: [0] @Iteration=2--------->var1=15
# KERNEL: [0] @Iteration=3--------->var1=1
# KERNEL: [0] @Iteration=4--------->var1=0
# KERNEL: [0] @Iteration=5--------->var1=13
# KERNEL: [0] @Iteration=6--------->var1=14
# KERNEL: -------------------------------------------

////////////////////////////////////////////////////////////////
