% CS 467, Functional and Logic Programming
% Group epsilon lambda RN-(1000500)15,17,13,14
% Generates 4x4 magic squares in prolog(clpfd)
% http://en.wikipedia.org/wiki/Magic_square
% see README for how to run

:- use_module(library(clpfd)).
:- use_module(inp_op).

magic_square(Puzzle, File) :-
%	reading data from file
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

% solution using clpfd lib
	Sum #> 33,
	all_different(Puzzle),
	Puzzle ins 0..Sum,

%	Rows
	S11 + S12 + S13 + S14 #= Sum,
	S21 + S22 + S23 + S24 #= Sum,
	S31 + S32 + S33 + S34 #= Sum,
	S41 + S42 + S43 + S44 #= Sum,
  
% Columns
	S11 + S21 + S31 + S41 #= Sum,
	S12 + S22 + S32 + S42 #= Sum,
	S13 + S23 + S33 + S43 #= Sum,
	S14 + S24 + S34 + S44 #= Sum,
  
% Diagonals
	S11 + S22 + S33 + S44 #= Sum,
	S14 + S23 + S32 + S41 #= Sum,

	label(Puzzle),
	print_msq(Puzzle).
