doubleelements([],[]).
doubleelements([A],[A,A]).
doubleelements([A|B],[A,A|X]) :- doubleelements(B,X).