remove([H|T],0,T).
remove([H|T],N,[H|L]):- N > 0, NN is N - 1,!,remove(T,NN,L).
