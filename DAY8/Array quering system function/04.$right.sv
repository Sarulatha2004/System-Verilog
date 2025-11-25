module array_query3; 
  typedef logic [15:1] mem_t ;

  logic [7:8][15:19] myarr; 
  var mem_t mem;

initial begin 
  $display("$right of mem : %0d", $right(mem));
  $display("$right of myarr : %0d", $right(myarr));
end endmodule
