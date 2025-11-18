
module task_example;
  int a, b;
  int out;
  
  
  task automatic tk_multiply(ref int a, b, output int out);
    a = a*b; 
    out = a;
  endtask
  
  initial begin
    a = 5;
    b = 6;

    tk_multiply(a,b, out);
    $display("Task: out = %0d for a = %0d and b = %0d", out, a, b);
  end
endmodule
