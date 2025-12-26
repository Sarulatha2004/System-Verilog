class randc_variable;
  randc bit [2:0]a;
endclass

module randc_var;
  randc_variable randc_handle=new();
  
  initial begin
    for(int i=0;i<=12;i++)
      begin
        void'(randc_handle.randomize());
        $display("Iteration=%0d    Random value=%0d",i,randc_handle.a);
      end
    $display("randc-The value of 'a' will repeat after completing one cycle");
  end
endmodule


/////////////////output/////////////////////////////////////////////////
# KERNEL: Iteration=0    Random value=2
# KERNEL: Iteration=1    Random value=3
# KERNEL: Iteration=2    Random value=7
# KERNEL: Iteration=3    Random value=0
# KERNEL: Iteration=4    Random value=4
# KERNEL: Iteration=5    Random value=5
# KERNEL: Iteration=6    Random value=1
# KERNEL: Iteration=7    Random value=6
# KERNEL: Iteration=8    Random value=5
# KERNEL: Iteration=9    Random value=3
# KERNEL: Iteration=10    Random value=0
# KERNEL: Iteration=11    Random value=1
# KERNEL: Iteration=12    Random value=7
# KERNEL: randc-The value of 'a' will repeat after completing one cycle
  //////////////////////////////////////////////////////////////////////
