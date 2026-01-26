module pack;
  bit a;
  bit b;
  
  covergroup cvgrp;
    c1:coverpoint a;
    c2:coverpoint b;
    c3:cross a,b;
  endgroup
   
  cvgrp cg;
  initial begin
    cg=new();
    repeat(5) begin
    
    a=$random;
    b=$random;
    cg.sample();
    
    $display("a=%0d; b=%0d coverage %%=%.2f",a,b,cg.get_inst_coverage());
  end
  end
endmodule




//////////////////OUTPUT///////////////////////


# KERNEL: a=0; b=1 coverage %=45.00
# KERNEL: a=1; b=1 coverage %=70.00
# KERNEL: a=1; b=1 coverage %=70.00
# KERNEL: a=1; b=0 coverage %=95.00
# KERNEL: a=1; b=1 coverage %=95.00

///////////////////////////////////////////////
