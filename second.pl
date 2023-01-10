second([],_) :- !, fail.
second([_,B|_],B).
%second([_,B|_],X) :- B = X.

