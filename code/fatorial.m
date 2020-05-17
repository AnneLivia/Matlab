% function used to calculate the fatorial of a number recursively
function f = fatorial(n)
    if n <= 1
        f = 1;
    else
        f = n * fatorial(n - 1);
    end
end