`include "interface.sv"
`include "test.sv"

module tb;

  interf inf();

  counter uut (
    .clk(inf.clk),
    .rst(inf.rst),
    .en  (inf.en),
    .count  (inf.count)
  );

  initial begin
    
    $dumpfile("Count.vcd");
    $dumpvars;
    inf.clk = 0;
    
    
    inf.rst=1;
    
    #20;
    inf.rst=0;
    
    #100;
    $finish;
    
  end
  
  initial begin
    forever #5 inf.clk = ~inf.clk;
  end

  test t1(inf);

endmodule

  
