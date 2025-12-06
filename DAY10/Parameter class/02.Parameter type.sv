class addr_range #(parameter type T=bit);
  T [31:0] start_addr;
  T [31:0] end_addr;
  
  function new();
    start_addr=25;
    end_addr=35;
  endfunction
endclass
  



class packet #(parameter type T=bit);
  T [31:0]addr;
  T [31:0]data;
  addr_range ar;
  
  function new();
    addr=45;
    data=55;
    ar=new();
  endfunction
  
  function void display();
    $display("--------------------");
    $display("Address=%0d",addr);
    $display("Data=%0d",data);
    $display("Start_address=%0d",ar.start_addr);
    $display("Start_address=%0d",ar.end_addr);
    $display("--------------------");
  endfunction
endclass
  
  module parameter_class;
    packet pkt;
    initial begin
      pkt=new();
      pkt.display();
    end
  endmodule
