
module union_example;
  typedef union {
    bit[15:0] salary;
    integer id;
  } employee;
    
  initial begin
  
   
    employee.salary = 'h800;
    $display("salary updated for EMP: %h", employee.salary);
    employee.id     = 'd1234;
    $display("ID updated for EMP: %d", employee.id);

    
    
  end
endmodule
