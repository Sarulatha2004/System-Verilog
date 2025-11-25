
module array_query3; 
  typedef logic [15:0] mem_t ;

logic [7:0][15:0] myarr [2:0][3:0]; 
  var mem_t mem;

initial begin 
  $display("$left of mem : %0d", $left(mem));
  $display("$left of myarr : %0d", $left(myarr));
end endmodule
