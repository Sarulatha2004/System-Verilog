class pack;
  rand bit a;
  rand bit b;
  
  covergroup cg;
    c1:coverpoint a;
    c2:coverpoint b;
    c3:cross c1,c2;
  endgroup
  function new();
  cg=new();
  endfunction
  
endclass


pack p =new();

module cvgrp_cross;
  initial begin
    repeat(5) begin
      p.randomize();
      p.cg.sample();
      
      $display("a=%0d; b=%0d; coverage%%=%.2f",p.a,p.b,p.cg.get_inst_coverage());
      
    end
  end
endmodule


/////////////////////OUTPUT//////////////////////////

# KERNEL: a=1; b=1; coverage%=41.67
# KERNEL: a=0; b=0; coverage%=83.33
# KERNEL: a=0; b=1; coverage%=91.67
# KERNEL: a=0; b=0; coverage%=91.67
# KERNEL: a=0; b=1; coverage%=91.67
