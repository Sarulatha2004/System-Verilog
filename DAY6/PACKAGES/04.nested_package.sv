
package pkg_A;
  int A = 1;
endpackage

package pkg_B;
  import pkg_A::*;
  int B = 2;
endpackage

package pkg_C;
  import pkg_B::*;
  int C = 3;
endpackage

import pkg_C::*;

module demo;
  initial begin
    $display(A);  
    $display(B);  
    $display(C);  
  end
endmodule
