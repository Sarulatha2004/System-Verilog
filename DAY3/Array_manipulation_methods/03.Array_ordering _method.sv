module array_order_method;
  int A[10]='{34,56,76,35,89,23,54,76,98,80};
  initial begin
    A.reverse();
    $display("Reversed Array=%p",A);
    A.sort();
    $display("Reversed Array=%p",A);
    A.rsort();
    $display("Reversed Array=%p",A);
    A.shuffle();
    $display("Reversed Array=%p",A);
  end
endmodule
