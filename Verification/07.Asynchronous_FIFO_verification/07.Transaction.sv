class transaction #(parameter DATA_WIDTH=8);
  
  bit wclk;
  bit rclk;
  bit wrstn;
  bit rrstn;
  rand bit w_en;
  rand bit r_en;
  rand bit [DATA_WIDTH-1:0]data_in;
  bit [DATA_WIDTH-1:0]data_out;
  bit full;
  bit empty;
  
  constraint cons{w_en^r_en;}
endclass
  
