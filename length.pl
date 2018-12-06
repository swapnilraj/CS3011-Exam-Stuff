taillength(L,N) :- lengthH(L,0, N).

lengthH([], A, A).
lengthH([_|T],A,N) :- AN is A +1, lengthH(T, AN, N).
