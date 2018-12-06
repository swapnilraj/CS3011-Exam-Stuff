isSet([]).
isSet([H|T]) :- not(member(H, T)),isSet(T).

moreThanOnce(L) :- length(L,N),N>1,isSet(L).

toSet([],[]).
toSet([H|T], S) :- not(member(H, S)),append([H], S, S);toSet(T,S).

moreThan(L, N) :- setof(L,S),N > -1,length(S,LN),LN>N.
