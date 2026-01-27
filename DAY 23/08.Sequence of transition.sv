module seq_trans_bins;
  
  bit[3:0]a;
  bit [2:0] values[$]='{1,2,3,4};
  
  covergroup cvgrp;
    c1: coverpoint a {
      bins tran1 = (1 => 2 =>3);
      bins tran2 = (1 => 2 =>4);
    }
    
  endgroup
  
  cvgrp cg=new();
  
  initial begin
    foreach(values[i])
      begin
        a=values[i];
        cg.sample();
        $display("val=%0d ; cov %.2f %%",a,cg.get_inst_coverage());
      end
  end
endmodule



////////////////////OUTPUT////////////////////////////////




# KERNEL: val=1 ; cov 0.00 %
# KERNEL: val=2 ; cov 0.00 %
# KERNEL: val=3 ; cov 50.00 %
# KERNEL: val=4 ; cov 50.00 %

//////////////////////////////////////////////////////////
