% function to blur an image that receives as arguments
% the image itself and the size of the kernel w, if it's 1, kernel is 3x3, if it's 2
% kernel is 5x5, and so on. the formular to get it is: 2 * w + 1
function output = blur(img, w)    
    % getting number of row and col of the image
    [row, col] = size(img);
    % creating an auxiliar image to use it for the calculation of the mean
    % where it has 2*w + row and col, to allow compute the mean without extrapolate the indexes
    % since If I want to calculate the mean in the position (1,1), using a 3x3 kernel, the computation
    % would be done using (1,1), (1,2), (2,1), (2,2). Draw it to understand better
    imgaux = zeros(2*w+row, 2*w+col, 'uint8');
    % auxiliar matrix to computer where there are elements or not.
    % this is going to be useful in the step of calculate the mean
    % if I want compute the mean of position (1,1), it's going to be the sum where it has element divided by 4
    % using imgcoutelement, If I didn't use this, the mean would be done divided by 9, which is wrong. there are only four element in that
    % submatrix.
    imgcountelement = zeros(2*w+row, 2*w+col, 'uint8');
    
    % getting size of the created auxiliar matrix
    [rowaux, colaux] = size(imgaux);
    
    % initialize the output as the size of the img
    output = zeros(row, col, 'uint8');
    
    % running the image w+1 to rowaux-1, w+1 it's going to be where I have to insert the value of the image in the auxliar matrix
    for i = w+1:rowaux-w
        for j = w+1:colaux-w
            % inserting the value in the middle
            imgaux(i,j) = img(i-w, j-w);
            % inserting the value 1 to specify that the position i,j has 1 element (being it zero or not)
            imgcountelement(i,j) = 1;
        end
    end
    
    for i = 1:row
        for j = 1:col
            % storing on i,j of the output the sum of the submatrix divided by the number of elements using imgcountelement
            % i : (i-1)+w*2+1 gives the right portion of the image to be used in the calculation, compute it to check it out.
            output(i,j) = sum(imgaux(i:(i-1)+w*2+1, j:(j-1)+w*2+1), 'all') / sum(imgcountelement(i:(i-1)+w*2+1, j:(j-1)+w*2+1) > 0, 'all');
        end
    end
end

% img = imread('vandy.png');
% output = blur(img, 1);
% imshow(output);