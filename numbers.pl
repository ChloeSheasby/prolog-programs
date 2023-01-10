n(0).
n(Y) :- n(X), Y =:= X+1. 
p(X,0,X).
p(X,s(Y),s(Z)) :- p(X,Y,Z).
