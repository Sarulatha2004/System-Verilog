module cvp_exp;
  bit [2:0] a;
  bit [3:0] b;
  
  covergroup cg;
    a1:coverpoint a;
    b1:coverpoint b;
    axb:coverpoint a*b;
  endgroup
  
  cg cg_inst;
  
  initial begin
    cg_inst=new();
    
    repeat(15) begin
      a=$random;
      b=$random;
      
      cg_inst.sample();
      $display("a=%0d ; b=%0d ; axb=%0d ; coverage %%=%.3f",a,b,a*b,cg_inst.get_inst_coverage());
    end
  end
endmodule
  


/////////////////OUTPUT/////////////////////////////

# KERNEL: a=4 ; b=1 ; axb=4 ; coverage %=8.333
# KERNEL: a=1 ; b=3 ; axb=3 ; coverage %=16.667
# KERNEL: a=5 ; b=13 ; axb=1 ; coverage %=25.000
# KERNEL: a=5 ; b=2 ; axb=10 ; coverage %=29.167
# KERNEL: a=1 ; b=13 ; axb=13 ; coverage %=31.250
# KERNEL: a=6 ; b=13 ; axb=14 ; coverage %=37.500
# KERNEL: a=5 ; b=12 ; axb=12 ; coverage %=41.667
# KERNEL: a=1 ; b=6 ; axb=6 ; coverage %=45.833
# KERNEL: a=5 ; b=10 ; axb=2 ; coverage %=50.000
# KERNEL: a=5 ; b=7 ; axb=3 ; coverage %=52.083
# KERNEL: a=2 ; b=15 ; axb=14 ; coverage %=58.333
# KERNEL: a=2 ; b=14 ; axb=12 ; coverage %=60.417
# KERNEL: a=0 ; b=5 ; axb=0 ; coverage %=68.750
# KERNEL: a=4 ; b=13 ; axb=4 ; coverage %=68.750
# KERNEL: a=5 ; b=5 ; axb=9 ; coverage %=70.833


///////////////////////////////////////////////////
