class samp;
  randc bit [2:0] a; 
  randc bit b;       
endclass
samp s; 

covergroup cgrp;
  c1: coverpoint s.a;
  c2: coverpoint s.b; 
endgroup


cgrp c; 

module cvgrp_start_stop;
  initial begin
    s = new;  
    c = new(); 
    c.start(); 

    
    for (int i = 0; i < 5; i++) begin
      void'(s.randomize());
      c.sample(); 

    
      $display("a=%d ; b=%d ; coverage = %0.2f", s.a, s.b, c.get_inst_coverage());

    
      if (c.get_inst_coverage() > 65) begin
        c.stop(); 
        $display("If coverage%% is greater than 65%%, stop executing covergroup");
      end

     
    end
  end
endmodule




///////////////////OUTPUT///////////////////////////////////

# KERNEL: a=0 ; b=1 ; coverage = 31.25
# KERNEL: a=5 ; b=0 ; coverage = 62.50
# KERNEL: a=3 ; b=0 ; coverage = 68.75
# KERNEL: If coverage% is greater than 65%, stop executing covergroup
# KERNEL: a=6 ; b=1 ; coverage = 68.75
# KERNEL: If coverage% is greater than 65%, stop executing covergroup
# KERNEL: a=2 ; b=1 ; coverage = 68.75
# KERNEL: If coverage% is greater than 65%, stop executing covergroup
