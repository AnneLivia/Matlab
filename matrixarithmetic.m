A = [1:5; 6:10; 11:15; 16:20];
[r, c] = size(A);
row = ones(1, r);
col = ones(c, 1);
result = row * A * col;
result