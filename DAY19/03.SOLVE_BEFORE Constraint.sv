class without_sol_bef;
  rand bit a;
  rand bit [3:0]b;
  constraint c1{
    a==1 -> b==1;
  }
endclass

class with_sol_bef;
  rand bit a;
  rand bit [3:0]b;
  constraint c2{
    a==1 -> b==1;
    solve a before b;
  }
endclass

module sol_bef;
  
  without_sol_bef gen1=new();
  with_sol_bef gen2=new();
  
  initial begin
    
    $display("-------------------------------------------");
    
    for(int i=1;i<=20;i++)
      begin
        gen1.randomize();
        #1;
        $display("\t[%0t]@ Iteration=%0d ----->a=%0d \t b=%0d",$time,i,gen1.a,gen1.b);
      end
    
    $display("-------------------------------------------");
    
    for(int i=1;i<=20;i++)
      begin
        gen2.randomize();
        #1;
        $display("\t[%0t]@ Iteration=%0d ----->a=%0d \t b=%0d",$time,i,gen2.a,gen2.b);
      end
    
    $display("-------------------------------------------");
    
  end
endmodule
    
        

//////////////////////OUTPUT///////////////////////////////////
# KERNEL: -------------------------------------------
# KERNEL: 	[1]@ Iteration=1 ----->a=0 	 b=13
# KERNEL: 	[2]@ Iteration=2 ----->a=0 	 b=11
# KERNEL: 	[3]@ Iteration=3 ----->a=0 	 b=10
# KERNEL: 	[4]@ Iteration=4 ----->a=0 	 b=13
# KERNEL: 	[5]@ Iteration=5 ----->a=0 	 b=13
# KERNEL: 	[6]@ Iteration=6 ----->a=0 	 b=4
# KERNEL: 	[7]@ Iteration=7 ----->a=0 	 b=9
# KERNEL: 	[8]@ Iteration=8 ----->a=0 	 b=11
# KERNEL: 	[9]@ Iteration=9 ----->a=0 	 b=14
# KERNEL: 	[10]@ Iteration=10 ----->a=0 	 b=13
# KERNEL: 	[11]@ Iteration=11 ----->a=0 	 b=15
# KERNEL: 	[12]@ Iteration=12 ----->a=0 	 b=13
# KERNEL: 	[13]@ Iteration=13 ----->a=0 	 b=0
# KERNEL: 	[14]@ Iteration=14 ----->a=0 	 b=2
# KERNEL: 	[15]@ Iteration=15 ----->a=0 	 b=9
# KERNEL: 	[16]@ Iteration=16 ----->a=0 	 b=3
# KERNEL: 	[17]@ Iteration=17 ----->a=0 	 b=6
# KERNEL: 	[18]@ Iteration=18 ----->a=0 	 b=8
# KERNEL: 	[19]@ Iteration=19 ----->a=0 	 b=11
# KERNEL: 	[20]@ Iteration=20 ----->a=1 	 b=1
# KERNEL: -------------------------------------------
# KERNEL: 	[21]@ Iteration=1 ----->a=1 	 b=1
# KERNEL: 	[22]@ Iteration=2 ----->a=1 	 b=1
# KERNEL: 	[23]@ Iteration=3 ----->a=0 	 b=11
# KERNEL: 	[24]@ Iteration=4 ----->a=1 	 b=1
# KERNEL: 	[25]@ Iteration=5 ----->a=0 	 b=1
# KERNEL: 	[26]@ Iteration=6 ----->a=1 	 b=1
# KERNEL: 	[27]@ Iteration=7 ----->a=0 	 b=7
# KERNEL: 	[28]@ Iteration=8 ----->a=0 	 b=6
# KERNEL: 	[29]@ Iteration=9 ----->a=1 	 b=1
# KERNEL: 	[30]@ Iteration=10 ----->a=1 	 b=1
# KERNEL: 	[31]@ Iteration=11 ----->a=1 	 b=1
# KERNEL: 	[32]@ Iteration=12 ----->a=1 	 b=1
# KERNEL: 	[33]@ Iteration=13 ----->a=1 	 b=1
# KERNEL: 	[34]@ Iteration=14 ----->a=1 	 b=1
# KERNEL: 	[35]@ Iteration=15 ----->a=1 	 b=1
# KERNEL: 	[36]@ Iteration=16 ----->a=1 	 b=1
# KERNEL: 	[37]@ Iteration=17 ----->a=1 	 b=1
# KERNEL: 	[38]@ Iteration=18 ----->a=0 	 b=15
# KERNEL: 	[39]@ Iteration=19 ----->a=0 	 b=11
# KERNEL: 	[40]@ Iteration=20 ----->a=0 	 b=5
# KERNEL: -------------------------------------------

////////////////////////////////////////////////////////////
