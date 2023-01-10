badSort(List,Output) :-
	permutation(List,Output),
	ordered(Output).

ordered([]).
ordered([_]).
ordered([A,B|T]) :- A =< B, ordered([B|T]).