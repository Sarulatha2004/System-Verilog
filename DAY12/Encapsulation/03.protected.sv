class parent_class;
  protected int tmp_addr;
  
  function new(int r_addr);
    tmp_addr=r_add+10;
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
  initial begin
  parent_class p_c=new(5);
  child_class c_c=new(10);
  
  p_c.tmp_addr=10;
  p_c.display();
  
  c_c.incr_addr();
  c_c.display();
  
  end
endmodule
