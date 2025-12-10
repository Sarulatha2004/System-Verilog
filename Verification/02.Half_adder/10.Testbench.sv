`include "Interface.sv"
`include "Test.sv"
  module tb;
    interf inf();
    test ts(inf);
    half_adder uut(inf);
    
    initial begin
      $dumpfile ("dump.vcd");
      $dumpvars();
    end
  endmodule
