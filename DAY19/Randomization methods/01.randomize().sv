class generator;
  rand bit [4:0]a;
  constraint cons { a==5; }
endclass

module randomization();
  generator gen=new();
  
  initial begin
    $display("\t Calling Randomize.........");
    
    if(gen.randomize())
      $display("\t a:%0d \t Randomizaton successful",gen.a);
    else
      $display("\t a:%0d \t Randomizaton Failed",gen.a);
    
    $display("\t Calling Randomize..........");
    
    if(gen.randomize() with {a==2;})
      $display("\t a:%0d \t Randomizaton successful",gen.a);
    else
      $display("\t a:%0d \t Randomizaton Failed",gen.a);
    
  end
endmodule

///////////////////////////OUTPUT/////////////////////////////////////

# KERNEL: 	 Calling Randomize.........
# KERNEL: 	 a:5 	 Randomizaton successful
# KERNEL: 	 Calling Randomize..........
# RCKERNEL: Warning: RC_0024 testbench.sv(19): Randomization failed. The condition of randomize call cannot be satisfied.
# RCKERNEL: Info: RC_0109 testbench.sv(19): ... after reduction gen.a to 5
# RCKERNEL: Info: RC_0103 testbench.sv(19): ... the following condition cannot be met: (5'(5)==2)
# RCKERNEL: Info: RC_1007 testbench.sv(1): ... see class 'generator' declaration.
# KERNEL: 	 a:5 	 Randomizaton Failed

  ///////////////////////////////////////////////////////////////////////
    
    
    
    
    

      
