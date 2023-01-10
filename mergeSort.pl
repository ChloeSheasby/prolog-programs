halves([],[],[]). 	/* this version does not cut the list directly in half */
halves([A],[A],[]).

% example of how the following rule works 
% halves([4,6,8,3],X,Y).
% we get A = 4, B = 6, T = [8,3], H1?, H2?
% halves ([4,6,8,3],[4|H1],[6|H2]) :- halves([8,3],H1,H2).
% halves([8,3],H1,H2).
% we get A = 8, B = 3, T = [], H1'?, H2'?
% halves([8,3],[8|H1'],[3|H2']) :- halves([],H1',H2').
% we get halves([],[],[]) so H1' = [], H2' = []
% we get halves([8,3],[8],[3])
% we get halves ([4,6,8,3],[4|8],[6|3])
% we get halves ([4,6,8,3],[4,8],[6,3])

halves([A,B|T],[A|H1],[B|H2]) :- halves(T,H1,H2).

halves2(X,Y,Z) :- halves2(X,X,Y,Z). /* this version will cut the list directly in HALF */
halves2(X,[],[],X).
halves2(X,[_],[],X).
halves2([A|T1],[_,_|T2],[A|R1],R2) :- halves2(T1,T2,R1,R2).


merge([],X,X).
merge(X,[],X) :- X \= [].
merge([A|T1],[B|T2],[A|M]) :- A < B, merge(T1,[B|T2],M).
merge([A|T1],[B|T2],[B|M]) :- A >= B, merge([A|T1],T2,M).

mergeSort([],[]). /* merge sort of the empty list is the empty list */
mergeSort([A],[A]).
mergeSort(X,Y) :- halves(X,A,B), mergeSort(A,C),
		  mergeSort(B,D), merge(C,D,Y).