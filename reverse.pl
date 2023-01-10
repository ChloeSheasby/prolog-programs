reverse(X,Y) :- reverse(X,[],Y).
reverse([],Y,Y).
reverse([A|T],Y,Z) :- reverse(T,[A|Y],Z).