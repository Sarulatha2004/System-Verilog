module ignore_bin;

  bit [2:0] a;
  bit [2:0] values[$] = '{0,1,2,3,4,5,6,7};

  covergroup cov_grp;
    c1 : coverpoint a {
      ignore_bins b1 = {1,5};
    }
  endgroup

  cov_grp cg = new();

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



//////////////////////////OUTPUT//////////////////////////////



# KERNEL: val = 0, cov = 16.67 %
# KERNEL: val = 1, cov = 16.67 %
# KERNEL: val = 2, cov = 33.33 %
# KERNEL: val = 3, cov = 50.00 %
# KERNEL: val = 4, cov = 66.67 %
# KERNEL: val = 5, cov = 66.67 %
# KERNEL: val = 6, cov = 83.33 %
# KERNEL: val = 7, cov = 100.00 %


/////////////////////////////////////////////////////////////
