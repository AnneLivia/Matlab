format compact

% when use 's' in input function, it means it's going to receive a string, 
% otherwise it can get any type of value, such as vector, operations and matrix

name = input('What is your name? ', 's'); 

if ~isempty(name)
    fprintf('Hello %s\n', name); % fprintf is similar to printf from C
else
    disp('Please, tell your name!'); % does not format output such as fprintf
end

op = input('Include a operation: ');
fprintf('Result: %.2f\n', op);

% to know the type of a variable I can use class
class(name)

% use ... to continue something next line
number = 1 + 2 + 3 ...
    + 4 + 5;
fprintf('Value: %d\n', number);

% can cast variables
u = 1;
disp(class(u)); % double
% can also do it with char, double, uint16, uint32, uint64, 
% logical, single (generic int), unsigned uint8, etc.
u = uint8(u); 
disp(class(u)); % uint8
