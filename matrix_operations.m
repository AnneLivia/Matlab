% magic function return a magic square (all rows and cols and diag has the
% same value
clc
m = magic(3); % magic square 6x6
disp('Magic square 3x3: ');
disp(m);

% displaying how many of them are greater than 5
disp('Greater than 5: ');
g2 = m > 5;
disp(g2);
disp(sum(g2(:))); % m > 2 return a binary matrix 1 is greater than 3, 0 is not, sum( sums all elements)
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
disp('A = ');
disp(a);
disp('B = ');
disp(b);
disp('Addition: ');
disp(a+b); 
disp('Subtraction: ');
disp(a-b); 
disp('SQRT: ');
disp(sqrt(a));
% for division, each matrix must have the same size
% disp('Division with \: ');
% disp(a\b); % this is used to solve linear equations
disp('Division with /: '); % trivial one
disp(a/b); % with ./ it's the element wise operation
disp('Scalar / each element of a: ');
disp(a/2);
disp('Multiplication: ');
disp(a*b); % must match row from one matrix and coll from other row
disp('elementwise multiplication: ');
disp(a.*b);
% concatenate
disp('a,b:');
disp([a,b]); % side by side (adding another coll but with a matrix).
disp('a;b:');
disp([a;b]); % bellow (adding another row, but with a matrix.)

disp('Determinant of b: ');
disp(det(b));

disp('Inverse of a matrix b: ');
disp(inv(b));
disp('Identity of matrix b: ');
disp(inv(b) * b);  
disp('Identity of matrix b: ');
disp(b * inv(b));  