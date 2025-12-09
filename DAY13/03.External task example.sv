class packet;
  int addr;
  int data;
  extern virtual task display(int addr,int data);
endclass
    
    task packet::display(int addr,int data);
      $display("Addr=%0d Data=%0d",addr,data);
    endtask
    
    
module extern_method;
  packet pkt;
  initial begin
    
    pkt=new();
    pkt.addr=20;
    pkt.data=40;
    pkt.display(pkt.addr,pkt.data);
  end
endmodule

    //output
    //# KERNEL: Addr=20 Data=40
