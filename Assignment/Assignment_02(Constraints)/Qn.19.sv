

class fibo;

  rand int fib[10];

  constraint fib_series {
    fib[0] == 0;
    fib[1] == 1;

    foreach (fib[i]) {
      if (i >= 2)
        fib[i] == fib[i-1] + fib[i-2];
    }
  }

endclass


module tb;
  fibo f;

  initial begin
    f = new();
    f.randomize();

    foreach (f.fib[i])
      $display("fib[%0d] = %0d", i, f.fib[i]);
  end

endmodule



    ///////////OUTPUT//////////////////////////////


 # KERNEL: fib[0] = 0
# KERNEL: fib[1] = 1
# KERNEL: fib[2] = 1
# KERNEL: fib[3] = 2
# KERNEL: fib[4] = 3
# KERNEL: fib[5] = 5
# KERNEL: fib[6] = 8
# KERNEL: fib[7] = 13
# KERNEL: fib[8] = 21
# KERNEL: fib[9] = 34

    ////////////////////////////////////////////////
