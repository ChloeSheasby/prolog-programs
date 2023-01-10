prime(1).
prime(2).
prime(3).
prime(5).
prime(7).
prime(X) :- 0 =\= X mod 2, 0 =\= X mod 3, 0 =\= X mod 5, 0 =\= X mod 7.