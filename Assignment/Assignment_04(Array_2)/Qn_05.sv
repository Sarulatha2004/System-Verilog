module enum_type;
  typedef enum logic [3:0]{
    ADD=4'd2,
    SUB=4'd3,
    JE=4'd10,
    JNE=4'd11,
    LD=4'd12,
    ST=4'd13
  } opcode_t;
  
 opcode_t op;
  initial begin
    op=ADD;
    $display("Opcode = %s, Value = %0d", op.name(), op);
    op=SUB;
    $display("Opcode = %s, Value = %0d", op.name(), op);
    op=JE;
    $display("Opcode = %s, Value = %0d", op.name(), op);
    op=JNE;
    $display("Opcode = %s, Value = %0d", op.name(), op);
    op=LD;
    $display("Opcode = %s, Value = %0d", op.name(), op);
    op=ST;
    $display("Opcode = %s, Value = %0d", op.name(), op);
  end
endmodule
