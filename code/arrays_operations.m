clc
m1 = [...
      1 2 3;
      3 4 5;
      6 7 8];
m2 = [...
       4 5 6;
       7 8 9;
       10 1 1];
   
% display indices of elements that matches values index
disp('Indexes of elements greater than 3: ');
disp(find(m1 > 3));

%check if two matrix are equal
disp('Are equal?');
disp(isequal(m1,m2));

% prod fucntion return the multiplication between the collumn % similar to
% sum that returns the sum from all collumns
disp('Product of collumn: ');
disp(prod(m1));

%cumulative sum where first rows is the same, but for the next rows, the
%value is the current sum plus the previous one
disp('cumulative sum: ');
disp(cumsum(m1)); 

%cum prod is same as sum, but with product
disp('Product backwards: ');
disp(cumprod(m1, 'reverse')); % starts in opposite order

% flipup flips matrix up down, fliplr, flips left to right
disp('fliplr: ');
disp(fliplr(m1));

% rotate matrix 90 degrees
disp('90 degree: ');
disp(rot90(m1));

% rotate matrix 180 degree
disp('180 degree: ');
disp(rot90(m1, 2));

% rotate matrix 270 degree
disp('270 degree: ');
disp(rot90(m1, 3));

% rotate matrix 360 degree
disp('360 degree: ');
disp(rot90(m1, 4));

% reshape a matrix (change number of colls and rows)

% array of zeros
mm = zeros(5,3);
disp('Array 5x3 of 0''s: ');
disp(mm);

% array of ones
mm = ones(2,3);
disp('Array 5x3 of 1''s: ');
disp(mm);

% identity matrix
mm = eye(3,5);
disp('Identity matrix: ');
disp(mm);
   
% multidimension array RGB color are three dimension R (dm1), G(dm2),
% B(dm3)
disp('multidimension array: ');
aa = [1 2 3; 4 5 6; 7 8 9];
aa(:,:,2) = [10 20 30; 40 50 60; 70 80 90];
disp(aa);

disp('Multidimension (3) array of random numbers: ');
bb = rand(4,3,3);
disp(bb);

% length -> length of a vector or the maximum dimension of an matrix
% cat -> concatenate arrays (first is num of dimension, then array,
% array...
disp('Cat function:' );
disp(cat(3, m1, m2, [1 2 3; 2 2 2; 2 2 2]));
% linspace -> Creates regularly spaced vector.
% logspace -> Creates logarithmically spaced vector.
% max -> Returns largest element, min -> return minimum of each coll
disp('Max of m1: ');
disp(max(m1));
disp('Min of m2: ');
disp(min(m2(:))); % to avoid return the minimum of each coll, 
% (:) tranforms all elements in coll vector, and then gets the minimum one
% from it, can also specify 1 for row and 2 for collumn
% sort each collumn
disp('Sort each collumn: ');
disp(sort(m1)); 

% ndims -> Number of array dimensions
disp('m2 dimensions: ');
disp(ndims(m2));

%numel -> number of array elements
disp('Number of elements of m2: ');
disp(numel(m2));

% iscolumn -> determines if a given vector is a coll vector (isrow is the
% same but for rows)
% isempty -> check if it's empty
% ismatrix -> check if is a matrix
% isvector ->	Determines whether input is vector
% issorted 	-> Determines whether set elements are in sorted order
% sortrows -> Sorts rows in ascending order