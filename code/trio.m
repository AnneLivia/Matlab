function M = trio(n, m)
    M = ones(n,m);
    M = [M; (ones(n,m) + 1)];
    M = [M; (ones(n,m) + 2)];
end