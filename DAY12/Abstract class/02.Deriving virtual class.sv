virtual class packet;
  int data;
  
  function new();
    data=20;
  endfunction
endclass


class extend_packet extends packet;
  
  function void display();
    $display("DATA=%0d",data);
  endfunction
endclass
module abstract_class;
  extend_packet p;
  initial begin
    p=new();
    p.display();
  end
endmodule

