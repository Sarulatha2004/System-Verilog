class addr_range;
  bit [31:0]start_addr;
  bit [31:0]end_addr;
  function new();
    start_addr=32'h10;
    end_addr=32'h20;
  endfunction
endclass

class packet;
  bit [31:0]addr;
  bit [31:0]data;
  addr_range ar;
  
  function new();
    addr=32'h30;
    data=32'h40;
    ar=new();
  endfunction
  
  function void display();
    
    $display("---------------------------------");
    $display("Start Address=%0h",ar.start_addr);
    $display("End Address=%0h",ar.end_addr);
    $display("Address=%0h",addr);
    $display("Data=%0h",data);
    $display("---------------------------------");
  endfunction
endclass


module class_assignment;
  packet pkt1;
  packet pkt2;
  
  initial begin
    pkt1=new();
    $display("/////Calling pkt1//////");
    pkt1.display();
    pkt2=new pkt1;
    $display("/////Calling pkt2//////");
    pkt2.display();
    
    pkt2.addr=32'h15;
    pkt2.data=32'h25;
    pkt2.ar.start_addr=32'h35;
    pkt2.ar.end_addr=32'h45;
    
    $display("/////After change the pkt2 calling pkt1//////");
    pkt1.display();
    
    $display("/////After change the pkt2 calling pkt2//////");
    pkt2.display();    
    
  end
endmodule
  
