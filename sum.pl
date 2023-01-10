sum([],0).
sum([A|B],X) :- sum(B,M), X is M + A.

% another way
sum(X,Y) :- sum(X,0,Y).
sum([],Y,Y).
sum([A|T],Y,Z) :- Q is Y+A, sum(T,Q,Z).
