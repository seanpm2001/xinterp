(* ****** ****** *)
#staload _ =
"prelude\
/DATS/CATS\
/Xint/runtime.dats"
(* ****** ****** *)
//
#staload
"prelude/DATS/gbas.dats"
#staload
"prelude/DATS/gseq.dats"
#staload
"prelude/DATS/unsafe.dats"
//
(* ****** ****** *)
//
#staload _ =
"prelude/DATS/char.dats"
#staload _ =
"prelude/DATS/gint.dats"
#staload _ =
"prelude/DATS/string.dats"
#staload _ =
"prelude/DATS/stream_vt.dats"
//
(* ****** ****** *)

val a = 'a'
val b = 'b'
val () = g_print(a)
val () = g_print(b)

(* ****** ****** *)

val eol = sint('\n')
val eol = sint('\012')

(* ****** ****** *)

val a = "a"
val b = "b"
val ab = "ab"
val cd = "cd"
val sgn = g_cmp(a, ab)
val sgn = g_cmp(b, ab)
val sgn = g_cmp(ab, ab)
val sgn = g_cmp(ab, cd)

(* ****** ****** *)

val
alphabet =
"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
val () = g_print(alphabet)
val () = gseq_print(alphabet)

(* ****** ****** *)

val ai = gseq_indexof(alphabet, 'a')
val Ai = gseq_indexof(alphabet, 'A')
val Zi = gseq_indexof(alphabet, 'Z')

(* ****** ****** *)

val rai = gseq_rindexof(alphabet, 'a')
val rAi = gseq_rindexof(alphabet, 'A')
val rZi = gseq_rindexof(alphabet, 'Z')

(* ****** ****** *)

(* end of [chars.dats] *)