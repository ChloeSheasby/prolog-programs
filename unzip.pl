unzip([],_,_).
unzip([A],[A],[]).
unzip([A,B],[A],[B]).
unzip([A,B|C],[A|X],[B|Y]) :- unzip(C,X,Y).