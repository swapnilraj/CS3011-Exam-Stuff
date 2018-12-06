% Without memoisation

harmonic(1,1).
harmonic(N, H) :- D is float(1) / float(N), NN is N-1, harmonic(NN, HH), H is D + HH.

% With memoisation

harmonic(N, H) :- assert(s(1, 1)), h(N, 1, H).
h(N, N, H) :- s(N, H), !.
h(N, A, H) :- A < N, X is A + 1, s(A, P), R is P+1/X, assert(s(X, R)), h(N, X, H).
