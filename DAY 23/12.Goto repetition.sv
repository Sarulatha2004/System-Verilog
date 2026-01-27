module goto_repeat_bin;

  bit [3:0] a;
  bit [2:0] values[$] = '{1,2,3,4,3,4,2,3,4,5};

  covergroup cvgrp;
    c1 : coverpoint a {
      bins tran_1 = (1 => 4 [->3] => 5);
      //bins tran_2 = (1 => 3 [=3] => 4);
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


////////////////////////OUTPUT///////////////////////////


# KERNEL: val =  1, cov = 0.00 %
# KERNEL: val =  2, cov = 0.00 %
# KERNEL: val =  3, cov = 0.00 %
# KERNEL: val =  4, cov = 0.00 %
# KERNEL: val =  3, cov = 0.00 %
# KERNEL: val =  4, cov = 0.00 %
# KERNEL: val =  2, cov = 0.00 %
# KERNEL: val =  3, cov = 0.00 %
# KERNEL: val =  4, cov = 0.00 %
# KERNEL: val =  5, cov = 100.00 %



//////////////////////////////////////////////////////////
