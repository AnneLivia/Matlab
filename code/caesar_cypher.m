function coded = caesar(str, n)
    cod = double(str);
    for i = 1:max(size(cod))
        asc = cod(i);
        qtd = 0;
        while qtd ~= n
            if (n > 0)
                asc = asc + 1;
            else
                asc = asc - 1;
            end
            
            if asc > 126
                asc = 32;
            elseif asc < 32
                asc = 126;
            end
            
            if (n < 0)
                qtd = qtd - 1;
            else
                qtd = qtd + 1;
            end
        end
        cod(i) = asc;
    end
    coded = char(cod);
end

%coded    = caesar('ABCD',  1)
% decoded  = caesar('xyz ~',  -1)