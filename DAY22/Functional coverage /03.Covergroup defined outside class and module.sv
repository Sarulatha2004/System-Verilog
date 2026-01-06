class cover_group;
  rand bit [2:0] a;
  rand bit [1:0] b;
endclass
cover_group c = new();

covergroup cgrp;
  c1: coverpoint c.a;
  c2: coverpoint c.b;
endgroup

module outside;
  cgrp cg = new();

  initial begin
    repeat (5) begin
      void'(c.randomize());
      cg.sample();
      $display("a = %d b = %d; coverage %% = %0.2f", c.a, c.b, cg.get_inst_coverage());
    end
    $display("%f", cg.get_coverage());
  end
endmodule




///////////////OUTPUT/////////////////////////////////////////////////

# KERNEL: a = 1 b = 1; coverage % = 18.75
# KERNEL: a = 2 b = 0; coverage % = 37.50
# KERNEL: a = 4 b = 1; coverage % = 43.75
# KERNEL: a = 0 b = 2; coverage % = 62.50
# KERNEL: a = 0 b = 3; coverage % = 75.00
# KERNEL: 75.000000

///////////////////////////////////////////////////////////////////////
