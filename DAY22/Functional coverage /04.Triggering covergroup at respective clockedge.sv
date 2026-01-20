module cvgrp_using_clk;
  
  bit[2:0]a;
  bit b;
  bit clk;
  
  always #5 clk=~clk;
  
  covergroup cvgp @(posedge clk);
    c1:coverpoint a;
    c2:coverpoint b;
  endgroup
  
  cvgp cg=new;
  
  
  initial begin
    
    repeat (5) begin
      
     @ (posedge clk);
      a=$random;
      b=$urandom;
      
      $display("Time=$%0t; a=%d;b=%d;coverage %%=%.2f",$time,a,b,cg.get_inst_coverage());
    end
    
    $finish;
  end
endmodule


////////////////OUTPUT//////////////////////////////

# KERNEL: Time=$5; a=4;b=1;coverage %=31.25
# KERNEL: Time=$15; a=1;b=1;coverage %=62.50
# KERNEL: Time=$25; a=1;b=0;coverage %=68.75
# KERNEL: Time=$35; a=3;b=1;coverage %=68.75
# KERNEL: Time=$45; a=5;b=0;coverage %=75.00

////////////////////////////////////////////////////
