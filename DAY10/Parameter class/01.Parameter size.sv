class packet #(parameter int ADDR_WIDTH=32,DATA_WIDTH=32);
  bit [ADDR_WIDTH-1:0]addr;
  bit [DATA_WIDTH-1:0]data;
  
  function new();
    addr=30;
    data=40;
  endfunction
  
  function void display();
    $display("--------------------");
    $display("Address=%b",addr);
    $display("Data=%b",data);
    $display("--------------------");
  endfunction
endclass
  
  module parameter_class;
    packet #(10,10)pkt;
    initial begin
      pkt=new();
      pkt.display();
    end
  endmodule
