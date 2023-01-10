% given A and B, return C -- gcd(A,B,C).

% don't really need this
% gcd(0,0,0).

% be careful with using cuts

gcd(A,0,A) :- !.
gcd(A,B,N) :- B \= 0, M is A mod B, gcd(B,M,N).