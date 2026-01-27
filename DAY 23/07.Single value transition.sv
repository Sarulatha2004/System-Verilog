module single_val_trans_bin;
  bit [3:0]a;
  bit [2:0]values[$]='{1,2,3,4};
  
  covergroup cvgrp;
    c1: coverpoint a{
      bins tran1=(1 =>2);
      bins tran2=(3 =>4);
    }
  endgroup
  
  cvgrp cg=new();
  
  
  
  initial begin
    foreach(values[i])
      begin
        a=values[i];
        cg.sample();
        $display("val=%d ; coverage=%.2f %%" ,a,cg.get_inst_coverage());
      end
  end
endmodule




///////////////////OUTPUT//////////////////////////////

# KERNEL: val= 1 ; coverage=0.00 %
# KERNEL: val= 2 ; coverage=50.00 %
# KERNEL: val= 3 ; coverage=50.00 %
# KERNEL: val= 4 ; coverage=100.00 %

///////////////////////////////////////////////////////////


