sumOfPowers(0,0) :- !.
sumOfPowers(N, X) :- UN is N**N, NF is N-1, sumOfPowers(NF, NX), X is NX + UN.
