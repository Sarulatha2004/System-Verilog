`include "interface.sv"
`include "test.sv"

module tb#(parameter DATA_WIDTH=8,DEPTH=8);
  
  fifo_inf#(DATA_WIDTH,DEPTH) inf();
  
  sync_fifo dut(.clk(inf.clk),
                .rstn(inf.rstn),
                .wr_en(inf.wr_en),
                .rd_en(inf.rd_en),
                .data_in(inf.data_in),
                .data_out(inf.data_out),
                .full(inf.full),
                .empty(inf.empty)
        );
  
  always #5 inf.clk=~inf.clk;
  
  initial begin
    $dumpfile("FIFO.vcd");
    $dumpvars;
    
    inf.clk=0;
    
    inf.rstn=0;
    
    #50;
    inf.rstn=1;
    
    
    #500;
    
    $finish;
  end
  
  test t1(inf);
endmodule
    
    
