module array_query5; 
  typedef logic [15:0] mem_t [64:63];

  logic [7:0][15:0] myarr [2:8][3:0]; 
  var mem_t mem;

initial begin
  $display("$low of mem : %0d", $low(mem));
   $display("$low of myarr : %0d", $low(myarr));

end 
endmodule
