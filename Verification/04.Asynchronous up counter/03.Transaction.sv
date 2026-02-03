class transaction;
  bit clk;
  bit rst;
  rand bit en;
  bit [3:0]count;
  
  function void display(string name);
    $display("-----%s-----",name);
    $display("clk=%0b  |  rst=%0b | en=%0b| count=%0d ",clk,rst,en,count);
  endfunction
  endclass

  
