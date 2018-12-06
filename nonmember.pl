nonmember(X, []).
nonmember(X, [H|T]):- X =\= H,nonmember(X,T).
