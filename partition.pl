%partition([],_,[],[]).
%partition([A],P,[A],[]).
%partition([A,B|T],P,[A|H1],[B|H2]) :- halves(T,P,H1,H2).

%merge([],P,X,X).
%merge(X,P,[],X) :- X \= [].
%merge([A|T1],P,[B|T2],[A|M]) :- A < P, merge(T1,P,[B|T2],M).
%merge([A|T1],P,[B|T2],[B|M]) :- A >= P, merge([A|T1],P,T2,M).

%sortP([],[]).
%sortP([A],[A]).
%merge(X,Y,P) :- partition(X,P,A,B), sortP(A,C), sortP(B,D), merge(C,P,D,Y).

partition([],_,[],[]).
partition([A|T],P,[A|L],R) :- A < P, partition(T,P,L,R).
partition([A|T],P,L,[A|R]) :- A >= P, partition(T,P,L,R).

% helps to make sure that if the numbers aren't in the same order, it will still work
%partition(T,P,L,R) :- partition(T,P,X,Y), permutation(X,L), permutation(Y,R).