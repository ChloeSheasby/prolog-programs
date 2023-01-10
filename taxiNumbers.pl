% this can generate things of a certain property
% numbers that add up to the sum of two cubed numbers
% not very efficient
[N,A,B,C,D] ins 1..100000, A #< C, A #< B, C #< D, N #= A*A*A + B*B*B, N #= C*C*C + D*D*D, label([N,A,B,C,D]).