
module dimension_demo;
  int x;  // 0 dimensions
  logic [7:0] p1;// 1 dimension (packed)
  int u1 [5];  // 1 dimension (unpacked)
  logic [15:0] mem [1:63];// 2 dimensions (packed + unpacked)
  logic [7:0][15:0] myarr [2:0][3:0];  // 4 dimensions (2 packed + 2 unpacked)
  string str = "hello";  // string → 1 dimension

  initial begin
    $display("x (int): %0d",       $dimensions(x));     // 0
    $display("p1 (packed): %0d",   $dimensions(p1));    // 1
    $display("u1 (unpacked): %0d", $dimensions(u1));    // 1
    $display("mem: %0d",           $dimensions(mem));   // 2
    $display("myarr: %0d",         $dimensions(myarr)); // 4
    $display("string: %0d",        $dimensions(str));   // 1
  end

endmodule
