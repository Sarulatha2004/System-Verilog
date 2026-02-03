`include "interface.sv"
`include "test.sv"

module tb;

  interf inf();

  dff uut (
    .clk(inf.clk),
    .rst(inf.rst),
    .d  (inf.d),
    .q  (inf.q)
  );

  initial begin
    
    $dumpfile("DFF.vcd");
    $dumpvars;
    inf.clk = 0;
    forever #5 inf.clk = ~inf.clk;
  end

  test t1(inf);

endmodule

  
