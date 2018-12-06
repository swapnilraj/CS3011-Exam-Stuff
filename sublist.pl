sl(A, B, C, D) :- sl2(A, B, C, [], D).

sl2(_, 0, -1, X, X).
sl2([_|L], Begin, End, E, Sub) :- Begin > 0, X is Begin - 1, sl2(L, X, End, E, Sub).
sl2([H|L], Begin, End, E, Sub) :- Begin > -1, End > -1, X is End - 1, append(E, [H], Y), sl2(L, Begin, X, Y, Sub).
