module multiplier(multi_if inf);
  
  always@(posedge inf.clk or posedge inf.reset) begin 
    if(inf.reset) begin 
      inf.out <= 0;
      inf.ack <= 0;
    end
    else if(inf.en) begin
      inf.out <= inf.a * inf.b;
      inf.ack <= 1;
    end
    else inf.ack <= 0;
  end
endmodule


interface multi_if (input logic clk, reset);
  logic [7:0] a, b;
  logic [15:0] out;
  logic en;
  logic ack;
endinterface

module tb_top;
  bit clk;
  bit reset;
  
  always #2 clk = ~clk;
  
  initial begin
    clk = 0;
    reset = 1;
    #2;
    reset = 0;
  end 
  
  multi_if inf(clk, reset);
  multiplier DUT(inf);
  
  initial begin
    
    $dumpfile("dump.vcd"); $dumpvars;
    #5;
    inf.a = 'd6; 
    inf.b = 'd7;
    inf.en = 1;
    #10 
    inf.en = 0;
    wait(inf.ack);
    $display("%0t: a=%d b=%d, out=%d", $time, inf.a,inf.b,inf.out);
    
    #25;
    inf.a = 'd15;
    inf.b = 'd7;
    #5ns 
    inf.en = 1;
    #6
    inf.en = 0;
    wait(inf.ack);
    $display("%0t: a=%d b=%d, out=%d", $time, inf.a,inf.b,inf.out);
    $finish;
  end
  
endmodule
