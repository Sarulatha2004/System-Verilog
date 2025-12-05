class addr_range;
  bit[31:0]start_addr;
  bit[31:0]end_addr;
  
  function new();
    start_addr=32'h10;
    end_addr=32'h20;
  endfunction
  
  function addr_range copy;
    copy=new();
    copy.start_addr=this.start_addr;
    copy.end_addr=this.end_addr;
    return copy;
  endfunction
endclass

class packet;
  bit [31:0]addr;
  bit [31:0]data;
  addr_range ar;
  
  function new();
   addr=32'h15;
   data=32'h25;
    ar=new();
  endfunction
  
  function void display();
  $display("------------------------------------");
  $display("Addr=%0h",addr);
  $display("Data=%0h",data);
  $display("Start address=%0h",ar.start_addr);
  $display("End address=%0h",ar.end_addr);
  $display("------------------------------------");
  endfunction
  
  function packet copy;
    copy=new();
    copy.addr=this.addr;
    copy.data=this.data;
    copy.ar=ar.copy;
    return copy;
  endfunction
endclass

module class_assignment;
  packet pkt1;
  packet pkt2;
  
  initial begin
    pkt1=new();
    $display("/////Calling pkt1//////");
    pkt1.display();
    
    pkt2=new();
    $display("/////Calling pkt2//////");
    pkt2.display();
    
 
    pkt2=pkt1.copy();
    pkt2.addr=32'h35;
    pkt2.data=32'h45;
    pkt2.ar.start_addr=32'h30;
    pkt2.ar.end_addr=32'h40;
    
    $display("////Calling pkt1 after changing pkt2/////");
    pkt1.display();
    
    $display("////Calling pkt2 after changing pkt2/////");
    pkt2.display();
    
    pkt1.addr=32'h55;
    pkt1.data=32'h65;
    pkt1.ar.start_addr=32'h50;
    pkt1.ar.end_addr=32'h60;
    
    $display("////Calling pkt1 after changing pkt1/////");
    pkt1.display();
    
    $display("////Calling pkt2 after changing pkt1/////");
    pkt2.display();
  end
  endmodule
    
   
