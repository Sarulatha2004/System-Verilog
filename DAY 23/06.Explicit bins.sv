module explicit_bins;
  
  bit [2:0]a;
  
  covergroup cvgrp;
    c1:coverpoint a{
      bins b1={7};
      bins b2={5};
    }
  endgroup
  
  cvgrp cg=new();
  
  initial begin
    for (int i=1;i<=20;i++)
      begin
        a=$random();
        cg.sample();
        $display("a=%0d,coverage=%.2f %%",a,cg.get_inst_coverage());
      end
  end
endmodule



////////////////////////////OUTPUT//////////////////////////////


# KERNEL: a=4,coverage=0.00 %
# KERNEL: a=1,coverage=0.00 %
# KERNEL: a=1,coverage=0.00 %
# KERNEL: a=3,coverage=0.00 %
# KERNEL: a=5,coverage=50.00 %
# KERNEL: a=5,coverage=50.00 %
# KERNEL: a=5,coverage=50.00 %
# KERNEL: a=2,coverage=50.00 %
# KERNEL: a=1,coverage=50.00 %
# KERNEL: a=5,coverage=50.00 %
# KERNEL: a=6,coverage=50.00 %
# KERNEL: a=5,coverage=50.00 %
# KERNEL: a=5,coverage=50.00 %
# KERNEL: a=4,coverage=50.00 %
# KERNEL: a=1,coverage=50.00 %
# KERNEL: a=6,coverage=50.00 %
# KERNEL: a=5,coverage=50.00 %
# KERNEL: a=2,coverage=50.00 %
# KERNEL: a=5,coverage=50.00 %
# KERNEL: a=7,coverage=100.00 %

///////////////////////////////////////////////////////////////
