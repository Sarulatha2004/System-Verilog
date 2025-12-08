class parent_class;
  protected int tmp_addr;
  
  function new(int r_addr);
    tmp_addr=r_addr+10;
  endfunction
  
  function void display();
    $display("tmp_addr=%0d",tmp_addr);
  endfunction
  
endclass

class child_class extends parent_class;
  function new(int r_addr);
    super.new(r_addr);
  endfunction
  
  function void incr_addr();
    tmp_addr++;
  endfunction
  
endclass

module encapsulation;
  parent_class p_c;
  child_class c_c;
  initial begin
   p_c=new(5);
   c_c=new(10);
  
  p_c.tmp_addr=10;
  p_c.display();
  
  c_c.incr_addr();
  c_c.display();
  
  end
endmodule
  
  




//ERROR VCP5248 "Cannot access local/protected member ""p_c.tmp_addr"" from this scope." "testbench.sv" 30  15
