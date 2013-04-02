% CS 467, Functional and Logic Programming
% Group epsilon lambda RN-(1000500)15,17,13,14
% Generates 4x4 magic squares in prolog
% http://en.wikipedia.org/wiki/Magic_square
% see README for how to run

:- use_module(library(lists)).
:- use_module(inp_op).

diffThan(_, []).
diffThan(Num, [H|T]) :-
    Num =\= H,
    diffThan(Num, T).

allDiff([]).
allDiff([H|T]) :- 
    diffThan(H, T),
    allDiff(T).

rangeCons([], 0).
rangeCons([H|T], M) :-
	between(0, M, H),
	NextR is M - H,
	rangeCons(T, NextR).

gMagic(Puzzle, File) :-
% reading data from file
	see(File),
	read(sum(Sum)),
	read(msq(S11, S12, S13, S14,
			 S21, S22, S23, S24,
			 S31, S32, S33, S34,
			 S41, S42, S43, S44)),
	seen,
    write('Will solve for sum = '),
    write(Sum),
    nl,
    Puzzle = [S11, S12, S13, S14,
			  S21, S22, S23, S24,
			  S31, S32, S33, S34,
			  S41, S42, S43, S44],
	print_msq(Puzzle),
    nl,

%	Rows
	R1 = [S11, S12, S13, S14],
	R2 = [S21, S22, S23, S24],
	R3 = [S31, S32, S33, S34],
	R4 = [S41, S42, S43, S44],
  
% Columns
	C1 = [S11, S21, S31, S41],
	C2 = [S12, S22, S32, S42],
	C3 = [S13, S23, S33, S43],
	C4 = [S14, S24, S34, S44],
  
% Diagonals
	D1 = [S11, S22, S33, S44],
	D2 = [S14, S23, S32, S41],

%	Range constraints + sum constraints
	rangeCons(R1, Sum),
	rangeCons(R2, Sum),
	rangeCons(R3, Sum),
	rangeCons(R4, Sum),
	rangeCons(C1, Sum),
	rangeCons(C2, Sum),
	rangeCons(C3, Sum),
	rangeCons(C4, Sum),
	rangeCons(D1, Sum),
	rangeCons(D2, Sum),

%	uniqueness constraint
	allDiff(Puzzle),

% 	printing final output
	print_msq(Puzzle).