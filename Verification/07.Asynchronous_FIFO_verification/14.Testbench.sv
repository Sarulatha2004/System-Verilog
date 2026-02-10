`include "interface.sv"
`include "test.sv"

module tb#(parameter DATA_WIDTH=8,DEPTH=8);
  
  fifo_inf#(DATA_WIDTH,DEPTH) inf();
  
  async_fifo dut(.wclk(inf.wclk),
                .rclk(inf.rclk),
                .wrstn(inf.wrstn),
                .rrstn(inf.rrstn),
                .w_en(inf.w_en),
                .r_en(inf.r_en),
                .data_in(inf.data_in),
                .data_out(inf.data_out),
                .full(inf.full),
                .empty(inf.empty)
        );
  
  always #5 inf.wclk=~inf.wclk;
  always #7 inf.rclk=~inf.rclk;
  
  initial begin
    $dumpfile("FIFO.vcd");
    $dumpvars;
    
    inf.wclk=0;
    
    inf.wrstn=0;
     inf.rclk=0;
    
    inf.rrstn=0;
    
    #50;
    inf.wrstn=1;
    inf.rrstn=1;
    
    
    #1500;
    
    $finish;
  end
  
  test t1(inf);
endmodule
    
    
