format compact
clc

fprintf('Addition(+): %d + %d = %d\n', 1, 2, 1 + 2);
fprintf('Subtraction(-): %d - %d = %d\n', 1, 2, 1 - 2);
fprintf('Division (/): %d / %d = %d\n', 2, 2, 2 / 2);
fprintf('Multiplication (*): %d * %d = %d\n', 1, 2, 1 * 2);
fprintf('Exponentiation (^): %d ^ %d = %d\n', 2, 2, 2 ^ 2);
fprintf('Remainder (%% - mod(a,b)): %d %% %d = %d\n', 2, 2, mod(2,2));
disp('Randi: ')
disp(randi([10,20]));

% math function
fprintf('Floor: %0.2f\n', floor(1.42)); % go bellow
fprintf('Ceil: %0.2f\n', ceil(1.47)); % go above
fprintf('Round: %0.2f\n', round(2.45));
fprintf('Abs: %d\n', abs(-1));
fprintf('Sqrt: %d\n', sqrt(4));
% there's also some other functions like: log, log10, log2, exp, etc.

% Relational operators in matlab are: ==, ~=, <, >, <= and >=, what differs from c++
% is the '~', in C++ is '!', so whereas in C++ we have !=, in matlab is ~

% Logical Operators in matlab are: &&, ||, ~ (Not)
age = input('Insert your age: ');
if age >= 10 && age <= 20
    disp('10 to 20');
    if(age ~= 20)
        disp('It''s not 20');
    end
elseif age >= 21 && age <= 40
    disp('21 to 40')
    if(~(age == 21))
        disp('Age is not 21');
    end
end

op = input('for 2 and 2 type: +, -, *, /: ', 's');
% in switch case can also use case {10, 20, 30} and other type of values
switch op
    case '+'
        disp(2+2);
    case '-'
        disp(2-2);
    case '*' 
        disp(2*2);
    case '/'
        disp(2/2);
    otherwise
        fprintf('operator ''%s'' does not exist\n', op);
end
    
    
    
    