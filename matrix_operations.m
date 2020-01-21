% magic function return a magic square (all rows and cols and diag has the
% same value
clc
m = magic(3); % magic square 6x6
disp('Magic square 3x3: ');
disp(m);

% sum of all elements of a matrix
disp('Sum of all elements: ');
disp(sum(m(:))); %m(:) transform all to a collumn vector

% A is a matrix, then sum(A) returns a row vector containing the sum of each column.
% return the sum of each row ? if we transpose a matrix, row becomes
% collumn and vice versa
disp('Sum of each col: ');
disp(sum(m));
disp('Tranpose: ');
disp(m');
disp('Sum of each row: ');
disp(sum(m'));
% to obtain diagonal from a matrix use function diag
disp('Diag: ');
disp(diag(m));
disp('Sum of diag: ');
disp(sum(diag(m)));
% to obtain second diagonal, flipud a matrix
disp('matrix inverted up to down: ');
disp(flipud(m));
disp('2 diag: ');
disp(diag(flipud(m)));
disp('Sum of diag 2: ');
disp(sum(diag(flipud(m))));

% operations between two matrix
a = [1 2 3; 1 2 3; 1 2 3];
b = [2 3 4; 2 3 5; 1 1 1];
disp('Addition: ');
disp(a+b);


