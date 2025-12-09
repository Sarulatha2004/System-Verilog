class packet;
  int addr;
  int data;
  extern virtual function void display();
endclass
    function void packet::display();
      $display("Addr=%0d Data=%0d",addr,data);
    endfunction
module extern_method;
  packet pkt;
  initial begin
    pkt=new();
    pkt.addr=10;
    pkt.data=20;
    pkt.display();
  end
endmodule

    //output
   // # KERNEL: Addr=10 Data=20
