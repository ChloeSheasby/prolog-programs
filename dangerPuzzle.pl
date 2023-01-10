%             CROSS
%          +  ROADS
%          = DANGER

:- use_module(library(clpfd)).

dangerpuzzle(X) :- X = [C,R,O,S,A,D,N,G,E],
	[C,R,O,S,A,D,N,G,E] ins 0..9,
	all_distinct([C,R,O,S,A,D,N,G,E]),
	C #\= 0, R #\= 0, D #\= 0,
		10000*C + 1000*R + 100*O + 10*S + S 
	      + 10000*R + 1000*O + 100*A + 10*D + S 
  #= 100000*D + 10000*A + 1000*N + 100*G + 10*E + R,
	label([C,R,O,S,A,D,N,G,E]).