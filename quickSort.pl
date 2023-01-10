quicksort([],[]).
quicksort([A],[A]).
quicksort([A|T],S) :- partition(T,A,X,Y), quicksort(X,L), quicksort(Y,R), append([L,[A],R],S).

% this sorts based on the first element as pivot
% if you do this on an already sorted list, it's highly inefficient because the pivot point is not good

partition([],_,[],[]).
partition([A|T],P,[A|L],R) :- A < P, partition(T,P,L,R).
partition([A|T],P,L,[A|R]) :- A >= P, partition(T,P,L,R).