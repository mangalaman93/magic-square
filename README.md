magic-square
============

solving a magic square in prolog
Group epsilon lambda RN-(1000500)15,17,13,14
first change current directory to location of the data file
look at the data file for the format of the input
copy and paste the following lines to prolog terminal after changing
the parameters properly

magic_square.pl solves the problem using clpfd library whereas the
same problem is solved without clpfd in gMagic.pl file.

chdir('C:/Users/aman/Documents/workspace/Prolog/magic_square'),
working_directory(CWD, CWD),
magic_square(A1, data).
gMagic(A2, data).
