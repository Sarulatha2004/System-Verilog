module foreach_loop;
  
  bit[2:0][1:0][7:0]data;
  
  initial begin
    data=48'hcafe_face_0708;
    
    foreach (data[i]) begin
      $display("data[%0d]=0x%h",i,data[i]);
      foreach(data[i,j])begin
        $display("data[%0d][%0d]=0x%h",i,j,data[i][j]);
      end
    end
  end
endmodule
