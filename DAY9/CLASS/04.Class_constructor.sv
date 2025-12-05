class packet;
  bit [31:0]addr;
  bit [31:0]data;
  bit write;
  string pkt_type;
  
  function new(bit [31:0]addr,data,bit write,string pkt_type);
    this.addr=addr;
    this.data=data;
    this.write=write;
    this.pkt_type=pkt_type;
  endfunction
  
  function void display();
    $display("-----------------------------");
    $display("\t Address=0x%0h",addr);
    $display("\t Data=%0h",data);
    $display("\t write=%b",write);
    $display("\t Packet Type=%s",pkt_type);
    $display("----------------------------");
    
  endfunction
endclass
  
  module packet_example;
    packet pkt;
    initial begin
      pkt=new(32'h78,32'hA1B2C3D4,1,"Good_pkt");
      pkt.display();
    end
  endmodule
