module queue;
  int q1[$] = '{23,45,65,12};
  int q2[$] = '{24,65,74,12};
  int i = 2;

  initial begin
    $display("Before insertion: %p", q1);

    foreach (q2[j]) begin
      q1.insert(i+j, q2[j]);
    end

    $display("After insertion : %p", q1);
  end
endmodule
