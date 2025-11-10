module struct_with_typedef;
  typedef struct{
    string name;
    bit[63:0]salary;
    integer id;
  }employee;
  
  initial begin
    employee emp1,emp2;
    emp1.name ="Saru";
    emp1.salary='d250000;
    emp1.id='d41;
    $display("employee emp1:%p",emp1);
    $display("--------------------");
    
   
    emp2.name ="Dd";
    emp2.salary='d250000;
    emp2.id='d12;
    $display("employee emp2:%p",emp2);
    $display("--------------------");
    
  end 
endmodule
