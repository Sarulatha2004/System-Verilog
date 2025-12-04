class transaction;
  bit [7:0] data;
  
  function new (bit [7:0] m_data);
    $display("Inside constructor");
    data = m_data;
  endfunction
endclass

module class_example;
  initial begin
    transaction tr = new(35);
    $display("Value of data = %0h", tr.data);
  end
endmodule
