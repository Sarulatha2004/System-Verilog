class base_class;
   virtual function void display();
    $display("Inside the base class");
  endfunction
endclass

class extended_class extends base_class;
  function void display();
    $display("Inside the extended class");
  endfunction
endclass

module virtual_method;
  base_class b_c;
  extended_class e_c;
  initial begin
    e_c=new();
    b_c=e_c;
    b_c.display();
  end
endmodule

//output
//# KERNEL: Inside the extended class
