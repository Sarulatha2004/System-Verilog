class parent;
  int addr;
  int data;
  virtual function void display();
    $display("Base:Value of Addr:%0d Data=%0d",addr,data);
  endfunction
endclass

class child_A extends parent;
  function void display();
    $display("Child_A: Value of Addr=%0d Data=%0d", addr,data);
  endfunction
endclass

class child_B extends parent;
  function void display();
    $display("Child_B: Value of Addr=%0d Data=%0d", addr,data);
  endfunction
endclass

class child_C extends parent;
  function void display();
    $display("Child_B: Value of Addr=%0d Data=%0d", addr,data);
  endfunction
endclass

module polymorphism;
  parent p_A,p_B,p_C;
  child_A c_A;
  child_B c_B;
  child_C c_C;
  
  initial begin
    c_A=new();
    c_B=new();
    c_C=new();
    
    c_A.addr=10;
    c_A.data=100;
    
    c_B.addr=20;
    c_B.data=200;
    
    c_C.addr=30;
    c_C.data=300;
    
    p_A=c_A;
    p_B=c_B;
    p_C=c_C;
    
    p_A.display();
    p_B.display();
    p_C.display();
    
    p_A.addr=40;
    p_A.data=400;
    $display("After changing value of p_A");
    p_A.display();
    p_B.display();
    p_C.display();
  end
endmodule
