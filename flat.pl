flat([],[]).
flat([A|B],Z) :- flat(A,X), flat(B,Y), concat(X,Y,Z).
flat([A|B],[A|C]) :- A \= [], A \= [_|_], flat(B,C).

%flat([A|_],A).
%flat([_|X],A) :- flat(X,A).
%flat([A],X) :- flat(A,X).

concat([],X,X).
concat([Head|Tail],X,[Head|Output]) :- concat(Tail,X,Output).