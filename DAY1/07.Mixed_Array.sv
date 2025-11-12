module mixed_array_demo;
  logic [2:0][1:0][3:0] mix_arr[2:0][3:0];
  integer i, j;

  initial begin
    foreach (mix_arr[i, j]) begin
      mix_arr[i][j] = 24'hA0 + (i*4 + j); 
    end
    for (i = 0; i < 3; i++) begin
      for (j = 0; j < 4; j++) begin
        $display("mix_arr[%0d][%0d] = %6h", i, j, mix_arr[i][j]);
      end
    end
  end
endmodule
