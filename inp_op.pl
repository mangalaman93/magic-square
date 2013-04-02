:- module(inp_op, [getData/1, print_msq/1]).

writeNum(Num) :-
	integer(Num),!,
	atom_length(Num, L),
	convertNprint(L, Num).

writeNum(_) :-
	write('XX').

convertNprint(1, P) :-
	write('0'),
	write(P).

convertNprint(2, P) :-
	write(P).

print_msq([S11, S12, S13, S14,
		   S21, S22, S23, S24,
		   S31, S32, S33, S34,
		   S41, S42, S43, S44]) :-
	write('Magic Square 4x4 :'), nl,
	write('\t -- -- -- -- '), nl,
	write('\t|'), writeNum(S11), write('|'), writeNum(S12),
		write('|'), writeNum(S13), write('|'), writeNum(S14), write('|'), nl,
	write('\t -- -- -- -- '), nl,
	write('\t|'), writeNum(S21), write('|'), writeNum(S22),
		write('|'), writeNum(S23), write('|'), writeNum(S24), write('|'), nl,
	write('\t -- -- -- -- '), nl,
	write('\t|'), writeNum(S31), write('|'), writeNum(S32),
		write('|'), writeNum(S33), write('|'), writeNum(S34), write('|'), nl,
	write('\t -- -- -- -- '), nl,
	write('\t|'), writeNum(S41), write('|'), writeNum(S42),
		write('|'), writeNum(S43), write('|'), writeNum(S44), write('|'), nl,
	write('\t -- -- -- -- ').

getData(Fname) :-
	see(Fname),
	read(sum(Sum)),
	read(msq(S11, S12, S13, S14,
			  S21, S22, S23, S24,
			  S31, S32, S33, S34,
			  S41, S42, S43, S44)),
	seen,
    write('Will solve for sum = '),
    write(Sum),
    nl,
    write(msq(S11, S12, S13, S14,
			  S21, S22, S23, S24,
			  S31, S32, S33, S34,
			  S41, S42, S43, S44)),
    nl.