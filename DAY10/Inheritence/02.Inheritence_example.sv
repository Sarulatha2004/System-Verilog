class parent_trans;
  bit [31:0]data;
  
  function void display_p();
    $display("Value of data=%0d",data);
  endfunction
endclass


class child_trans extends parent_trans;
  int id;
  
  function void display_c();
    $display("Value of id=%0d",id);
  endfunction
endclass

module trans_module;
  parent_trans p;
  child_trans c;
  
  initial begin
    c=new();
    
    c.data=10;
    c.id=5;
    
    c.display_c();
    c.display_p();
  end
endmodule
