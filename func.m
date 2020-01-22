clc
global b % declare function variable that can be used anywhere
%  functions are defined in separate files. name of function and file must
%  be the same. function [out1,out2, ..., outN] = myfun(in1,in2,in3, ..., inN)
help fatorial % show comments inside function that helps understand it
fprintf('Fatorial of 5: %d\n', fatorial(5));
[min, max] = minmax([1 8 9 10 22 33]);
fprintf('Min: %d\nMax: %d\n',min,max);

% anonymous function in matlab is similar to lambda function in c++ where
% I can create it inline instead of create a file to a function
% the sintax to create that is f = @(arglist)expression

pow = @(x,y) x.^y;
disp(pow(2,4));

b = 1;

change(); % this is also a void function

disp(b);
