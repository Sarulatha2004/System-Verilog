`include "interface.sv"
`include "test.sv"

module tb;

  interf inf();

  mem uut (
    .clk(inf.clk),
    .r_w(inf.r_w),
    .addr  (inf.addr),
    .wdata  (inf.wdata),
    .rdata(inf.rdata)
  );

  initial begin
    
    $dumpfile("mem.vcd");
    $dumpvars;
    inf.clk = 0;
    
        
    #100;
    $finish;
    
  end
  
  initial begin
    forever #5 inf.clk = ~inf.clk;
  end

  test t1(inf);

endmodule

  
