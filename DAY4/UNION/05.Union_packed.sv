
module packed_union_example;
  typedef union packed {
    logic [15:0]word;
    logic [1:0][7:0]bytes;
    logic [3:0][3:0]nibble;
  }packed_u;
  
 packed_u pu;
  
  initial begin
    pu.word=16'b1111_0101_1010_0011;
    $display("pu.word = %b", pu.word); 
    $display("pu.byte = %b", pu.bytes);
    $display("pu.byte[0] = %b", pu.bytes[0]);
    $display("pu.byte[0][3:0] = %b", pu.bytes[0][3:0]); 
    $display("pu.byte[1] = %b", pu.bytes[1]);
    $display("pu.byte[1][7:4] = %b", pu.bytes[1][7:4]); 
    $display("pu.nibble = %b\n", pu.nibble);
    $display("pu.nibble[3]= %b\n", pu.nibble[3]); 
    $display("pu.nibble[2]= %b\n", pu.nibble[2]);
    $display("pu.nibble[1]= %b\n", pu.nibble[1]);
    $display("pu.nibble[0]= %b\n", pu.nibble[0]);
  end
endmodule
    
