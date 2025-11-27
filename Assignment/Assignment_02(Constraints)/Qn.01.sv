class ones_12;
  rand bit [31:0] data;

  
  constraint non_consecutive {
    $countones(data) == 12;

    
    foreach (data[i])
      if (i < 31)
        data[i] + data[i+1] != 2;   
  }

  function void display();
    $display("Generated data = %b  ||ones = %0d", data, $countones(data));
  endfunction
endclass

module tb;
  ones_12 ones;

  initial begin
    ones = new();

    repeat(15) begin
      if (ones.randomize())
        ones.display();
    end

    $finish;
  end
endmodule

