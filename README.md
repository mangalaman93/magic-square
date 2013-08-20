magic-square
============

solves the [magic square](http://en.wikipedia.org/wiki/Magic_square) problem in  prolog. The problem is solved with and without [clpfd](http://www.swi-prolog.org/man/clpfd.html) library of prolog.

How to run
============
* First change current directory to location of the data file
* Look at the data file for the format of the input
* Copy and paste the following lines to prolog terminal after changing
the parameters properly

magic_square.pl solves the problem using clpfd library whereas the
same problem is solved without clpfd in gMagic.pl file

* chdir('C:/Users/aman/Documents/workspace/Prolog/magic_square'),
* working_directory(CWD, CWD),
* magic_square(A1, data).
* gMagic(A2, data).
