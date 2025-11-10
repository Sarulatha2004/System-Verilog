
module struct_example;
  struct {
    string name;
    bit[31:0] salary;
    integer id;
  } employee;
    
  initial begin
    employee.name = "Alex";
    employee.salary = 'd2500;
    employee.id     = 'd1234;
    $display("employee: %p", employee);
    
    $display("employee: name = %s, salary = 0x%0d, id = %0d", employee.name, employee.salary, employee.id);
  end
endmodule
