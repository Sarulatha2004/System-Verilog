class cls;
  rand bit [3:0]a;
  rand bit [1:0]b;
  
  constraint c1{
    if(a inside {[3:9]})
      b==1;
    else
      b==0;
  }
endclass

module mod;
  cls pkt=new();
  initial begin
    $display("-----------------------------------------------");
    $display("-----Output for the IF-ELSE constraint---------");
    $display("-----------------------------------------------");
    $display("\n");
    
    for(int i=0;i<10;i++)
      begin
        pkt.randomize();
        $display("[%0t] @ Iteration : %0d---------> a=%0d b=%0d",$time,i,pkt.a,pkt.b);
      end
    $display("----------------------------------------------");
  end
endmodule



////////////////////////OUTPUT////////////////////////////////

# KERNEL: -----------------------------------------------
# KERNEL: -----Output for the IF-ELSE constraint---------
# KERNEL: -----------------------------------------------
# KERNEL: 
# KERNEL: 
# KERNEL: [0] @ Iteration : 0---------> a=7 b=1
# KERNEL: [0] @ Iteration : 1---------> a=8 b=1
# KERNEL: [0] @ Iteration : 2---------> a=6 b=1
# KERNEL: [0] @ Iteration : 3---------> a=7 b=1
# KERNEL: [0] @ Iteration : 4---------> a=4 b=1
# KERNEL: [0] @ Iteration : 5---------> a=14 b=0
# KERNEL: [0] @ Iteration : 6---------> a=1 b=0
# KERNEL: [0] @ Iteration : 7---------> a=7 b=1
# KERNEL: [0] @ Iteration : 8---------> a=7 b=1
# KERNEL: [0] @ Iteration : 9---------> a=9 b=1
# KERNEL: ----------------------------------------------

  ////////////////////////////////////////////////////////////////


