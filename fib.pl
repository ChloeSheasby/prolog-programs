% the /2 gets fib with arity 2
:- dynamic(fib/2).

fib(0,1).
fib(1,1).
fib(N,K) :- N > 1,
	N1 is N-1, N2 is N-2, 
	fib(N1,A), fib(N2,B), 
	K is A+B, asserta(fib(N,K) :- !).

% :- ! says that don't call unnecessary rules, show answer as soon as you find it
% asserta adds more facts to the beginning of the database