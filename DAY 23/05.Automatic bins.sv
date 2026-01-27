module cvrg_ex;
  bit [2:0] a;
  covergroup cov_grp;
    c1:coverpoint a;
  endgroup
  
  cov_grp cg=new();
  
  initial begin
    for(int i=1;i<=15;i++) 
      begin
        a=$random();
        cg.sample();
        $display("a=%0d ; Coverage=%.2f %% ",a,cg.get_inst_coverage());
      end
  end
endmodule




///////////////////////////OUTPUT//////////////////////////////////////////


# KERNEL: a=4 ; Coverage=12.50 % 
# KERNEL: a=1 ; Coverage=25.00 % 
# KERNEL: a=1 ; Coverage=25.00 % 
# KERNEL: a=3 ; Coverage=37.50 % 
# KERNEL: a=5 ; Coverage=50.00 % 
# KERNEL: a=5 ; Coverage=50.00 % 
# KERNEL: a=5 ; Coverage=50.00 % 
# KERNEL: a=2 ; Coverage=62.50 % 
# KERNEL: a=1 ; Coverage=62.50 % 
# KERNEL: a=5 ; Coverage=62.50 % 
# KERNEL: a=6 ; Coverage=75.00 % 
# KERNEL: a=5 ; Coverage=75.00 % 
# KERNEL: a=5 ; Coverage=75.00 % 
# KERNEL: a=4 ; Coverage=75.00 % 
# KERNEL: a=1 ; Coverage=75.00 % 




///////////////////////////////////////////////////////////////////////////////
