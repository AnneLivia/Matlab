function [a, b, c, d] = corners(aa)
    a = aa(1, 1);
    b = aa(1, end);
    c = aa(end, 1);
    d = aa(end, end);
end

%A = randi(100,4,5)
%[top_left, top_right, bottom_left, bottom_right] = corners(A)
%B = [1; 2]
%[top_left, top_right, bottom_left, bottom_right] = corners(B)