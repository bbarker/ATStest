(* ****** ****** *)
//
#include
"share/atspre_define.hats"
#include
"share/atspre_staload.hats"
//
(* ****** ****** *)

staload UN = "prelude/SATS/unsafe.sats"

(* ****** ****** *)



abstype board_point_type = ptr
typedef board_point = board_point_type

(* ****** ****** *)

assume
board_point_type = [m,n: nat| m >= 3; n >= 3] 
'(intBtwe(0, m), intBtwe(0, n))


implement main0 () = {

val my_zero = g1ofg0(0) 

val test0 = '(my_zero, my_zero)
val _ = $showtype test0
typedef testtype = '(int, int)

// this works
val test = $UN.cast{board_point}{testtype}('(my_zero, my_zero))
val _ = $showtype test 

// this doesn't
val test = ($UN.cast{board_point}{testtype}('(my_zero, my_zero))):board_point
val _ = $showtype test 


// this doesn't
val test: board_point = $UN.cast{board_point}{testtype}('(my_zero, my_zero))

val () = println!("testing")
}
