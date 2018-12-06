next(H1, H2, [H1, H2|_]).
next(A, B, [_|T]) :- next(A, B, T).
