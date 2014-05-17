(* ****** ****** *)
//
#include
"share/atspre_define.hats"
#include
"share/atspre_staload.hats"
//
(* ****** ****** *)

%{^
  int do_adding() {
  volatile unsigned int i = 1;
  while(i >= 0) {
    i = i + 1;
  }
  return -1;
  }
%}


extern
fun do_adding():int = "mac#"
// Now with proofs:
dataprop TESTPROP = 
  | TEST of ()
extern
fun do_adding_usepf(pf: TESTPROP | ):int = "mac#do_adding"
//


implement main0() = let

// val x = do_adding() and y = do_adding()
// same cpu usage as:
// val x = do_adding()

prval apf = TEST()
prval bpf = TEST()

// The cpu usage is the same again
val x = do_adding_usepf(apf | ) and y = do_adding_usepf(bpf | )

in 
println!(x)
end


