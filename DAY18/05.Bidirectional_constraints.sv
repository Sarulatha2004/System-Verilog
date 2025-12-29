class cls;
  
  rand bit [3:0]a;
  
  constraint c1 {a>5;a<15;}
  constraint c2 {a>10;}
endclass

module const_mod;
  
  initial begin
    cls pkt;
    pkt=new();
    $display("------------------------------------------------------------------------");
    $display("---------------Output for bidirectional constraint--------------");
    $display("------------------------------------------------------------------------");
    
    for(int i=1; i<15;i++)
      begin
        pkt.randomize();
        
        $display("[%0t] @Iteration:%0d--------->'a'=%0d",$time,i,pkt.a);

      end
     $display("--------------------------------------------");
  end
endmodule


////////////////////////output///////////////////////////////////

#KERNEL: ------------------------------------------------------------------------
# KERNEL: ---------------Output for bidirectional constraint--------------
# KERNEL: ------------------------------------------------------------------------
# KERNEL: [0] @Iteration:1--------->'a'=14
# KERNEL: [0] @Iteration:2--------->'a'=12
# KERNEL: [0] @Iteration:3--------->'a'=14
# KERNEL: [0] @Iteration:4--------->'a'=11
# KERNEL: [0] @Iteration:5--------->'a'=12
# KERNEL: [0] @Iteration:6--------->'a'=12
# KERNEL: [0] @Iteration:7--------->'a'=11
# KERNEL: [0] @Iteration:8--------->'a'=11
# KERNEL: [0] @Iteration:9--------->'a'=13
# KERNEL: [0] @Iteration:10--------->'a'=13
# KERNEL: [0] @Iteration:11--------->'a'=13
# KERNEL: [0] @Iteration:12--------->'a'=13
# KERNEL: [0] @Iteration:13--------->'a'=14
# KERNEL: [0] @Iteration:14--------->'a'=14
# KERNEL: --------------------------------------------

