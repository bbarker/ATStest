(*

Run patscc -o hello hello.dats

*)

#include "share/atspre_staload.hats"

implement main0{n}
(argc, argv): void = {

  fun echoArgs{i:nat | i < n}
  (ii: int(i), argv: !argv(n)): void = {
    val () = println!("arg ", ii, " is ", argv[ii])
    val () = if ii + 1 < argc then echoArgs(ii + 1, argv) 
  }

  val () = echoArgs(0, argv)
}




