format compact 
clc

% can store anything in a cell (cannot use math operations with cell)
% A cell array is a data type with indexed data containers called cells.
% Each cell can contain any type of data. 
% we can create an empty cell in this way
mycell = cell(1);
disp(mycell);

mycell = {'text', 3, [2 3 4; 1 1 2; 2 2 2]};

% showing elements
mycell{1}(1) % {1} -> index of cell, (1) -> index of element inside data in position {1}
mycell{4} = 2:2:10; % inserting new data

disp(mycell);

disp(length(mycell)); % size of cell
mycell(2) = []; % remove data from cell
disp(length(mycell)); % size of cell
disp('Showing data: ');
for i = 1:length(mycell)
    disp(mycell{i});
end

% converting cell to matrix
mc = {'T1', 'T2'};
mm = char(mc);
disp(mm);
% tranforming char array to cell array
mcc = cellstr(mm);
disp(mcc);

% can create multidimensional cell
cc1 = cell(3, 4); % 3x4
cc2 = {'text1', 'text2', 'text3', 'text4'; [2 3 2], [1; 1; 2], [2 2 2], [1 2 2]; 1 2 3 5};
disp(cc2);

[r, c] = size(cc2);
disp(r);
disp('Displaying all elements: ');
for i = 1:r
   for j = 1:c
       fprintf('[%d, %d] = ', i, j);
       disp(cc2{i,j});
   end
   disp('');
end

% convert cell into string
cc = {'hh', 'eee'};
strr = strjoin(cc);
disp(strr);
