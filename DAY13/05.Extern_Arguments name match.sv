class packet;
  
  int addr;
  int data;
  extern virtual function void display(int addr, int data);
    endclass
    
    function void packet::display(int addr, int data);
      $display("Addr=%0d Data=%0d",addr,data);
    endfunction

module extern_method;
  packet pkt;
  initial begin
    pkt=new();
    pkt.display(34,43);
  end
endmodule

    //# KERNEL: Addr=34 Data=43
