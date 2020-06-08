function [summa, index] = max_sum(V, n)
    ok = true;
    summa = 0;
    index = -1;
    for i = 1:(max(size(V'))-n)+1
        aux_sum = 0;
        qtd = 0;
        for j = i:max(size(V'))
           qtd = qtd + 1;
           if qtd > n
               break;
           end
           aux_sum = aux_sum + V(j);
        end
        if (aux_sum > summa || ok)
            summa = aux_sum;
            index = i;
            ok = false;
        end
    end 
end