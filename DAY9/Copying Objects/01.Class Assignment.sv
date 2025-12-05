class packet;
  bit [31:0]addr;
  bit [31:0]data;
  
  function new();
    addr=32'h1234;
    data=32'h1a2b3c4d;
  endfunction
  
  
  function void display();
    $display("Address=%0h",addr);
    $display("Data=%0h",data);
  endfunction
  
endclass


module packet_example;
  
  packet pkt1;
  packet pkt2;
  
  initial begin
    pkt1=new();
    
    $display("pkt1 displayed");
    pkt1.display();
    
    $display("pkt2 displayed");
    pkt2=pkt1;
    pkt2.display();
    
    
    pkt2.addr=32'h5678;
    
    $display("-------------------------------");
    $display("Pkt2 changes reflect on pkt1");
    $display("-------------------------------");
    
    $display("pkt1 displayed");
    pkt1.display();
    
    $display("pkt2 displayed");
    pkt2.display();
    
    
    pkt1.data=32'h4e5f6a7b;
    
    $display("-------------------------------");
    $display("Pkt1 changes reflect on pkt2");
    $display("-------------------------------");
    
    $display("pkt1 displayed");
    pkt1.display();
    
    $display("pkt2 displayed");
    pkt2.display();
    
  end
endmodule
