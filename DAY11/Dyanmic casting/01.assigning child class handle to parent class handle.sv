class parent_class;
  bit [31:0] addr;
  function display();
    $display("Addr = %0d",addr);
  endfunction
endclass

class child_class extends parent_class;
  bit [31:0] data;
  function display();
    super.display();
    $display("Data = %0d",data);
  endfunction
endclass

module inheritence;
  initial begin
    parent_class p=new();
    child_class  c=new();
    c.addr = 10;
    c.data = 20;
    p = c;        
    c.display();
  end
endmodule
