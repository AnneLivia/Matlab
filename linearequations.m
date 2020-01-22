clc
a = [3 2 -1; 2 -2 4; -1 0.5 -1];
b = [1 -2 0];

% one way+ to solve it is by getting the inverse times the b
% inv(a) * b'

% disp(a \ b'); % this is a more desirable way to solve linear equations

x = [1 -2 -1; 2 2 -1; -1 -1 2];
xb = [6; 1; 1];

% disp(x\xb);

a = [ 12 -9   15;
    11 -7   14;
    7   2    3;
   -4   3   11;
   -5   2    8];

b = sum(a,2); % 2 is to sum rows, 1 sums cols
b = b + [-1 2 -3 4 1]';
x = a\b;




