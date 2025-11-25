module array_query2; 
  typedef logic [15:0] mem_t [1:63][1:8];

  logic [7:0][15:0] myarr [2:0][3:0][2:0]; 
  var mem_t mem;

initial begin
  $display("Unpacked dimesion of mem : %0d",         $unpacked_dimensions(mem_t)); 
  $display("Unpacked dimesion of myarr : %0d", $unpacked_dimensions(myarr));

end 
endmodule
