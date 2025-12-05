class sv_class;
  int x; //property
  
  task set(int i); //method 1
    x=i;
  endtask
  
  function int get();//method 2
    return x;
  endfunction
endclass

module sc_class_ex;
  sv_class class_1;//creating handle
  sv_class class_2;
  
  initial begin
    class_1=new();//creating object
    class_2=new();
    
    class_1.set(10);
    class_2.set(20);
    
    $display("In class_1,The value of x is %0d",class_1.get());
    $display("In class_2,The value of x is %0d",class_2.get());
  end
endmodule
