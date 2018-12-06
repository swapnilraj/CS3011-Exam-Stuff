mixed(0) :- false.
mixed(succ(X)) :- not(onlysucc(X)).
mixed(pred(X)) :- not(onlypred(X)).

pure(0) :- true.
pure(succ(X)) :- (onlysucc(X)).
pure(pred(X)) :- (onlypred(X)).

onlypred(0) :- true.
onlypred(pred(X)) :- onlypred(X).
onlypred(succ(_)) :- false.

onlysucc(0) :- true.
onlysucc(pred(_)) :- false.
onlysucc(succ(X)) :- onlysucc(X).

count(0, 0, 0).
count(succ(X), S, P) :- count(X, SC, P),S is SC +1.
count(pred(X), S, P) :- count(X, S, PR),P is PR +1.

make(0, P,P).
make(DIFF, P, R) :- DIFF > 0,NDIFF is DIFF - 1,make(NDIFF, succ(P), R).
make(DIFF, P, R) :- DIFF < 0,NDIFF is DIFF + 1,make(NDIFF, pred(P), R).

convert(0,0).
convert(M, P) :- count(M, SC, PR), DIFF is SC - PR, make(DIFF, 0, P).
