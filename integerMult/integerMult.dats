(* ****** ****** *)
//
#include
"share/atspre_define.hats"
#include
"share/atspre_staload.hats"
//
(* ****** ****** *)

extern
fun myCharFun(): char

typedef myInt = [i:nat] int (i)

typedef Point = @{m = myInt, n = myInt}


val mc = myCharFun()
val nc = myCharFun()

val m_in = g1ofg0_int(char2i(mc))
val n_in = g1ofg0_int(char2i(nc))

var data: Point?
val () = data.m := m_in
val () = data.n := n_in

// This works
val mn_i = data.m * data.n
val () = assertloc(mn_i > 0)
val mn = i2sz(mn_i)


// This doesn't work
(* val () = assertloc(data.m > 2) *)
(* val () = assertloc(data.n > 2) *)
(* val mn = i2sz(data.m * data.n) *)

// https://groups.google.com/forum/#!topic/ats-lang-users/dvrL1UC6wo4