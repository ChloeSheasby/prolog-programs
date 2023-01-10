% use this library: constraint library programming over finite domains
% can declare a variable and give it a constraint
% EX: A in 1..9 - A is in the domain of 1 through 9

% clpfd uses # before = to say something equals another

%             SEND
%          +  MORE
%          = MONEY

:- use_module(library(clpfd)).

moneypuzzle(X) :- X = [S,E,N,D,M,O,R,Y],
	[S,E,N,D,M,O,R,Y] ins 0..9,
	all_distinct([S,E,N,D,M,O,R,Y]),
	S #\= 0, M #\= 0,
	          1000*S + 100*E + 10*N + D 
                + 1000*M + 100*O + 10*R + E 
     #= 10000*M + 1000*O + 100*N + 10*E + Y, 
	label([S,E,N,D,M,O,R,Y]).
	