odd(N) :- 1 is N mod 2.

indexOf([H|_],0,H).
indexOf([_|T],N,X):-NCC is N-1, indexOf(T,NCC,X).

median(L,N) :- is_set(L),length(L,LN),odd(LN),sort(L,S),I is div(LN,2),indexOf(S,I,N).
