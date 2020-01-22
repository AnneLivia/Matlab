format compact
clc

str = 'This is a string';

fprintf('Length: %d\n',length(str));
fprintf('Char at 2: %c\n', str(2));
fprintf('String from 11 to 16: %s\n', str(11:16));

% fucntion used to concat strings
str = strcat(str, ' concat');
fprintf('New String after strcat: %s\n', str);

% function used to find all index that matches something
disp(strfind(str, 'is'));

% function used to replace matches
disp(strrep(str, 'concat', 'replace'));

% function used to split string use some delimiter
disp(strsplit(str, ' '));

% converting integer to string (to convert float is num2string)
disp(int2str(2));
disp(class(int2str(2)));

a1 = 'string1';
a2 = 'string1';

% compare equality
disp(strcmp(a1,a2));

% check if it's a char
disp(isletter(a1));

% check if it's a string
disp(ischar(a1));

% sort string
disp(sort(a1, 'descend'));

% lower case: lower() - to upper case: upper()
disp(upper(a1));


