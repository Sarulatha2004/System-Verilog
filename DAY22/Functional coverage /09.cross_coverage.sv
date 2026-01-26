class pack;
  rand bit a;
  rand bit b;
  
  covergroup cg;
    c1:cross a,b;
  endgroup
  
  function new();
    cg=new();
  endfunction
endclass



module cvgrp_cross;
  pack p=new();
  initial begin
    
    
    repeat (5) begin
      
      p.randomize();
      p.cg.sample();
      
      $display("a=%0d ; b=%0d ; coverage %%=%.2f",p.a,p.b,p.cg.get_inst_coverage());
    end
  end
endmodule


/////////////////////////OUTPUT////////////////////////////////////////

# KERNEL: a=1 ; b=1 ; coverage %=41.67
# KERNEL: a=1 ; b=0 ; coverage %=66.67
# KERNEL: a=1 ; b=0 ; coverage %=66.67
# KERNEL: a=1 ; b=1 ; coverage %=66.67
# KERNEL: a=1 ; b=0 ; coverage %=66.67
//////////////////////////////////////////////////////////////////////////
