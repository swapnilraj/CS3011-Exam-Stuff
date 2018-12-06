factorial(0,1).
factorial(N,X):-N1 is N-1, factorial(N1, F1), X is N * F1.

factorialF(0, R, R).
factorialF(N, Acc, R) :-
    NewN is N - 1,
    NewAcc is Acc * N,
    factorialF(NewN, NewAcc, R).
