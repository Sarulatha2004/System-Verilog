class parent_class;
  bit[31:0]addr;
endclass

class child_class extends parent_class;
  bit [31:0]data;
endclass

module class_module;
  
  parent_class p;
  child_class c;
  
  initial begin
   c=new();
    c.addr=10;
    c.data=20;
    $display("Value of addr=%0d  and data=%0d",c.addr,c.data);
  end
endmodule
