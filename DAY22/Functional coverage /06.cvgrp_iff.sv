module cvgrp_iff;
  bit [2:0]a;
  bit [1:0]b;
  bit clk;
  
  always #5 clk=~clk;
  
  covergroup cvgrp @(posedge clk);
    
    c1:coverpoint a iff (b==2){
      bins b1={5};
      bins b2={1};
    }
  endgroup
  
  cvgrp cg =new();
  
  initial begin 
    for(int i=0;i<8;i++)
      begin
        a=$random;
        b=$random;
        
        @(posedge clk);
        
        if(b==2)
          $write("if 'b' is 2 then coverpoints are excuted; \t ");
        $display("a=%d; b=%d; coverage %%=%.2f",a,b,cg.get_inst_coverage());
      end
    $finish;
  end
endmodule


////////////////OUTPUT/////////////////////////////////////////////////////////

# KERNEL: a=4; b=1; coverage %=0.00
# KERNEL: a=1; b=3; coverage %=0.00
# KERNEL: a=5; b=1; coverage %=0.00
# KERNEL: if 'b' is 2 then coverpoints are excuted; 	 a=5; b=2; coverage %=50.00
# KERNEL: a=1; b=1; coverage %=50.00
# KERNEL: a=6; b=1; coverage %=50.00
# KERNEL: a=5; b=0; coverage %=50.00
# KERNEL: if 'b' is 2 then coverpoints are excuted; 	 a=1; b=2; coverage %=100.00
# RUNTIME: Info: RUNTIME_0068 testbench.sv (30): $finish called.

/////////////////////////////////////////////////////////////////////////////
