class mem_block;
  
  bit [31:0]mem_ram_start,mem_ram_end;
  rand int mem_num_parts,mem_part_size;
  rand bit [31:0]mem_part_start[];
  
  constraint parts{
    mem_num_parts >=2;
    mem_num_parts <=8;
  }
  
  constraint part_size{
    mem_part_size == (mem_ram_end - mem_ram_start)/mem_num_parts+1;
    
  }

  constraint partition
  {
    mem_part_start.size()==mem_num_parts;
    
    foreach(mem_part_start[i])
      if(i)
        mem_part_start[i]==mem_part_start[i-1]+mem_part_size;
      else
        mem_part_start[i]==mem_ram_start;
  }
  function display();
        $display("\t RAM start addr:%0d",mem_ram_start);
        
        $display("\t RAM end addr:%0d",mem_ram_end);
        
        $display("\t 	No of partitions:%0d",mem_num_parts);
        
        $display("\t Size of each partition:%0d",mem_part_size);
        
        foreach(mem_part_start[i]) begin
          if(i==mem_num_parts-1)
            $display("\t Partition:%0d from %0d to %0d",i+1,mem_part_start[i],mem_ram_end);
          else
            $display("\t Partition:%0d from %0d to %0d",i+1,mem_part_start[i],mem_part_start[i+1]-1);
        end
      endfunction
endclass
      
module mem_n_eq_partitions();
  mem_block memb;
  
  initial begin
    memb=new();
    memb.mem_ram_start=32'h0;
    memb.mem_ram_end=32'h7ff;
    
    memb.randomize();
    
    memb.display();
  end
endmodule



///////////////////////////OUTPUT//////////////////////////////////

# KERNEL: 	 RAM start addr:0
# KERNEL: 	 RAM end addr:2047
# KERNEL: 	 	No of partitions:8
# KERNEL: 	 Size of each partition:256
# KERNEL: 	 Partition:1 from 0 to 255
# KERNEL: 	 Partition:2 from 256 to 511
# KERNEL: 	 Partition:3 from 512 to 767
# KERNEL: 	 Partition:4 from 768 to 1023
# KERNEL: 	 Partition:5 from 1024 to 1279
# KERNEL: 	 Partition:6 from 1280 to 1535
# KERNEL: 	 Partition:7 from 1536 to 1791
# KERNEL: 	 Partition:8 from 1792 to 2047


/////////////////////////////////////////////////////////////////////

