%can fix singleton variables with an underscore

listlength([],0).

%[A|B] means A is the first element and B is a list of what follows

listlength([_|B],X) :- listlength(B,Y), X is Y + 1.

%this will be defined so that we send in a list, an index, and the element at that index
%index([3,4,5],1,4) would be true

index([],_,_) :- !, fail.
index([A|_],0,A).

%need to account for when x is a variable and when x is not a variable

index([A|B],X,Y) :- var(X), indexHelp([A|B],Y,0,X).
index([_|B],X,Y) :- \+(var(X)), M is X-1, index(B,M,Y).
indexHelp([],_,_,_) :- !, fail.
indexHelp([A|_],A,X,X).
indexHelp([_|B],Y,M,X) :- C is M+1, indexHelp(B,Y,C,X).

%nth is a predicate in prolog, but the arguments are backwards and index starts at 1
%nth0 starts at 0

%the not predicate is defined as follows
%run the predicate, if it succeeds, fail.
%\+(p) :- p, !, fail.
