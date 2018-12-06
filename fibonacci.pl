fibo(0,1).
fibo(1,1).
fibo(X,Y) :- FX is X - 1, SX is X - 2, fibo(FX, FFX), fibo(SX, SSX), Y is FFX + SSX.

fibonacci(0,N,_,N).
fibonacci(N,Prev1,Prev2,Result):-
   N>0,
   New_Prev2 is Prev1+Prev2,
   N1 is N-1,
   fibonacci(N1,Prev2,New_Prev2,Result).
