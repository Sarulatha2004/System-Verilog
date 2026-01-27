function bit [3:0]sum(int a, int b);
  int c;
  c=a+b;
  return c;
endfunction

module cvr_function;
  
  class val;
    randc bit [1:0]a;
    randc bit [1:0]b;
  endclass
  
  int add;
  val v;
  
  covergroup cg;
    a1:coverpoint v.a;
    b1:coverpoint v.b;
    func: coverpoint sum(v.a,v.b);
  endgroup
  
  cg cg_inst;
  
  initial begin
    v=new();
    cg_inst=new();
    
    repeat (10) begin
      v.randomize();
      
      add=sum(v.a,v.b);
      cg_inst.sample();
      
      $display("a=%0d ; b=%0d ;add=%0d",v.a,v.b,add);
      $display("\t coverage %%=%.2f",cg_inst.get_inst_coverage());
    end
  end
endmodule




///////////////////OUTPUT/////////////////////


# KERNEL: a=3 ; b=3 ;add=6
# KERNEL: 	 coverage %=18.75
# KERNEL: a=0 ; b=2 ;add=2
# KERNEL: 	 coverage %=37.50
# KERNEL: a=1 ; b=0 ;add=1
# KERNEL: 	 coverage %=56.25
# KERNEL: a=2 ; b=1 ;add=3
# KERNEL: 	 coverage %=75.00
# KERNEL: a=3 ; b=0 ;add=3
# KERNEL: 	 coverage %=75.00
# KERNEL: a=0 ; b=1 ;add=1
# KERNEL: 	 coverage %=75.00
# KERNEL: a=2 ; b=3 ;add=5
# KERNEL: 	 coverage %=77.08
# KERNEL: a=1 ; b=2 ;add=3
# KERNEL: 	 coverage %=77.08
# KERNEL: a=2 ; b=1 ;add=3
# KERNEL: 	 coverage %=77.08
# KERNEL: a=0 ; b=0 ;add=0
# KERNEL: 	 coverage %=79.17

/////////////////////////////////////////
