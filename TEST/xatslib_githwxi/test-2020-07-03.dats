(* ****** ****** *)
#staload _ =
"prelude\
/DATS/CATS\
/Xint/runtime.dats"
(* ****** ****** *)
#staload _ =
"xatslib\
/libc/DATS/CATS\
/Xint/runtime.dats"
(* ****** ****** *)
#staload
"prelude/DATS/gbas.dats"
#staload
"prelude/DATS/gnum.dats"
#staload
"prelude/DATS/gord.dats"
(* ****** ****** *)
#staload
"prelude/DATS/gfor.dats"
#staload
"prelude/DATS/gfun.dats"
#staload
"prelude/DATS/gseq.dats"
(* ****** ****** *)
#staload
"prelude/DATS/gios.dats"
(* ****** ****** *)
#staload
"prelude/DATS/rand.dats"
(* ****** ****** *)
//
#staload
"prelude/DATS/bool.dats"
#staload
"prelude/DATS/char.dats"
#staload
"prelude/DATS/gint.dats"
#staload
"prelude/DATS/gflt.dats"
#staload
"prelude/DATS/string.dats"
#staload
"prelude/DATS/string_vt.dats"
//
(* ****** ****** *)
#staload
"prelude/DATS/unsafe.dats"
(* ****** ****** *)
//
#staload
"prelude/DATS/list.dats"
#staload
"prelude/DATS/array.dats"
#staload
"prelude/DATS/stream.dats"
//
#staload
"prelude/DATS/list_vt.dats"
#staload
"prelude/DATS/stream_vt.dats"
//
(* ****** ****** *)
#staload
"xatslib/libc/DATS/stdio.dats"
(* ****** ****** *)
sexpdef
array = a1ref
(* ****** ****** *)
#extern
fun
<a:t0>
<n:i0>
dotprod
( xs: array(a, n)
, ys: array(a, n)): a
(* ****** ****** *)

(*
impltmp
<a><n>
dotprod(xs, ys) =
z2foldl
(xs, ys, r0) where
{
//
typedef x0 = a
typedef y0 = a
typedef r0 = a
//
val r0 = g_0<r0>()
impltmp
z2foldl$fopr<x0,y0><r0>(r0, x0, y0) = r0 + x0 * y0
}
*)

impltmp
<a><n>
dotprod(xs, ys) =
(
let
val () =
g_x1forint
(
a1ref_length(xs)) in r0 end
) where
{
//
var r0: ?a
val () =
(r0 := g_0<a>())
val p0 = $addr(r0)
//
implement
x1forint$work(i0) =
let
val r0 = 
$UN.p2tr_get(p0)
in
$UN.p2tr_set
(p0, r0+sub(xs,i0)*sub(ys,i0))
end
//
} (* end of [dotprod] *)


(* ****** ****** *)

(* end of [test-2020-07-03.dats] *)
