(* ****** ****** *)
//
#include
"share/atspre_define.hats"
#include
"share/atspre_staload.hats"
//
(* ****** ****** *)

extern
praxi
m_times_n_Gt0
  {m,n,mn:int | m > 0; n > 0; mn == m*n} 
  (m: int (m), n: int (n), mn: int(mn)): [mn > 0] void


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



(* //  This works *)
(* val () = assertloc(m_in > 2) *)
(* val () = assertloc(n_in > 2)  *)
(* val mn_i = m_in * n_in *)
(* prval mn_iGt0pf = m_times_n_Gt0(m_in, n_in, mn_i) *)
(* val mn = i2sz(mn_i) *)
(* // This does! *)
(* val mn_j = data.m * data.n *)
(* val mn = i2sz(mn_j) *)


// This does too (by itself)
val () = assertloc(m_in > 2)
val () = assertloc(n_in > 2) 
val mn_j = data.m * data.n
prval mn_iGt0pf = m_times_n_Gt0(m_in, n_in, mn_j)


// This works
(* val mn_i = data.m * data.n *)
(* val () = assertloc(mn_i > 0) *)
(* val mn = i2sz(mn_i) *)

// This doesn't work
(* val () = assertloc(data.m > 2) *)
(* val () = assertloc(data.n > 2) *)
(* val mn = i2sz(data.m * data.n) *)

// https://groups.google.com/forum/#!topic/ats-lang-users/dvrL1UC6wo4