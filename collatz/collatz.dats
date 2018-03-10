(*
 To compile:
 myatscc collatz.dats
*)

#include "share/atspre_staload.hats"

//TODO: add guards to make sure nn is non-negative
fun collatz(nn: int): int = let
  val newN: int =
    if nn % 2 = 0 then nn / 2
    else 3 * nn + 1 
  val () =  println! ("-> ", nn)  
in 
  if (newN: int) != (1: int) then collatz(newN)
  else newN
end

implement
main0 () = {
 val _ = collatz(42)
}
