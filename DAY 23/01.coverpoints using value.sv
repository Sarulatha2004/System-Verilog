module cover_point;
  bit [4:0]a;
  bit [4:0]arr[4]='{2,4,6,8};
  
  covergroup cg;
    a1:coverpoint a;
  endgroup
  
  cg cg_inst;
  initial begin
    cg_inst =new();
    
    foreach (arr[i]) begin
      a=arr[i];
      cg_inst.sample();
      $display("a=%0d coverage %%=%.3f",a,cg_inst.get_inst_coverage());
    end
  end
endmodule

/////////////OUTPUT //////////////////////////////////////

# KERNEL: a=2 coverage %=3.125
# KERNEL: a=4 coverage %=6.250
# KERNEL: a=6 coverage %=9.375
# KERNEL: a=8 coverage %=12.500

//////////////////////////////////////////////////////////
