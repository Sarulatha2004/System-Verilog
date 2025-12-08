virtual class packet;
  int data;
  
  function new();
    data=10;
  endfunction
  function void display();
    $display("DATA=%0d",data);
  endfunction
endclass

module abstract_class;
  packet p;
  initial begin
    p=new();
    p.display();
  end
endmodule


// ERROR VCP2937 "Cannot instantiate abstract class: packet." "testbench.sv" 15  12
// FAILURE "Compile failure 1 Errors 0 Warnings  Analysis time: 0[s]."
