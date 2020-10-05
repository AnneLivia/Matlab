% find saddle point which is an element that is greater 
% than or equal to every element in its row and less than or equal to every element in its column
% it will return an array of two columns where 1 = row, 2 = col
% if there's no saddle point, the index must be an empty array
function indices = saddle(m)
    indices = [];
    if ~isscalar(m)    
        [row, col] = size(m);
        for i = 1:row
            for j = 1: col
                indrow = 0;
                indcol = 0;
                value = m(i,j);
                % fprintf("indice [%d,%d] = %d\n",i,j,value);
                rowsum = sum(m(i, :) <= value);
                colsum = sum(m(:, j) >= value);
                % fprintf("Row sum = %d\nCol sum = %d\n",rowsum, colsum);
                % fprintf("Row = %d\nCol = %d\n",row, col);
                if (rowsum >= col && colsum >= row)
                    % fprintf("Got here: %d %d\n", i, j);
                    indrow = i;
                    indcol = j;
                end
                if (indcol ~= 0)
                    indices = [indices; ([indrow, indcol])];
                else
                    indices = [indices; ([])];
                end
            end
        end
    else
        indices = [1, 1];
    end
end

% create an interesting surface
% [X,Y] = meshgrid(-15:0.5:10,-10:0.5:10);
%Z = [1, 2, 3, 4; 4, 5, 6, 7;  1, 1, 1, 1];
% find saddle points
% indices = saddle(Z)

% default code in the code to call function
% create an interesting surface
% [X,Y] = meshgrid(-15:0.5:10,-10:0.5:10);
% Z = (X.^2-Y.^2)';
% find saddle points
% indices = saddle(Z)
% plot surface
% surf(Z);
% hold on
% mark saddle points with red dots in the same figure
% for ii = 1:size(indices,1)
%    h = scatter3(indices(ii,2),indices(ii,1),Z(indices(ii,1),indices(ii,2)),'red','filled');
%    h.SizeData = 120;
% end
% adjust viewpoint
% view(-115,14);
% hold off