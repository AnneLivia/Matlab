format compact
clc

% matrix in matlab we use ; 
m = [1 2 3; 4 5 6; 5 6 7; 8 9 10]; % matrix 4x3
disp('4x3 matrix: ');
disp(m);

% max(between size of row and collunm - this function returns the size of the longest dimension of X)
fprintf('Length of m: %d\n', length(m));

disp('Array using: ');
mm = [1:3; 4:6; 7:9]; % 3x3
disp(mm);

% obtaining  number of rows and cols of the matrix
[row, col] = size(m); % return 4 and 3
fprintf('Row: %d\nCol: %d\n',row,col);

% generate matrix with random number and specific rows and collunm (if
% collunm is not specified them, its going to be row x row. 
% if neither of them are specified, then it's going to be row vector
mrand = randi([1 100], 3, 2);
disp(mrand);

% getting values
fprintf('mm(1,1): %d\n',m(1,3));
disp('Print all values from the first collumn: ');
disp(mm(:,1));
disp('Print all value from the second row: ');
disp(mm(2,:));
disp('Change all values from the third row and from the first collumn to second: ');
cmm = mm; % get all elements
cmm(3,1:2) = 22;
disp(cmm);
disp('Get all values from m as row: ');
mcr = m(:);
disp(mcr);
disp('First value in the last row: ');
disp(cmm(end, 1)); % end - last row, 1 - first collumn
disp('First value of the last col: ');
disp(cmm(1, end));
disp('Values from all collunm to 2:3'); 
disp(cmm(:,2:3));

% delete a row or collumn in a matrix
disp('Deleting 3 row from cmm: ');
cmm(3,:) = [];
disp(cmm);
disp('Deleting 2 collumn from cmm: ');
cmm(:,2) = [];
disp(cmm);

% copying rows 2 and 3 from m twice (so I can specify in the first part,
% the exactly rows I wantk, the same for collunm
mc2 = m([2,3, 2, 3, 4], :);
disp('Twice 2 and 3 rows from m: ');
disp(mc2);
disp('all from 2 and 4 collumns of m: ');
disp(m(:, [2, 3]));

fprintf('Number of elements in m: %d\n', numel(m));
