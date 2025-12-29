class generator;
  
  rand bit[4:0]a;
  int i;
  
  function void pre_randomize();
    if(i%2==0)
      begin
        rand_mode(0);
        $display("\t Stopping randomization");
      end
    else
      rand_mode(1);
    i++;
  endfunction
endclass

module pre_rand();
  generator gen=new();
  
  initial begin
    for(int i=1;i<=10;i++)
      begin
        $display("\t[%0t]Calling Randomize........",$time);
        gen.randomize();
        #1;
        $display("\t[%0t]@ Iteration:%0d ----->  a:%0d",$time,i,gen.a);
      end
  end
endmodule


///////////////////OUTPUT//////////////////////////////////////

# KERNEL: 	[0]Calling Randomize........
# KERNEL: 	 Stopping randomization
# KERNEL: 	[1]@ Iteration:1 ----->  a:0
# KERNEL: 	[1]Calling Randomize........
# KERNEL: 	[2]@ Iteration:2 ----->  a:11
# KERNEL: 	[2]Calling Randomize........
# KERNEL: 	 Stopping randomization
# KERNEL: 	[3]@ Iteration:3 ----->  a:11
# KERNEL: 	[3]Calling Randomize........
# KERNEL: 	[4]@ Iteration:4 ----->  a:17
# KERNEL: 	[4]Calling Randomize........
# KERNEL: 	 Stopping randomization
# KERNEL: 	[5]@ Iteration:5 ----->  a:17
# KERNEL: 	[5]Calling Randomize........
# KERNEL: 	[6]@ Iteration:6 ----->  a:19
# KERNEL: 	[6]Calling Randomize........
# KERNEL: 	 Stopping randomization
# KERNEL: 	[7]@ Iteration:7 ----->  a:19
# KERNEL: 	[7]Calling Randomize........
# KERNEL: 	[8]@ Iteration:8 ----->  a:24
# KERNEL: 	[8]Calling Randomize........
# KERNEL: 	 Stopping randomization
# KERNEL: 	[9]@ Iteration:9 ----->  a:24
# KERNEL: 	[9]Calling Randomize........
# KERNEL: 	[10]@ Iteration:10 ----->  a:27

///////////////////////////////////////////////////////////

