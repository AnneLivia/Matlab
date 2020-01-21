format compact
clc

% vectors can be row or coll vectors
rowvector = [1 2 3 4 5 6 7];
disp('Row Vector: ')
disp(rowvector);

colvector = [1; 2; 3; 4; 5; 6];
disp('Coll Vector: ')
disp(colvector);

% length ( this function returns the size of the longest dimension of X)
fprintf('How many elements in rowvector: %d\n', length(rowvector))
fprintf('How many elements in colvector: %d\n', length(colvector))

% to access elements from a vector, can use (index) notation
colvector(1)
rowvector(2)
% all elements are listed using (:)
colvector(:)
% we can select elements in a range
full = [1 2 3 4 5 6 7 8 9];
sub_full = full(2:8);
disp('Subarray from 2 to 8: ')
disp(sub_full);
% last value
disp('Last value of full: ')
disp(full(end))
% get specific elements
disp(full([2, 4, 8]))
% function to work with vectors
vsort = [9 6 8 7 2 3 6 1];
vsort = sort(vsort);
disp('Sort ascending: ')
disp(vsort);
% descending order
disp('Sort descend: ')
vsort = sort(vsort, 'descend');
disp(vsort);

% creating a vector within a range with and without step
vnstep = 1:10;
vsstep = 1:2:10;
disp('Without step: ')
disp(vnstep)
disp('With step (2): ')
disp(vsstep)

% can concatenate two vector
v1 = [1 2 3 4 5];
v2 = 6:10;
v3 = [v1 v2];
disp('v1 concatened with v2:')
disp(v3);
disp('change a value from v3: ')
v3(1) = 22;
disp(v3)

