class packet;
  randc bit[31:0]data;
  constraint one_bit{
    $countones(data)==1;
  }
endclass

module tb;
  initial begin
    packet pkt=new();
      repeat(10) begin
        pkt.randomize();
        $display("Generated data=%b",pkt.data);
      end
    end
endmodule
