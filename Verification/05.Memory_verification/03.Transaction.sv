class transaction;
  bit clk;
  rand bit r_w;
  rand bit [3:0]addr;
  rand bit [7:0]wdata;
  bit [7:0]rdata;

  constraint cons1 {addr>0; addr<10;}
  constraint cons2 { r_w dist {1:=50,0:=50};}
  constraint cons4 {addr!=0;wdata!=0;}
  
  
  function void display(string name);
    $display("-------%s---------",name);
    $display("clk=%0b | r_w=%0b | addr=%0b |Wdata=%0b | Rdata=%0b ",clk,r_w,addr,wdata,rdata);
  endfunction
endclass
  
 
