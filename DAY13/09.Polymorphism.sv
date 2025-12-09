class shape;
  virtual function real area();
    return 0;
  endfunction
endclass

class circle extends shape;
  real radius;
  function new(real r);
    radius =r;
  endfunction
  function real area();
    return 3.14*radius*radius;
  endfunction
endclass

class rectangle extends shape;
  real width,height;
  
  function new(real w,real h);
    width =w;
    height= h;
  endfunction
  
  function real area();
    return width*height;
  endfunction
endclass

module test;
  shape s;
  circle c;
  rectangle r;
  
  initial begin
    c=new(5.0);
    r=new(6.5,10.0);
    
    s=c;
    $display("Area of Circle=%0f",s.area());
    
    s=r;
    $display("Area of Rectangle=%0f",s.area());
  end
endmodule
