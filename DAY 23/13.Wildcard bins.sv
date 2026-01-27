module wildcard_bin;

  bit [3:0] a;
  bit [3:0] values[$] = '{4'b0011,4'b0100,4'b1000, 4'b1001, 4'b1010, 4'b1011};

  covergroup cvgrp;
    c1 : coverpoint a {
      wildcard bins b1 = {4'b101?};
      wildcard bins b2 = {4'b100z};
    }
  endgroup

  cvgrp cg = new();

  initial
  begin
    foreach(values[i])
    begin
      a = values[i];
      cg.sample();
      $display("val = %d, cov = %.2f %%", a, cg.get_inst_coverage());
    end
  end
endmodule



//////////////////////OUTPUT////////////////////////////////////



# KERNEL: val =  3, cov = 0.00 %
# KERNEL: val =  4, cov = 0.00 %
# KERNEL: val =  8, cov = 50.00 %
# KERNEL: val =  9, cov = 50.00 %
# KERNEL: val = 10, cov = 100.00 %
# KERNEL: val = 11, cov = 100.00 %


///////////////////////////////////////////////////////////////
