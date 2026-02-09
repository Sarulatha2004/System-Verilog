class transaction#(parameter DATA_WIDTH=8);
  
  bit clk;
  bit rstn;
  rand bit wr_en;
  rand bit rd_en;
  rand bit [DATA_WIDTH-1:0]data_in;
  bit [DATA_WIDTH-1:0]data_out;
  bit full,empty;
  
  constraint cons{ wr_en ^ rd_en; }
endclass
