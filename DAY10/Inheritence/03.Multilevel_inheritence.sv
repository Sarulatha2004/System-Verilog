class parent;
  int data;
  
  function void disp_p();
    $display("Value of data=%0d",data);
  endfunction
endclass

class child_1 extends parent;
  int data1;
  
  function void disp_c1();
    $display("Value of data1=%0d",data1);
  endfunction
endclass

class child_2 extends parent;
  int data2;
  
  function void disp_c2();
    $display("Value of data2=%0d",data2);
  endfunction
endclass
  
class child_A extends child_1;
  int dataA;
  
  function void disp_A();
    $display("Value of data A=%0d",dataA);
  endfunction
endclass

class child_B extends child_2;
  int dataB;
  
  function void disp_B();
    $display("Value of data B=%0d",dataB);
  endfunction
endclass

module inheritence;
  
  child_A c_A;
  child_B c_B;
  initial begin
  c_A=new();
  c_B=new();
  
  c_A.dataA=30;
  c_A.data1=20;
  c_A.data=10;
  
  c_A.disp_p();
  c_A.disp_c1();
  c_A.disp_A();
  
  c_B.dataB=60;
  c_B.data2=50;
  c_B.data=40;
  
  c_B.disp_p();
  c_B.disp_c2();
  c_B.disp_B();
  
  end
endmodule
  
