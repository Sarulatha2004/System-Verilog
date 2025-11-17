package pkg_A;
int data =5;
function pkg_funct();
  $display("pkg_A:Inside pkg_funct,data=%0d",data);
endfunction
endpackage

package pkg_B;
int data=10;
function pkg_funct();
  $display("pkg_B:Inside pkg_funct,data=%0d",data);
endfunction
endpackage

import pkg_A::*;
import pkg_B::*;
module package_example;
  initial begin
    pkg_funct();
    pkg_funct();
  end
endmodule
           
  
