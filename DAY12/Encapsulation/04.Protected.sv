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
   c_c=new(10);
  
  
  c_c.incr_addr();
  c_c.display();
  
  end
endmodule




//output
//tmp_addr=21
  
  
