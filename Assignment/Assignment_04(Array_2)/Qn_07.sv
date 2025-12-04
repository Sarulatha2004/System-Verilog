module reverse_string;

  string str = "SystemVerilog";
  string rev = "";
  int i;

  initial begin
    $display("Original String: %s", str);

    for (i = str.len() - 1; i >= 0; i--) begin
      rev = {rev, str[i]};  
    end

    $display("Reversed String: %s", rev);
  end

endmodule
