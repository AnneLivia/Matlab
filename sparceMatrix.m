function matrix = sparse2matrix(cellvec)
% first element of the received cell is the size of the space matrix, so create it with the 
% default value specified by the second element of the cellvec

% cellvec{1}(1), first element, first element of the array
% cellvec{2}, second element of the cell representing the default value
matrix = zeros(cellvec{1}(1), cellvec{1}(2)) + cellvec{2};

% each next element of the cell represent the data which is a 3 element vector, where first and second
% value is the index and the third value is the data

for i = 3:length(cellvec)
    % to access the values (cellvec{i}(3));
    matrix(cellvec{i}(1), cellvec{i}(2)) = cellvec{i}(3);
end