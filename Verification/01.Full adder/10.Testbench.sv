`include "interface.sv"
`include "test.sv"

module tb;
  interf inf();
  test ts(inf);
  
  full_adder uut(inf);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
  end
endmodule
  
