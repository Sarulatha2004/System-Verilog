class packet;
  
  int addr;
  int data;
  extern virtual function void display(int addr, int data);
    endclass
    
    function void packet::display(int addr_t, int data_t);
      $display("Addr=%0d Data=%0d",addr_t,data_t);
    endfunction

module extern_method;
  packet pkt;
  initial begin
    pkt=new();
    pkt.display(34,43);
  end
endmodule

// ERROR VCP5420 "Non existing port 'addr_t' in out-of-scope method 'display' definition." "testbench.sv" 58  39
// ERROR VCP5420 "Non existing port 'data_t' in out-of-scope method 'display' definition." "testbench.sv" 58  51
// ERROR VCP5421 "Too few ports specified in out-of-scope method 'display' definition." "testbench.sv" 58  59
// FAILURE "Compile failure 3 Errors 0 Warnings  Analysis time: 0[s]."
