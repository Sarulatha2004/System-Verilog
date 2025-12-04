module structure;
  typedef struct{
    logic[7:0]a;
    logic [3:0]b;
    logic [3:0]c;
    logic[3:0]d;
  }Instr_t;
  
  Instr_t mem[3:0];
  initial begin
    mem[0].a=8'b1100_0011;
    mem[1].b=4'b0110;
    mem[2].c=4'b1100;
    mem[3].d=4'b1010;
    $display(mem);
  end
endmodule
