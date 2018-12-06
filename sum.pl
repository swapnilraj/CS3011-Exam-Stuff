sum([], 0).
sum([H|T], X):- sum(T,A),X is H + A.

% Tail recursive version
sumR([], A, A).
sumR([H|T], A, X) :- AN is H + A,sumR(T,AN,X).
