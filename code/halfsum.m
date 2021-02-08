function summa = halfsum(m)
    summa = 0;
    sz = size(m);
    for i = 1:sz(1)
        for j = i:sz(2)
            summa = summa + m(i,j);
        end
    end
end