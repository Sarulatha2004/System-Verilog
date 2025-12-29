class std_random_class;
  rand int a;
  rand bit [2:0]b;
  constraint c1 { a>=2; a<=9;}
  
  function void display();
    int c;
    void'(std::randomize(this));
    $display("Using std_randomize %0d,%0d",a,b);
    if(randomize(a))
      $display("randomize(a) %0d",a);
    if(std::randomize(a))
      $display("using std_randomize(a) %0d",a);
    if(std::randomize(b))
      $display("using std_randomize b:%0d",b);
    if(std::randomize(c) with {c>1;c<4;});
    $display("using std_randomize with constraint ,c:%0d",c);
    void'(this.randomize());
    $display("this randomize  %0d %0d %0d",a,b,c);
  endfunction
endclass

module tb;
  std_random_class t;
  initial begin
    t=new();
    repeat (3)
      t.display();
  end
endmodule

/////////////////////////output/////////////////////////////////////


# KERNEL: Using std_randomize 1497363586,5
# KERNEL: randomize(a) 6
# KERNEL: using std_randomize(a) 484274802
# KERNEL: using std_randomize b:5
# KERNEL: using std_randomize with constraint ,c:2
# KERNEL: this randomize  4 7 2
# KERNEL: Using std_randomize -1621255588,0
# KERNEL: randomize(a) 5
# KERNEL: using std_randomize(a) -1608882576
# KERNEL: using std_randomize b:2
# KERNEL: using std_randomize with constraint ,c:3
# KERNEL: this randomize  9 0 3
# KERNEL: Using std_randomize 1182761674,6
# KERNEL: randomize(a) 3
# KERNEL: using std_randomize(a) -1520610950
# KERNEL: using std_randomize b:3
# KERNEL: using std_randomize with constraint ,c:3
# KERNEL: this randomize  9 5 3



//////////////////////////////////////////////////////////////////////////////
