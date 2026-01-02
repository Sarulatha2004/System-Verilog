class memory_block;
  bit [31:0]mem_ram_start,mem_ram_end;
  rand bit [31:0] mem_start_addr,mem_end_addr;
  rand int mem_block_size;
  
  constraint mem {
    mem_start_addr >=mem_ram_start;
    
    mem_start_addr <mem_ram_end;
    
    mem_start_addr % 4 ==0;
    
    mem_end_addr == mem_start_addr + mem_block_size-1;
  }
  
  constraint block_size{
    mem_block_size inside {128};
  }
  
  function void display();
    $display("\t------Memory Block-------");
    
    $display("\t RAM start addr %0d",mem_ram_start);
             
    $display("\t RAM end addr:%0d",mem_ram_end);
    
    $display("\t BLOCK start addr:%0d",mem_start_addr);
    
    $display("\t BLOCK end addr",mem_end_addr);
    
    $display("\t BLOCK SIZE=%0d",mem_block_size);
  endfunction
endclass

module single_mem_block;
  memory_block memb=new();
  
  initial begin
    
    memb.mem_ram_start=32'h0;
    memb.mem_ram_end=32'hfff;
    
    memb.randomize();
    memb.display();
  end
endmodule



///////////////Output//////////////////////////////

# KERNEL: 	------Memory Block-------
# KERNEL: 	 RAM start addr 0
# KERNEL: 	 RAM end addr:4095
# KERNEL: 	 BLOCK start addr:1748
# KERNEL: 	 BLOCK end addr      1875
# KERNEL: 	 BLOCK SIZE=128

///////////////////////////////////////////////////
