module sparse_arr;
  longint ass[int];
  int idx;
  initial begin
    idx=1;
    repeat(64)
      begin
        ass[idx]=idx;
        idx=idx << 1;
      end
    $display("first value");
    if(ass.first(idx))
      $display(idx,",",ass[idx]);
    
    $display("next value");
    if(ass.next(idx))
      $display(idx,",",ass[idx]);
    
    $display("last value");
    if(ass.last(idx))
      $display(idx,",",ass[idx]);
    
    $display("Previous value");
    if(ass.prev(idx))
      $display(idx,",",ass[idx]);
  end
endmodule
    
    
             
