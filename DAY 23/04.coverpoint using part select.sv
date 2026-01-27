module part_select;
  bit [2:0]a;
  
  covergroup cg;
    a1:coverpoint a[1:0];
    a2:coverpoint a[0];
    a3:coverpoint a[2:1];
  endgroup
  
  cg cg_inst;
  
  initial begin
    cg_inst=new();
    
    for (int i=0;i<5; i++)begin
      a=$random;
      cg_inst.sample();
      $display("a=%0d a1=%0b a2=%0b a3=%0b",a,a[1:0],a[0],a[2:1]);
      $display("\t coverage %%=%0.2f",cg_inst.get_inst_coverage);
    end
  end
endmodule



//////////////////////OUTPUT/////////////////////////////


# KERNEL: a=4 a1=0 a2=0 a3=10
# KERNEL: 	 coverage %=33.33
# KERNEL: a=1 a1=1 a2=1 a3=0
# KERNEL: 	 coverage %=66.67
# KERNEL: a=1 a1=1 a2=1 a3=0
# KERNEL: 	 coverage %=66.67
# KERNEL: a=3 a1=11 a2=1 a3=1
# KERNEL: 	 coverage %=83.33
# KERNEL: a=5 a1=1 a2=1 a3=10
# KERNEL: 	 coverage %=83.33

////////////////////////////////////////////////////////
