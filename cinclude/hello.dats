//
// OpenMP hello world
//

(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
//
(* ****** ****** *)


implement
main0 () = {
  val th_id = 5
  val nthreads = 32
  %{
    int x = 7;
  %}
  val () = println!(th_id)
  val () = if th_id = 0 
  then 
    println! (nthreads)
  else
    ()
  val () = println! ("Hello world!") // English
} // end of [main0]

(* ****** ****** *)

(* end of [hello.dats] *)
