concat([],X,X).
concat([Head|Tail],X,[Head|Output]) :- concat(Tail,X,Output).