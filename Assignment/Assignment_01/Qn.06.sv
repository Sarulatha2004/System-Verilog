module typedef_union;
typedef union {
  logic [15:0]word;
  struct{
    logic[7:0]byte1;
    logic[7:0]byte2;
  }bytes;
}word_t;

word_t my_word;

initial begin
  my_word.word=16'hA6A5;
  $display("Byte 1:%h,Byte 2:%h",my_word.bytes.byte1,my_word.bytes.byte2);
end
endmodule
