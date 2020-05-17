% function used to return minimum of a vector and maximum O(N)
function [min, max] = minmax(ve)
    min = intmax;
    max = intmin;
    if isvector(ve)
        for i = ve
            if i > max
                max = i;
            end
            if i < min
                min = i;
            end
        end
    end
end
               
            