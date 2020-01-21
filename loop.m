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

% can do a nested loop similar to for (no problem)




