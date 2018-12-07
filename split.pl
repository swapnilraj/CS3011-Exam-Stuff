split(_, [], [], []).
split(N, [N|T], S, B) :- split(N, T, S, B).
split(N, [H|T], S, [H|B]) :- H > N,  split(N, T, S, B).
split(N, [H|T], [H|S], B) :- H < N,  split(N, T, S, B).
