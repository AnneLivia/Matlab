format compact 
clc

% inicial : end
disp('From 1 to 10')
for i = 1:10
    disp(i)
end

% inicial : step : end
disp('From 10 to 1')
for i = 10:-1:1
    disp(i)
end

% showing all element from a vector
disp('Vector values: ')
for i = [10, 20, 30, 40]
    disp(i)
end

disp('Nested loop (for)')
for i = 1:5
    for j = 1:5
        if j ~= i
            fprintf('0 ');
        else
            fprintf('1 ');
        end
    end
    fprintf('\n')
end

disp('While loop')
i = 0;
while i <= 10
    disp(i)
    i = i + 1;
end

disp('Prime numbers: ');
i = 0;
while i <= 10
    if i <= 1
        i = i + 1;
        continue;
    end
    div = 2;
    j = 2;
    while j < i
       if mod(i,j) == 0
           div = div + 1;
           break; % is not a prime number
       end
       j = j + 1;
    end
    if div == 2
        fprintf('%d is a prime number\n', i);
    end
    i = i + 1;
end
% can do a nested loop similar to for (no problem)




