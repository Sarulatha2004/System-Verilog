package pkg_A;
int data =5;
int id_A =1;
function void pkg_funA();
  $display("pkg_A:Inside pkg_funA,data=%0d,id_A=%0d",data,id_A);
endfunction
endpackage


package pkg_B;
import pkg_A::*;
int data =10;
int id_B =2;
function void pkg_funB();
  $display("pkg_B:Inside pkg_funB,data=%0d,id_B=%0d",data,id_B);
endfunction
endpackage


package pkg_C;
import pkg_B::*;
int data =15;
int id_C =3;
function void pkg_funC();
  $display("pkg_C:Inside pkg_funC,data=%0d,id_C=%0d",data,id_C);
endfunction
endpackage

import pkg_C::*;

module package_example;
  initial begin
    pkg_A::pkg_funA();
    pkg_B::pkg_funB();
    pkg_C::pkg_funC();
  end
endmodule
