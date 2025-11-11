module structure;
  typedef struct {
    logic [7:0]op_code;
    logic [3:0] reg_source;
    logic [3:0]reg_dest;
    logic [3:0]imm_val;
  }Instr_t;
  
  Instr_t mem[3:0];
  initial begin
    mem[0].op_code=8'b1111_0000;
    mem[1].reg_source=4'b0111;
    mem[2].reg_dest=4'b0000;
    mem[3].imm_val=4'b0000;
    $display(mem);
    //$display("Op_code=%0b  |  reg_source=%0b  |  reg_dest=%0b | imm_val=%0b",mem[0].op_code,mem[1].reg_source,mem[2].reg_dest,mem[3].imm_val);
  end
endmodule
