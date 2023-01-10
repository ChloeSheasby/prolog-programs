subList(List,Start,Length,Output) :-
	length(A,Start),
	length(Output,Length),
	append([A,Output,_],List).

% this will basically slice a sublist out of a list
% there is no slice function in prolog

%subList(_,0,0,[]).
%subList([],_,Length,_) :- Length > 0, !, fail.

%subList([Head|Tail],0,Length,[Head|Output]) :- 
%	Length > 1,
%	NewLength is Length - 1,
%	subList(Tail,0,NewLength,Output).	

%subList([_|Tail],Start,Length,Output) :- 
%	Start > 0,
%	NewStart is Start - 1,
%	subList(Tail,NewStart,Length,Output).