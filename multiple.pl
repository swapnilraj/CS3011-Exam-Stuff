multipleH(_, [], 0).
multipleH(N, [H|T], S) :- N =:= H, multipleH(N, T, SCC), S is SCC + 1.
multipleH(N, [H|T], S) :- N =\= H, multipleH(N, T, S).

multiple(N, L) :- multipleH(N, L, G),G>=N.
