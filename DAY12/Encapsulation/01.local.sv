class packet;
  local int data;

  function void display();
    $display("data=%0d",data);
  endfunction
endclass

module packet_example;
  packet pkt;
  initial begin
    pkt=new();
    pkt.data=10;
  pkt.display();
  end
endmodule






// ERROR VCP5248 "Cannot access local/protected member ""pkt.data"" from this scope." "testbench.sv" 13  13
// FAILURE "Compile failure 1 Errors 0 Warnings  Analysis time: 0[s]."
