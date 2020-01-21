format compact
clc

% Vector addition and subtraction
% Both the operand vectors must be of same type and have same number of elements.
v1 = [1 2 3 4 5 6];
v2 = [1 2 3 4 5 5];

v3 = v1 + v2;
v4 = v1 - v2;
% in multiplication, row of one vector must be equal coll of second vector
% changing row vector to coll vector tranpose of a matrix '
v5 = v1 * v2';
v6 = v1 .* v2;

disp('Sum: ');
disp(v3);
disp('Subtraction: ');
disp(v4);
disp('Multiplication: ');
disp(v5);
disp('Elementwise multiplication: ')
disp(v6)
% can also do dot(v1, v2)
disp('Using dot: ')
disp(dot(v1,v2))

% scalar multiplication
% When you multiply a vector by a number, 
% this is called the scalar multiplication. 
% Scalar multiplication produces a new vector of 
% same type with each element of the original vector multiplied by the number.

% can also do +, - and so on (for ^, we do .^)
v5 = 2 * v4; 
disp('Multiplying each element from v4 with 5: ');
disp(v5);
disp('2 ^ v4(i)');
disp(2 .^ v4);
disp('v4(i) ./ 2: ');
disp(v4 ./ 2);

% transpose change coll in row and vice versa
vv = [1 2 3 4 5 6];
disp(vv'''); % transpose of the transpose of the transpose....

r1 = [1; 2; 3; 4];
r2 = [5; 5; 5; 5];

disp('Appending two coll vector, r2 is going to be second coll');
disp([r1, r2]);

disp('Appending two coll vector, r2 is going to be bellow r1');
disp([r1; r2]);

rr1 = [1 2 3 4];
rr2 = [2 3 4 5];
disp('Appending two row vector, rr2 is going to be next values of rr1: ');
disp([rr1, rr2]);
disp('Appending two row vector, rr2 in the second line ');
disp([rr1; rr2]);

% cross product is done by using the function cross(a,b)
% study later what is it

% magnitude of vector (length of the vector)
% || a || = sqrt(sum of each item from array ^ 2)
% first get each item to the power of two
vvv = [1:2:20]; % from 1 to 20, pass 2, that is: 1 3 5 7 9 11 13 15 17 19
a = vvv .* vvv; % array multiplication
d = sum(a);
mag = sqrt(d);
disp('Magnitude of vvv: ');
disp(vvv);
disp(mag)

% could also do the dot operation that gets the sum
disp(sqrt(dot(vvv,vvv)));

% linearly spaced vector with a specific number of elements
% y = linspace(x1,x2,n) generates n points. The spacing between the points is (x2-x1)/(n-1).
% if n is not defined returns a row vector of 100 evenly spaced points between x1 and x2.
x = linspace(1, 6, 6);
disp('Linspace 1, 20 with four elements: ');
disp(x);

% logarithmically spaced vector 10 ^ 1, 10 ^ 2, 10 ^ 3,
y = logspace(1,5,3); % for 1 and 5, it's between 10^1 to 10^5.
disp('logspace 1, 3: ');
disp(y);






