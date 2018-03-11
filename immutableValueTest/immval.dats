(*
 To compile:
 myatscc immval.dats
*)

#include "share/atspre_staload.hats"

fun immval(): void = let
  val xx: int = 1 
  val _ = xx = 2 // Oops, this is equality, get a bool and discard
  val yy: int = 1
  val yy: int = 2 // Name is bound to another value
in (
  println!("xx is ", xx);
  println!("yy is ", yy)
) end

implement
main0 () = immval()

