module illegal_bin;

  bit [1:0] a;
  bit [1:0] values[$] = '{0,1,2,3};

  covergroup cov_grp;
    c1 : coverpoint a {
    illegal_bins b1 = {2};
    }
    
//     c1:coverpoint a{
//       illegal_bins b1=(1=>2=>3);
//     }
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


/////////////////////OUTPUT///////////////////////////

# KERNEL: val = 0, cov = 33.33 %
# KERNEL: val = 1, cov = 66.67 %
# ACDB: Error: ACDB_0012 testbench.sv (8): Illegal bin 'b1' was hit with value '2' at iteration #2 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/illegal_bin". Covergroup type: "cov_grp", covergroup instance: "<UNNAMED1>", coverpoint: "c1".
# KERNEL: val = 2, cov = 66.67 %
# KERNEL: val = 3, cov = 100.00 %

  //////////////////////////////////////////////////////



  module illegal_bin;

  bit [1:0] a;
  bit [1:0] values[$] = '{0,1,2,3};

     covergroup cov_grp;
//     c1 : coverpoint a {
//     illegal_bins b1 = {2};
//     }
    
    c1:coverpoint a{
      illegal_bins b1=(1=>2=>3);
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


  # KERNEL: val = 0, cov = 25.00 %
# KERNEL: val = 1, cov = 50.00 %
# KERNEL: val = 2, cov = 75.00 %
# ACDB: Error: ACDB_0012 testbench.sv (12): Illegal bin 'b1' was hit with transition '(1=>2=>3)' at iteration #3 of covergroup sampling. It will have no impact on the coverage statistics. HDL instance: "/illegal_bin". Covergroup type: "cov_grp", covergroup instance: "<UNNAMED1>", coverpoint: "c1".
# KERNEL: val = 3, cov = 100.00 %
  ////////////////////////////////////////////////////////////////////

  
