harmonic(1,1).
harmonic(N, H) :- D is float(1) / float(N), NN is N-1, harmonic(NN, HH), H is D + HH.
