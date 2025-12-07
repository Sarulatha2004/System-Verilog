class parent_class;
  bit [31:0] addr;

  function display();
    $display("Addr = %0d",addr);
  endfunction
endclass

class child_class extends parent_class;
  bit [31:0] data;

  function display();
    $display("Data = %0d",data);
  endfunction

endclass

class child_class1 extends child_class;
  bit [31:0] data1;

  function display();
    super.display();
    $display("Data1 = %0d",data1);
  endfunction

endclass

module inheritence;
  initial begin
    child_class1 c=new();
    c.addr = 10;
    c.data = 20;
    c.data1=30;
    c.display();
  end
endmodule
