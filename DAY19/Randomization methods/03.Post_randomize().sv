class generator;  

  rand bit [2:0] value;  
  int check;  

  constraint exp { value > 5; }  

  function void pre_randomize();  
    $display("\tI'm in pre_randomize function");  
    check = 0;  
  endfunction  

  function void post_randomize();  
    $display("\tI'm in post_randomize function");  
    check = 1;
  endfunction  
endclass  


module post_randomization();  

  generator gen = new();  
  int check;  

  initial begin  

    $display("\t[%0t] Calling Randomize....", $time);  
    check = gen.randomize();  
    #1 $display("\t[%0t] @ iteration: 1 -----> value: %0d ", $time, gen.value);  

    
    if (check == 1)  
      $display("\tRandomization is performed");  
    else  
      $display("\tRandomization is not performed"); 
    $display("---------------------------------------------------------");
          

    $display("\t[%0t] Calling Randomize....", $time);  
    check = gen.randomize() with { value < 5; };  
    #1 $display("\t[%0t] @ iteration: 2 -----> value: %0d ", $time, gen.value);  


    if (check == 1)  
      $display("\tRandomization is performed");  
    else  
      $display("\tRandomization is not performed");
    $display("---------------------------------------------------------");

    $display("\t[%0t] Calling Randomize....", $time);  
    check = gen.randomize() with { value == 7; };  
    #1 $display("\t[%0t] @ iteration: 2 -----> value: %0d ", $time, gen.value);  


    if (check == 1)  
      $display("\tRandomization is performed");  
    else  
      $display("\tRandomization is not performed");  
    

  end  
endmodule


////////////////OUTPUT/////////////////////////////

# KERNEL: 	[0] Calling Randomize....
# KERNEL: 	I'm in pre_randomize function
# KERNEL: 	I'm in post_randomize function
# KERNEL: 	[1] @ iteration: 1 -----> value: 7 
# KERNEL: 	Randomization is performed
# KERNEL: ---------------------------------------------------------
# KERNEL: 	[1] Calling Randomize....
# KERNEL: 	I'm in pre_randomize function
# RCKERNEL: Warning: RC_0024 testbench.sv(104): Randomization failed. The condition of randomize call cannot be satisfied.
# RCKERNEL: Info: RC_0103 testbench.sv(104): ... the following condition cannot be met: (5<gen.value)&&(gen.value<5)
# RCKERNEL: Info: RC_1007 testbench.sv(65): ... see class 'generator' declaration.
# KERNEL: 	[2] @ iteration: 2 -----> value: 7 
# KERNEL: 	Randomization is not performed
# KERNEL: ---------------------------------------------------------
# KERNEL: 	[2] Calling Randomize....
# KERNEL: 	I'm in pre_randomize function
# KERNEL: 	I'm in post_randomize function
# KERNEL: 	[3] @ iteration: 2 -----> value: 7 
# KERNEL: 	Randomization is performed

  ///////////////////////////////////////////////////////



