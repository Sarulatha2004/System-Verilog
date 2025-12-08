class packet;
  local int data=10;
  int result;

  function new(int data1);
    result=data+data1;
  endfunction
  
  function void display();
    $display("Result=%0d",result);
  endfunction
  
endclass

module packet_example;
  packet pkt;
  initial begin
    pkt=new(5);
  pkt.display();
  end
endmodule
