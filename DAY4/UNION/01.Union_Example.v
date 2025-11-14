
module union_example;
  typedef union {
    bit[15:0] salary;
    integer id;
  } employee;
    
  initial begin
    employee emp1,emp2;
   
    emp1.salary = 'h800;
    $display("salary updated for EMP1: %h", emp1.salary);
    emp1.id     = 'd1234;
    $display("ID updated for EMP: %d", emp1.id);
  
    
    emp2.salary = 'h700;
    $display("salary updated for EMP2: %h", emp2.salary);
    emp2.id     = 'd4321;
    $display("ID updated for EMP: %d", emp2.id);
    
    
  end
endmodule
