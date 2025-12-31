class cls;
  rand bit[3:0]a;
  constraint cons {a>5;}
endclass

module soft_without_conflict;
  cls pkt;
  
  initial begin
    pkt=new();
    $display("\n\tOutput of soft with conflict");
    
    for(int i=0;i<5;i++)
      begin
        pkt.randomize() with {a<5;};
        $display("\n\t Iteration=%0d a=%0d",i,pkt.a);
      end
    $display("\n\t Using soft constraint to solve conflict issue");
    
    for(int i=0;i<5;i++)
      begin
        pkt.randomize() with {soft a<5;};
        $display("\n\t Iteration=%0d,a=%0d",i,pkt.a);
      end
  end
endmodule

/////////////////////////OUTPUT/////////////////////////////////

# KERNEL: 	 Output of soft with conflict
# RCKERNEL: Warning: RC_0024 testbench.sv(44): Randomization failed. The condition of randomize call cannot be satisfied.
# RCKERNEL: Info: RC_0109 testbench.sv(44): ... after reduction pkt.a to 3'(pkt.a)
# RCKERNEL: Info: RC_0103 testbench.sv(44): ... the following condition cannot be met: (5<pkt.a)&&(pkt.a<5)
# RCKERNEL: Info: RC_1007 testbench.sv(30): ... see class 'cls' declaration.
# KERNEL: 
# KERNEL: 	 Iteration=0 a=0
# KERNEL: 
# KERNEL: 	 Iteration=1 a=0
# KERNEL: 
# KERNEL: 	 Iteration=2 a=0
# KERNEL: 
# KERNEL: 	 Iteration=3 a=0
# KERNEL: 
# KERNEL: 	 Iteration=4 a=0
# KERNEL: 
# KERNEL: 	 Using soft constraint to solve conflict issue
# KERNEL: 
# KERNEL: 	 Iteration=0,a=14
# KERNEL: 
# KERNEL: 	 Iteration=1,a=10
# KERNEL: 
# KERNEL: 	 Iteration=2,a=12
# KERNEL: 
# KERNEL: 	 Iteration=3,a=13
# KERNEL: 
# KERNEL: 	 Iteration=4,a=12

  ////////////////////////////////////////////////////////////////////////////////////

