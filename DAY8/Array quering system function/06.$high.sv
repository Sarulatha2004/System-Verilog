module array_query6; 
  typedef logic [15:0] mem_t [64:63];

  logic [7:0][15:0] myarr [2:8][3:0]; 
  var mem_t mem;

initial begin
  $display("$high of mem : %0d", $high(mem));
  $display("$high of myarr : %0d", $high(myarr));

end 
endmodule
