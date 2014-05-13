(* ****** ****** *)
//
#include
"share/atspre_define.hats"
#include
"share/atspre_staload.hats"
//
(* ****** ****** *)


(* Normally in a SATS file *)
abst@ype foo_abstype = ptr
typedef foo_type = foo_abstype


(* Normally in the DATS file *)

(* ****** ****** *)

typedef foo_concrete =
@{
, m = int 
, n = int 
}
assume foo_abstype = foo_concrete 

(* ****** ****** *)

local

var foo_data: foo_type
val () = foo_data.m := 0
val () = foo_data.n := 0
val foo = ref_make_viewptr{foo_type}(view@foo_data | addr@foo_data)

in (*in-of-local*)

end (*end-of-local*)